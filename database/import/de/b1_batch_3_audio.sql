-- Generated audio link import for de-DE B1
-- Source manifest: audio/manifests/de/B1-batch-3.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_phone_messages_03:3 -> audio/generated/de-DE/dialogues/0283d3da0fe92746c214c0b697743e7e20a8b17ccf84ce4da14db834082974ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8831d322-f31d-5d24-aab1-9777a60eadf7', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f79fb6ef606decf7d72dcd69bbe3b414811e8f98ffcd49edf5e165c767eec468'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('262f9aaf-12cb-5310-a0c3-f56ceca230b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8831d322-f31d-5d24-aab1-9777a60eadf7', 1), 'f79fb6ef606decf7d72dcd69bbe3b414811e8f98ffcd49edf5e165c767eec468',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0283d3da0fe92746c214c0b697743e7e20a8b17ccf84ce4da14db834082974ac.mp3', 2925, '2026-09-13 06:41:45.572805', '4aaf81fed6aa287fd5ae9b91dd2afd32f06a1f8c5618989ce89f4c783c392f0d', 'validated', '{"audio_key":"0283d3da0fe92746c214c0b697743e7e20a8b17ccf84ce4da14db834082974ac","entity_key":"d_phone_messages_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4aaf81fed6aa287fd5ae9b91dd2afd32f06a1f8c5618989ce89f4c783c392f0d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0283d3da0fe92746c214c0b697743e7e20a8b17ccf84ce4da14db834082974ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_01:3 -> audio/generated/de-DE/dialogues/038b7d6a8b2f1810d5e9bd7a8eec548b4a8d8587963564d6f43d474b3826352d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be4f15b8-258e-5b32-a656-1ac2f7f50038', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7974a0a67cd6e31ae2c04c4bb30cae549627250cf7b83de64c449cfc20777029'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b5fdcb7-2b85-5a4d-938f-f84bebec74e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be4f15b8-258e-5b32-a656-1ac2f7f50038', 1), '7974a0a67cd6e31ae2c04c4bb30cae549627250cf7b83de64c449cfc20777029',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/038b7d6a8b2f1810d5e9bd7a8eec548b4a8d8587963564d6f43d474b3826352d.mp3', 2403, '2026-09-13 06:41:45.523320', 'e167a570850c8390a6d4a8968f29d1df111f3a819c0bd9202f6f429b15bdf33d', 'validated', '{"audio_key":"038b7d6a8b2f1810d5e9bd7a8eec548b4a8d8587963564d6f43d474b3826352d","entity_key":"d_project_planning_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e167a570850c8390a6d4a8968f29d1df111f3a819c0bd9202f6f429b15bdf33d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/038b7d6a8b2f1810d5e9bd7a8eec548b4a8d8587963564d6f43d474b3826352d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_03:4 -> audio/generated/de-DE/dialogues/03d5c92529238d0e06a20250edfec7b23c1b6141f07e0e11e75ade45a822f95a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f51d44b6-fa7a-561e-babd-7a9a828908db', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44f8228ebd7b4de4257d1741bdd773dc031b38b960b3c791cd42c6d3f4fa906e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b33fe9ba-0b7d-5a3d-a2aa-127261a110e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f51d44b6-fa7a-561e-babd-7a9a828908db', 1), '44f8228ebd7b4de4257d1741bdd773dc031b38b960b3c791cd42c6d3f4fa906e',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/03d5c92529238d0e06a20250edfec7b23c1b6141f07e0e11e75ade45a822f95a.mp3', 3944, '2026-09-13 06:41:46.877638', '3255533c6964e74dcb7e243a63a54a17d6c0cf73d3d92b95ea47c788b210e380', 'validated', '{"audio_key":"03d5c92529238d0e06a20250edfec7b23c1b6141f07e0e11e75ade45a822f95a","entity_key":"d_food_nutrition_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3255533c6964e74dcb7e243a63a54a17d6c0cf73d3d92b95ea47c788b210e380","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/03d5c92529238d0e06a20250edfec7b23c1b6141f07e0e11e75ade45a822f95a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_02:4 -> audio/generated/de-DE/dialogues/05e902ae3978ad0df091b34525360597b008d71cc5adb956d14a18f5667b3192.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02312dcf-7fa4-5458-be9e-11c5c7509ef9', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb5621f83095cfc8db820cdfda7a7b3d85e782a6ca037e8f5b7766aabe98e33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f6e9166-835f-5f39-9a8f-6bca4b58298d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02312dcf-7fa4-5458-be9e-11c5c7509ef9', 1), '0fb5621f83095cfc8db820cdfda7a7b3d85e782a6ca037e8f5b7766aabe98e33',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05e902ae3978ad0df091b34525360597b008d71cc5adb956d14a18f5667b3192.mp3', 2742, '2026-09-13 06:41:46.851559', '07fe01f7285f5076c30f09685e385d1f954f3c69497b5e394a23b24e15bc6b30', 'validated', '{"audio_key":"05e902ae3978ad0df091b34525360597b008d71cc5adb956d14a18f5667b3192","entity_key":"d_future_changes_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"07fe01f7285f5076c30f09685e385d1f954f3c69497b5e394a23b24e15bc6b30","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/05e902ae3978ad0df091b34525360597b008d71cc5adb956d14a18f5667b3192.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_03:2 -> audio/generated/de-DE/dialogues/06ebc6c001028c775e3ad835e1706d85f925e6d909d8b2050b4011e853b9f198.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d7dd4c6a-9664-5570-af7f-24320be06b6f', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a1f7c41eb2c19163a9fd1c26c6d18c722c95049282f09f5a8ffc97279fc60a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4877d29d-3611-5f11-b0da-c3f49167ade4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d7dd4c6a-9664-5570-af7f-24320be06b6f', 1), 'f0a1f7c41eb2c19163a9fd1c26c6d18c722c95049282f09f5a8ffc97279fc60a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/06ebc6c001028c775e3ad835e1706d85f925e6d909d8b2050b4011e853b9f198.mp3', 3004, '2026-09-13 06:41:48.057215', '6fdb8b0ddbeadcf4b9cdbad830e0e11d7d9439638d59065064ff8bb425bd7f4d', 'validated', '{"audio_key":"06ebc6c001028c775e3ad835e1706d85f925e6d909d8b2050b4011e853b9f198","entity_key":"d_unexpected_situations_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6fdb8b0ddbeadcf4b9cdbad830e0e11d7d9439638d59065064ff8bb425bd7f4d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/06ebc6c001028c775e3ad835e1706d85f925e6d909d8b2050b4011e853b9f198.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_03:2 -> audio/generated/de-DE/dialogues/077b2d5cd48d2decd81a83e4a8ecb738f6c863bead0a39f6908be02eb915520a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('78db0b46-ff5c-52da-93c3-f4d3b7db5f51', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a64d03be4df4db3ed7b3671579d3981305a442e4850f29cee13b6f00d7c2395'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31785605-ee16-50fc-bd77-10bfe7b3309b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('78db0b46-ff5c-52da-93c3-f4d3b7db5f51', 1), '8a64d03be4df4db3ed7b3671579d3981305a442e4850f29cee13b6f00d7c2395',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/077b2d5cd48d2decd81a83e4a8ecb738f6c863bead0a39f6908be02eb915520a.mp3', 1384, '2026-09-13 06:41:47.951695', 'c1ae6b33fdc3b77254822fc9b487533e55f0e024789a023e29107e3fec23da25', 'validated', '{"audio_key":"077b2d5cd48d2decd81a83e4a8ecb738f6c863bead0a39f6908be02eb915520a","entity_key":"d_clubs_volunteering_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1ae6b33fdc3b77254822fc9b487533e55f0e024789a023e29107e3fec23da25","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/077b2d5cd48d2decd81a83e4a8ecb738f6c863bead0a39f6908be02eb915520a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_02:3 -> audio/generated/de-DE/dialogues/0788b9b9e1d9698a9f3db8bb5e988b9ab81b6bf7fdca4e46837f07b3220a24cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b669200-58b8-5c3b-92e3-fbfdff1f19ad', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae8369d33517d363e5d269cca08b45c6eb1417977c28d2268bab7410f5a12cc2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6752289a-8cce-5d31-b73b-c29ceccebd98', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b669200-58b8-5c3b-92e3-fbfdff1f19ad', 1), 'ae8369d33517d363e5d269cca08b45c6eb1417977c28d2268bab7410f5a12cc2',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0788b9b9e1d9698a9f3db8bb5e988b9ab81b6bf7fdca4e46837f07b3220a24cc.mp3', 2455, '2026-09-13 06:41:49.335059', '3231d4726b08c6ee8bc30d9eb0b145231ec43202f9eda9aa01d4e766b69d53a5', 'validated', '{"audio_key":"0788b9b9e1d9698a9f3db8bb5e988b9ab81b6bf7fdca4e46837f07b3220a24cc","entity_key":"d_clubs_volunteering_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3231d4726b08c6ee8bc30d9eb0b145231ec43202f9eda9aa01d4e766b69d53a5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0788b9b9e1d9698a9f3db8bb5e988b9ab81b6bf7fdca4e46837f07b3220a24cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_03:4 -> audio/generated/de-DE/dialogues/07dd5d03659a4d6f78c0d689fec9761d844c8580b1b778617d8f1302faf277e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50eb8ddd-5ce9-5065-92a6-37d841dca8a5', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64cf891048df711f742de6e302cac521c2d54ed5ebabd78d76b3b50e3745db9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a79d53c0-f169-51d2-bbdd-ea5e33484d54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50eb8ddd-5ce9-5065-92a6-37d841dca8a5', 1), '64cf891048df711f742de6e302cac521c2d54ed5ebabd78d76b3b50e3745db9b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07dd5d03659a4d6f78c0d689fec9761d844c8580b1b778617d8f1302faf277e2.mp3', 3657, '2026-09-13 06:41:49.474567', '135d493ecf7f07897c1534116fa48b38838971a12539248405d11c1a8f69397d', 'validated', '{"audio_key":"07dd5d03659a4d6f78c0d689fec9761d844c8580b1b778617d8f1302faf277e2","entity_key":"d_clubs_volunteering_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"135d493ecf7f07897c1534116fa48b38838971a12539248405d11c1a8f69397d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/07dd5d03659a4d6f78c0d689fec9761d844c8580b1b778617d8f1302faf277e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_02:1 -> audio/generated/de-DE/dialogues/08211878820c07a8d99b0618e5b021ea2079fb50a243a738fc87abf3536e2303.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df184167-5f46-5d42-990d-7c2c3e18f6a8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c78f8e19979a7eb118887177b790eb83039c9e9fd6a71ca1eafd3ecdc2a0fb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aca7ab9-97ef-5f9f-a0dc-2654244904d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df184167-5f46-5d42-990d-7c2c3e18f6a8', 1), '7c78f8e19979a7eb118887177b790eb83039c9e9fd6a71ca1eafd3ecdc2a0fb6',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/08211878820c07a8d99b0618e5b021ea2079fb50a243a738fc87abf3536e2303.mp3', 2455, '2026-09-13 06:41:50.497952', '731ff068beeb220c62529cf16297c5c1edb170ecf997c451541cfcd795170cf0', 'validated', '{"audio_key":"08211878820c07a8d99b0618e5b021ea2079fb50a243a738fc87abf3536e2303","entity_key":"d_transport_delays_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"731ff068beeb220c62529cf16297c5c1edb170ecf997c451541cfcd795170cf0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/08211878820c07a8d99b0618e5b021ea2079fb50a243a738fc87abf3536e2303.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_03:3 -> audio/generated/de-DE/dialogues/09510f534c2d9d53cf2bfffe9f2a51680dcc1b31b42881c14adbd458148a6c0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a719862-17c8-5eaa-b05d-6a01f7872736', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '742aded267c08d99bd697a4d5cf8f29d82d7214e9e1d4d5816b4ed45f454be72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('167db930-562f-5305-a9cc-4839f313d7ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a719862-17c8-5eaa-b05d-6a01f7872736', 1), '742aded267c08d99bd697a4d5cf8f29d82d7214e9e1d4d5816b4ed45f454be72',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09510f534c2d9d53cf2bfffe9f2a51680dcc1b31b42881c14adbd458148a6c0d.mp3', 2638, '2026-09-13 06:41:50.602536', '6cdeb4bd1548e35de27e56f3364d44ab52a5c68b8597bbf634a12772bc3f9293', 'validated', '{"audio_key":"09510f534c2d9d53cf2bfffe9f2a51680dcc1b31b42881c14adbd458148a6c0d","entity_key":"d_project_planning_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6cdeb4bd1548e35de27e56f3364d44ab52a5c68b8597bbf634a12772bc3f9293","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/09510f534c2d9d53cf2bfffe9f2a51680dcc1b31b42881c14adbd458148a6c0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_02:3 -> audio/generated/de-DE/dialogues/09694a06593eef874aac353267f1e028044f4f7671d1cc510238cb3474ca08c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d69a444d-57b4-590a-8eed-62b48fe848d4', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f06da2795fe30a33e3f37a3c325a234c7f938c330428b057c94033d903dbe247'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c766180-126d-50f8-8b49-ebd0a21f2ebc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d69a444d-57b4-590a-8eed-62b48fe848d4', 1), 'f06da2795fe30a33e3f37a3c325a234c7f938c330428b057c94033d903dbe247',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09694a06593eef874aac353267f1e028044f4f7671d1cc510238cb3474ca08c0.mp3', 2533, '2026-09-13 06:41:51.658581', 'f1059acce089d5b0cce8a38298cbd6206adbfe94f72804047e379e31006bc974', 'validated', '{"audio_key":"09694a06593eef874aac353267f1e028044f4f7671d1cc510238cb3474ca08c0","entity_key":"d_family_responsibilities_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1059acce089d5b0cce8a38298cbd6206adbfe94f72804047e379e31006bc974","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/09694a06593eef874aac353267f1e028044f4f7671d1cc510238cb3474ca08c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_03:3 -> audio/generated/de-DE/dialogues/0b8c7cb655136aa200c25aa1ffe9c284711ccbb223157070b5962dbb5cecfdf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0de2a753-6295-53cc-8349-ff872f77a43c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b58ee771b92b499a39f0cb269b8a8581aeb635a9df78dabc5355dbddb446044'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fd61934-7e86-51db-b7a5-fba34e83f81b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0de2a753-6295-53cc-8349-ff872f77a43c', 1), '4b58ee771b92b499a39f0cb269b8a8581aeb635a9df78dabc5355dbddb446044',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0b8c7cb655136aa200c25aa1ffe9c284711ccbb223157070b5962dbb5cecfdf5.mp3', 2220, '2026-09-13 06:41:51.786043', '4bcf9a0c057f89f45cd4dc5113cc2a915dca21c306feeb509c3ca8bcc029f9d5', 'validated', '{"audio_key":"0b8c7cb655136aa200c25aa1ffe9c284711ccbb223157070b5962dbb5cecfdf5","entity_key":"d_food_nutrition_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4bcf9a0c057f89f45cd4dc5113cc2a915dca21c306feeb509c3ca8bcc029f9d5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0b8c7cb655136aa200c25aa1ffe9c284711ccbb223157070b5962dbb5cecfdf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_03:3 -> audio/generated/de-DE/dialogues/1039c8c8b2bba6f804bf663ccac6ee25528c947e43fa2f364bebca9805835fc2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('87a0fd7b-ef70-5de7-b00b-6f6085158ce6', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed3c7cfed1b0bd81593079ad4be63cec1e9918945998072c53726b2b78fd0515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('785a1095-b446-562d-a630-22727824c69c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('87a0fd7b-ef70-5de7-b00b-6f6085158ce6', 1), 'ed3c7cfed1b0bd81593079ad4be63cec1e9918945998072c53726b2b78fd0515',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1039c8c8b2bba6f804bf663ccac6ee25528c947e43fa2f364bebca9805835fc2.mp3', 1854, '2026-09-13 06:41:52.801541', '9e87bccdb1a483ede7a0aca3e92ce9794784f6e79466eb29c0e460406036bc52', 'validated', '{"audio_key":"1039c8c8b2bba6f804bf663ccac6ee25528c947e43fa2f364bebca9805835fc2","entity_key":"d_unexpected_situations_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9e87bccdb1a483ede7a0aca3e92ce9794784f6e79466eb29c0e460406036bc52","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1039c8c8b2bba6f804bf663ccac6ee25528c947e43fa2f364bebca9805835fc2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_03:2 -> audio/generated/de-DE/dialogues/1435106e5f9b1fd729b622c0d6668cf59816ee38763b662e29537f37e742d51d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a8fe4a5-a379-5bc8-a757-ae4ea77de8a8', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53e1f20cebca475469f304f93b947471a3935dfcbb604cb4692f8daaa3e8530f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8f4776e-e5f4-5739-902f-ea786acb71df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a8fe4a5-a379-5bc8-a757-ae4ea77de8a8', 1), '53e1f20cebca475469f304f93b947471a3935dfcbb604cb4692f8daaa3e8530f',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1435106e5f9b1fd729b622c0d6668cf59816ee38763b662e29537f37e742d51d.mp3', 3422, '2026-09-13 06:41:53.029984', '673b3b213c38309383f74db598b53aafc107f0f669c1c6969cc4d426b2155ec4', 'validated', '{"audio_key":"1435106e5f9b1fd729b622c0d6668cf59816ee38763b662e29537f37e742d51d","entity_key":"d_future_changes_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"673b3b213c38309383f74db598b53aafc107f0f669c1c6969cc4d426b2155ec4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1435106e5f9b1fd729b622c0d6668cf59816ee38763b662e29537f37e742d51d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_02:1 -> audio/generated/de-DE/dialogues/1539e15cec8a3bec77bcc560a1d33251d1bf3be5ff775e2d09e8201d7eec71a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c01c463-a2fc-5912-bd0d-a832deac6bfa', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8653698a58ac79638975bf1c4ac138aafb7f5c4f9881d20daf99e35bc4c71159'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d638c47-9f1a-53a2-b5da-62935dba9f54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c01c463-a2fc-5912-bd0d-a832deac6bfa', 1), '8653698a58ac79638975bf1c4ac138aafb7f5c4f9881d20daf99e35bc4c71159',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1539e15cec8a3bec77bcc560a1d33251d1bf3be5ff775e2d09e8201d7eec71a0.mp3', 2873, '2026-09-13 06:41:54.013041', '828fc422a2e56797a7c69dace9bf9eac9fd3d9399134b5e70155fdad962e01a9', 'validated', '{"audio_key":"1539e15cec8a3bec77bcc560a1d33251d1bf3be5ff775e2d09e8201d7eec71a0","entity_key":"d_food_nutrition_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"828fc422a2e56797a7c69dace9bf9eac9fd3d9399134b5e70155fdad962e01a9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1539e15cec8a3bec77bcc560a1d33251d1bf3be5ff775e2d09e8201d7eec71a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_03:3 -> audio/generated/de-DE/dialogues/164a75eccd95f7baaf674efa34907a0a3881113c8a3b7a678ec4ca297221de8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55cf8c22-f61c-5904-85f3-221d75a07a1d', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0e9298d17edd14e721a02f04e920e49fcabd0f5bf6b93a629047f5b4b5320d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ee6ca5a-a9a0-5dce-981f-86653cb67b6f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55cf8c22-f61c-5904-85f3-221d75a07a1d', 1), 'b0e9298d17edd14e721a02f04e920e49fcabd0f5bf6b93a629047f5b4b5320d9',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/164a75eccd95f7baaf674efa34907a0a3881113c8a3b7a678ec4ca297221de8f.mp3', 1097, '2026-09-13 06:41:54.005440', '8e2be7f3c02db41031986ad7cd0b2cc2fb6a38192f8db91aa0e58db18e0169d4', 'validated', '{"audio_key":"164a75eccd95f7baaf674efa34907a0a3881113c8a3b7a678ec4ca297221de8f","entity_key":"d_future_changes_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8e2be7f3c02db41031986ad7cd0b2cc2fb6a38192f8db91aa0e58db18e0169d4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/164a75eccd95f7baaf674efa34907a0a3881113c8a3b7a678ec4ca297221de8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_01:2 -> audio/generated/de-DE/dialogues/19b273764f1551adf06b221022519a2638b58d11853f49aacb46795a27ea5dac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e238553-1f03-591a-9a56-4794fa87cc15', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b2260ef9f955533bdfbdf4486fa80b73a852ae6f90d83988458143bd77963ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90497381-59d7-52c5-b430-5263db9802a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e238553-1f03-591a-9a56-4794fa87cc15', 1), '2b2260ef9f955533bdfbdf4486fa80b73a852ae6f90d83988458143bd77963ca',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/19b273764f1551adf06b221022519a2638b58d11853f49aacb46795a27ea5dac.mp3', 1280, '2026-09-13 06:41:55.081291', '623a966a56fce30a860849b1f63c89f6a9f2b0fa80f9c783922c05e1cb8b76bd', 'validated', '{"audio_key":"19b273764f1551adf06b221022519a2638b58d11853f49aacb46795a27ea5dac","entity_key":"d_news_information_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"623a966a56fce30a860849b1f63c89f6a9f2b0fa80f9c783922c05e1cb8b76bd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/19b273764f1551adf06b221022519a2638b58d11853f49aacb46795a27ea5dac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_02:4 -> audio/generated/de-DE/dialogues/1ba1d723ce6c164c5c452f7502f84e4c66b13760cea2f49f2c50d67c552bfe36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e368cac4-f2a0-55c1-be1e-24fb0e17c348', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaf47f557292c43caceb1daf85213b184ac26cd7ccdd6b4ef020fd16332df89e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e59eede-f988-58c1-a466-505fc65a195e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e368cac4-f2a0-55c1-be1e-24fb0e17c348', 1), 'eaf47f557292c43caceb1daf85213b184ac26cd7ccdd6b4ef020fd16332df89e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1ba1d723ce6c164c5c452f7502f84e4c66b13760cea2f49f2c50d67c552bfe36.mp3', 1567, '2026-09-13 06:41:55.083935', 'bffc0356e8aedcd3f4e9671174bc267937b61dc62481c738a3e65b1aa02be304', 'validated', '{"audio_key":"1ba1d723ce6c164c5c452f7502f84e4c66b13760cea2f49f2c50d67c552bfe36","entity_key":"d_phone_messages_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"bffc0356e8aedcd3f4e9671174bc267937b61dc62481c738a3e65b1aa02be304","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1ba1d723ce6c164c5c452f7502f84e4c66b13760cea2f49f2c50d67c552bfe36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_03:4 -> audio/generated/de-DE/dialogues/1e28c351395d84fa8cc46eb3cea2770a1da3719abef638c1ca440eb7f8a485fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43b02fe1-2179-5dfe-a568-a272f269cd1a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5876bf138d7c00322cbadc192844bbee341ebd19203fa09080c4ac6d7304967b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('632f1a98-69a6-5c94-b6ed-2135be10a545', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43b02fe1-2179-5dfe-a568-a272f269cd1a', 1), '5876bf138d7c00322cbadc192844bbee341ebd19203fa09080c4ac6d7304967b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1e28c351395d84fa8cc46eb3cea2770a1da3719abef638c1ca440eb7f8a485fe.mp3', 2037, '2026-09-13 06:41:56.198173', 'da8cf0cfbc8f371b1a8548a4625751e2773dcd06eb53d829821fae5814189439', 'validated', '{"audio_key":"1e28c351395d84fa8cc46eb3cea2770a1da3719abef638c1ca440eb7f8a485fe","entity_key":"d_public_services_appointments_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"da8cf0cfbc8f371b1a8548a4625751e2773dcd06eb53d829821fae5814189439","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1e28c351395d84fa8cc46eb3cea2770a1da3719abef638c1ca440eb7f8a485fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_02:3 -> audio/generated/de-DE/dialogues/24b0f5594d884c45b3e42f5546bc7f2ff64b98e59dfc5eebb24619b16e82a67a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d925f52b-7aea-5a95-be99-2d67ef6ece9f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ce8ceda92ad4eef25ad5317347b185057453c4b1bfbc90aa1cc9cc10b04ea58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c5de1fe-028a-5131-9a32-54fd764853aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d925f52b-7aea-5a95-be99-2d67ef6ece9f', 1), '5ce8ceda92ad4eef25ad5317347b185057453c4b1bfbc90aa1cc9cc10b04ea58',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/24b0f5594d884c45b3e42f5546bc7f2ff64b98e59dfc5eebb24619b16e82a67a.mp3', 1619, '2026-09-13 06:41:56.334724', 'd22e9cec07cab18685f2782fca052d5e5b9e24d04ea39b16b62129869974bd74', 'validated', '{"audio_key":"24b0f5594d884c45b3e42f5546bc7f2ff64b98e59dfc5eebb24619b16e82a67a","entity_key":"d_future_changes_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d22e9cec07cab18685f2782fca052d5e5b9e24d04ea39b16b62129869974bd74","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/24b0f5594d884c45b3e42f5546bc7f2ff64b98e59dfc5eebb24619b16e82a67a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_01:3 -> audio/generated/de-DE/dialogues/267fa431114f9a890a0bde833ec602889c072d65d6b3465224d96b8b120cb7e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('41d0aace-a54b-5043-bb70-a437f6569613', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34e59550c9edff6d8f4ba56cd2b0a26bfd60eda84ee2f0715c07ba2c5df5ceda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d389ccf-3793-56e6-8a38-ee0c754c122a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('41d0aace-a54b-5043-bb70-a437f6569613', 1), '34e59550c9edff6d8f4ba56cd2b0a26bfd60eda84ee2f0715c07ba2c5df5ceda',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/267fa431114f9a890a0bde833ec602889c072d65d6b3465224d96b8b120cb7e5.mp3', 2951, '2026-09-13 06:41:57.377943', '386d1fa534be00c06bfa133e78fad9a30f50857f7956619cb75ba8dc44de5746', 'validated', '{"audio_key":"267fa431114f9a890a0bde833ec602889c072d65d6b3465224d96b8b120cb7e5","entity_key":"d_public_services_appointments_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"386d1fa534be00c06bfa133e78fad9a30f50857f7956619cb75ba8dc44de5746","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/267fa431114f9a890a0bde833ec602889c072d65d6b3465224d96b8b120cb7e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_03:3 -> audio/generated/de-DE/dialogues/29b6a827fa23bd119226af501e7c8cf5e6db5305c253f95a34152f4761cc0df3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ed6d6ab-9e8a-567c-8fd2-7807ac5687b5', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fabbedba9ff1534a0da9c11888a92861c13b7bcfa0129f40fc911df61c22eb0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb627333-75d2-562e-8982-1e752e9a0ddd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ed6d6ab-9e8a-567c-8fd2-7807ac5687b5', 1), 'fabbedba9ff1534a0da9c11888a92861c13b7bcfa0129f40fc911df61c22eb0d',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29b6a827fa23bd119226af501e7c8cf5e6db5305c253f95a34152f4761cc0df3.mp3', 2403, '2026-09-13 06:41:57.476281', '69a1c5f65e3515849772e8ea95e4b743be4d48973b27c1293827d1ddb701e0cd', 'validated', '{"audio_key":"29b6a827fa23bd119226af501e7c8cf5e6db5305c253f95a34152f4761cc0df3","entity_key":"d_clubs_volunteering_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"69a1c5f65e3515849772e8ea95e4b743be4d48973b27c1293827d1ddb701e0cd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/29b6a827fa23bd119226af501e7c8cf5e6db5305c253f95a34152f4761cc0df3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_02:2 -> audio/generated/de-DE/dialogues/29d76caa2e9dd19a7372d4260d324ec0b7be9915232b6955157ca1918388c68e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9de4aac5-0861-59dd-9f29-1ca7915d6f12', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd572c5c027df9df2e0492f48dbfb19311aeba6a48a8a6979ad688834d656f584'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9279d91-a33f-5b95-8f3a-134ee003d75b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9de4aac5-0861-59dd-9f29-1ca7915d6f12', 1), 'd572c5c027df9df2e0492f48dbfb19311aeba6a48a8a6979ad688834d656f584',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29d76caa2e9dd19a7372d4260d324ec0b7be9915232b6955157ca1918388c68e.mp3', 2638, '2026-09-13 06:41:58.497401', '068487f516aad8a83a7f0bf9c38735979bb46c17f5cec949d4b3c063095b7c4c', 'validated', '{"audio_key":"29d76caa2e9dd19a7372d4260d324ec0b7be9915232b6955157ca1918388c68e","entity_key":"d_unexpected_situations_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"068487f516aad8a83a7f0bf9c38735979bb46c17f5cec949d4b3c063095b7c4c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/29d76caa2e9dd19a7372d4260d324ec0b7be9915232b6955157ca1918388c68e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_02:2 -> audio/generated/de-DE/dialogues/2a0c4be721985b3780435ddb49d13da733670a06b59bee0f415ab67c1fc46def.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f1c3334-cabf-51aa-9fb4-76d9a6c9d001', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b49e3fe2ea0530a0ea1352e4315297a55b6da3b7b9ef0f1ae0416a8b55640aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61d2c876-e2a9-5675-bcf6-29054f8a64fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f1c3334-cabf-51aa-9fb4-76d9a6c9d001', 1), '7b49e3fe2ea0530a0ea1352e4315297a55b6da3b7b9ef0f1ae0416a8b55640aa',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a0c4be721985b3780435ddb49d13da733670a06b59bee0f415ab67c1fc46def.mp3', 3239, '2026-09-13 06:41:58.686277', '7633650bc5ac66cb040e2a84088a6c6c75e059e40956210c5c0a2d137aa811eb', 'validated', '{"audio_key":"2a0c4be721985b3780435ddb49d13da733670a06b59bee0f415ab67c1fc46def","entity_key":"d_future_changes_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"7633650bc5ac66cb040e2a84088a6c6c75e059e40956210c5c0a2d137aa811eb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2a0c4be721985b3780435ddb49d13da733670a06b59bee0f415ab67c1fc46def.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_01:1 -> audio/generated/de-DE/dialogues/2b3f102112b850ffbdea7f4e6c2cf71e25e33be6eeda7ee8840a42448429c939.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ebeca91-76b9-5401-b44d-cdeb875b9797', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60cc51c3338f0b22b066af9ff20d6c7e534bc27778f919269996a98498cacce6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74209761-7c11-52fd-bc6c-b494097ca6cd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ebeca91-76b9-5401-b44d-cdeb875b9797', 1), '60cc51c3338f0b22b066af9ff20d6c7e534bc27778f919269996a98498cacce6',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2b3f102112b850ffbdea7f4e6c2cf71e25e33be6eeda7ee8840a42448429c939.mp3', 2742, '2026-09-13 06:41:59.858059', 'c09ffbc23de42cc9c8f75787c96554c988896089f82600178b5cd743cd1be07f', 'validated', '{"audio_key":"2b3f102112b850ffbdea7f4e6c2cf71e25e33be6eeda7ee8840a42448429c939","entity_key":"d_transport_delays_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c09ffbc23de42cc9c8f75787c96554c988896089f82600178b5cd743cd1be07f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2b3f102112b850ffbdea7f4e6c2cf71e25e33be6eeda7ee8840a42448429c939.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_02:2 -> audio/generated/de-DE/dialogues/2cad1ba07c9a4b8e7d22d47f509bed2ecc671ccfd51925bb30bf04a9dfbd6c88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('073d1607-d661-5568-9d92-22a0bd3f12b3', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37906714b00cbd3bba5e54db3c5fd468ecbfb86890994b67e3282fff29aace2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec26f882-4e12-557e-9fa2-d8795c6faf44', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('073d1607-d661-5568-9d92-22a0bd3f12b3', 1), '37906714b00cbd3bba5e54db3c5fd468ecbfb86890994b67e3282fff29aace2b',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2cad1ba07c9a4b8e7d22d47f509bed2ecc671ccfd51925bb30bf04a9dfbd6c88.mp3', 4022, '2026-09-13 06:42:00.022960', 'bf2d635f69a29de119f47e07b38df9e1b4358428d4723562925dfd8498a7f0b5', 'validated', '{"audio_key":"2cad1ba07c9a4b8e7d22d47f509bed2ecc671ccfd51925bb30bf04a9dfbd6c88","entity_key":"d_public_services_appointments_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"bf2d635f69a29de119f47e07b38df9e1b4358428d4723562925dfd8498a7f0b5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2cad1ba07c9a4b8e7d22d47f509bed2ecc671ccfd51925bb30bf04a9dfbd6c88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_03:1 -> audio/generated/de-DE/dialogues/2cae72d446520a4c35c3080052a81a02ca903e87fff0a2d72c48b842d0be5e54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3ef22dd-63d7-52ff-aa76-5cb963947d78', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1efdb6b75b925f873bd81587bd095081a622e7094d9884d05718307fa21fd2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ebd3114-1e4f-5702-ac08-f98422325d9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3ef22dd-63d7-52ff-aa76-5cb963947d78', 1), 'b1efdb6b75b925f873bd81587bd095081a622e7094d9884d05718307fa21fd2f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2cae72d446520a4c35c3080052a81a02ca903e87fff0a2d72c48b842d0be5e54.mp3', 2351, '2026-09-13 06:42:00.978439', '694adacb4f348be2017c756807ca4ac70923755dd50c52f4c61ac4693944117d', 'validated', '{"audio_key":"2cae72d446520a4c35c3080052a81a02ca903e87fff0a2d72c48b842d0be5e54","entity_key":"d_public_services_appointments_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"694adacb4f348be2017c756807ca4ac70923755dd50c52f4c61ac4693944117d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2cae72d446520a4c35c3080052a81a02ca903e87fff0a2d72c48b842d0be5e54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_02:2 -> audio/generated/de-DE/dialogues/2d17d04eeb088280e4f5c96b858246f72939cb986a6bebc118fb19e0cf24c88a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc497e0c-acbf-5d8f-a442-87251ae3f08e', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52a551ddf4b0b94ce10a17f3c67187c32ce93c5565ead44374f9faa898da2a02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c037ea02-bdee-539b-88b9-1cfffbeb4d04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc497e0c-acbf-5d8f-a442-87251ae3f08e', 1), '52a551ddf4b0b94ce10a17f3c67187c32ce93c5565ead44374f9faa898da2a02',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d17d04eeb088280e4f5c96b858246f72939cb986a6bebc118fb19e0cf24c88a.mp3', 2690, '2026-09-13 06:42:01.157586', '4455d7e731d7eca3b6067cfa08bd3b0302ea68086163339f8d744473ba9c7c91', 'validated', '{"audio_key":"2d17d04eeb088280e4f5c96b858246f72939cb986a6bebc118fb19e0cf24c88a","entity_key":"d_family_responsibilities_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"4455d7e731d7eca3b6067cfa08bd3b0302ea68086163339f8d744473ba9c7c91","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2d17d04eeb088280e4f5c96b858246f72939cb986a6bebc118fb19e0cf24c88a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_01:1 -> audio/generated/de-DE/dialogues/2d52f735f9fe97f008efb1b238ee96b7d7574a620bf90f3ae0ad24b3f77e1943.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8af48a6b-e7b9-57ef-8b89-375a73407917', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '257ed2ef51c2de8b05e17daf3fa2f6d6d5eb7f67eb8aaf5732e47c2c8f7a5b9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c1c55e9-5098-55a3-9628-3f0eeb40e8d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8af48a6b-e7b9-57ef-8b89-375a73407917', 1), '257ed2ef51c2de8b05e17daf3fa2f6d6d5eb7f67eb8aaf5732e47c2c8f7a5b9a',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d52f735f9fe97f008efb1b238ee96b7d7574a620bf90f3ae0ad24b3f77e1943.mp3', 2324, '2026-09-13 06:42:02.153003', 'e108898d2a313e6bbe5c7a19d765971be79ef2627913a72c0af6b471d70a9b94', 'validated', '{"audio_key":"2d52f735f9fe97f008efb1b238ee96b7d7574a620bf90f3ae0ad24b3f77e1943","entity_key":"d_family_responsibilities_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e108898d2a313e6bbe5c7a19d765971be79ef2627913a72c0af6b471d70a9b94","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2d52f735f9fe97f008efb1b238ee96b7d7574a620bf90f3ae0ad24b3f77e1943.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_01:4 -> audio/generated/de-DE/dialogues/2ee4f062422e77ea8416b92d0f2e6011f37ab8dfcdac05a54528e261b37ddede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03d9cfed-3ff1-578a-b51b-77068587b52e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6d63be74b11a0414d58a566245b9188af1719373c51851e12f2a8b8663b0b56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba1b1f24-085f-5aa2-970a-10f3689d2c4f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03d9cfed-3ff1-578a-b51b-77068587b52e', 1), 'a6d63be74b11a0414d58a566245b9188af1719373c51851e12f2a8b8663b0b56',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ee4f062422e77ea8416b92d0f2e6011f37ab8dfcdac05a54528e261b37ddede.mp3', 2873, '2026-09-13 06:42:02.339952', '2e9d2dd4d6424c8c9ec63a6d387e85fb189c93425ca2ac3cfd5045f665203dc9', 'validated', '{"audio_key":"2ee4f062422e77ea8416b92d0f2e6011f37ab8dfcdac05a54528e261b37ddede","entity_key":"d_news_information_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2e9d2dd4d6424c8c9ec63a6d387e85fb189c93425ca2ac3cfd5045f665203dc9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2ee4f062422e77ea8416b92d0f2e6011f37ab8dfcdac05a54528e261b37ddede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_01:2 -> audio/generated/de-DE/dialogues/2ee96fc5619e33c928e6440c1db1cc9fb48146bd0e92b9eb20750b47268d2a8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e382ecd-ede5-5056-ae53-5c2070d86537', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6cfb778b2206f5cc3eb1b4ee967a60f7fafd319266162558ff429e2be54c9ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d3c1dc0-3234-531a-9780-bc79d035e16b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e382ecd-ede5-5056-ae53-5c2070d86537', 1), 'c6cfb778b2206f5cc3eb1b4ee967a60f7fafd319266162558ff429e2be54c9ce',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ee96fc5619e33c928e6440c1db1cc9fb48146bd0e92b9eb20750b47268d2a8e.mp3', 2690, '2026-09-13 06:42:03.308254', '7c0142be559f0883ba90a30a23c831dceaf727ca194f17615ca3abc947240529', 'validated', '{"audio_key":"2ee96fc5619e33c928e6440c1db1cc9fb48146bd0e92b9eb20750b47268d2a8e","entity_key":"d_project_planning_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7c0142be559f0883ba90a30a23c831dceaf727ca194f17615ca3abc947240529","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2ee96fc5619e33c928e6440c1db1cc9fb48146bd0e92b9eb20750b47268d2a8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_03:3 -> audio/generated/de-DE/dialogues/30387c7d28ceaa0e91859a7b9622c7ba02d91b8f1fc8f1f416c11d6d12efddb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ec71cf9-4cf2-5c06-bf32-b376898d01bb', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7df4476004e91e5f03d362854e50a57c8c8849997368e984c716f8f0b36e373'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a114466-38e5-5c49-9b27-8035d4dc3e68', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ec71cf9-4cf2-5c06-bf32-b376898d01bb', 1), 'a7df4476004e91e5f03d362854e50a57c8c8849997368e984c716f8f0b36e373',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30387c7d28ceaa0e91859a7b9622c7ba02d91b8f1fc8f1f416c11d6d12efddb3.mp3', 2220, '2026-09-13 06:42:03.455098', 'fef6d247358ecee43f46dc398d01a39393b292f3106ac5c61038da0108ed0b74', 'validated', '{"audio_key":"30387c7d28ceaa0e91859a7b9622c7ba02d91b8f1fc8f1f416c11d6d12efddb3","entity_key":"d_news_information_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"fef6d247358ecee43f46dc398d01a39393b292f3106ac5c61038da0108ed0b74","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/30387c7d28ceaa0e91859a7b9622c7ba02d91b8f1fc8f1f416c11d6d12efddb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_01:1 -> audio/generated/de-DE/dialogues/30fbc120533b0ebc71385edf423a6a63eb00229b8a5ebae140ff076f803436ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1afd6bbd-b281-5f0e-8c63-42e68734d679', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5892e77789b7741641d0859c45e810b1d4c4b14c05c28a4fc64f4ad550407d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06a6374d-5e44-5388-bae8-40ae929df167', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1afd6bbd-b281-5f0e-8c63-42e68734d679', 1), '5892e77789b7741641d0859c45e810b1d4c4b14c05c28a4fc64f4ad550407d85',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30fbc120533b0ebc71385edf423a6a63eb00229b8a5ebae140ff076f803436ab.mp3', 2115, '2026-09-13 06:42:04.428049', 'f96e1a8ae6ab49b710dc1fe158bfd7b1d0cd31ae801e65bcc88fb66e2ca33a3a', 'validated', '{"audio_key":"30fbc120533b0ebc71385edf423a6a63eb00229b8a5ebae140ff076f803436ab","entity_key":"d_clubs_volunteering_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f96e1a8ae6ab49b710dc1fe158bfd7b1d0cd31ae801e65bcc88fb66e2ca33a3a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/30fbc120533b0ebc71385edf423a6a63eb00229b8a5ebae140ff076f803436ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_02:4 -> audio/generated/de-DE/dialogues/35b08305359011d416f88553b45fc91edeca466a702b1f8538df9c008fe3de36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d69843a6-574d-58fd-8370-f3ef46b92ba7', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '978c8f6e67bc0875038965adc3631bbdb285a3d56eae1fa5e582d1464b3e6ba6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d55ff28d-3239-50ba-a125-6033743fe27b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d69843a6-574d-58fd-8370-f3ef46b92ba7', 1), '978c8f6e67bc0875038965adc3631bbdb285a3d56eae1fa5e582d1464b3e6ba6',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/35b08305359011d416f88553b45fc91edeca466a702b1f8538df9c008fe3de36.mp3', 2324, '2026-09-13 06:42:04.621147', '0d2b39ff98b857b22aa334349de9edd27502960fd3616f8b707435a35a6de08a', 'validated', '{"audio_key":"35b08305359011d416f88553b45fc91edeca466a702b1f8538df9c008fe3de36","entity_key":"d_unexpected_situations_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0d2b39ff98b857b22aa334349de9edd27502960fd3616f8b707435a35a6de08a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/35b08305359011d416f88553b45fc91edeca466a702b1f8538df9c008fe3de36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_02:1 -> audio/generated/de-DE/dialogues/365047ae1fd9306f1286cbbc75d4af4dc6594da5a3b6dff8048212bbf1d04b81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5f647f0-dd39-5e4a-9568-becd8592dd1e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b019865274eba6c6263e9157c05eaacf0c2ab9b9c95964ef806dcda41060281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28d997ff-cc73-5bca-b601-a21ef4972766', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5f647f0-dd39-5e4a-9568-becd8592dd1e', 1), '2b019865274eba6c6263e9157c05eaacf0c2ab9b9c95964ef806dcda41060281',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/365047ae1fd9306f1286cbbc75d4af4dc6594da5a3b6dff8048212bbf1d04b81.mp3', 2507, '2026-09-13 06:42:05.556616', '4b49eb55d20e7acb86ee02dff22157eabcbec1746382b56a6afdff9757c33828', 'validated', '{"audio_key":"365047ae1fd9306f1286cbbc75d4af4dc6594da5a3b6dff8048212bbf1d04b81","entity_key":"d_family_responsibilities_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b49eb55d20e7acb86ee02dff22157eabcbec1746382b56a6afdff9757c33828","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/365047ae1fd9306f1286cbbc75d4af4dc6594da5a3b6dff8048212bbf1d04b81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_03:2 -> audio/generated/de-DE/dialogues/3748376e3175957e3a0b7fda58f779dee473f3bb87dc47e16cb727a6ca51b7f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('89206bc2-115d-5711-928c-432bcfa47e9a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17bb0899776cd969470e078956048fddb3be481fda55450b5cde4c7bb2c5b5b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30164cc6-69a9-5012-8c5b-de95cf040ae6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('89206bc2-115d-5711-928c-432bcfa47e9a', 1), '17bb0899776cd969470e078956048fddb3be481fda55450b5cde4c7bb2c5b5b4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3748376e3175957e3a0b7fda58f779dee473f3bb87dc47e16cb727a6ca51b7f1.mp3', 4022, '2026-09-13 06:42:05.949647', '8178fa11befd35457432c6ee816f42da983603a58f7af068f955b1d6a66fb840', 'validated', '{"audio_key":"3748376e3175957e3a0b7fda58f779dee473f3bb87dc47e16cb727a6ca51b7f1","entity_key":"d_public_services_appointments_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8178fa11befd35457432c6ee816f42da983603a58f7af068f955b1d6a66fb840","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3748376e3175957e3a0b7fda58f779dee473f3bb87dc47e16cb727a6ca51b7f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_03:2 -> audio/generated/de-DE/dialogues/39fb05eb37346667c3bd3c0ec41b17583f68037f01a1dc5248982fc355031bc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0498350-d819-5e7e-85c7-c7d925363e66', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9b713b40de6a819410f0d9c14f255066688bf258cc4d7ac500a50601da4fb95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('301a10c0-7f4f-5699-98ca-6aa7b7ab0fa7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0498350-d819-5e7e-85c7-c7d925363e66', 1), 'a9b713b40de6a819410f0d9c14f255066688bf258cc4d7ac500a50601da4fb95',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/39fb05eb37346667c3bd3c0ec41b17583f68037f01a1dc5248982fc355031bc9.mp3', 1488, '2026-09-13 06:42:06.606976', '74e9e0d9520472b85bc3ea5b3018e8974b78c27d251a3d668a68d61bc2ce4b12', 'validated', '{"audio_key":"39fb05eb37346667c3bd3c0ec41b17583f68037f01a1dc5248982fc355031bc9","entity_key":"d_transport_delays_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"74e9e0d9520472b85bc3ea5b3018e8974b78c27d251a3d668a68d61bc2ce4b12","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/39fb05eb37346667c3bd3c0ec41b17583f68037f01a1dc5248982fc355031bc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_03:1 -> audio/generated/de-DE/dialogues/3ac751e2518244fc6daa92393dc0310832aaf5f70bb093aef8db7e8e955a0bd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6150e38d-2043-5e9b-9464-87bba2d90090', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92ca4c086b21281af174aa19049afb0f3b46b1d37d1130d81861ff48fa46ab9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9499a5ed-ed4b-5a72-9a09-bf93f5c7df53', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6150e38d-2043-5e9b-9464-87bba2d90090', 1), '92ca4c086b21281af174aa19049afb0f3b46b1d37d1130d81861ff48fa46ab9c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ac751e2518244fc6daa92393dc0310832aaf5f70bb093aef8db7e8e955a0bd4.mp3', 1697, '2026-09-13 06:42:07.029326', '6310523926c8b05540b77a70af502cc51412fb7e11b9a718476324fdfcfd0bd7', 'validated', '{"audio_key":"3ac751e2518244fc6daa92393dc0310832aaf5f70bb093aef8db7e8e955a0bd4","entity_key":"d_transport_delays_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6310523926c8b05540b77a70af502cc51412fb7e11b9a718476324fdfcfd0bd7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3ac751e2518244fc6daa92393dc0310832aaf5f70bb093aef8db7e8e955a0bd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_03:1 -> audio/generated/de-DE/dialogues/3b7e75436d2ac94b6e84a023d9f8a4b797772605dd09f15621cbe21c86ba7df6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac5f7848-278a-5a93-a594-65e794dcff05', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0800d4fbbca30aa0349ac0d3f0b82ba6a8aab9eb1695ae217b9cd8848add08f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49db373b-6063-51b5-8df0-ad9efab51dd7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac5f7848-278a-5a93-a594-65e794dcff05', 1), '0800d4fbbca30aa0349ac0d3f0b82ba6a8aab9eb1695ae217b9cd8848add08f4',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3b7e75436d2ac94b6e84a023d9f8a4b797772605dd09f15621cbe21c86ba7df6.mp3', 2089, '2026-09-13 06:42:07.711699', '93535aa548742e8b58b9e9c1c042d2e2a47913ce8cfaa41bd436f12afa8a972a', 'validated', '{"audio_key":"3b7e75436d2ac94b6e84a023d9f8a4b797772605dd09f15621cbe21c86ba7df6","entity_key":"d_unexpected_situations_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"93535aa548742e8b58b9e9c1c042d2e2a47913ce8cfaa41bd436f12afa8a972a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3b7e75436d2ac94b6e84a023d9f8a4b797772605dd09f15621cbe21c86ba7df6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_03:3 -> audio/generated/de-DE/dialogues/3d46662d38b71e5effc4d0b2564d56c38d76b34866f7da7106710279c28028a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d50e041-961a-5c9f-82ef-dc5c00e710da', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ac87b2cfa7f6d7ca7aba86426c928197e5cb1a337d8c4c6143f56559312148c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e105c1ed-9832-5cf3-a95b-d7d48480772f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d50e041-961a-5c9f-82ef-dc5c00e710da', 1), '6ac87b2cfa7f6d7ca7aba86426c928197e5cb1a337d8c4c6143f56559312148c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d46662d38b71e5effc4d0b2564d56c38d76b34866f7da7106710279c28028a5.mp3', 2507, '2026-09-13 06:42:08.312332', 'b21efb777882038b7f7e5f616208a15136b16715c68d461ea989a2ae647b190d', 'validated', '{"audio_key":"3d46662d38b71e5effc4d0b2564d56c38d76b34866f7da7106710279c28028a5","entity_key":"d_family_responsibilities_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b21efb777882038b7f7e5f616208a15136b16715c68d461ea989a2ae647b190d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3d46662d38b71e5effc4d0b2564d56c38d76b34866f7da7106710279c28028a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_03:4 -> audio/generated/de-DE/dialogues/3de61a47d0216a0313dca8c59a1fecd1d31bcba930ffe4d812989c62100151c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df0777d1-9d59-533c-a2a7-0a5e4d436f05', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c51783c945fa2dd7d32cdba9aa4cbc2d96af8f155735f254bdb4192a80803a9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67c8e463-3041-5e52-9104-86dd87355d35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df0777d1-9d59-533c-a2a7-0a5e4d436f05', 1), 'c51783c945fa2dd7d32cdba9aa4cbc2d96af8f155735f254bdb4192a80803a9c',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3de61a47d0216a0313dca8c59a1fecd1d31bcba930ffe4d812989c62100151c3.mp3', 1619, '2026-09-13 06:42:08.813173', '6f6bb0ea0151bd156472cf40421ff859091dd1123391f3616500b12304f1f926', 'validated', '{"audio_key":"3de61a47d0216a0313dca8c59a1fecd1d31bcba930ffe4d812989c62100151c3","entity_key":"d_family_responsibilities_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6f6bb0ea0151bd156472cf40421ff859091dd1123391f3616500b12304f1f926","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3de61a47d0216a0313dca8c59a1fecd1d31bcba930ffe4d812989c62100151c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_02:2 -> audio/generated/de-DE/dialogues/3e4c2f4526d6307183935346a1ecbe18153a91e8627062459c21640ac0708256.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42542221-8ba1-5bd8-b57a-4f1d120a7ad0', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd751d1c17ba462a4313d49b717c1840faee25ada6210d1f799dc39c364017ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b413648-4d67-5785-a3db-c1b5cf397c96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42542221-8ba1-5bd8-b57a-4f1d120a7ad0', 1), 'd751d1c17ba462a4313d49b717c1840faee25ada6210d1f799dc39c364017ded',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e4c2f4526d6307183935346a1ecbe18153a91e8627062459c21640ac0708256.mp3', 2168, '2026-09-13 06:42:09.447390', 'bfcf5c6466e27ade290849e4c264d9a007dd870b73b4d0f7b345da030817ae17', 'validated', '{"audio_key":"3e4c2f4526d6307183935346a1ecbe18153a91e8627062459c21640ac0708256","entity_key":"d_project_planning_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"bfcf5c6466e27ade290849e4c264d9a007dd870b73b4d0f7b345da030817ae17","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3e4c2f4526d6307183935346a1ecbe18153a91e8627062459c21640ac0708256.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_02:3 -> audio/generated/de-DE/dialogues/40218a266947c7941bc4ba29084cd5885d665eb0f792c1b4bdced38d9551e8aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a828853-bd48-5d54-8d81-d54245613de6', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93985e01e2955274a0c9d08e05c0b8b47e6a836744c5d8fdeaeacea7e4b187f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c76d054-ca9f-51c4-a163-4da384446f35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a828853-bd48-5d54-8d81-d54245613de6', 1), '93985e01e2955274a0c9d08e05c0b8b47e6a836744c5d8fdeaeacea7e4b187f2',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/40218a266947c7941bc4ba29084cd5885d665eb0f792c1b4bdced38d9551e8aa.mp3', 2272, '2026-09-13 06:42:09.923237', '6910fa60e778c15783670b075b5fe6280fe7f4e45742001285adc5bb3289518f', 'validated', '{"audio_key":"40218a266947c7941bc4ba29084cd5885d665eb0f792c1b4bdced38d9551e8aa","entity_key":"d_public_services_appointments_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6910fa60e778c15783670b075b5fe6280fe7f4e45742001285adc5bb3289518f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/40218a266947c7941bc4ba29084cd5885d665eb0f792c1b4bdced38d9551e8aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_02:3 -> audio/generated/de-DE/dialogues/42eda9ef82b49b2cf932d183b7efcc34abc1efb9162e1c6c42c0fa9acf719989.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7a645bf-e2cf-5028-9da5-6bcc5b57ab78', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bde98d4c87ec5a831388ac89990d33cd31aa313ffad59e165881f1e1de7a36d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4739c569-fd02-5b07-9faf-74fde185acea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7a645bf-e2cf-5028-9da5-6bcc5b57ab78', 1), 'bde98d4c87ec5a831388ac89990d33cd31aa313ffad59e165881f1e1de7a36d9',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/42eda9ef82b49b2cf932d183b7efcc34abc1efb9162e1c6c42c0fa9acf719989.mp3', 2272, '2026-09-13 06:42:10.565776', 'b12c56e2152843fda12a2f62882dafddd67140a0540a8fa256dd9500f448c81c', 'validated', '{"audio_key":"42eda9ef82b49b2cf932d183b7efcc34abc1efb9162e1c6c42c0fa9acf719989","entity_key":"d_transport_delays_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b12c56e2152843fda12a2f62882dafddd67140a0540a8fa256dd9500f448c81c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/42eda9ef82b49b2cf932d183b7efcc34abc1efb9162e1c6c42c0fa9acf719989.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_02:4 -> audio/generated/de-DE/dialogues/4f33d0e8c880f744f2351262c24d9e01533691bfd389e5f55746125ec154159d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22b2de60-900f-57a0-bfc0-45415f8e67f5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30367c30124aad17d001317cec412ddf354da683d6ddf2adbbff32168c0aff4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0ac544b-57b5-51ec-bcb3-cd5585067f34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22b2de60-900f-57a0-bfc0-45415f8e67f5', 1), 'd30367c30124aad17d001317cec412ddf354da683d6ddf2adbbff32168c0aff4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4f33d0e8c880f744f2351262c24d9e01533691bfd389e5f55746125ec154159d.mp3', 3239, '2026-09-13 06:42:11.151012', '59458699645ecb5b4ba317f52782921a287a68e332af3fe20cbca62f1319687c', 'validated', '{"audio_key":"4f33d0e8c880f744f2351262c24d9e01533691bfd389e5f55746125ec154159d","entity_key":"d_family_responsibilities_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"59458699645ecb5b4ba317f52782921a287a68e332af3fe20cbca62f1319687c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4f33d0e8c880f744f2351262c24d9e01533691bfd389e5f55746125ec154159d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_01:4 -> audio/generated/de-DE/dialogues/4f63f4987facf246f04f63f00afe11fe52c8132397e28ef8a4b992ac1dffa5c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c1105f59-589a-50f8-9310-e7ca8cd32e82', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa0001b29f31a7ec1dacb41b3c924d5426c42a511bb2ca78230639d25441c5dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94d4d114-359a-541b-ae38-deccd380db30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c1105f59-589a-50f8-9310-e7ca8cd32e82', 1), 'aa0001b29f31a7ec1dacb41b3c924d5426c42a511bb2ca78230639d25441c5dc',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4f63f4987facf246f04f63f00afe11fe52c8132397e28ef8a4b992ac1dffa5c6.mp3', 2272, '2026-09-13 06:42:11.692993', 'bb8dde386a59ebf8a68c9f3af5f72b49ea0a79df918f9a963b9b1a9086e38f75', 'validated', '{"audio_key":"4f63f4987facf246f04f63f00afe11fe52c8132397e28ef8a4b992ac1dffa5c6","entity_key":"d_transport_delays_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bb8dde386a59ebf8a68c9f3af5f72b49ea0a79df918f9a963b9b1a9086e38f75","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4f63f4987facf246f04f63f00afe11fe52c8132397e28ef8a4b992ac1dffa5c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_01:3 -> audio/generated/de-DE/dialogues/5002f849a1f15bf33c69e101906df0715716a82659e6cf68ac997749afedad3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f6b1e38-9193-5f73-8e7b-6edcecc4262f', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d17d6b8354d3467af9f5cd698e95224b864f289e6969d0d8b47aad92ede451d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94172ed9-af16-5e7f-adc0-9a8c113bfe45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f6b1e38-9193-5f73-8e7b-6edcecc4262f', 1), '2d17d6b8354d3467af9f5cd698e95224b864f289e6969d0d8b47aad92ede451d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5002f849a1f15bf33c69e101906df0715716a82659e6cf68ac997749afedad3b.mp3', 1515, '2026-09-13 06:42:12.177586', '2aecc7107586ceaa1a17b2f706ee6516a2fb658c4701a58e948246a9a57e83cb', 'validated', '{"audio_key":"5002f849a1f15bf33c69e101906df0715716a82659e6cf68ac997749afedad3b","entity_key":"d_food_nutrition_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2aecc7107586ceaa1a17b2f706ee6516a2fb658c4701a58e948246a9a57e83cb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5002f849a1f15bf33c69e101906df0715716a82659e6cf68ac997749afedad3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_03:4 -> audio/generated/de-DE/dialogues/505d89269094564eb3899d8b8771717804e66831d927d93fc746063432ad8509.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e532de94-f591-545a-9920-e9d03c9166c4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97aaebbf2f5978dac382e0dbcdbeed32a37144ad094af1bddcdd4c8c7133ab8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('594c368c-1963-5562-b04b-89c620b9c8a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e532de94-f591-545a-9920-e9d03c9166c4', 1), '97aaebbf2f5978dac382e0dbcdbeed32a37144ad094af1bddcdd4c8c7133ab8f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/505d89269094564eb3899d8b8771717804e66831d927d93fc746063432ad8509.mp3', 3108, '2026-09-13 06:42:12.915401', 'ba85ab2ad4cd65751398bdc9885572d848282b5bc3b7d4cb5558b08922cd5b1b', 'validated', '{"audio_key":"505d89269094564eb3899d8b8771717804e66831d927d93fc746063432ad8509","entity_key":"d_unexpected_situations_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ba85ab2ad4cd65751398bdc9885572d848282b5bc3b7d4cb5558b08922cd5b1b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/505d89269094564eb3899d8b8771717804e66831d927d93fc746063432ad8509.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_02:1 -> audio/generated/de-DE/dialogues/50879840f1d36512f29f1ad74cdbc0f7f049735e18db3d31f2f79503605136e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d46e9ec-bb91-5287-950c-28e1a0728b76', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47be050d2ea8c67e4581f27bf9e551f718c1de9f965a1219799805429b9c3ec0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa91038f-da9b-54fc-8345-452cbe508521', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d46e9ec-bb91-5287-950c-28e1a0728b76', 1), '47be050d2ea8c67e4581f27bf9e551f718c1de9f965a1219799805429b9c3ec0',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50879840f1d36512f29f1ad74cdbc0f7f049735e18db3d31f2f79503605136e5.mp3', 2089, '2026-09-13 06:42:13.256237', '129c422e346255429798f3abfca8acebdd305cda37fda94ed3715013a8fab50b', 'validated', '{"audio_key":"50879840f1d36512f29f1ad74cdbc0f7f049735e18db3d31f2f79503605136e5","entity_key":"d_phone_messages_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"129c422e346255429798f3abfca8acebdd305cda37fda94ed3715013a8fab50b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/50879840f1d36512f29f1ad74cdbc0f7f049735e18db3d31f2f79503605136e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_02:4 -> audio/generated/de-DE/dialogues/56e21c6d4160085b95fea21b219670e0a4c7073045daab9fb2b1a87d4e3a60ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e3d41a5-0ad1-592d-b953-fdbf64d959ff', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d446a1273b25e4c4a45bc9ca3202d09b59193277244b3dd4d82df83f5560c13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e26236d5-beaf-5af4-a55e-8dd3e9543f8c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e3d41a5-0ad1-592d-b953-fdbf64d959ff', 1), '8d446a1273b25e4c4a45bc9ca3202d09b59193277244b3dd4d82df83f5560c13',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56e21c6d4160085b95fea21b219670e0a4c7073045daab9fb2b1a87d4e3a60ea.mp3', 2742, '2026-09-13 06:42:14.084661', 'd4bbba6d9038761b41c298568afdd899b4c61c09950169823dcff915a2169150', 'validated', '{"audio_key":"56e21c6d4160085b95fea21b219670e0a4c7073045daab9fb2b1a87d4e3a60ea","entity_key":"d_clubs_volunteering_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d4bbba6d9038761b41c298568afdd899b4c61c09950169823dcff915a2169150","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/56e21c6d4160085b95fea21b219670e0a4c7073045daab9fb2b1a87d4e3a60ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_01:1 -> audio/generated/de-DE/dialogues/57a1bba79ef7255f49dea4cc3c11b1ef7ab375b28fbe43a936994824b07189cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9b8e29b-cb26-5550-bf45-f3c71c7ccb70', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '065cc1b54b90250b88b4ff09bac25ade4fd0586bcae467ac5f9e508e9a4e657d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a0e5637-0921-577e-82fc-28f20b0fa3b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9b8e29b-cb26-5550-bf45-f3c71c7ccb70', 1), '065cc1b54b90250b88b4ff09bac25ade4fd0586bcae467ac5f9e508e9a4e657d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/57a1bba79ef7255f49dea4cc3c11b1ef7ab375b28fbe43a936994824b07189cb.mp3', 2821, '2026-09-13 06:42:14.701330', '639e91d7c20382fb1b44a05b5c9cdfaca072496510691af22b5f9045c6452c3e', 'validated', '{"audio_key":"57a1bba79ef7255f49dea4cc3c11b1ef7ab375b28fbe43a936994824b07189cb","entity_key":"d_news_information_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"639e91d7c20382fb1b44a05b5c9cdfaca072496510691af22b5f9045c6452c3e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/57a1bba79ef7255f49dea4cc3c11b1ef7ab375b28fbe43a936994824b07189cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_01:2 -> audio/generated/de-DE/dialogues/58d65565e4798fc397d9336f59f6222f05f654946b893c6f4553d7dbe44323c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9371b664-2143-555a-a40e-d88fc87f50d2', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61b290780b010b1156d6dcbdd58150a92bb0623bfd97f06b0eebde5b5301937e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d89edae-31bc-5e4f-82e6-c074b12664d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9371b664-2143-555a-a40e-d88fc87f50d2', 1), '61b290780b010b1156d6dcbdd58150a92bb0623bfd97f06b0eebde5b5301937e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/58d65565e4798fc397d9336f59f6222f05f654946b893c6f4553d7dbe44323c2.mp3', 2168, '2026-09-13 06:42:15.173844', '04f5fb6b2b37d0469d474bb490d3e996ba1edead174795183f1fdfffeed4e428', 'validated', '{"audio_key":"58d65565e4798fc397d9336f59f6222f05f654946b893c6f4553d7dbe44323c2","entity_key":"d_family_responsibilities_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"04f5fb6b2b37d0469d474bb490d3e996ba1edead174795183f1fdfffeed4e428","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/58d65565e4798fc397d9336f59f6222f05f654946b893c6f4553d7dbe44323c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_01:3 -> audio/generated/de-DE/dialogues/5b49ad826532d8c37f8c3d435ffbe48898e4596041f88b571f32795b3ae209ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73f81501-a718-5033-9f65-17b842415c42', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85bad52bf026e5a36da9231e345ba7ff026074ad3ea04c698c0df881f0316b52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('087415dd-3b76-5cf4-bc11-2acdca3c9528', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73f81501-a718-5033-9f65-17b842415c42', 1), '85bad52bf026e5a36da9231e345ba7ff026074ad3ea04c698c0df881f0316b52',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b49ad826532d8c37f8c3d435ffbe48898e4596041f88b571f32795b3ae209ce.mp3', 2272, '2026-09-13 06:42:15.804383', 'ce172aa9236af97242a2ca07554d5ca566baa601355f87f50fd8c3ecd857081d', 'validated', '{"audio_key":"5b49ad826532d8c37f8c3d435ffbe48898e4596041f88b571f32795b3ae209ce","entity_key":"d_clubs_volunteering_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ce172aa9236af97242a2ca07554d5ca566baa601355f87f50fd8c3ecd857081d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5b49ad826532d8c37f8c3d435ffbe48898e4596041f88b571f32795b3ae209ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_03:2 -> audio/generated/de-DE/dialogues/5e795dbacc5a3bf7acbaf9570213468ac4a2b2f5e103bd22fd2c915f66c49a9d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd08cff8-817f-5cbb-a1e3-75ce03379c58', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6667569aeab92b6b95f9f0fcdb6dbb2a70d0c8e464078cef6ff48ec09f8ddc1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c043d459-d0c5-579c-8d2f-cbd9e63e31f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd08cff8-817f-5cbb-a1e3-75ce03379c58', 1), '6667569aeab92b6b95f9f0fcdb6dbb2a70d0c8e464078cef6ff48ec09f8ddc1a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5e795dbacc5a3bf7acbaf9570213468ac4a2b2f5e103bd22fd2c915f66c49a9d.mp3', 2272, '2026-09-13 06:42:16.286787', 'bd90f2893209dcaf991ff54996c1e747b2f38b030062328625f55e98efeeeae6', 'validated', '{"audio_key":"5e795dbacc5a3bf7acbaf9570213468ac4a2b2f5e103bd22fd2c915f66c49a9d","entity_key":"d_project_planning_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bd90f2893209dcaf991ff54996c1e747b2f38b030062328625f55e98efeeeae6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5e795dbacc5a3bf7acbaf9570213468ac4a2b2f5e103bd22fd2c915f66c49a9d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_02:2 -> audio/generated/de-DE/dialogues/6050fd7b0eafac07aadaa07c8ff63361285b419e9e87df0ef6d284baa02b45f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d0b5744-f1cc-5fa3-bf33-726297186111', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c798e988ed7341998e1ed18aa3023d19046070c05d809a3e6204c74b4f4118ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44db19ef-b871-559e-9f53-a4a21ad1a6b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d0b5744-f1cc-5fa3-bf33-726297186111', 1), 'c798e988ed7341998e1ed18aa3023d19046070c05d809a3e6204c74b4f4118ac',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6050fd7b0eafac07aadaa07c8ff63361285b419e9e87df0ef6d284baa02b45f8.mp3', 3422, '2026-09-13 06:42:17.122160', '10fe3bfd7f3ed9d30db6b7c844d22d936e116bcad7b5e9335d2a89d3934128dc', 'validated', '{"audio_key":"6050fd7b0eafac07aadaa07c8ff63361285b419e9e87df0ef6d284baa02b45f8","entity_key":"d_clubs_volunteering_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"10fe3bfd7f3ed9d30db6b7c844d22d936e116bcad7b5e9335d2a89d3934128dc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6050fd7b0eafac07aadaa07c8ff63361285b419e9e87df0ef6d284baa02b45f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_01:1 -> audio/generated/de-DE/dialogues/62b0259480a9598156bff15c268ba0a681e4ff483ee2cd304cc35ab3d47f45d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f93a9791-568a-5b1d-a3f1-d7ce4ae4b00b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ec9aed4a6a433b0f5266a4dd4f78467a6ba48bd7b96ce63bca7e7b746ffca50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('effd2920-6419-53b8-9d92-949e0198f874', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f93a9791-568a-5b1d-a3f1-d7ce4ae4b00b', 1), '5ec9aed4a6a433b0f5266a4dd4f78467a6ba48bd7b96ce63bca7e7b746ffca50',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/62b0259480a9598156bff15c268ba0a681e4ff483ee2cd304cc35ab3d47f45d2.mp3', 3761, '2026-09-13 06:42:17.618143', 'a0fdf154d05d9e2dd2fbb2099356846c3c822a747ca2267f05b9465355c3f428', 'validated', '{"audio_key":"62b0259480a9598156bff15c268ba0a681e4ff483ee2cd304cc35ab3d47f45d2","entity_key":"d_project_planning_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a0fdf154d05d9e2dd2fbb2099356846c3c822a747ca2267f05b9465355c3f428","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/62b0259480a9598156bff15c268ba0a681e4ff483ee2cd304cc35ab3d47f45d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_02:4 -> audio/generated/de-DE/dialogues/637549e86b55a9ecc41e413a5202c82ba8fdaf4f91ddf510acf78fcd3f727cdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34cc4d5e-9d17-5252-bec9-682783e24646', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0933dd511feeda4eb4f76125f29f75717b8a8db4e9edcb96a385193ed3f232a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c2629cb-0e37-5bc8-bd77-f65d6589fba5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34cc4d5e-9d17-5252-bec9-682783e24646', 1), 'd0933dd511feeda4eb4f76125f29f75717b8a8db4e9edcb96a385193ed3f232a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/637549e86b55a9ecc41e413a5202c82ba8fdaf4f91ddf510acf78fcd3f727cdd.mp3', 2507, '2026-09-13 06:42:18.270695', 'b8b45052745787df905d974485a61eaf00cc6e51efbb3cb01743d6dbf4b90d01', 'validated', '{"audio_key":"637549e86b55a9ecc41e413a5202c82ba8fdaf4f91ddf510acf78fcd3f727cdd","entity_key":"d_news_information_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b8b45052745787df905d974485a61eaf00cc6e51efbb3cb01743d6dbf4b90d01","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/637549e86b55a9ecc41e413a5202c82ba8fdaf4f91ddf510acf78fcd3f727cdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_02:3 -> audio/generated/de-DE/dialogues/65354acb82166ddb00190f4287824fe3c4744e81f6ba5999dc60cff276dc11f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('baf66e8c-6148-5be0-9b8a-62c561fb17a4', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '224be9a3a91b658c56cd7d36ecfd91e37e52756e9edd9d409d0cb6120e25c12b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45a08b86-e420-546e-b1a1-1e72131e8832', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('baf66e8c-6148-5be0-9b8a-62c561fb17a4', 1), '224be9a3a91b658c56cd7d36ecfd91e37e52756e9edd9d409d0cb6120e25c12b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/65354acb82166ddb00190f4287824fe3c4744e81f6ba5999dc60cff276dc11f6.mp3', 4545, '2026-09-13 06:42:19.049265', '243949381cc64ad6b7bab3348df8528a528ab2334906249395b844b4bacd476c', 'validated', '{"audio_key":"65354acb82166ddb00190f4287824fe3c4744e81f6ba5999dc60cff276dc11f6","entity_key":"d_project_planning_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"243949381cc64ad6b7bab3348df8528a528ab2334906249395b844b4bacd476c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/65354acb82166ddb00190f4287824fe3c4744e81f6ba5999dc60cff276dc11f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_01:3 -> audio/generated/de-DE/dialogues/6606f9156f62e784cf924f5ca7e4fbaf4de3acef9bc84639e7e8b0ddff96b1e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('642fd13f-1d6f-56e6-b44a-8897749c644b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7301da037811012e1e10d2dec111547185ae092cfad669ffbe5856ff1475c1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a20342db-a539-5fe5-b5ae-e3158b76a713', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('642fd13f-1d6f-56e6-b44a-8897749c644b', 1), 'e7301da037811012e1e10d2dec111547185ae092cfad669ffbe5856ff1475c1b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6606f9156f62e784cf924f5ca7e4fbaf4de3acef9bc84639e7e8b0ddff96b1e3.mp3', 1384, '2026-09-13 06:42:19.289899', '7f247564e8d61e68ed89134e45698078ff9d01dfa9097ded7a35927761c9338e', 'validated', '{"audio_key":"6606f9156f62e784cf924f5ca7e4fbaf4de3acef9bc84639e7e8b0ddff96b1e3","entity_key":"d_phone_messages_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7f247564e8d61e68ed89134e45698078ff9d01dfa9097ded7a35927761c9338e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6606f9156f62e784cf924f5ca7e4fbaf4de3acef9bc84639e7e8b0ddff96b1e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_02:2 -> audio/generated/de-DE/dialogues/6674693536d016fcab6eb2c315d276713eaa67f0b3e04f6fa66a9568544eb59b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c36216e-4ecb-5e3c-9022-1d8b8eefd851', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db4b117b403b80d6117158f936a4ef081ea79d72be3752c7d3abfd499a070656'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b15af38-4eec-53f2-b9d2-9eed43ddebef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c36216e-4ecb-5e3c-9022-1d8b8eefd851', 1), 'db4b117b403b80d6117158f936a4ef081ea79d72be3752c7d3abfd499a070656',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6674693536d016fcab6eb2c315d276713eaa67f0b3e04f6fa66a9568544eb59b.mp3', 2925, '2026-09-13 06:42:20.226358', '97cadee2a9f042df585384d50eb2a195342d4a6867717f67969dc9b97d3fd7e9', 'validated', '{"audio_key":"6674693536d016fcab6eb2c315d276713eaa67f0b3e04f6fa66a9568544eb59b","entity_key":"d_phone_messages_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"97cadee2a9f042df585384d50eb2a195342d4a6867717f67969dc9b97d3fd7e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6674693536d016fcab6eb2c315d276713eaa67f0b3e04f6fa66a9568544eb59b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_01:4 -> audio/generated/de-DE/dialogues/6c0dddaf20037b0a78cdc4ce192e8762fd77a66434ab208822b462b989c83a15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02390658-35c8-5534-a365-cf8c6261107d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '177570c085ffd85adc6c9853b45c6d7ba7be2f9825abb9c374ada7cced1ad5ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45d1e95e-22b5-53cd-aa37-1f823e99198d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02390658-35c8-5534-a365-cf8c6261107d', 1), '177570c085ffd85adc6c9853b45c6d7ba7be2f9825abb9c374ada7cced1ad5ef',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c0dddaf20037b0a78cdc4ce192e8762fd77a66434ab208822b462b989c83a15.mp3', 2507, '2026-09-13 06:42:20.430964', '9078e20b37399f20e3edf0ddd11dc80d076b388bd5e2e7efd388daf47f032277', 'validated', '{"audio_key":"6c0dddaf20037b0a78cdc4ce192e8762fd77a66434ab208822b462b989c83a15","entity_key":"d_project_planning_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9078e20b37399f20e3edf0ddd11dc80d076b388bd5e2e7efd388daf47f032277","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6c0dddaf20037b0a78cdc4ce192e8762fd77a66434ab208822b462b989c83a15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_02:4 -> audio/generated/de-DE/dialogues/6d8706dc5a3e0d4872f62ee373e7ab9b24d2c32d68074be44f61bf8c14a784b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3bf17323-3208-5f5a-88d9-f2d6dbd071f1', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a521495822845d4afe2d3d4cb24f11c92913676ff3d4040a83b83ece3c880326'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('619f9478-8d9e-59e5-94ff-1718e8f028b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3bf17323-3208-5f5a-88d9-f2d6dbd071f1', 1), 'a521495822845d4afe2d3d4cb24f11c92913676ff3d4040a83b83ece3c880326',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d8706dc5a3e0d4872f62ee373e7ab9b24d2c32d68074be44f61bf8c14a784b6.mp3', 2821, '2026-09-13 06:42:21.388928', '2d60fa68ebd41a0688d101303dbab30d3783f6a8e12fae7d975936de0d01498a', 'validated', '{"audio_key":"6d8706dc5a3e0d4872f62ee373e7ab9b24d2c32d68074be44f61bf8c14a784b6","entity_key":"d_project_planning_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"2d60fa68ebd41a0688d101303dbab30d3783f6a8e12fae7d975936de0d01498a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6d8706dc5a3e0d4872f62ee373e7ab9b24d2c32d68074be44f61bf8c14a784b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_01:4 -> audio/generated/de-DE/dialogues/6d8e689ac3c506b7414b74f75614503e336409a674c5c039093a09cbe20a2d40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c5566b8-8266-5e7e-a77a-f55eaeb557a2', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a7e506fc017a556e14ff654305e598c446ab8775c799cc79c3a45f98a1a6cdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd960573-5b9c-5129-93d0-059d787ab60b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c5566b8-8266-5e7e-a77a-f55eaeb557a2', 1), '7a7e506fc017a556e14ff654305e598c446ab8775c799cc79c3a45f98a1a6cdf',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d8e689ac3c506b7414b74f75614503e336409a674c5c039093a09cbe20a2d40.mp3', 3160, '2026-09-13 06:42:21.716755', '676031cfa3b4a050648e0eee640abc9eacdbd463e17c6764987b8d500dcfe7e0', 'validated', '{"audio_key":"6d8e689ac3c506b7414b74f75614503e336409a674c5c039093a09cbe20a2d40","entity_key":"d_future_changes_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"676031cfa3b4a050648e0eee640abc9eacdbd463e17c6764987b8d500dcfe7e0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6d8e689ac3c506b7414b74f75614503e336409a674c5c039093a09cbe20a2d40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_03:4 -> audio/generated/de-DE/dialogues/7234bb75b0fd9469e653929ce742d3fb67951814642a27ad387760c663c84a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1092cc7b-24d8-5c15-b421-ded8a164832b', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ffe234af294b216f4e6ea7bbbc80472658546d0cea4d6714fb1ac21b09c6c85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('753f9b49-8246-52db-82f5-705ec3a5a97b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1092cc7b-24d8-5c15-b421-ded8a164832b', 1), '4ffe234af294b216f4e6ea7bbbc80472658546d0cea4d6714fb1ac21b09c6c85',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7234bb75b0fd9469e653929ce742d3fb67951814642a27ad387760c663c84a64.mp3', 2272, '2026-09-13 06:42:22.519488', 'feb52cd4d12d9a38f96832ba3a0b79bb72b276c7125f8d42bb903fb3e3a2582f', 'validated', '{"audio_key":"7234bb75b0fd9469e653929ce742d3fb67951814642a27ad387760c663c84a64","entity_key":"d_phone_messages_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"feb52cd4d12d9a38f96832ba3a0b79bb72b276c7125f8d42bb903fb3e3a2582f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7234bb75b0fd9469e653929ce742d3fb67951814642a27ad387760c663c84a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_01:4 -> audio/generated/de-DE/dialogues/72414f9141766655fcdba3717ff44f56b93824db9e12586e258ae0b77d6177d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e40f90bc-c1df-5bb0-9a78-d4ba9a3ebf45', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce137db2da20325e649cbe6f60f489b1e3563634a90ab89ea78ab1e8825b3202'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9d3df26-0e1f-5830-94a4-91c2f9ebfb39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e40f90bc-c1df-5bb0-9a78-d4ba9a3ebf45', 1), 'ce137db2da20325e649cbe6f60f489b1e3563634a90ab89ea78ab1e8825b3202',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/72414f9141766655fcdba3717ff44f56b93824db9e12586e258ae0b77d6177d0.mp3', 2403, '2026-09-13 06:42:22.878556', 'ef7dde1f7235af6b01c70cc42b2701be0a8658db8312f858e6806555927935bd', 'validated', '{"audio_key":"72414f9141766655fcdba3717ff44f56b93824db9e12586e258ae0b77d6177d0","entity_key":"d_unexpected_situations_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ef7dde1f7235af6b01c70cc42b2701be0a8658db8312f858e6806555927935bd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/72414f9141766655fcdba3717ff44f56b93824db9e12586e258ae0b77d6177d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_01:4 -> audio/generated/de-DE/dialogues/7851da0e1b3e3eb7bb2ac654c535263c51dc63d55ed283a989c11c92beee2332.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4626acf4-24f9-55b4-bb6a-63c533e56a1a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc8eb995d620c12b92a23e4ac7c1273ea21cf18ceef620317b89ca3f6a8e4865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c56139a8-c14c-5bd2-ae3e-80900ad8522a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4626acf4-24f9-55b4-bb6a-63c533e56a1a', 1), 'bc8eb995d620c12b92a23e4ac7c1273ea21cf18ceef620317b89ca3f6a8e4865',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7851da0e1b3e3eb7bb2ac654c535263c51dc63d55ed283a989c11c92beee2332.mp3', 3761, '2026-09-13 06:42:23.885965', '5e3ae31b9bea85082942a2739a13e3bf4230488f17c37cb575c53665821939be', 'validated', '{"audio_key":"7851da0e1b3e3eb7bb2ac654c535263c51dc63d55ed283a989c11c92beee2332","entity_key":"d_food_nutrition_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5e3ae31b9bea85082942a2739a13e3bf4230488f17c37cb575c53665821939be","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7851da0e1b3e3eb7bb2ac654c535263c51dc63d55ed283a989c11c92beee2332.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_01:2 -> audio/generated/de-DE/dialogues/788de72bb0b4a6949101a9852771b7af918719470a13cde48f90a477ae5b072b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ca4e869-47b0-56b4-94b0-cdda893d14f0', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e76e7c26291e3ee47f192e9307e75c633bf8694e241808efa2156ffc1527f02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('587bcaa8-93ab-5576-801b-2e0b370ad5dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ca4e869-47b0-56b4-94b0-cdda893d14f0', 1), '1e76e7c26291e3ee47f192e9307e75c633bf8694e241808efa2156ffc1527f02',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/788de72bb0b4a6949101a9852771b7af918719470a13cde48f90a477ae5b072b.mp3', 1619, '2026-09-13 06:42:23.964604', '0c6104a3de80c95780e2a55f754cf9a323ec5c67578fd92037d35135503600d3', 'validated', '{"audio_key":"788de72bb0b4a6949101a9852771b7af918719470a13cde48f90a477ae5b072b","entity_key":"d_phone_messages_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0c6104a3de80c95780e2a55f754cf9a323ec5c67578fd92037d35135503600d3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/788de72bb0b4a6949101a9852771b7af918719470a13cde48f90a477ae5b072b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_01:3 -> audio/generated/de-DE/dialogues/7aaec2c68db4237f4b883abcc575653ac1f07db781aa66a7dabc93d7c6376cf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('075947b2-5923-5700-be6e-c25797ce4999', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e8600cc82aa7517f24da52dd932bad99b4167229747c568dde7bc59b31fdfa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea4a626e-da3d-502b-aa6d-5b050369fb9e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('075947b2-5923-5700-be6e-c25797ce4999', 1), '8e8600cc82aa7517f24da52dd932bad99b4167229747c568dde7bc59b31fdfa4',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7aaec2c68db4237f4b883abcc575653ac1f07db781aa66a7dabc93d7c6376cf9.mp3', 2220, '2026-09-13 06:42:25.004424', '71042ce827756ab4936dc5d7be2a7e38faff1b34a4d5bca6d90493445e186978', 'validated', '{"audio_key":"7aaec2c68db4237f4b883abcc575653ac1f07db781aa66a7dabc93d7c6376cf9","entity_key":"d_news_information_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"71042ce827756ab4936dc5d7be2a7e38faff1b34a4d5bca6d90493445e186978","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7aaec2c68db4237f4b883abcc575653ac1f07db781aa66a7dabc93d7c6376cf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_02:3 -> audio/generated/de-DE/dialogues/7d52eb756863e55d83cea933d5fbff6ae7a81dd9eca23858fdcbf4094eae7317.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c149473-b189-512d-bd86-f5543dc62e8f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6adc2954dfa93889f9e95551f53d3bb2428c06363bb6022ab42ee0f6691bc35b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31018cef-36a0-5370-81ac-354a9516ebda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c149473-b189-512d-bd86-f5543dc62e8f', 1), '6adc2954dfa93889f9e95551f53d3bb2428c06363bb6022ab42ee0f6691bc35b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d52eb756863e55d83cea933d5fbff6ae7a81dd9eca23858fdcbf4094eae7317.mp3', 3186, '2026-09-13 06:42:25.255879', '9f143e6ec6822765c0ded1eab743e058270c41b43c118cb19f4c6ba07f69115b', 'validated', '{"audio_key":"7d52eb756863e55d83cea933d5fbff6ae7a81dd9eca23858fdcbf4094eae7317","entity_key":"d_phone_messages_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9f143e6ec6822765c0ded1eab743e058270c41b43c118cb19f4c6ba07f69115b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7d52eb756863e55d83cea933d5fbff6ae7a81dd9eca23858fdcbf4094eae7317.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_03:3 -> audio/generated/de-DE/dialogues/81e50ca039a67a655a3ad479f2177580df61238d5705329ca2976ceb269afb12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b344f87-91f4-57c5-be3f-5f61b0ce50e7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ecc83c3a4afa5d64f5c69e597f14db5be071d3ec6bcf15696dfe294a0b85323'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b778cdab-8c95-5951-a21d-a2a46e2bf123', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b344f87-91f4-57c5-be3f-5f61b0ce50e7', 1), '8ecc83c3a4afa5d64f5c69e597f14db5be071d3ec6bcf15696dfe294a0b85323',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81e50ca039a67a655a3ad479f2177580df61238d5705329ca2976ceb269afb12.mp3', 2507, '2026-09-13 06:42:26.155468', 'd567c52563fa206aa8838444884cd8dd2eafd0916722746d9186387b212ee9fb', 'validated', '{"audio_key":"81e50ca039a67a655a3ad479f2177580df61238d5705329ca2976ceb269afb12","entity_key":"d_transport_delays_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d567c52563fa206aa8838444884cd8dd2eafd0916722746d9186387b212ee9fb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/81e50ca039a67a655a3ad479f2177580df61238d5705329ca2976ceb269afb12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_01:4 -> audio/generated/de-DE/dialogues/88d95520673b4ff9c0e6b7ad1ff0bbefe5ecc06c5744e3f215755b59384a124f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f8ffc2c-dd2e-500a-ba3e-40988bd72cd6', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd4714d5532dce39213dfd012e9766c4b1ecd0ac3f7974c841999500bbbdd050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('952e6cba-dc9f-5b39-b4ca-e599bfb675d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f8ffc2c-dd2e-500a-ba3e-40988bd72cd6', 1), 'cd4714d5532dce39213dfd012e9766c4b1ecd0ac3f7974c841999500bbbdd050',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/88d95520673b4ff9c0e6b7ad1ff0bbefe5ecc06c5744e3f215755b59384a124f.mp3', 3578, '2026-09-13 06:42:26.507365', '366c7637c40801783d397457b1a656b8c6b1066b621102dcb385808c20b766f2', 'validated', '{"audio_key":"88d95520673b4ff9c0e6b7ad1ff0bbefe5ecc06c5744e3f215755b59384a124f","entity_key":"d_clubs_volunteering_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"366c7637c40801783d397457b1a656b8c6b1066b621102dcb385808c20b766f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/88d95520673b4ff9c0e6b7ad1ff0bbefe5ecc06c5744e3f215755b59384a124f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_01:1 -> audio/generated/de-DE/dialogues/8a65321a59c3dae4bfea06915e82146d666ec1a25f859d816cc0ee68aee45a61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba61f31c-76d9-5903-a701-d615ddbf08c9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7aea2af2e6b34c05edf07902640ddf7e6999ed8e7b9d0ad196cb3ee4e1665080'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ad202d1-62d9-594d-89b1-6ff90ac19e4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba61f31c-76d9-5903-a701-d615ddbf08c9', 1), '7aea2af2e6b34c05edf07902640ddf7e6999ed8e7b9d0ad196cb3ee4e1665080',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8a65321a59c3dae4bfea06915e82146d666ec1a25f859d816cc0ee68aee45a61.mp3', 3474, '2026-09-13 06:42:27.437262', '66e71c89b3bdc5c48df5c8f995ab4247cbc53a72faeeaacd1119dd9f4fc6ca6e', 'validated', '{"audio_key":"8a65321a59c3dae4bfea06915e82146d666ec1a25f859d816cc0ee68aee45a61","entity_key":"d_phone_messages_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"66e71c89b3bdc5c48df5c8f995ab4247cbc53a72faeeaacd1119dd9f4fc6ca6e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8a65321a59c3dae4bfea06915e82146d666ec1a25f859d816cc0ee68aee45a61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_01:4 -> audio/generated/de-DE/dialogues/8bc0a249d605b03b41f5550439c8a965c575ae13a8675688319050267b16d3e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('241a2026-20e9-51e7-af6e-c97b30943bfd', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e93fa9856ebca16d96d11dc2662838556e2f7fcf05ac7b576cb145958c009385'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11ad81d3-01e6-52a0-acf7-12f30a0407c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('241a2026-20e9-51e7-af6e-c97b30943bfd', 1), 'e93fa9856ebca16d96d11dc2662838556e2f7fcf05ac7b576cb145958c009385',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8bc0a249d605b03b41f5550439c8a965c575ae13a8675688319050267b16d3e2.mp3', 3239, '2026-09-13 06:42:27.798832', 'cc1aa5e7196d52f271cb2c9b4bd8e30d364549a95abac1a6704dd381627da080', 'validated', '{"audio_key":"8bc0a249d605b03b41f5550439c8a965c575ae13a8675688319050267b16d3e2","entity_key":"d_public_services_appointments_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cc1aa5e7196d52f271cb2c9b4bd8e30d364549a95abac1a6704dd381627da080","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8bc0a249d605b03b41f5550439c8a965c575ae13a8675688319050267b16d3e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_03:4 -> audio/generated/de-DE/dialogues/8c491d144ea23c268dc19f45728306a9e82c90c07d3315abb753e76c46c6a719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eaaa3cf1-56e3-588a-8140-2db63faeed9f', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22d13426b3c8ff224a8aa441e1419ca2d692e5d7939319552a427602af5de474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3493e0f9-0fd4-5432-b6ac-431254657e7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eaaa3cf1-56e3-588a-8140-2db63faeed9f', 1), '22d13426b3c8ff224a8aa441e1419ca2d692e5d7939319552a427602af5de474',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c491d144ea23c268dc19f45728306a9e82c90c07d3315abb753e76c46c6a719.mp3', 3604, '2026-09-13 06:42:28.723907', '5003c7e5046abcee349ef782d071550d860184591a57f893e4bb6fc3cd5ed796', 'validated', '{"audio_key":"8c491d144ea23c268dc19f45728306a9e82c90c07d3315abb753e76c46c6a719","entity_key":"d_future_changes_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5003c7e5046abcee349ef782d071550d860184591a57f893e4bb6fc3cd5ed796","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8c491d144ea23c268dc19f45728306a9e82c90c07d3315abb753e76c46c6a719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_01:4 -> audio/generated/de-DE/dialogues/998f0a4a96c96f9f06b903b4f80f07fdab5e60d88609d995e4acc0c9d8284aaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c2968ca-ee0a-5c20-97bd-3c631bb97fb4', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '206335cf33a4c1efdd5c1642fc5614b23f126c4f9fa06d86c8f99c04965a865b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7f5f029-f482-59db-9d83-ac25be084ff6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c2968ca-ee0a-5c20-97bd-3c631bb97fb4', 1), '206335cf33a4c1efdd5c1642fc5614b23f126c4f9fa06d86c8f99c04965a865b',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/998f0a4a96c96f9f06b903b4f80f07fdab5e60d88609d995e4acc0c9d8284aaa.mp3', 2951, '2026-09-13 06:42:29.015108', 'fb25e3ae23376937caff2b775c980d70ed5db66ec1d21ff399609a0588c78bfd', 'validated', '{"audio_key":"998f0a4a96c96f9f06b903b4f80f07fdab5e60d88609d995e4acc0c9d8284aaa","entity_key":"d_family_responsibilities_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fb25e3ae23376937caff2b775c980d70ed5db66ec1d21ff399609a0588c78bfd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/998f0a4a96c96f9f06b903b4f80f07fdab5e60d88609d995e4acc0c9d8284aaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_02:1 -> audio/generated/de-DE/dialogues/99a11626474c063a31aeafd41c75635bb2daae39e697931775fe63f7786dd925.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53786838-bb40-5494-bc90-0c02bbf89db0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0bbae403389be339415f9c74be3f8c8489e736db9d4282b50711fc4b65ec4ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83c5a325-0a4b-5846-a5b1-e968dca40b4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53786838-bb40-5494-bc90-0c02bbf89db0', 1), 'e0bbae403389be339415f9c74be3f8c8489e736db9d4282b50711fc4b65ec4ba',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99a11626474c063a31aeafd41c75635bb2daae39e697931775fe63f7786dd925.mp3', 3474, '2026-09-13 06:42:29.977488', '16a9979d21244b2fcd0c02adf4e0143fd961074f0adf90f4f45f75e180764858', 'validated', '{"audio_key":"99a11626474c063a31aeafd41c75635bb2daae39e697931775fe63f7786dd925","entity_key":"d_unexpected_situations_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16a9979d21244b2fcd0c02adf4e0143fd961074f0adf90f4f45f75e180764858","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/99a11626474c063a31aeafd41c75635bb2daae39e697931775fe63f7786dd925.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_03:1 -> audio/generated/de-DE/dialogues/9fa042b37c5996744959b6282a6698318b030ac4b878f85935bdbabde4eca349.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da7a2d81-5de1-50a4-a196-31a0a0de3c22', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd33b6af166b2cb383ce1e137cc649c173e3094dbd7c0e00d2065a85105f198be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('876ef0dc-5f82-5a69-99bc-607ecf94411f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da7a2d81-5de1-50a4-a196-31a0a0de3c22', 1), 'd33b6af166b2cb383ce1e137cc649c173e3094dbd7c0e00d2065a85105f198be',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9fa042b37c5996744959b6282a6698318b030ac4b878f85935bdbabde4eca349.mp3', 2873, '2026-09-13 06:42:30.230826', 'cb1988b88d32cf2fc3bbd27faef6d642add14b0acd88023a405764e493382008', 'validated', '{"audio_key":"9fa042b37c5996744959b6282a6698318b030ac4b878f85935bdbabde4eca349","entity_key":"d_phone_messages_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"cb1988b88d32cf2fc3bbd27faef6d642add14b0acd88023a405764e493382008","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9fa042b37c5996744959b6282a6698318b030ac4b878f85935bdbabde4eca349.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_01:2 -> audio/generated/de-DE/dialogues/9fc1fcc2e4a86c5c79f5497500704d0328d1a3292c8f19a3c8e0b2afb5dd9acb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef4c434d-2ec6-5109-9c59-49a0c250e207', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0573ef47bc181dbe1dc5715053b64adabb5a4deaf7f787cbb2f648f0e9f76bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3e641cb-38f5-5c36-9768-0abc2bf3c4fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef4c434d-2ec6-5109-9c59-49a0c250e207', 1), 'e0573ef47bc181dbe1dc5715053b64adabb5a4deaf7f787cbb2f648f0e9f76bd',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9fc1fcc2e4a86c5c79f5497500704d0328d1a3292c8f19a3c8e0b2afb5dd9acb.mp3', 2089, '2026-09-13 06:42:31.192240', '787083080ffe64c41a863016e2606298533972ad577cbcd859710afc7132085f', 'validated', '{"audio_key":"9fc1fcc2e4a86c5c79f5497500704d0328d1a3292c8f19a3c8e0b2afb5dd9acb","entity_key":"d_transport_delays_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"787083080ffe64c41a863016e2606298533972ad577cbcd859710afc7132085f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9fc1fcc2e4a86c5c79f5497500704d0328d1a3292c8f19a3c8e0b2afb5dd9acb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_02:2 -> audio/generated/de-DE/dialogues/a1f60c78bfa7af535b0221f44ae5fa814a9a89ed34a5752b62075116105a81a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58d9a77f-84e5-5677-ba6d-2539132f2e41', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fa0c3f98ad0b566d0757214f2a8f7d62ca71ba461895f8521658a50a365b548'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bb777ab-716b-5992-930a-482bed600903', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58d9a77f-84e5-5677-ba6d-2539132f2e41', 1), '4fa0c3f98ad0b566d0757214f2a8f7d62ca71ba461895f8521658a50a365b548',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a1f60c78bfa7af535b0221f44ae5fa814a9a89ed34a5752b62075116105a81a4.mp3', 3604, '2026-09-13 06:42:31.489856', 'c3c5327562b6b1700a708f0233f75aa6bf21612ecc3c67105ebe90affa7dd6e5', 'validated', '{"audio_key":"a1f60c78bfa7af535b0221f44ae5fa814a9a89ed34a5752b62075116105a81a4","entity_key":"d_transport_delays_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"c3c5327562b6b1700a708f0233f75aa6bf21612ecc3c67105ebe90affa7dd6e5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a1f60c78bfa7af535b0221f44ae5fa814a9a89ed34a5752b62075116105a81a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_01:2 -> audio/generated/de-DE/dialogues/a3272d0d5df2d6ed9a823a9d0f6c68bd3ae3d4f3674c61b6cc943d4210efdc5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29153aa3-02a8-5c2d-a3f1-238232f3283f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95df08f9814dddbbf6291b02dc98c720b7407fa293dee87d728c7c25c3999c5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaa31d09-7f4e-5c95-aedc-f662b1f0ab55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29153aa3-02a8-5c2d-a3f1-238232f3283f', 1), '95df08f9814dddbbf6291b02dc98c720b7407fa293dee87d728c7c25c3999c5d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a3272d0d5df2d6ed9a823a9d0f6c68bd3ae3d4f3674c61b6cc943d4210efdc5d.mp3', 3709, '2026-09-13 06:42:32.464191', '7aa104c42ce6510e802089632b02068e1381b519622e24200a1ad833a5ec2f85', 'validated', '{"audio_key":"a3272d0d5df2d6ed9a823a9d0f6c68bd3ae3d4f3674c61b6cc943d4210efdc5d","entity_key":"d_unexpected_situations_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7aa104c42ce6510e802089632b02068e1381b519622e24200a1ad833a5ec2f85","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a3272d0d5df2d6ed9a823a9d0f6c68bd3ae3d4f3674c61b6cc943d4210efdc5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_01:4 -> audio/generated/de-DE/dialogues/a355e7d1618fc2192d99ff8e8cc7e5307607096d3b6a6a73317899350c748707.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('119fee98-492f-51d3-acf8-972457c48bb5', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4ab49f97667271fac3d955edb10b6f2f38c388e503b3d436543c2569de5b484'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e7a7599-0354-5a28-9e2b-67c27a09841d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('119fee98-492f-51d3-acf8-972457c48bb5', 1), 'b4ab49f97667271fac3d955edb10b6f2f38c388e503b3d436543c2569de5b484',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a355e7d1618fc2192d99ff8e8cc7e5307607096d3b6a6a73317899350c748707.mp3', 2037, '2026-09-13 06:42:32.615490', '31fe84bc88cc7befd0b4f91a609f489e3246fa3af6257f62e15b6007d50a5c69', 'validated', '{"audio_key":"a355e7d1618fc2192d99ff8e8cc7e5307607096d3b6a6a73317899350c748707","entity_key":"d_phone_messages_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"31fe84bc88cc7befd0b4f91a609f489e3246fa3af6257f62e15b6007d50a5c69","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a355e7d1618fc2192d99ff8e8cc7e5307607096d3b6a6a73317899350c748707.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_03:1 -> audio/generated/de-DE/dialogues/a475488e37b6fc65e3a45fff69847e82103ee5975a2cab045bb1a98ad5cad588.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc57a0e3-d0a7-5a6e-a117-86ab17d7f1c8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9955849edd5de125b42eb6705ff9a32ab302479137c9afcbcf387db048411425'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05387d82-f226-5b2e-ae8c-1df775f28764', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc57a0e3-d0a7-5a6e-a117-86ab17d7f1c8', 1), '9955849edd5de125b42eb6705ff9a32ab302479137c9afcbcf387db048411425',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a475488e37b6fc65e3a45fff69847e82103ee5975a2cab045bb1a98ad5cad588.mp3', 2925, '2026-09-13 06:42:33.649093', '02fec9e7a3665647676ab46363e587e2ebd417dfcccedc48ec8cdf3967925d85', 'validated', '{"audio_key":"a475488e37b6fc65e3a45fff69847e82103ee5975a2cab045bb1a98ad5cad588","entity_key":"d_news_information_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"02fec9e7a3665647676ab46363e587e2ebd417dfcccedc48ec8cdf3967925d85","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a475488e37b6fc65e3a45fff69847e82103ee5975a2cab045bb1a98ad5cad588.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_01:3 -> audio/generated/de-DE/dialogues/a48efa2bad3547fec84fa7170f5bdc7e5b62a26056e6a306decbe20f42c8f08a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54a1f425-1f42-57c7-b86c-3c709692b2de', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5d5f2e78779ec1838a655bde83af09b0039d5ef1a117ed5cadbf7c1c71a4258'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1c16d45-a67b-59b3-aa23-def3dd14e5b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54a1f425-1f42-57c7-b86c-3c709692b2de', 1), 'a5d5f2e78779ec1838a655bde83af09b0039d5ef1a117ed5cadbf7c1c71a4258',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a48efa2bad3547fec84fa7170f5bdc7e5b62a26056e6a306decbe20f42c8f08a.mp3', 1985, '2026-09-13 06:42:33.713343', 'ea7fc7ea1132a207cdb4c6a41c3df700b9b5af6a0bb1822a8a5ccebb0914d3a6', 'validated', '{"audio_key":"a48efa2bad3547fec84fa7170f5bdc7e5b62a26056e6a306decbe20f42c8f08a","entity_key":"d_family_responsibilities_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ea7fc7ea1132a207cdb4c6a41c3df700b9b5af6a0bb1822a8a5ccebb0914d3a6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a48efa2bad3547fec84fa7170f5bdc7e5b62a26056e6a306decbe20f42c8f08a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_02:1 -> audio/generated/de-DE/dialogues/a4bb0c29a157beebb3f57263998dee5c4b457a7d18caf4df59dd4dd775efaadb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cbc6fab4-a8d0-5cd0-8349-75b68ad42c9f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf292ea46b4171a153490f5b9027fffafb72348b791575bfa8ae45d32db7659e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4d027e1-4ef3-5077-8ca5-f2a6280a25c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cbc6fab4-a8d0-5cd0-8349-75b68ad42c9f', 1), 'cf292ea46b4171a153490f5b9027fffafb72348b791575bfa8ae45d32db7659e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a4bb0c29a157beebb3f57263998dee5c4b457a7d18caf4df59dd4dd775efaadb.mp3', 2951, '2026-09-13 06:42:34.849105', 'c3d592380f2b1948cf7fd4eb78a4e89d740413ff5a58a1e26d134876a7531dbc', 'validated', '{"audio_key":"a4bb0c29a157beebb3f57263998dee5c4b457a7d18caf4df59dd4dd775efaadb","entity_key":"d_news_information_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c3d592380f2b1948cf7fd4eb78a4e89d740413ff5a58a1e26d134876a7531dbc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a4bb0c29a157beebb3f57263998dee5c4b457a7d18caf4df59dd4dd775efaadb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_01:1 -> audio/generated/de-DE/dialogues/a6156af0b9db40bc4c3c1a8fde86f9705964ff57347716cee47d4ddca6cde735.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ac17bfb-0fcf-59d2-8c87-3be3207c4a55', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0f706f235a06c45a78aca2e899c11984d0065b920b515bdcfbf4607a1d11fa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adfdccd1-113d-5c59-b84a-4e476969b01c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ac17bfb-0fcf-59d2-8c87-3be3207c4a55', 1), 'f0f706f235a06c45a78aca2e899c11984d0065b920b515bdcfbf4607a1d11fa6',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a6156af0b9db40bc4c3c1a8fde86f9705964ff57347716cee47d4ddca6cde735.mp3', 2455, '2026-09-13 06:42:34.976332', 'adfc3365f53e7c1681fa1845bfaa6828931511c2d5d97d1ede8c764aea2b7d4c', 'validated', '{"audio_key":"a6156af0b9db40bc4c3c1a8fde86f9705964ff57347716cee47d4ddca6cde735","entity_key":"d_food_nutrition_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"adfc3365f53e7c1681fa1845bfaa6828931511c2d5d97d1ede8c764aea2b7d4c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a6156af0b9db40bc4c3c1a8fde86f9705964ff57347716cee47d4ddca6cde735.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_02:2 -> audio/generated/de-DE/dialogues/ab16c85f2776aedc82c6bdc1f78966f8e636fe956d8f0a11d044c30cebbdcf43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7793d59-0353-5367-9c43-2121c28234d7', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97e2eb678d055a41a50aa076bdc4a3fbf798dd9e7ede189cc8805d4d34087204'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5a55125-e9c0-5e4c-858b-b1c235437936', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7793d59-0353-5367-9c43-2121c28234d7', 1), '97e2eb678d055a41a50aa076bdc4a3fbf798dd9e7ede189cc8805d4d34087204',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ab16c85f2776aedc82c6bdc1f78966f8e636fe956d8f0a11d044c30cebbdcf43.mp3', 2768, '2026-09-13 06:42:36.058771', 'b2105a983ace1c877940f8d829f056e5cb6d399d3becb484383170f2ce17e218', 'validated', '{"audio_key":"ab16c85f2776aedc82c6bdc1f78966f8e636fe956d8f0a11d044c30cebbdcf43","entity_key":"d_food_nutrition_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b2105a983ace1c877940f8d829f056e5cb6d399d3becb484383170f2ce17e218","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ab16c85f2776aedc82c6bdc1f78966f8e636fe956d8f0a11d044c30cebbdcf43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_01:1 -> audio/generated/de-DE/dialogues/ad1f6859f8b37881a587919ba0a2974c41f29fe5cb6e954a519e5d04c26dead4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('620d3701-d9d0-5f38-85a4-ba80530e76a9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17061b746155ce0c9973e3c90837402df088fa07514115f1be83b60d5021f88b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06fcfd48-241b-5f3c-944e-f4f70109bfe4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('620d3701-d9d0-5f38-85a4-ba80530e76a9', 1), '17061b746155ce0c9973e3c90837402df088fa07514115f1be83b60d5021f88b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ad1f6859f8b37881a587919ba0a2974c41f29fe5cb6e954a519e5d04c26dead4.mp3', 3239, '2026-09-13 06:42:36.376758', 'd2646acaf111bf08d4d1251151dead02b8e2b23e5e3fae9d379b2e8d5fcb1623', 'validated', '{"audio_key":"ad1f6859f8b37881a587919ba0a2974c41f29fe5cb6e954a519e5d04c26dead4","entity_key":"d_future_changes_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d2646acaf111bf08d4d1251151dead02b8e2b23e5e3fae9d379b2e8d5fcb1623","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ad1f6859f8b37881a587919ba0a2974c41f29fe5cb6e954a519e5d04c26dead4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_02:2 -> audio/generated/de-DE/dialogues/ade41ea98595af87a136b4e98754dc25353a8a07cb0df32f1d80cc5371943908.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af327605-b506-56b4-b138-1bd80373f549', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b48545b988f0a000592848b71bde33dc72eb08b77742373c9324cf9397ff5435'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5d25ae6-81b7-54f0-b34d-929c98bec5cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af327605-b506-56b4-b138-1bd80373f549', 1), 'b48545b988f0a000592848b71bde33dc72eb08b77742373c9324cf9397ff5435',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ade41ea98595af87a136b4e98754dc25353a8a07cb0df32f1d80cc5371943908.mp3', 1985, '2026-09-13 06:42:37.177130', 'bbdc8efdaac099d3751241dac24331fe5407952044bec6e1170bf4830a17a877', 'validated', '{"audio_key":"ade41ea98595af87a136b4e98754dc25353a8a07cb0df32f1d80cc5371943908","entity_key":"d_news_information_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"bbdc8efdaac099d3751241dac24331fe5407952044bec6e1170bf4830a17a877","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ade41ea98595af87a136b4e98754dc25353a8a07cb0df32f1d80cc5371943908.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_03:1 -> audio/generated/de-DE/dialogues/b608356814e4fcbfed35c2e1cd2747b0943218cc7342565240d6f8676c2805d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1206072b-a2f1-53f5-941b-6273262e4cb3', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7850bf104fa178989a4bcd982197993f09d777d3b293565dab5a3149fe2c27f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aad06f5f-6854-5c4b-a2f3-5387d3898a48', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1206072b-a2f1-53f5-941b-6273262e4cb3', 1), '7850bf104fa178989a4bcd982197993f09d777d3b293565dab5a3149fe2c27f9',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b608356814e4fcbfed35c2e1cd2747b0943218cc7342565240d6f8676c2805d6.mp3', 2586, '2026-09-13 06:42:37.583256', '1888bb6c22360d8b1452f7ce601eba2217a65c91a50c56433656724a8ae83762', 'validated', '{"audio_key":"b608356814e4fcbfed35c2e1cd2747b0943218cc7342565240d6f8676c2805d6","entity_key":"d_clubs_volunteering_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1888bb6c22360d8b1452f7ce601eba2217a65c91a50c56433656724a8ae83762","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b608356814e4fcbfed35c2e1cd2747b0943218cc7342565240d6f8676c2805d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_02:4 -> audio/generated/de-DE/dialogues/b7233439d01222fbfcd3c7f71ce691c53b34c589035525762211345d6fb79727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15f94969-54e1-5c29-9da7-43408291520f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '237556f2af293f35a1eb8c61e036d7e65c0547588420470a5676ef723717ca86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da601805-2dee-5ee4-b57e-f82ffaefe23d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15f94969-54e1-5c29-9da7-43408291520f', 1), '237556f2af293f35a1eb8c61e036d7e65c0547588420470a5676ef723717ca86',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b7233439d01222fbfcd3c7f71ce691c53b34c589035525762211345d6fb79727.mp3', 2220, '2026-09-13 06:42:38.429130', '66962a38890f9bee4c405a743bdec4987aa5e3af3bdaa05ba6d58bc488686e83', 'validated', '{"audio_key":"b7233439d01222fbfcd3c7f71ce691c53b34c589035525762211345d6fb79727","entity_key":"d_public_services_appointments_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"66962a38890f9bee4c405a743bdec4987aa5e3af3bdaa05ba6d58bc488686e83","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b7233439d01222fbfcd3c7f71ce691c53b34c589035525762211345d6fb79727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_02:3 -> audio/generated/de-DE/dialogues/b738e10c3e446e2e6ec29ef1c4fdf8fcb2c590dfb1be9c041b2aa6fbb859bb3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('468bb432-6b5b-540d-a725-dd35f308ad17', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '171a20db9e9c2e55e408d1d199eb47e7c8a2e0e05f347f250060da8209caf43e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77047e0c-ca12-539b-80bc-9f06a1d44fad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('468bb432-6b5b-540d-a725-dd35f308ad17', 1), '171a20db9e9c2e55e408d1d199eb47e7c8a2e0e05f347f250060da8209caf43e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b738e10c3e446e2e6ec29ef1c4fdf8fcb2c590dfb1be9c041b2aa6fbb859bb3b.mp3', 1253, '2026-09-13 06:42:38.663826', 'a511fd724b47181ff274b3b94ad7c71b43f46e5b62b78b2e9ac4cc0629f7dfea', 'validated', '{"audio_key":"b738e10c3e446e2e6ec29ef1c4fdf8fcb2c590dfb1be9c041b2aa6fbb859bb3b","entity_key":"d_unexpected_situations_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a511fd724b47181ff274b3b94ad7c71b43f46e5b62b78b2e9ac4cc0629f7dfea","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b738e10c3e446e2e6ec29ef1c4fdf8fcb2c590dfb1be9c041b2aa6fbb859bb3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_02:1 -> audio/generated/de-DE/dialogues/bcae26b7cef5c7ff7d2d640b1d42810a605c78ae9bbadce695ded1fa29fb6582.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8a6480f-cca0-5121-a94b-423148037125', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4338762fd27fead77c3d385e65914ad4552114ac35d502c217f90553a480fee7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('450949aa-09ff-5956-b9af-47c67e3606a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8a6480f-cca0-5121-a94b-423148037125', 1), '4338762fd27fead77c3d385e65914ad4552114ac35d502c217f90553a480fee7',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bcae26b7cef5c7ff7d2d640b1d42810a605c78ae9bbadce695ded1fa29fb6582.mp3', 3343, '2026-09-13 06:42:39.673419', '716469570f5fea9cdc6cd3e68dc172e84f62fb180794ae2a080e1c7c547bd8f7', 'validated', '{"audio_key":"bcae26b7cef5c7ff7d2d640b1d42810a605c78ae9bbadce695ded1fa29fb6582","entity_key":"d_clubs_volunteering_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"716469570f5fea9cdc6cd3e68dc172e84f62fb180794ae2a080e1c7c547bd8f7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bcae26b7cef5c7ff7d2d640b1d42810a605c78ae9bbadce695ded1fa29fb6582.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_02:3 -> audio/generated/de-DE/dialogues/bf9c9fb2a38ba5d046f5eccf297d2f310e9e5a08cb1cb39701392ecbe3fb4aeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4edd4149-ce21-5907-97cd-e0c574037c63', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87556b5bcfba9812ad0bf1ad5c6490115222ea5605be2a2014264670292002f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38b533d5-e67d-5c93-9658-916beb665620', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4edd4149-ce21-5907-97cd-e0c574037c63', 1), '87556b5bcfba9812ad0bf1ad5c6490115222ea5605be2a2014264670292002f5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bf9c9fb2a38ba5d046f5eccf297d2f310e9e5a08cb1cb39701392ecbe3fb4aeb.mp3', 3422, '2026-09-13 06:42:39.902933', 'd2c3f1de05ff84fadc2034d65bea061fadcb62a38942659b504f4ec2a4ec68d9', 'validated', '{"audio_key":"bf9c9fb2a38ba5d046f5eccf297d2f310e9e5a08cb1cb39701392ecbe3fb4aeb","entity_key":"d_news_information_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d2c3f1de05ff84fadc2034d65bea061fadcb62a38942659b504f4ec2a4ec68d9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bf9c9fb2a38ba5d046f5eccf297d2f310e9e5a08cb1cb39701392ecbe3fb4aeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_03:1 -> audio/generated/de-DE/dialogues/bfeb876e2fc5450d5bff4bdc5444cb79e6b31df6cfa34fd300d9c7ca25ac42c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9611da5f-14f8-504f-99f4-a394ae0877db', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0dba5cb478c1cf3747e17ee24a85bec45c8fc8afbb1fa149e51af31879390647'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de721e25-96e8-59fb-ae8a-f08415edafdf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9611da5f-14f8-504f-99f4-a394ae0877db', 1), '0dba5cb478c1cf3747e17ee24a85bec45c8fc8afbb1fa149e51af31879390647',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bfeb876e2fc5450d5bff4bdc5444cb79e6b31df6cfa34fd300d9c7ca25ac42c5.mp3', 2873, '2026-09-13 06:42:40.904182', '633bce1ac2f5ea865b38674bad04ac6e13785e8849fcff2e2a5c67c63432fc1d', 'validated', '{"audio_key":"bfeb876e2fc5450d5bff4bdc5444cb79e6b31df6cfa34fd300d9c7ca25ac42c5","entity_key":"d_future_changes_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"633bce1ac2f5ea865b38674bad04ac6e13785e8849fcff2e2a5c67c63432fc1d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bfeb876e2fc5450d5bff4bdc5444cb79e6b31df6cfa34fd300d9c7ca25ac42c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clubs_volunteering_01:2 -> audio/generated/de-DE/dialogues/c48636a40fdf986db0b219e6ae386fdcb9a97939c2026d45d6427bd86f70571e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d79a155-7000-558d-9f35-624eeb61d8ad', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clubs_volunteering_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd898f6cc7025b9d89311483f75cc596d65a01ebf4865ce5fa70667d41787ab31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fccf9769-e639-50de-ae62-2152fff04e01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d79a155-7000-558d-9f35-624eeb61d8ad', 1), 'd898f6cc7025b9d89311483f75cc596d65a01ebf4865ce5fa70667d41787ab31',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c48636a40fdf986db0b219e6ae386fdcb9a97939c2026d45d6427bd86f70571e.mp3', 1488, '2026-09-13 06:42:40.943752', '86e25a5ef805ec32ae65dfe7ae072dbfc70cbbefa921ee55067a4142ac37ccb3', 'validated', '{"audio_key":"c48636a40fdf986db0b219e6ae386fdcb9a97939c2026d45d6427bd86f70571e","entity_key":"d_clubs_volunteering_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"86e25a5ef805ec32ae65dfe7ae072dbfc70cbbefa921ee55067a4142ac37ccb3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c48636a40fdf986db0b219e6ae386fdcb9a97939c2026d45d6427bd86f70571e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_01:1 -> audio/generated/de-DE/dialogues/c4ba25a2e9c030bc4067d7bfe352530d74459a6fd783b65aeb7ca493a73a59fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('530181e7-392c-5a1a-b96e-136990d7b444', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aae6d5f99852e50a5bf47a2d342bc32695c3bc243cfe6477bf9b60b17ce9943'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cebfbe7c-4311-5159-8540-182fa4d803d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('530181e7-392c-5a1a-b96e-136990d7b444', 1), '8aae6d5f99852e50a5bf47a2d342bc32695c3bc243cfe6477bf9b60b17ce9943',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4ba25a2e9c030bc4067d7bfe352530d74459a6fd783b65aeb7ca493a73a59fb.mp3', 3996, '2026-09-13 06:42:42.251098', '32a2b955810eea5f7025fd7c5ae6c72bd36a77af4772b9d50a7e9eaeb9da9fd1', 'validated', '{"audio_key":"c4ba25a2e9c030bc4067d7bfe352530d74459a6fd783b65aeb7ca493a73a59fb","entity_key":"d_unexpected_situations_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"32a2b955810eea5f7025fd7c5ae6c72bd36a77af4772b9d50a7e9eaeb9da9fd1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c4ba25a2e9c030bc4067d7bfe352530d74459a6fd783b65aeb7ca493a73a59fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_03:2 -> audio/generated/de-DE/dialogues/c7980c5bf0aaa3e984a9266a6d6a5f3b86fa89747ba453a064f09b84346987a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79c77dae-6659-5c47-90aa-28a44fe39319', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6046d3eb4014785517897459570aea1defd9d4581a9a1bada475107f3a8ac8f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d162f5c-96ea-5bd3-8e33-087506bfe873', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79c77dae-6659-5c47-90aa-28a44fe39319', 1), '6046d3eb4014785517897459570aea1defd9d4581a9a1bada475107f3a8ac8f7',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c7980c5bf0aaa3e984a9266a6d6a5f3b86fa89747ba453a064f09b84346987a3.mp3', 3160, '2026-09-13 06:42:42.195883', '8f87495fc4028b3bd743434f2379c425cb5006c1504f69846bc3888998490849', 'validated', '{"audio_key":"c7980c5bf0aaa3e984a9266a6d6a5f3b86fa89747ba453a064f09b84346987a3","entity_key":"d_food_nutrition_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8f87495fc4028b3bd743434f2379c425cb5006c1504f69846bc3888998490849","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c7980c5bf0aaa3e984a9266a6d6a5f3b86fa89747ba453a064f09b84346987a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_03:2 -> audio/generated/de-DE/dialogues/c7e71af074640d3d7c2527096cd2204207bea312551c5492888a4ead28bdea3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6941c2ff-e02c-5be4-88b2-d60c551d0fdb', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6a2db717e35fa26ad2cac228f65ba248b3e818a52ac2e5451150371bc3d6083'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e1270a9-440c-53c1-b0ef-7f352f04b180', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6941c2ff-e02c-5be4-88b2-d60c551d0fdb', 1), 'c6a2db717e35fa26ad2cac228f65ba248b3e818a52ac2e5451150371bc3d6083',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c7e71af074640d3d7c2527096cd2204207bea312551c5492888a4ead28bdea3d.mp3', 3108, '2026-09-13 06:42:43.443463', '7261c01b3fd4e0b90ef2d725bf430b02775f14981e824cddd7a383fc7755b15d', 'validated', '{"audio_key":"c7e71af074640d3d7c2527096cd2204207bea312551c5492888a4ead28bdea3d","entity_key":"d_family_responsibilities_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7261c01b3fd4e0b90ef2d725bf430b02775f14981e824cddd7a383fc7755b15d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c7e71af074640d3d7c2527096cd2204207bea312551c5492888a4ead28bdea3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_02:1 -> audio/generated/de-DE/dialogues/cc37e7b6c98e48a9ded4f5aaa2028187b443283ac0e79683eac9972f261f9576.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29db0b05-21d8-516e-b70c-1a78f35a5e55', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5568b9596b2d2eeca242637f90e7bdb140244dd5da023c60e669c3b61c973772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d15ed3d7-c320-5238-a085-88490c57d9bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29db0b05-21d8-516e-b70c-1a78f35a5e55', 1), '5568b9596b2d2eeca242637f90e7bdb140244dd5da023c60e669c3b61c973772',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc37e7b6c98e48a9ded4f5aaa2028187b443283ac0e79683eac9972f261f9576.mp3', 2455, '2026-09-13 06:42:43.380425', '3bfc11a4cb14a429f1ff71eff5d9c4d80152e0a5dd8fe1d7020351d034cf44b7', 'validated', '{"audio_key":"cc37e7b6c98e48a9ded4f5aaa2028187b443283ac0e79683eac9972f261f9576","entity_key":"d_public_services_appointments_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3bfc11a4cb14a429f1ff71eff5d9c4d80152e0a5dd8fe1d7020351d034cf44b7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cc37e7b6c98e48a9ded4f5aaa2028187b443283ac0e79683eac9972f261f9576.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_01:2 -> audio/generated/de-DE/dialogues/ccdeae87463a9166af7207c3532a2bd795be776322a2172d3f8488027ed80277.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdacf023-12c2-5244-8e48-0d8f420d7bc0', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed7a4bcac356ab0949c1ea8d450c8e8feed4ece595f708b2557cb40eab1924cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80a5aa84-44c1-5329-b264-b58d005850c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdacf023-12c2-5244-8e48-0d8f420d7bc0', 1), 'ed7a4bcac356ab0949c1ea8d450c8e8feed4ece595f708b2557cb40eab1924cf',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ccdeae87463a9166af7207c3532a2bd795be776322a2172d3f8488027ed80277.mp3', 2115, '2026-09-13 06:42:44.543706', '67324f519ede1696c4b62c5a46d82175f1ea2ff9e4c39e52e3c4c2ffbd4f1a4a', 'validated', '{"audio_key":"ccdeae87463a9166af7207c3532a2bd795be776322a2172d3f8488027ed80277","entity_key":"d_public_services_appointments_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"67324f519ede1696c4b62c5a46d82175f1ea2ff9e4c39e52e3c4c2ffbd4f1a4a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ccdeae87463a9166af7207c3532a2bd795be776322a2172d3f8488027ed80277.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_02:4 -> audio/generated/de-DE/dialogues/cee6842a05e2504f428d3bbdc7c9be0ef12aca140e86782134c84f33a021b3a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9af53c75-3065-5bc6-b73d-4c1c17daff64', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db7b8d56e08c5b3696f23d2f8329336182cef61da027abf5c6de51b6ab2f3ce1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb0dcf1d-ac83-5be5-9f56-bcfb920595e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9af53c75-3065-5bc6-b73d-4c1c17daff64', 1), 'db7b8d56e08c5b3696f23d2f8329336182cef61da027abf5c6de51b6ab2f3ce1',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cee6842a05e2504f428d3bbdc7c9be0ef12aca140e86782134c84f33a021b3a7.mp3', 2272, '2026-09-13 06:42:44.583714', 'f077737e490f10405c665d07d358ede04256d2e564953ad8f1ad7a9985ef1627', 'validated', '{"audio_key":"cee6842a05e2504f428d3bbdc7c9be0ef12aca140e86782134c84f33a021b3a7","entity_key":"d_food_nutrition_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f077737e490f10405c665d07d358ede04256d2e564953ad8f1ad7a9985ef1627","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cee6842a05e2504f428d3bbdc7c9be0ef12aca140e86782134c84f33a021b3a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_01:2 -> audio/generated/de-DE/dialogues/d1585d2bee4cb950f611fb4702d4cc736084b00f526bcd6cbd48aed9c00d17cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81353168-72ba-5326-9bb6-f7d24e93177a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f8f59bb31ca31358005e480276c3bae21821cd6faa34b5ab9290fc5ec577fd3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88a2bcdf-fb57-5e4c-bb8d-4ea35e937cb5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81353168-72ba-5326-9bb6-f7d24e93177a', 1), '2f8f59bb31ca31358005e480276c3bae21821cd6faa34b5ab9290fc5ec577fd3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1585d2bee4cb950f611fb4702d4cc736084b00f526bcd6cbd48aed9c00d17cd.mp3', 2638, '2026-09-13 06:42:45.699032', 'c1607fdb2c6c96183c7e3d62440aee7a1c8da6d0a8b4415cdf26bd8e974f4925', 'validated', '{"audio_key":"d1585d2bee4cb950f611fb4702d4cc736084b00f526bcd6cbd48aed9c00d17cd","entity_key":"d_future_changes_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c1607fdb2c6c96183c7e3d62440aee7a1c8da6d0a8b4415cdf26bd8e974f4925","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d1585d2bee4cb950f611fb4702d4cc736084b00f526bcd6cbd48aed9c00d17cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_02:1 -> audio/generated/de-DE/dialogues/d1f29cfc6774a290382adeaaf20f9b128576e2e5d37ecd55f45c06c1f98e3f07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81c47bb1-6265-5b7b-aa0b-b9433e39e605', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f97436abfe8a12ff5a0ce1d674d46369abf1f0f1d8e22c4ddb6adee432d44ba1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be9641ff-87ca-5488-8377-69925dd34fc1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81c47bb1-6265-5b7b-aa0b-b9433e39e605', 1), 'f97436abfe8a12ff5a0ce1d674d46369abf1f0f1d8e22c4ddb6adee432d44ba1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1f29cfc6774a290382adeaaf20f9b128576e2e5d37ecd55f45c06c1f98e3f07.mp3', 2220, '2026-09-13 06:42:45.705037', 'bea95a869a9054763ad2a24474ff230b567b7340a98d3cc0cc67c086bdf2a813', 'validated', '{"audio_key":"d1f29cfc6774a290382adeaaf20f9b128576e2e5d37ecd55f45c06c1f98e3f07","entity_key":"d_future_changes_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bea95a869a9054763ad2a24474ff230b567b7340a98d3cc0cc67c086bdf2a813","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d1f29cfc6774a290382adeaaf20f9b128576e2e5d37ecd55f45c06c1f98e3f07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_03:4 -> audio/generated/de-DE/dialogues/d2ae6c8ab068eecc32a3c8d4f935d98cbecec1d970b7c54875f3f35f85757d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('786abbca-a054-535a-98e8-3ab4529168c2', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39e38cdf4539c4aa1fffe1f271db7cf176c40cd6dd74640ff831768116a48f3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cec8e3f3-7e58-545c-bfbc-0d72d83dc9f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('786abbca-a054-535a-98e8-3ab4529168c2', 1), '39e38cdf4539c4aa1fffe1f271db7cf176c40cd6dd74640ff831768116a48f3c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2ae6c8ab068eecc32a3c8d4f935d98cbecec1d970b7c54875f3f35f85757d44.mp3', 3108, '2026-09-13 06:42:46.918243', '712205fd88bf763b3973acd72b84249495b0543c6a94d4f6e708d51605de8813', 'validated', '{"audio_key":"d2ae6c8ab068eecc32a3c8d4f935d98cbecec1d970b7c54875f3f35f85757d44","entity_key":"d_project_planning_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"712205fd88bf763b3973acd72b84249495b0543c6a94d4f6e708d51605de8813","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d2ae6c8ab068eecc32a3c8d4f935d98cbecec1d970b7c54875f3f35f85757d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_03:4 -> audio/generated/de-DE/dialogues/d5ebc3e7f7b5ee42faeb92357e79d40a65093c0133d125e58a1ff79fa1bf0ef7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73dc2fe7-fea3-51a1-aa38-2dda89096bcf', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '770e99dffc7b90c69bb3e0a2f8f79072e81a75a3ece22bf82ac100443dd4d962'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3ef597f-e003-5e6c-898c-c741b3fd87f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73dc2fe7-fea3-51a1-aa38-2dda89096bcf', 1), '770e99dffc7b90c69bb3e0a2f8f79072e81a75a3ece22bf82ac100443dd4d962',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d5ebc3e7f7b5ee42faeb92357e79d40a65093c0133d125e58a1ff79fa1bf0ef7.mp3', 3160, '2026-09-13 06:42:46.961768', '3abf0aac7350b9451782e4e9187766d2e6657275b52b7efe2f809c5198accfd9', 'validated', '{"audio_key":"d5ebc3e7f7b5ee42faeb92357e79d40a65093c0133d125e58a1ff79fa1bf0ef7","entity_key":"d_news_information_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3abf0aac7350b9451782e4e9187766d2e6657275b52b7efe2f809c5198accfd9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d5ebc3e7f7b5ee42faeb92357e79d40a65093c0133d125e58a1ff79fa1bf0ef7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_phone_messages_03:2 -> audio/generated/de-DE/dialogues/da0efe5b88210c13f63016d407c72c36a65a110751f8206057b8f2fff34243a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4090bbc-23b5-588e-8031-ae72e475a51b', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_phone_messages_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd6204afce0868c47fbd8426f31e0f3f7b9ac7ba6d20ecc84cb21d5c99927a71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f034984-4c01-5265-b52f-d8b866411380', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4090bbc-23b5-588e-8031-ae72e475a51b', 1), 'bd6204afce0868c47fbd8426f31e0f3f7b9ac7ba6d20ecc84cb21d5c99927a71',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da0efe5b88210c13f63016d407c72c36a65a110751f8206057b8f2fff34243a9.mp3', 2403, '2026-09-13 06:42:48.167084', 'fb1033fb1f2629264e19b364c3e2d45a9e53e8ba3b35dc9cb49db2de75f60f9f', 'validated', '{"audio_key":"da0efe5b88210c13f63016d407c72c36a65a110751f8206057b8f2fff34243a9","entity_key":"d_phone_messages_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fb1033fb1f2629264e19b364c3e2d45a9e53e8ba3b35dc9cb49db2de75f60f9f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/da0efe5b88210c13f63016d407c72c36a65a110751f8206057b8f2fff34243a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_responsibilities_03:1 -> audio/generated/de-DE/dialogues/db4d993f147522304c2b7c2827886349f1ab1fefb687c4d5ba01c3f3aabd4e96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20384a93-fdf5-52d1-a542-ff6bc97c3f50', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_responsibilities_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cccb79ee5db406dc5b63bad86bbd18be9fee52e78597dc5c64de24e7fec03dc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5371cdf-4f43-5fe5-ad26-3d0f22bbd109', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20384a93-fdf5-52d1-a542-ff6bc97c3f50', 1), 'cccb79ee5db406dc5b63bad86bbd18be9fee52e78597dc5c64de24e7fec03dc6',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db4d993f147522304c2b7c2827886349f1ab1fefb687c4d5ba01c3f3aabd4e96.mp3', 3108, '2026-09-13 06:42:48.180265', '1cbcb6adbd4f9acbda8c2b0377465a0afb89839744ff621dd0d3d9fcf293ce29', 'validated', '{"audio_key":"db4d993f147522304c2b7c2827886349f1ab1fefb687c4d5ba01c3f3aabd4e96","entity_key":"d_family_responsibilities_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1cbcb6adbd4f9acbda8c2b0377465a0afb89839744ff621dd0d3d9fcf293ce29","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/db4d993f147522304c2b7c2827886349f1ab1fefb687c4d5ba01c3f3aabd4e96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_02:4 -> audio/generated/de-DE/dialogues/e0e6291771a7f4b77d457cb7268cd55b7875bf654cc5680199f7171f82b7b0ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94429411-e083-5f54-9fdd-847aa6db14e5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99f458df6252afee0e367c1c65bf22500e7f70db2a01214a456c67e1c04b9319'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('492ad774-1e95-56c5-b19b-d1ce37667832', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94429411-e083-5f54-9fdd-847aa6db14e5', 1), '99f458df6252afee0e367c1c65bf22500e7f70db2a01214a456c67e1c04b9319',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e0e6291771a7f4b77d457cb7268cd55b7875bf654cc5680199f7171f82b7b0ed.mp3', 2351, '2026-09-13 06:42:49.268046', '911c0a1d2c4d3e2bfa58b7156c51a044fc9f3d411026a341055a3786318e68f2', 'validated', '{"audio_key":"e0e6291771a7f4b77d457cb7268cd55b7875bf654cc5680199f7171f82b7b0ed","entity_key":"d_transport_delays_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"911c0a1d2c4d3e2bfa58b7156c51a044fc9f3d411026a341055a3786318e68f2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e0e6291771a7f4b77d457cb7268cd55b7875bf654cc5680199f7171f82b7b0ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_03:4 -> audio/generated/de-DE/dialogues/e67f04badfb3afb73a70d335204e52a66c1914ee88bce0273426473d4a453c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f6676db-69f9-55aa-9bc6-69a18a29b605', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dadb1a01eca0a88dad2050895a7b7bcc72c06be09238d9ff34f73a46a3967e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce89ca6a-6d9b-5e94-98cb-4d9ac0a65573', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f6676db-69f9-55aa-9bc6-69a18a29b605', 1), '38dadb1a01eca0a88dad2050895a7b7bcc72c06be09238d9ff34f73a46a3967e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e67f04badfb3afb73a70d335204e52a66c1914ee88bce0273426473d4a453c20.mp3', 2821, '2026-09-13 06:42:49.333283', 'c0d141749ad65475fad88293f69333b4d8b341724b5a3f5b0b95cc38b9f32341', 'validated', '{"audio_key":"e67f04badfb3afb73a70d335204e52a66c1914ee88bce0273426473d4a453c20","entity_key":"d_transport_delays_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c0d141749ad65475fad88293f69333b4d8b341724b5a3f5b0b95cc38b9f32341","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e67f04badfb3afb73a70d335204e52a66c1914ee88bce0273426473d4a453c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_unexpected_situations_01:3 -> audio/generated/de-DE/dialogues/e8360befbe823a414165034aad8aae22270b6866fc606874413da7b4f0ac60b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5df80dde-eaab-5790-a3f1-341533401383', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_unexpected_situations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3f318345926bd8da5f9c64e2e3d8939f3c153af8dc155c897ba39b1a62c04b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bc9e255-70e3-52b2-ac83-6e0d920ebd57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5df80dde-eaab-5790-a3f1-341533401383', 1), 'e3f318345926bd8da5f9c64e2e3d8939f3c153af8dc155c897ba39b1a62c04b3',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8360befbe823a414165034aad8aae22270b6866fc606874413da7b4f0ac60b9.mp3', 2951, '2026-09-13 06:42:50.454050', '195078103a304e884fc7c2a18702c2f9a638f4378f4b05ba4bbe4b3c34ce1c48', 'validated', '{"audio_key":"e8360befbe823a414165034aad8aae22270b6866fc606874413da7b4f0ac60b9","entity_key":"d_unexpected_situations_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"195078103a304e884fc7c2a18702c2f9a638f4378f4b05ba4bbe4b3c34ce1c48","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e8360befbe823a414165034aad8aae22270b6866fc606874413da7b4f0ac60b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_future_changes_01:3 -> audio/generated/de-DE/dialogues/ed968a8a2779a3b4be3c69edcb0a173fcace7515a3a8cbd7adf907653a90d33a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e7d931d-6e8f-5962-8bbb-44a1793de9ef', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_future_changes_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d5f2948be1be61d1df29c3a465d48ad78a579f46e02f8bc6c36335be983725a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cddd944-9033-58b0-a9a3-f645a219566f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e7d931d-6e8f-5962-8bbb-44a1793de9ef', 1), '9d5f2948be1be61d1df29c3a465d48ad78a579f46e02f8bc6c36335be983725a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed968a8a2779a3b4be3c69edcb0a173fcace7515a3a8cbd7adf907653a90d33a.mp3', 1384, '2026-09-13 06:42:50.357763', 'ba962b4a0fe7bc9f03e3bf80cc9e748822d7c4cd3fca59445c208942ae8aeaa2', 'validated', '{"audio_key":"ed968a8a2779a3b4be3c69edcb0a173fcace7515a3a8cbd7adf907653a90d33a","entity_key":"d_future_changes_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ba962b4a0fe7bc9f03e3bf80cc9e748822d7c4cd3fca59445c208942ae8aeaa2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ed968a8a2779a3b4be3c69edcb0a173fcace7515a3a8cbd7adf907653a90d33a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_02:1 -> audio/generated/de-DE/dialogues/eda0884ec82acb23cfa99df84ef7961f4959e282ce2f596ff35bf0e142985a27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('062a695a-cd85-5176-ad56-d26f0adec1fb', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17ab481bf47fb1c3e7c3ca00d18d19cb7cbfb9a1550d44b6327b3ad03cfb9597'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba799ac2-a2da-53d7-af49-a07c35ed0cf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('062a695a-cd85-5176-ad56-d26f0adec1fb', 1), '17ab481bf47fb1c3e7c3ca00d18d19cb7cbfb9a1550d44b6327b3ad03cfb9597',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eda0884ec82acb23cfa99df84ef7961f4959e282ce2f596ff35bf0e142985a27.mp3', 2742, '2026-09-13 06:42:51.512607', '3a4b0d5515c6f375541f7185a45a138c7408772fc1da6c2f0e6fad814286e8e6', 'validated', '{"audio_key":"eda0884ec82acb23cfa99df84ef7961f4959e282ce2f596ff35bf0e142985a27","entity_key":"d_project_planning_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3a4b0d5515c6f375541f7185a45a138c7408772fc1da6c2f0e6fad814286e8e6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/eda0884ec82acb23cfa99df84ef7961f4959e282ce2f596ff35bf0e142985a27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_02:3 -> audio/generated/de-DE/dialogues/edfe4bb7460d670efc2633c4be486c263851c1fa34f25c45f22de2ade8b71764.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5911fcec-0175-5ac6-bb5c-1ea2aa11fc69', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4abf3f7c06661e5053d8adf2617015537dbb109aaa9b24bb9ecde5a6d97de397'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81220515-6782-56b5-9b80-97946207b215', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5911fcec-0175-5ac6-bb5c-1ea2aa11fc69', 1), '4abf3f7c06661e5053d8adf2617015537dbb109aaa9b24bb9ecde5a6d97de397',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/edfe4bb7460d670efc2633c4be486c263851c1fa34f25c45f22de2ade8b71764.mp3', 2351, '2026-09-13 06:42:51.571522', '124288338510a40886ace218f6f2fe8d415d89117c7dc24bcf943b7fc75c069a', 'validated', '{"audio_key":"edfe4bb7460d670efc2633c4be486c263851c1fa34f25c45f22de2ade8b71764","entity_key":"d_food_nutrition_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"124288338510a40886ace218f6f2fe8d415d89117c7dc24bcf943b7fc75c069a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/edfe4bb7460d670efc2633c4be486c263851c1fa34f25c45f22de2ade8b71764.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_planning_03:1 -> audio/generated/de-DE/dialogues/ef482a98255c14069650c23098e58742b89ee69b1f390c9065dfd797bf2a12c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bea13da4-0b30-5964-8294-be9a62b03086', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_planning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98e002d85dd0dee42dc3414fb6083cc1016989b6190625e2767d81f6089b0bbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a203cdb0-a7d2-562a-b098-40db590a4f94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bea13da4-0b30-5964-8294-be9a62b03086', 1), '98e002d85dd0dee42dc3414fb6083cc1016989b6190625e2767d81f6089b0bbc',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef482a98255c14069650c23098e58742b89ee69b1f390c9065dfd797bf2a12c2.mp3', 3004, '2026-09-13 06:42:52.697526', '1dd17455ee49e0c8a6635f06bfa83e5b9e18f15c0441ec6b0a8782938ae70cc4', 'validated', '{"audio_key":"ef482a98255c14069650c23098e58742b89ee69b1f390c9065dfd797bf2a12c2","entity_key":"d_project_planning_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1dd17455ee49e0c8a6635f06bfa83e5b9e18f15c0441ec6b0a8782938ae70cc4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ef482a98255c14069650c23098e58742b89ee69b1f390c9065dfd797bf2a12c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_03:1 -> audio/generated/de-DE/dialogues/f34cdd4f854859be9602601046d99129609056a6cec86d166c7666b3c7fbd4bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04ad8bda-a959-5638-8d91-d2c69f525563', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ae0717789157b3373883593aed676885cabfc76e0836a2d5221f0cbb0141211'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03410297-f245-5703-a6cd-a2bebee27292', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04ad8bda-a959-5638-8d91-d2c69f525563', 1), '5ae0717789157b3373883593aed676885cabfc76e0836a2d5221f0cbb0141211',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f34cdd4f854859be9602601046d99129609056a6cec86d166c7666b3c7fbd4bb.mp3', 3422, '2026-09-13 06:42:52.835887', 'acb77860750c4c868ad241a5a752fa27d993aeef95f5cc2286f666fc892db6f5', 'validated', '{"audio_key":"f34cdd4f854859be9602601046d99129609056a6cec86d166c7666b3c7fbd4bb","entity_key":"d_food_nutrition_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"acb77860750c4c868ad241a5a752fa27d993aeef95f5cc2286f666fc892db6f5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f34cdd4f854859be9602601046d99129609056a6cec86d166c7666b3c7fbd4bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_news_information_03:2 -> audio/generated/de-DE/dialogues/f7b4c285a5e8a26d7bd8941d37b56d8984d5132d28abea41744426943cecd774.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ee73f39-aa82-59bd-b8b3-d06e0ffe9b27', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_news_information_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '101dc47f7de5ed8ffaee78bf898fae7719d194c1843b3a91208607a0236ab95c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b20079e-a739-51b1-a7f3-686c938c5184', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ee73f39-aa82-59bd-b8b3-d06e0ffe9b27', 1), '101dc47f7de5ed8ffaee78bf898fae7719d194c1843b3a91208607a0236ab95c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7b4c285a5e8a26d7bd8941d37b56d8984d5132d28abea41744426943cecd774.mp3', 2220, '2026-09-13 06:42:53.801022', '6bd2afb34779b0acd06fb4387cb9b699150ad966d308df48c925881b47499567', 'validated', '{"audio_key":"f7b4c285a5e8a26d7bd8941d37b56d8984d5132d28abea41744426943cecd774","entity_key":"d_news_information_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6bd2afb34779b0acd06fb4387cb9b699150ad966d308df48c925881b47499567","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f7b4c285a5e8a26d7bd8941d37b56d8984d5132d28abea41744426943cecd774.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_03:3 -> audio/generated/de-DE/dialogues/f7f3a84cd3a62aff7b891c3303897a4befb374b8412c21648cbba937a260fb27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8cb7b409-246c-54ca-9e6e-1e5fc44d78a5', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce6c0ea08e3ee50c8c83052726039d6ae2692c34c80109f773de2372a19fd166'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85316466-16e0-54d2-a5a0-f66b1a5900c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8cb7b409-246c-54ca-9e6e-1e5fc44d78a5', 1), 'ce6c0ea08e3ee50c8c83052726039d6ae2692c34c80109f773de2372a19fd166',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7f3a84cd3a62aff7b891c3303897a4befb374b8412c21648cbba937a260fb27.mp3', 2272, '2026-09-13 06:42:53.937526', '7d88b226c5e7027448e302a636e2cc8c4ed386834c840f33cd570e6846f6c5dc', 'validated', '{"audio_key":"f7f3a84cd3a62aff7b891c3303897a4befb374b8412c21648cbba937a260fb27","entity_key":"d_public_services_appointments_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7d88b226c5e7027448e302a636e2cc8c4ed386834c840f33cd570e6846f6c5dc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f7f3a84cd3a62aff7b891c3303897a4befb374b8412c21648cbba937a260fb27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_public_services_appointments_01:1 -> audio/generated/de-DE/dialogues/f8f7cf8533c1c866118a168af218f8df28693cdcb369687c926d042b5806d5da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5ec1a10-c8bb-5c51-9a18-839ef901215b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_public_services_appointments_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7975f4ac55cc7b66a231ade768b1da29de7c2d1f227c6910e9266feaf7c8fac9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5253ef2b-bec6-53d0-94ff-11e81a1683f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5ec1a10-c8bb-5c51-9a18-839ef901215b', 1), '7975f4ac55cc7b66a231ade768b1da29de7c2d1f227c6910e9266feaf7c8fac9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8f7cf8533c1c866118a168af218f8df28693cdcb369687c926d042b5806d5da.mp3', 3056, '2026-09-13 06:42:55.073760', '26552ac122322254e9a4c220920de540197e8bb7b794a952ed3e13cf33697dfb', 'validated', '{"audio_key":"f8f7cf8533c1c866118a168af218f8df28693cdcb369687c926d042b5806d5da","entity_key":"d_public_services_appointments_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26552ac122322254e9a4c220920de540197e8bb7b794a952ed3e13cf33697dfb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f8f7cf8533c1c866118a168af218f8df28693cdcb369687c926d042b5806d5da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_transport_delays_01:3 -> audio/generated/de-DE/dialogues/fd5b498d8eb92210295fb018e0aa56dbb87d0ba7abae508bd2231fe770d6cfb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e20eabb-325b-5b17-9ea1-1a6432744986', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_transport_delays_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ae2cb7d2841f40407288b384279555685268b2e7a9c9c7ff420a82c735f8088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb0d6517-1658-5d22-9968-5ead9b01e5e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e20eabb-325b-5b17-9ea1-1a6432744986', 1), '8ae2cb7d2841f40407288b384279555685268b2e7a9c9c7ff420a82c735f8088',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd5b498d8eb92210295fb018e0aa56dbb87d0ba7abae508bd2231fe770d6cfb3.mp3', 1802, '2026-09-13 06:42:54.991494', 'f1868548099f341c53a77161ce92850e95bc3a54824f6b3c83d3bce5b11195dc', 'validated', '{"audio_key":"fd5b498d8eb92210295fb018e0aa56dbb87d0ba7abae508bd2231fe770d6cfb3","entity_key":"d_transport_delays_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f1868548099f341c53a77161ce92850e95bc3a54824f6b3c83d3bce5b11195dc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fd5b498d8eb92210295fb018e0aa56dbb87d0ba7abae508bd2231fe770d6cfb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_nutrition_01:2 -> audio/generated/de-DE/dialogues/ff37e9ec6d8ece5cf65793b1c3d635a8620771af773c12de513d8de97d70fb4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e08e078-f055-525d-bc10-3e8653f33320', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_nutrition_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6353307ee5bc22885b2bf2cf8cb7d8fe36b6c28625779840993f63fa7511c683'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36850f5f-cec8-5bc0-a4f0-639d69ca984a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e08e078-f055-525d-bc10-3e8653f33320', 1), '6353307ee5bc22885b2bf2cf8cb7d8fe36b6c28625779840993f63fa7511c683',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ff37e9ec6d8ece5cf65793b1c3d635a8620771af773c12de513d8de97d70fb4e.mp3', 3056, '2026-09-13 06:42:56.233084', '40eceef72638c08b6e11d5b817600404df1e0d421172fba94910ec7d24ca4b2e', 'validated', '{"audio_key":"ff37e9ec6d8ece5cf65793b1c3d635a8620771af773c12de513d8de97d70fb4e","entity_key":"d_food_nutrition_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"40eceef72638c08b6e11d5b817600404df1e0d421172fba94910ec7d24ca4b2e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ff37e9ec6d8ece5cf65793b1c3d635a8620771af773c12de513d8de97d70fb4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_services_appointments_02 -> audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('383753c2-9ca4-550a-b390-232377d7f057', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_services_appointments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84a8fcfc-8001-59f3-943c-edc1748e67ad', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('383753c2-9ca4-550a-b390-232377d7f057', 1), '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3', 1201, '2026-09-13 05:29:31.928182', 'c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35', 'validated', '{"audio_key":"077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec","entity_key":"lx_public_services_appointments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_services_appointments_02 -> audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4266ef6b-f3e3-5b62-9557-18bc3c3df6f7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_services_appointments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f151ab2-7748-5ee9-8cb0-dbbb47aa55c1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4266ef6b-f3e3-5b62-9557-18bc3c3df6f7', 1), '83f07dc6e90d37666dddaa6f230ea94f45219631fc0bf1e99dbd517e35b5cae8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3', 1201, '2026-09-13 05:29:31.928182', 'c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35', 'validated', '{"audio_key":"077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec","entity_key":"wf_public_services_appointments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9608b337eb9c89419074e411282e5a2306dea954decdb181256b74065925f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/077ec36a07d516c1de8ddbc112000503570361755c2e96e876c294d3e1f30eec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_future_changes_02 -> audio/generated/de-DE/lexical/09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0e4ed5cd-2a82-574b-a0f2-7341fd1353bd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_future_changes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2988e359e05fbc80c79f6297aec4dc9928c5ed96524336f2fbc3aa55e502341f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4ff0f31-131d-5d60-a58c-5fd65a006fca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0e4ed5cd-2a82-574b-a0f2-7341fd1353bd', 1), '2988e359e05fbc80c79f6297aec4dc9928c5ed96524336f2fbc3aa55e502341f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40.mp3', 1253, '2026-09-13 06:42:56.072422', 'e3f3513fc38df153fa8dd79e27d26bfefe8036aab74950b2846df4ecb3376aa8', 'validated', '{"audio_key":"09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40","entity_key":"lx_future_changes_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3f3513fc38df153fa8dd79e27d26bfefe8036aab74950b2846df4ecb3376aa8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_future_changes_02 -> audio/generated/de-DE/lexical/09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('debdd5e0-aacd-5a92-b595-04c0a621e073', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_future_changes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2988e359e05fbc80c79f6297aec4dc9928c5ed96524336f2fbc3aa55e502341f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7cc79fd-5bce-5bfb-add2-11bfa0e9bf1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('debdd5e0-aacd-5a92-b595-04c0a621e073', 1), '2988e359e05fbc80c79f6297aec4dc9928c5ed96524336f2fbc3aa55e502341f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40.mp3', 1253, '2026-09-13 06:42:56.072422', 'e3f3513fc38df153fa8dd79e27d26bfefe8036aab74950b2846df4ecb3376aa8', 'validated', '{"audio_key":"09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40","entity_key":"wf_future_changes_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3f3513fc38df153fa8dd79e27d26bfefe8036aab74950b2846df4ecb3376aa8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/09f990dd780e5e90e0fa66f136ad5c8755216daca9e341a34680aafd58695c40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_phone_messages_02 -> audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b379e0e6-eb23-5c1b-b5c8-9c227956da63', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_phone_messages_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb9d4f2d-0117-532d-b432-97219303954c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b379e0e6-eb23-5c1b-b5c8-9c227956da63', 1), 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3', 1018, '2026-09-13 06:42:57.072419', '90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e', 'validated', '{"audio_key":"0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754","entity_key":"lx_phone_messages_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_phone_messages_02 -> audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b4406740-a936-53fc-ad48-ac70eeb45b93', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_phone_messages_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ec11f23-9beb-5cb6-b73d-80318538ed56', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b4406740-a936-53fc-ad48-ac70eeb45b93', 1), 'c229578b4bcccc61c29b1d7c22f576ffecb5ba239d84aaec8edf18c7eae16840',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3', 1018, '2026-09-13 06:42:57.072419', '90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e', 'validated', '{"audio_key":"0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754","entity_key":"wf_phone_messages_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90a79b39c23493eccb194871d2abed8bdc55e0577654fb2bb116096e05ab307e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0a99e6540a8d39aeb6c8b3a122ebc1c0ce7ac73ed8b93ca52d7d3206fb0c9754.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_future_changes_05 -> audio/generated/de-DE/lexical/16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ceafad6-7679-5273-adc7-9d0d66722ff8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_future_changes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe7c7a02c72e453ae47514d6838f1bea84b08661a918e263eb6308ae90e1ee93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34424f75-60a9-51eb-b49f-f235d70e3f47', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ceafad6-7679-5273-adc7-9d0d66722ff8', 1), 'fe7c7a02c72e453ae47514d6838f1bea84b08661a918e263eb6308ae90e1ee93',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c.mp3', 1149, '2026-09-13 05:29:37.201269', '9ddad952d886435d8afbeff5f21af6c3ebb6a0606a2ee4651593154f0f352743', 'validated', '{"audio_key":"16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c","entity_key":"lx_future_changes_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ddad952d886435d8afbeff5f21af6c3ebb6a0606a2ee4651593154f0f352743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_future_changes_05 -> audio/generated/de-DE/lexical/16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('05fc2539-4a47-5b96-a831-425811da0496', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_future_changes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe7c7a02c72e453ae47514d6838f1bea84b08661a918e263eb6308ae90e1ee93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1982744-be50-5142-b6f4-ee1c8309f514', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('05fc2539-4a47-5b96-a831-425811da0496', 1), 'fe7c7a02c72e453ae47514d6838f1bea84b08661a918e263eb6308ae90e1ee93',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c.mp3', 1149, '2026-09-13 05:29:37.201269', '9ddad952d886435d8afbeff5f21af6c3ebb6a0606a2ee4651593154f0f352743', 'validated', '{"audio_key":"16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c","entity_key":"wf_future_changes_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ddad952d886435d8afbeff5f21af6c3ebb6a0606a2ee4651593154f0f352743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/16441be3cb3e434182997660b6b3d85205d596937854e9a04c4ec0506026d28c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clubs_volunteering_02 -> audio/generated/de-DE/lexical/1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('52c9a543-c2c8-562a-8b8c-9c1ce2bdeb6b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clubs_volunteering_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d338cce824968985e356682013ce02ded3d45175df6749cb39ca2fe2be208ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5771ab21-8315-53b8-bb6c-73ca0663c87a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('52c9a543-c2c8-562a-8b8c-9c1ce2bdeb6b', 1), '4d338cce824968985e356682013ce02ded3d45175df6749cb39ca2fe2be208ed',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47.mp3', 966, '2026-09-13 06:42:57.297158', 'f9b90b440a44c9d37e0c61177d7078fd1342f2a523215abe7a89b9506dc868a4', 'validated', '{"audio_key":"1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47","entity_key":"lx_clubs_volunteering_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9b90b440a44c9d37e0c61177d7078fd1342f2a523215abe7a89b9506dc868a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clubs_volunteering_02 -> audio/generated/de-DE/lexical/1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b03b9b8-88c3-5377-ae47-d0097fe9c78a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clubs_volunteering_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d338cce824968985e356682013ce02ded3d45175df6749cb39ca2fe2be208ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51c6f3fb-5384-51ab-b179-74141878fd45', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b03b9b8-88c3-5377-ae47-d0097fe9c78a', 1), '4d338cce824968985e356682013ce02ded3d45175df6749cb39ca2fe2be208ed',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47.mp3', 966, '2026-09-13 06:42:57.297158', 'f9b90b440a44c9d37e0c61177d7078fd1342f2a523215abe7a89b9506dc868a4', 'validated', '{"audio_key":"1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47","entity_key":"wf_clubs_volunteering_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9b90b440a44c9d37e0c61177d7078fd1342f2a523215abe7a89b9506dc868a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ddad1971d5be71d27a4d10948e220336b0ba0c37f60574384fc195ff377cb47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_services_appointments_01 -> audio/generated/de-DE/lexical/21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('59f8b05a-82c4-5bc9-837d-ae221a8f5cfe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_services_appointments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56d2014462d65032d9e55ab948b7103bc0e49a8b85468fc3413a90117d4f54a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a75cf651-9786-59ed-9440-86426fe6aa5a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('59f8b05a-82c4-5bc9-837d-ae221a8f5cfe', 1), '56d2014462d65032d9e55ab948b7103bc0e49a8b85468fc3413a90117d4f54a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e.mp3', 1097, '2026-09-13 06:42:58.087365', '1e401ca6bbb9f10bf30310fefda800283faef2923a843294f78369d6fd210f04', 'validated', '{"audio_key":"21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e","entity_key":"lx_public_services_appointments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e401ca6bbb9f10bf30310fefda800283faef2923a843294f78369d6fd210f04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_services_appointments_01 -> audio/generated/de-DE/lexical/21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa59cddb-7584-580b-8080-7a1ead14be0c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_services_appointments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56d2014462d65032d9e55ab948b7103bc0e49a8b85468fc3413a90117d4f54a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf780281-868f-58e2-b8b1-239418623ba9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa59cddb-7584-580b-8080-7a1ead14be0c', 1), '56d2014462d65032d9e55ab948b7103bc0e49a8b85468fc3413a90117d4f54a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e.mp3', 1097, '2026-09-13 06:42:58.087365', '1e401ca6bbb9f10bf30310fefda800283faef2923a843294f78369d6fd210f04', 'validated', '{"audio_key":"21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e","entity_key":"wf_public_services_appointments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e401ca6bbb9f10bf30310fefda800283faef2923a843294f78369d6fd210f04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/21a59e3860534703bcb50bc9af10bec2ba37ebf4bbb32d41483657dffd1f0f8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clubs_volunteering_06 -> audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aea21ccd-0d46-5790-b7de-df716debd36b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clubs_volunteering_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bdb88a3-c149-5e23-8e83-8367bc1ceaa8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aea21ccd-0d46-5790-b7de-df716debd36b', 1), '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3', 1149, '2026-09-13 06:42:58.312673', '092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32', 'validated', '{"audio_key":"2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c","entity_key":"lx_clubs_volunteering_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clubs_volunteering_06 -> audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1be36b99-d21d-5552-b046-a0b79b7deea5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clubs_volunteering_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2647f84-ccc0-5f6c-b703-96e55d4579c5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1be36b99-d21d-5552-b046-a0b79b7deea5', 1), '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3', 1149, '2026-09-13 06:42:58.312673', '092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32', 'validated', '{"audio_key":"2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c","entity_key":"wf_clubs_volunteering_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_news_information_06 -> audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a6a40dd1-9e8f-553a-9762-ea0a643a75f7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_news_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f17653f-0131-5545-b90e-5faf65d4eb2c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a6a40dd1-9e8f-553a-9762-ea0a643a75f7', 1), 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3', 1149, '2026-09-13 06:42:59.082971', 'b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83', 'validated', '{"audio_key":"29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130","entity_key":"lx_news_information_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_news_information_06 -> audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0501314c-5543-5bab-8fb7-8892ec597381', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_news_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f79e46e-2cf9-5c41-9cf0-c1eb524ce3fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0501314c-5543-5bab-8fb7-8892ec597381', 1), 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3', 1149, '2026-09-13 06:42:59.082971', 'b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83', 'validated', '{"audio_key":"29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130","entity_key":"wf_news_information_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_planning_05 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923f1fdb-70d8-5641-99b9-78a606b22dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"lx_project_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_planning_05 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a4a2918c-d12c-5ef0-b537-7ca67d72bc6a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c4b77ac-1602-5b7d-8080-23b9364d5848', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a4a2918c-d12c-5ef0-b537-7ca67d72bc6a', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"wf_project_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clubs_volunteering_05 -> audio/generated/de-DE/lexical/2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('97693819-9c04-5d59-bf7a-20c12e83fb62', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clubs_volunteering_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d0a20da693aeab3aca4c903aa143d8a467d11066be6e8aec49870b31ff9b326'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46a20b57-6049-5b77-a731-2757866f0518', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('97693819-9c04-5d59-bf7a-20c12e83fb62', 1), '2d0a20da693aeab3aca4c903aa143d8a467d11066be6e8aec49870b31ff9b326',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80.mp3', 1201, '2026-09-13 06:42:59.338472', '2e2c650a956775611af306386db700bab4b928446125f838a493f6db4c457b62', 'validated', '{"audio_key":"2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80","entity_key":"lx_clubs_volunteering_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e2c650a956775611af306386db700bab4b928446125f838a493f6db4c457b62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clubs_volunteering_05 -> audio/generated/de-DE/lexical/2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('83b76bed-4e41-5a42-87d8-674d25941fc2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clubs_volunteering_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d0a20da693aeab3aca4c903aa143d8a467d11066be6e8aec49870b31ff9b326'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98ff6f54-a292-5392-85fb-8745f8b01007', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('83b76bed-4e41-5a42-87d8-674d25941fc2', 1), '2d0a20da693aeab3aca4c903aa143d8a467d11066be6e8aec49870b31ff9b326',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80.mp3', 1201, '2026-09-13 06:42:59.338472', '2e2c650a956775611af306386db700bab4b928446125f838a493f6db4c457b62', 'validated', '{"audio_key":"2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80","entity_key":"wf_clubs_volunteering_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e2c650a956775611af306386db700bab4b928446125f838a493f6db4c457b62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ebe85187a04ee3b97a3ca689d94709f2a354d8cc1c7df72f77ca01e5c068a80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_future_changes_01 -> audio/generated/de-DE/lexical/303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a922c86f-9e21-50f8-a62f-4962eaf8ee67', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_future_changes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f18dc82d3554f79d44a49ce8ea6a34ee80787920e39090b679327430d8d3a77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0e6dd56-54da-5992-82b3-d7075e465943', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a922c86f-9e21-50f8-a62f-4962eaf8ee67', 1), '9f18dc82d3554f79d44a49ce8ea6a34ee80787920e39090b679327430d8d3a77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff.mp3', 1097, '2026-09-13 06:43:00.099053', '16c3a92414b5e51d8126e49b509afc0ca3519b6a0f160d393c2fb63e9349c4d5', 'validated', '{"audio_key":"303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff","entity_key":"lx_future_changes_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16c3a92414b5e51d8126e49b509afc0ca3519b6a0f160d393c2fb63e9349c4d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_future_changes_01 -> audio/generated/de-DE/lexical/303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('28663563-c35b-5b89-bac2-418ebaa0960d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_future_changes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f18dc82d3554f79d44a49ce8ea6a34ee80787920e39090b679327430d8d3a77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43c28a7e-bc8d-5a75-88b4-602e367d838b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('28663563-c35b-5b89-bac2-418ebaa0960d', 1), '9f18dc82d3554f79d44a49ce8ea6a34ee80787920e39090b679327430d8d3a77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff.mp3', 1097, '2026-09-13 06:43:00.099053', '16c3a92414b5e51d8126e49b509afc0ca3519b6a0f160d393c2fb63e9349c4d5', 'validated', '{"audio_key":"303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff","entity_key":"wf_future_changes_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16c3a92414b5e51d8126e49b509afc0ca3519b6a0f160d393c2fb63e9349c4d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/303a2c5599f465cf289c2b0e0da2807980cea4a41e6becbb6237832595485bff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_planning_03 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ac9b86-d70b-58c5-bd3b-2809e05ad52d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"lx_project_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_planning_03 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45c2c1af-779f-597b-b67f-2aa2e7aa6697', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdceec28-f6c6-5f06-8787-0d01b1a81133', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45c2c1af-779f-597b-b67f-2aa2e7aa6697', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"wf_project_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_nutrition_04 -> audio/generated/de-DE/lexical/383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('85864695-9923-5e92-b67d-5dbb695a2687', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_nutrition_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96cc8dfb5bb879e32570ffb610e15127afbfbd710b4f570f42d29f7acffed0f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43cd09d3-1721-53fa-95f6-c4a537ea74b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('85864695-9923-5e92-b67d-5dbb695a2687', 1), '96cc8dfb5bb879e32570ffb610e15127afbfbd710b4f570f42d29f7acffed0f6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb.mp3', 1253, '2026-09-13 06:43:00.345817', 'a5e5f8848edfd561f90f97627b7a5cbf7ded1a53706414be9c732cac117aef03', 'validated', '{"audio_key":"383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb","entity_key":"lx_food_nutrition_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5e5f8848edfd561f90f97627b7a5cbf7ded1a53706414be9c732cac117aef03","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_nutrition_04 -> audio/generated/de-DE/lexical/383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec8c27da-07c6-5ac9-805b-20b426d41c18', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_nutrition_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96cc8dfb5bb879e32570ffb610e15127afbfbd710b4f570f42d29f7acffed0f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f15de55-03b3-58e9-b828-857cedc455dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec8c27da-07c6-5ac9-805b-20b426d41c18', 1), '96cc8dfb5bb879e32570ffb610e15127afbfbd710b4f570f42d29f7acffed0f6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb.mp3', 1253, '2026-09-13 06:43:00.345817', 'a5e5f8848edfd561f90f97627b7a5cbf7ded1a53706414be9c732cac117aef03', 'validated', '{"audio_key":"383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb","entity_key":"wf_food_nutrition_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5e5f8848edfd561f90f97627b7a5cbf7ded1a53706414be9c732cac117aef03","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/383aec1249480f18d65e5c112e22efa62391e16b6e504ad5639e6533b2965dcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_unexpected_situations_05 -> audio/generated/de-DE/lexical/3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7a500c9a-20d9-5d4d-9c07-e5f8511bb611', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_unexpected_situations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8cb2689b2bf36eb508a6dd65b7c4f9b1988f0be96c150026f10eac984a1fbbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('879fbf64-b466-591a-9107-80e08594be62', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7a500c9a-20d9-5d4d-9c07-e5f8511bb611', 1), 'f8cb2689b2bf36eb508a6dd65b7c4f9b1988f0be96c150026f10eac984a1fbbc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787.mp3', 1253, '2026-09-13 06:43:01.103972', '91f3cbc0c21ac28ba5c19acf8a6d7912791070386772b601d8091e08648e5836', 'validated', '{"audio_key":"3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787","entity_key":"lx_unexpected_situations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91f3cbc0c21ac28ba5c19acf8a6d7912791070386772b601d8091e08648e5836","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_unexpected_situations_05 -> audio/generated/de-DE/lexical/3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a440b8a2-f088-575b-b9be-7b2aa6ef9037', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_unexpected_situations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8cb2689b2bf36eb508a6dd65b7c4f9b1988f0be96c150026f10eac984a1fbbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5112ec76-e7a7-5648-81a0-db03268f9938', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a440b8a2-f088-575b-b9be-7b2aa6ef9037', 1), 'f8cb2689b2bf36eb508a6dd65b7c4f9b1988f0be96c150026f10eac984a1fbbc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787.mp3', 1253, '2026-09-13 06:43:01.103972', '91f3cbc0c21ac28ba5c19acf8a6d7912791070386772b601d8091e08648e5836', 'validated', '{"audio_key":"3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787","entity_key":"wf_unexpected_situations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91f3cbc0c21ac28ba5c19acf8a6d7912791070386772b601d8091e08648e5836","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3a1cec36db2e18a50b6a59a8cc8d9ce2bb9e9aa69190d8ee5d4735c0f44e1787.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_planning_06 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('315948e8-aa29-58e5-addd-faa1b62132af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"lx_project_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_planning_06 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('274842d1-c5a7-5c4a-bb5a-c7fc55b891c0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb12f3e1-64b1-5e1e-ba72-72d27af7fbea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('274842d1-c5a7-5c4a-bb5a-c7fc55b891c0', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"wf_project_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_nutrition_06 -> audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6169b2ac-f1eb-59e2-9e7d-c56fe17a3644', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_nutrition_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e06ed786-7774-5592-896c-060f601266c5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6169b2ac-f1eb-59e2-9e7d-c56fe17a3644', 1), '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3', 1201, '2026-09-13 05:29:57.419124', '02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83', 'validated', '{"audio_key":"4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f","entity_key":"lx_food_nutrition_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_nutrition_06 -> audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1195543a-8935-5670-bd24-ea5a5c0ec704', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_nutrition_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f90de4b3-86c2-5796-9397-50f06d17d258', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1195543a-8935-5670-bd24-ea5a5c0ec704', 1), '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3', 1201, '2026-09-13 05:29:57.419124', '02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83', 'validated', '{"audio_key":"4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f","entity_key":"wf_food_nutrition_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_services_appointments_04 -> audio/generated/de-DE/lexical/452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c737ba25-b2f7-5b1d-96b6-9c0126a17763', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_services_appointments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9927f6edc4e8e64e8da22d2c2c51bb29e9cde961077f362e810316bd2ee722d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca88d21e-bcaa-5ae7-a391-4b95bcf4ec93', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c737ba25-b2f7-5b1d-96b6-9c0126a17763', 1), '9927f6edc4e8e64e8da22d2c2c51bb29e9cde961077f362e810316bd2ee722d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6.mp3', 1071, '2026-09-13 06:43:02.079508', '17450730fefe7613553081c99dd7c6890be612e63c4ed3afffcf38d40c64d965', 'validated', '{"audio_key":"452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6","entity_key":"lx_public_services_appointments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17450730fefe7613553081c99dd7c6890be612e63c4ed3afffcf38d40c64d965","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_services_appointments_04 -> audio/generated/de-DE/lexical/452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a5e11bdd-3af1-5aea-bae0-569329bf4ae6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_services_appointments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9927f6edc4e8e64e8da22d2c2c51bb29e9cde961077f362e810316bd2ee722d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48ab5805-4e21-5c72-a1b1-ff5f1c1bbf10', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a5e11bdd-3af1-5aea-bae0-569329bf4ae6', 1), '9927f6edc4e8e64e8da22d2c2c51bb29e9cde961077f362e810316bd2ee722d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6.mp3', 1071, '2026-09-13 06:43:02.079508', '17450730fefe7613553081c99dd7c6890be612e63c4ed3afffcf38d40c64d965', 'validated', '{"audio_key":"452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6","entity_key":"wf_public_services_appointments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17450730fefe7613553081c99dd7c6890be612e63c4ed3afffcf38d40c64d965","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/452238a98aec84d229f47da468a0e895532e391ad6797bd02ad8682a97b5fcb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_phone_messages_05 -> audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('235668c1-897d-57d6-90ec-b5f48abdbc4d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_phone_messages_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6602182-6aa2-5d2c-8a88-e633730cf45c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('235668c1-897d-57d6-90ec-b5f48abdbc4d', 1), '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3', 1097, '2026-09-13 06:17:31.166967', '4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653', 'validated', '{"audio_key":"4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b","entity_key":"lx_phone_messages_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_phone_messages_05 -> audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cc2e4cbf-aedd-5046-91be-49f1ba664dab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_phone_messages_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f99fa1f4-68fd-5600-ab92-2dad660a9940', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cc2e4cbf-aedd-5046-91be-49f1ba664dab', 1), '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3', 1097, '2026-09-13 06:17:31.166967', '4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653', 'validated', '{"audio_key":"4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b","entity_key":"wf_phone_messages_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_nutrition_05 -> audio/generated/de-DE/lexical/495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fec2c00b-74e3-5928-881c-e9fbabc40bd3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_nutrition_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb8a7db6cfa0a85a7cf4430b098e25aee4673a110a073506838bb1902d51e46a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ecfa261-67fb-593a-9c04-faf5c73c1ef6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fec2c00b-74e3-5928-881c-e9fbabc40bd3', 1), 'bb8a7db6cfa0a85a7cf4430b098e25aee4673a110a073506838bb1902d51e46a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a.mp3', 1071, '2026-09-13 06:43:02.459400', '5c1b8d204445af6ff1dd061317d66d7bbdc044a7f69d08cc2f31ea6feaf6685f', 'validated', '{"audio_key":"495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a","entity_key":"lx_food_nutrition_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c1b8d204445af6ff1dd061317d66d7bbdc044a7f69d08cc2f31ea6feaf6685f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_nutrition_05 -> audio/generated/de-DE/lexical/495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('548bbad8-1da3-5692-931b-0ef0df7f6dd4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_nutrition_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb8a7db6cfa0a85a7cf4430b098e25aee4673a110a073506838bb1902d51e46a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f139d277-38d5-5327-a06b-740b6005731b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('548bbad8-1da3-5692-931b-0ef0df7f6dd4', 1), 'bb8a7db6cfa0a85a7cf4430b098e25aee4673a110a073506838bb1902d51e46a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a.mp3', 1071, '2026-09-13 06:43:02.459400', '5c1b8d204445af6ff1dd061317d66d7bbdc044a7f69d08cc2f31ea6feaf6685f', 'validated', '{"audio_key":"495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a","entity_key":"wf_food_nutrition_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c1b8d204445af6ff1dd061317d66d7bbdc044a7f69d08cc2f31ea6feaf6685f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/495a32880fdd8f2d75d8c48f8950fb6e91c1f2e6df501fd3194f579a6963e65a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clubs_volunteering_03 -> audio/generated/de-DE/lexical/4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71845567-2754-56f8-86e1-713feca8a627', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clubs_volunteering_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b95c4f1275cb0a61109890c7c2abddc93804cbd4f2148d07405cd2df8480d60d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('508ddde5-cf85-54f3-858e-5236263b3359', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71845567-2754-56f8-86e1-713feca8a627', 1), 'b95c4f1275cb0a61109890c7c2abddc93804cbd4f2148d07405cd2df8480d60d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe.mp3', 1253, '2026-09-13 06:43:03.072586', '5bcf2d691edaa5099c33439386d16abfd981044cd25ec0ddb22db6dc16ee11a4', 'validated', '{"audio_key":"4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe","entity_key":"lx_clubs_volunteering_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bcf2d691edaa5099c33439386d16abfd981044cd25ec0ddb22db6dc16ee11a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clubs_volunteering_03 -> audio/generated/de-DE/lexical/4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b445375-8234-595e-92ea-022dce372fb9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clubs_volunteering_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b95c4f1275cb0a61109890c7c2abddc93804cbd4f2148d07405cd2df8480d60d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48640468-7539-5f99-8619-452f5d04483a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b445375-8234-595e-92ea-022dce372fb9', 1), 'b95c4f1275cb0a61109890c7c2abddc93804cbd4f2148d07405cd2df8480d60d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe.mp3', 1253, '2026-09-13 06:43:03.072586', '5bcf2d691edaa5099c33439386d16abfd981044cd25ec0ddb22db6dc16ee11a4', 'validated', '{"audio_key":"4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe","entity_key":"wf_clubs_volunteering_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bcf2d691edaa5099c33439386d16abfd981044cd25ec0ddb22db6dc16ee11a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4ac61e45a53734f8695c81958a6058a718ff61df287d20500f56e962e6b754fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_phone_messages_01 -> audio/generated/de-DE/lexical/4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6106376d-520b-5f5e-835a-75de88f1f503', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_phone_messages_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa287db6dfd8c9052d130b100773f977f7c9f9d92ad3bcad121538200002d97c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd022df0-f281-5aa4-a477-ea74b468f26e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6106376d-520b-5f5e-835a-75de88f1f503', 1), 'aa287db6dfd8c9052d130b100773f977f7c9f9d92ad3bcad121538200002d97c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8.mp3', 914, '2026-09-13 06:43:03.435592', 'db788a09dfd07d9fc7128679d1835abd4914f2878a2318897158324ea22d4447', 'validated', '{"audio_key":"4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8","entity_key":"lx_phone_messages_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db788a09dfd07d9fc7128679d1835abd4914f2878a2318897158324ea22d4447","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_phone_messages_01 -> audio/generated/de-DE/lexical/4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cefda964-cfae-54d1-8aa8-a50b5d21114d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_phone_messages_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa287db6dfd8c9052d130b100773f977f7c9f9d92ad3bcad121538200002d97c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a359a342-1200-5e77-bbf7-63d700bbee0d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cefda964-cfae-54d1-8aa8-a50b5d21114d', 1), 'aa287db6dfd8c9052d130b100773f977f7c9f9d92ad3bcad121538200002d97c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8.mp3', 914, '2026-09-13 06:43:03.435592', 'db788a09dfd07d9fc7128679d1835abd4914f2878a2318897158324ea22d4447', 'validated', '{"audio_key":"4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8","entity_key":"wf_phone_messages_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db788a09dfd07d9fc7128679d1835abd4914f2878a2318897158324ea22d4447","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4e363d003d0655ff9ef05cc0fdc80c5bf7b32dda82a2b8da356f547763aaecc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_unexpected_situations_01 -> audio/generated/de-DE/lexical/523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bd5ff96d-3261-5720-8e63-9c47f309355e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_unexpected_situations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c960dcb9f3518de2d88e7fb9cb134edeff1c0ba2e50fd2c650552d6af4e396e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70228ccf-9734-5441-91a0-6acd7c08d07e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bd5ff96d-3261-5720-8e63-9c47f309355e', 1), '5c960dcb9f3518de2d88e7fb9cb134edeff1c0ba2e50fd2c650552d6af4e396e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b.mp3', 1149, '2026-09-13 06:43:04.076418', '93bf4b705cb9b195be05c3c00db083722b03784697ec569d30fd51c83ff7cb6f', 'validated', '{"audio_key":"523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b","entity_key":"lx_unexpected_situations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93bf4b705cb9b195be05c3c00db083722b03784697ec569d30fd51c83ff7cb6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_unexpected_situations_01 -> audio/generated/de-DE/lexical/523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1bd1576-4687-5673-a75d-8c2c6ff6bac9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_unexpected_situations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c960dcb9f3518de2d88e7fb9cb134edeff1c0ba2e50fd2c650552d6af4e396e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa3a247a-66b4-560b-a2da-8df2ebfaffcd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1bd1576-4687-5673-a75d-8c2c6ff6bac9', 1), '5c960dcb9f3518de2d88e7fb9cb134edeff1c0ba2e50fd2c650552d6af4e396e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b.mp3', 1149, '2026-09-13 06:43:04.076418', '93bf4b705cb9b195be05c3c00db083722b03784697ec569d30fd51c83ff7cb6f', 'validated', '{"audio_key":"523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b","entity_key":"wf_unexpected_situations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93bf4b705cb9b195be05c3c00db083722b03784697ec569d30fd51c83ff7cb6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/523b2a9bcc43b6ea7df240cfa7e11baa79f58bfe41ae17d02c973ec2e3bf8c7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_responsibilities_02 -> audio/generated/de-DE/lexical/5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('22d99710-6479-5f1a-9531-b70b205d16a1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_responsibilities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3fe4dcbd8611e665c048b0f0c69a96700c52095632a018f30bee4344dd515ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f70d8c7b-3d4e-5b58-a9fb-97c115244d6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('22d99710-6479-5f1a-9531-b70b205d16a1', 1), 'b3fe4dcbd8611e665c048b0f0c69a96700c52095632a018f30bee4344dd515ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d.mp3', 1149, '2026-09-13 06:43:04.439524', '31f7738af8e8297ded19f5bb831a9bd3abd8f4f4a1180d21bde1e0f3d0732fde', 'validated', '{"audio_key":"5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d","entity_key":"lx_family_responsibilities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31f7738af8e8297ded19f5bb831a9bd3abd8f4f4a1180d21bde1e0f3d0732fde","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_responsibilities_02 -> audio/generated/de-DE/lexical/5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb624ad9-7604-585f-8797-fc3f9588ba36', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_responsibilities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3fe4dcbd8611e665c048b0f0c69a96700c52095632a018f30bee4344dd515ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58c7f1e4-94d3-58a7-80fb-3beabbcd62a2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb624ad9-7604-585f-8797-fc3f9588ba36', 1), 'b3fe4dcbd8611e665c048b0f0c69a96700c52095632a018f30bee4344dd515ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d.mp3', 1149, '2026-09-13 06:43:04.439524', '31f7738af8e8297ded19f5bb831a9bd3abd8f4f4a1180d21bde1e0f3d0732fde', 'validated', '{"audio_key":"5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d","entity_key":"wf_family_responsibilities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31f7738af8e8297ded19f5bb831a9bd3abd8f4f4a1180d21bde1e0f3d0732fde","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c29bf4b89936b6c8ac19c46fa9700e3e4e13220ccb5d09e58aef115adb6965d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_transport_delays_06 -> audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71783b94-658b-58b0-94b4-ccadf374de95', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_transport_delays_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fd223e0-78de-5a6c-b992-5584825eb95e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71783b94-658b-58b0-94b4-ccadf374de95', 1), '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3', 1332, '2026-09-13 05:30:06.208376', 'f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f', 'validated', '{"audio_key":"5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd","entity_key":"lx_transport_delays_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_transport_delays_06 -> audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2fdec144-036e-5a6a-b3e8-2cd49289312e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_transport_delays_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc101190-4329-54ed-a88a-4e0cb6d5ddf4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2fdec144-036e-5a6a-b3e8-2cd49289312e', 1), '60c7a2e2a43ae09e78d926258b4a859573d1c0b218c8b1ad1097629ae5eab4e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3', 1332, '2026-09-13 05:30:06.208376', 'f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f', 'validated', '{"audio_key":"5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd","entity_key":"wf_transport_delays_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5f860706b5127c22b7fd52c7cae681120083c55d9cd682e598411fc17dfd88f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c872a5d68ceaf3a20dcb74a1869c2b0dc52414243d9971354a30c1015d148fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_unexpected_situations_04 -> audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e818c740-28cd-5f11-b4a0-6887197bce3e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_unexpected_situations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea52924f-9109-5dcb-be11-5137fb0dc242', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e818c740-28cd-5f11-b4a0-6887197bce3e', 1), '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3', 1018, '2026-09-13 06:43:05.074128', 'df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd', 'validated', '{"audio_key":"5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985","entity_key":"lx_unexpected_situations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_unexpected_situations_04 -> audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae509dd1-b63a-51b1-9f9c-08d55ed8699b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_unexpected_situations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acf3fd2a-779a-56af-a391-a65d2b32d6df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae509dd1-b63a-51b1-9f9c-08d55ed8699b', 1), '2e177046bb7b0eb1f96bb5cf5969c91087b41eb2ca2ab64aae16e0729d9a9a1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3', 1018, '2026-09-13 06:43:05.074128', 'df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd', 'validated', '{"audio_key":"5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985","entity_key":"wf_unexpected_situations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df07697f309e58e696e47714b576410c33920f9eebdfc14b30567326a8061cbd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5dd6a7d345320dcdfd86d5784d31ed24e5fe2c6ee7a1de6ed27bb9578ac48985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_transport_delays_05 -> audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b0841b23-63e7-59be-9a8d-e14c30c3b8b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_transport_delays_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e177614-adc8-56a4-971c-eff15489e694', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b0841b23-63e7-59be-9a8d-e14c30c3b8b7', 1), '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3', 862, '2026-09-13 06:43:05.428582', '9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51', 'validated', '{"audio_key":"5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6","entity_key":"lx_transport_delays_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_transport_delays_05 -> audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cd20edbc-0a8d-513f-82e0-4bb1767c4ef0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_transport_delays_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67a09eee-c261-5f25-bbcd-50bf602703f1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cd20edbc-0a8d-513f-82e0-4bb1767c4ef0', 1), '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3', 862, '2026-09-13 06:43:05.428582', '9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51', 'validated', '{"audio_key":"5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6","entity_key":"wf_transport_delays_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_phone_messages_04 -> audio/generated/de-DE/lexical/60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68be7913-2966-5f1d-ba2c-2e007d0ec417', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_phone_messages_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '868e64d0243e310222c762a66b1fdb5059c304b121412712ba4483d799514a77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87fce2ee-d5cc-5559-a955-f092a6e3ebe3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68be7913-2966-5f1d-ba2c-2e007d0ec417', 1), '868e64d0243e310222c762a66b1fdb5059c304b121412712ba4483d799514a77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad.mp3', 1253, '2026-09-13 05:30:09.458080', '4d7427353c7d7c7353430a8f1e141b0ee4c0fa8078253e4ef8fa62d1e4b79afb', 'validated', '{"audio_key":"60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad","entity_key":"lx_phone_messages_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d7427353c7d7c7353430a8f1e141b0ee4c0fa8078253e4ef8fa62d1e4b79afb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_phone_messages_04 -> audio/generated/de-DE/lexical/60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('004939a8-acfe-5a54-8ad7-60f5cfbebf8c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_phone_messages_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '868e64d0243e310222c762a66b1fdb5059c304b121412712ba4483d799514a77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1b667fb-c1bf-591a-a93b-34ef1be5b253', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('004939a8-acfe-5a54-8ad7-60f5cfbebf8c', 1), '868e64d0243e310222c762a66b1fdb5059c304b121412712ba4483d799514a77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad.mp3', 1253, '2026-09-13 05:30:09.458080', '4d7427353c7d7c7353430a8f1e141b0ee4c0fa8078253e4ef8fa62d1e4b79afb', 'validated', '{"audio_key":"60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad","entity_key":"wf_phone_messages_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d7427353c7d7c7353430a8f1e141b0ee4c0fa8078253e4ef8fa62d1e4b79afb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60a4ab5988e67233404028bf437819fa9438a5e6ecd5f2f5bef00a2fe009a7ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_future_changes_03 -> audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ed52a15-843d-5f26-9112-cb44a16e9c76', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_future_changes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dfacdf1-8013-5fe4-b425-e926d994790f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ed52a15-843d-5f26-9112-cb44a16e9c76', 1), '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3', 1201, '2026-09-13 06:17:33.075958', '0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091', 'validated', '{"audio_key":"652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48","entity_key":"lx_future_changes_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_future_changes_03 -> audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32a9d59d-6534-5bb8-82fc-082cd3ec480e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_future_changes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14ff5479-7702-5bf8-b480-7eaa05c0ca2a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32a9d59d-6534-5bb8-82fc-082cd3ec480e', 1), '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3', 1201, '2026-09-13 06:17:33.075958', '0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091', 'validated', '{"audio_key":"652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48","entity_key":"wf_future_changes_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_responsibilities_06 -> audio/generated/de-DE/lexical/660258374bc760451128552f7a1a19706d476be166241da169127360b399f684.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ac22cf0a-8458-5d12-8013-7c7a6e42c517', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_responsibilities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ef5c1fab636e2a37bc83e05d0c21262d33b35da934617d4658565faf4ce1264'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8af37d02-feed-586f-a601-b026fd3f4ada', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ac22cf0a-8458-5d12-8013-7c7a6e42c517', 1), '5ef5c1fab636e2a37bc83e05d0c21262d33b35da934617d4658565faf4ce1264',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/660258374bc760451128552f7a1a19706d476be166241da169127360b399f684.mp3', 1018, '2026-09-13 06:43:06.050547', 'ed84faad509f7e9edaddce338cc84a725f1fc9805d364acc619b385279d17f0b', 'validated', '{"audio_key":"660258374bc760451128552f7a1a19706d476be166241da169127360b399f684","entity_key":"lx_family_responsibilities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed84faad509f7e9edaddce338cc84a725f1fc9805d364acc619b385279d17f0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/660258374bc760451128552f7a1a19706d476be166241da169127360b399f684.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_responsibilities_06 -> audio/generated/de-DE/lexical/660258374bc760451128552f7a1a19706d476be166241da169127360b399f684.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c3e545c1-db58-52a6-809c-a26f83bedf9b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_responsibilities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ef5c1fab636e2a37bc83e05d0c21262d33b35da934617d4658565faf4ce1264'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1eff0332-dc8d-58c4-afd3-426b94da9c89', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c3e545c1-db58-52a6-809c-a26f83bedf9b', 1), '5ef5c1fab636e2a37bc83e05d0c21262d33b35da934617d4658565faf4ce1264',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/660258374bc760451128552f7a1a19706d476be166241da169127360b399f684.mp3', 1018, '2026-09-13 06:43:06.050547', 'ed84faad509f7e9edaddce338cc84a725f1fc9805d364acc619b385279d17f0b', 'validated', '{"audio_key":"660258374bc760451128552f7a1a19706d476be166241da169127360b399f684","entity_key":"wf_family_responsibilities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed84faad509f7e9edaddce338cc84a725f1fc9805d364acc619b385279d17f0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/660258374bc760451128552f7a1a19706d476be166241da169127360b399f684.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_responsibilities_03 -> audio/generated/de-DE/lexical/715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('48233561-95c5-5c36-a59e-38756d5aefff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_responsibilities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '785587c0532bdb03f0d0d2f0f806c1a8feadcf242c71d95a80240611b8ef359c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f3c0bf5-4440-5cc3-920f-85f1ffaa6dff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('48233561-95c5-5c36-a59e-38756d5aefff', 1), '785587c0532bdb03f0d0d2f0f806c1a8feadcf242c71d95a80240611b8ef359c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f.mp3', 1071, '2026-09-13 06:43:06.426139', '60551cc76d565e0522f441a0efd977665793f834ada4d13a42b12bdb6618712d', 'validated', '{"audio_key":"715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f","entity_key":"lx_family_responsibilities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60551cc76d565e0522f441a0efd977665793f834ada4d13a42b12bdb6618712d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_responsibilities_03 -> audio/generated/de-DE/lexical/715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('84cc1ac0-4ab4-53cd-90b0-cfb7c199a137', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_responsibilities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '785587c0532bdb03f0d0d2f0f806c1a8feadcf242c71d95a80240611b8ef359c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcd9a30d-eb48-5dc5-8e86-c77b6fc0a745', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('84cc1ac0-4ab4-53cd-90b0-cfb7c199a137', 1), '785587c0532bdb03f0d0d2f0f806c1a8feadcf242c71d95a80240611b8ef359c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f.mp3', 1071, '2026-09-13 06:43:06.426139', '60551cc76d565e0522f441a0efd977665793f834ada4d13a42b12bdb6618712d', 'validated', '{"audio_key":"715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f","entity_key":"wf_family_responsibilities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60551cc76d565e0522f441a0efd977665793f834ada4d13a42b12bdb6618712d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/715a38285086851cd8c805f974dd226209e4a6edde34a8d7a741aa4cca63894f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_transport_delays_01 -> audio/generated/de-DE/lexical/72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('12858acc-5dbd-52da-8558-e90a8e8a8817', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_transport_delays_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2feccdb0b3e9fb5368c7504e6823665acdd383059081677b4d373ab04f665a4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51472d8c-4803-5702-9a29-d16c135afbc6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('12858acc-5dbd-52da-8558-e90a8e8a8817', 1), '2feccdb0b3e9fb5368c7504e6823665acdd383059081677b4d373ab04f665a4c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895.mp3', 1149, '2026-09-13 05:30:15.794872', '8ba51e62b95dfe6edcf8767cda3d25916ef1c22f86cf1fa51ca5d78e1d9ef67a', 'validated', '{"audio_key":"72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895","entity_key":"lx_transport_delays_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8ba51e62b95dfe6edcf8767cda3d25916ef1c22f86cf1fa51ca5d78e1d9ef67a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_transport_delays_01 -> audio/generated/de-DE/lexical/72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32c8cf7b-af6a-5351-8a4a-080b28735447', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_transport_delays_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2feccdb0b3e9fb5368c7504e6823665acdd383059081677b4d373ab04f665a4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8108fed-7288-547a-b83b-2a4f5c292f9e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32c8cf7b-af6a-5351-8a4a-080b28735447', 1), '2feccdb0b3e9fb5368c7504e6823665acdd383059081677b4d373ab04f665a4c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895.mp3', 1149, '2026-09-13 05:30:15.794872', '8ba51e62b95dfe6edcf8767cda3d25916ef1c22f86cf1fa51ca5d78e1d9ef67a', 'validated', '{"audio_key":"72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895","entity_key":"wf_transport_delays_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8ba51e62b95dfe6edcf8767cda3d25916ef1c22f86cf1fa51ca5d78e1d9ef67a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/72e11ab2035de9045c917bd3bdeb3a64bf561b609ebcab53efb17a2a03677895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_services_appointments_05 -> audio/generated/de-DE/lexical/7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('30127e65-f7ea-50c4-8123-552955cc9d16', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_services_appointments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75fd406578f312d62214e45623fe6011b95fa7e560caa0280a5b6089d7b35a4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02ad7a07-8fe6-5693-9074-ec477593fa28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('30127e65-f7ea-50c4-8123-552955cc9d16', 1), '75fd406578f312d62214e45623fe6011b95fa7e560caa0280a5b6089d7b35a4d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0.mp3', 1332, '2026-09-13 06:43:07.069826', '6d054f901ea165adff5ff1d5b07d7811fcdbe8247be3cdc9fba860c411ca6edd', 'validated', '{"audio_key":"7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0","entity_key":"lx_public_services_appointments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d054f901ea165adff5ff1d5b07d7811fcdbe8247be3cdc9fba860c411ca6edd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_services_appointments_05 -> audio/generated/de-DE/lexical/7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1bce2265-14d8-551e-b919-1a8447eb212c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_services_appointments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75fd406578f312d62214e45623fe6011b95fa7e560caa0280a5b6089d7b35a4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('191b833b-d658-55a4-86e8-8b66d10af67c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1bce2265-14d8-551e-b919-1a8447eb212c', 1), '75fd406578f312d62214e45623fe6011b95fa7e560caa0280a5b6089d7b35a4d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0.mp3', 1332, '2026-09-13 06:43:07.069826', '6d054f901ea165adff5ff1d5b07d7811fcdbe8247be3cdc9fba860c411ca6edd', 'validated', '{"audio_key":"7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0","entity_key":"wf_public_services_appointments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d054f901ea165adff5ff1d5b07d7811fcdbe8247be3cdc9fba860c411ca6edd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7518cc3d2206ac792cb84e55fc29ad722b0a3e30afaa3519e2c844142f31fbf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_services_appointments_03 -> audio/generated/de-DE/lexical/7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b4e7fcb3-be3d-5216-8e07-a3bd2940a9e7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_services_appointments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68fd81593d1b178d64a64cd2a43a758498e6b1dafebfe344696ccdb5029d8f37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c855dab-d61d-5ce1-9977-ed5806f15129', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b4e7fcb3-be3d-5216-8e07-a3bd2940a9e7', 1), '68fd81593d1b178d64a64cd2a43a758498e6b1dafebfe344696ccdb5029d8f37',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2.mp3', 1149, '2026-09-13 06:43:07.420587', 'cf2d7f9f8fe05b147dbc72d2530bc67284b014f7fb2d0cd60b47c85c050726ef', 'validated', '{"audio_key":"7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2","entity_key":"lx_public_services_appointments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf2d7f9f8fe05b147dbc72d2530bc67284b014f7fb2d0cd60b47c85c050726ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_services_appointments_03 -> audio/generated/de-DE/lexical/7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4eba4b34-8b40-5e89-99df-527745394c2b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_services_appointments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68fd81593d1b178d64a64cd2a43a758498e6b1dafebfe344696ccdb5029d8f37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2543b1b-44f5-5432-b2c8-eace305e45cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4eba4b34-8b40-5e89-99df-527745394c2b', 1), '68fd81593d1b178d64a64cd2a43a758498e6b1dafebfe344696ccdb5029d8f37',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2.mp3', 1149, '2026-09-13 06:43:07.420587', 'cf2d7f9f8fe05b147dbc72d2530bc67284b014f7fb2d0cd60b47c85c050726ef', 'validated', '{"audio_key":"7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2","entity_key":"wf_public_services_appointments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf2d7f9f8fe05b147dbc72d2530bc67284b014f7fb2d0cd60b47c85c050726ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7833e46fbef32e4578189e867bdb329541a5dd9f68b4fe8d663ba435958a39b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_phone_messages_03 -> audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e623c43-04f1-53ab-a8e3-89bf44f7060e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_phone_messages_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12051a7f-cd00-573f-99ba-fb8fc9530e73', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e623c43-04f1-53ab-a8e3-89bf44f7060e', 1), '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3', 1149, '2026-09-13 05:30:18.923565', '7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601', 'validated', '{"audio_key":"79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512","entity_key":"lx_phone_messages_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_phone_messages_03 -> audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d0079b0-d0ad-5126-9c45-4d2408c9119e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_phone_messages_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a359632-c5c5-518e-a70b-a98a03083293', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d0079b0-d0ad-5126-9c45-4d2408c9119e', 1), '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3', 1149, '2026-09-13 05:30:18.923565', '7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601', 'validated', '{"audio_key":"79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512","entity_key":"wf_phone_messages_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clubs_volunteering_01 -> audio/generated/de-DE/lexical/8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ef5fb362-ef29-5a4f-ba8a-e7e0e3393948', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clubs_volunteering_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5423c9b19290835480ae662ae26c61be4588ca0eadc62ddc6d8c770ad79a7953'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f2ee915-a4c5-5d46-a654-f741bf6790cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ef5fb362-ef29-5a4f-ba8a-e7e0e3393948', 1), '5423c9b19290835480ae662ae26c61be4588ca0eadc62ddc6d8c770ad79a7953',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70.mp3', 1149, '2026-09-13 06:43:08.074398', '2d5261f48fb6278fb42db93b44a465d93e67ece6d2d5dbf787e57b9c0ce75839', 'validated', '{"audio_key":"8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70","entity_key":"lx_clubs_volunteering_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5261f48fb6278fb42db93b44a465d93e67ece6d2d5dbf787e57b9c0ce75839","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clubs_volunteering_01 -> audio/generated/de-DE/lexical/8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7d588b9a-94d9-5c0b-af59-3740f645a6e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clubs_volunteering_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5423c9b19290835480ae662ae26c61be4588ca0eadc62ddc6d8c770ad79a7953'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2215db00-14a5-5017-870c-4c1c28c353bd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7d588b9a-94d9-5c0b-af59-3740f645a6e9', 1), '5423c9b19290835480ae662ae26c61be4588ca0eadc62ddc6d8c770ad79a7953',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70.mp3', 1149, '2026-09-13 06:43:08.074398', '2d5261f48fb6278fb42db93b44a465d93e67ece6d2d5dbf787e57b9c0ce75839', 'validated', '{"audio_key":"8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70","entity_key":"wf_clubs_volunteering_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5261f48fb6278fb42db93b44a465d93e67ece6d2d5dbf787e57b9c0ce75839","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8231463e995855952b83738ad604c8981b0c7f4b5315e787d75a4b8237e62f70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_transport_delays_02 -> audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('caadaedb-d44e-5fdb-81ee-aacbd6eefa6a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_transport_delays_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4998d437-399a-5ad9-a281-20cc88537081', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('caadaedb-d44e-5fdb-81ee-aacbd6eefa6a', 1), '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3', 1071, '2026-09-13 05:30:25.868716', '8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1', 'validated', '{"audio_key":"8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f","entity_key":"lx_transport_delays_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_transport_delays_02 -> audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9b89035-03f7-5912-b19f-0edc7ad4b920', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_transport_delays_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5a1719d-240b-5635-99d9-cb020684dcbe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9b89035-03f7-5912-b19f-0edc7ad4b920', 1), '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3', 1071, '2026-09-13 05:30:25.868716', '8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1', 'validated', '{"audio_key":"8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f","entity_key":"wf_transport_delays_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_responsibilities_05 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_responsibilities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5f358d-6d3c-5a25-9f12-7781dffa8963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"lx_family_responsibilities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_responsibilities_05 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3476140d-5802-5f82-a782-2387e3a8b5e7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_responsibilities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfb70e7d-414f-56fc-b958-08e9457732f1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3476140d-5802-5f82-a782-2387e3a8b5e7', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"wf_family_responsibilities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_news_information_05 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_news_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5f358d-6d3c-5a25-9f12-7781dffa8963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"lx_news_information_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_news_information_05 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18a47231-4763-5ff1-b555-43a2b5b324e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_news_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9545f6be-4dba-55a9-ab08-51b3d227d2c5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18a47231-4763-5ff1-b555-43a2b5b324e1', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"wf_news_information_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_nutrition_03 -> audio/generated/de-DE/lexical/8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3d9e8d02-8eff-5332-9556-60753ba94966', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_nutrition_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad709977b8befc7301d7114132c3ae983b50ee566d7eacd84f730b2f14c98e3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d76cc5c-6eb0-5091-9438-6334bcbcf39c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3d9e8d02-8eff-5332-9556-60753ba94966', 1), 'ad709977b8befc7301d7114132c3ae983b50ee566d7eacd84f730b2f14c98e3a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148.mp3', 1071, '2026-09-13 05:30:28.020392', 'c650b1ecec37d45f15f2134b50d34c0b5cc782513a7c36eaa7b662782c9a64e6', 'validated', '{"audio_key":"8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148","entity_key":"lx_food_nutrition_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c650b1ecec37d45f15f2134b50d34c0b5cc782513a7c36eaa7b662782c9a64e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_nutrition_03 -> audio/generated/de-DE/lexical/8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5eb368a3-12ae-55da-a05f-7f2d7e8d6e8d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_nutrition_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad709977b8befc7301d7114132c3ae983b50ee566d7eacd84f730b2f14c98e3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3a4277a-dbb0-55e1-9e3e-796c9c1ce940', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5eb368a3-12ae-55da-a05f-7f2d7e8d6e8d', 1), 'ad709977b8befc7301d7114132c3ae983b50ee566d7eacd84f730b2f14c98e3a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148.mp3', 1071, '2026-09-13 05:30:28.020392', 'c650b1ecec37d45f15f2134b50d34c0b5cc782513a7c36eaa7b662782c9a64e6', 'validated', '{"audio_key":"8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148","entity_key":"wf_food_nutrition_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c650b1ecec37d45f15f2134b50d34c0b5cc782513a7c36eaa7b662782c9a64e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8e4ae9063749ca8c627247537cb1bd8c915484c0600dbc42cb2fe5a494eba148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_phone_messages_06 -> audio/generated/de-DE/lexical/9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d54dda36-a9f1-5f24-957e-e0f17f1902dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_phone_messages_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '036781f17340ce47c14653a728904ecf2f623e83c2a9adcb72e3e8751e9ff844'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dafd0afc-5adc-5fdb-8a3e-c362f4544b20', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d54dda36-a9f1-5f24-957e-e0f17f1902dd', 1), '036781f17340ce47c14653a728904ecf2f623e83c2a9adcb72e3e8751e9ff844',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9.mp3', 1201, '2026-09-13 05:30:35.276761', 'c65d0c80d8d84a0586ce98209f9e1f44395e98c806916e8cd8c77dd9dceef293', 'validated', '{"audio_key":"9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9","entity_key":"lx_phone_messages_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c65d0c80d8d84a0586ce98209f9e1f44395e98c806916e8cd8c77dd9dceef293","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_phone_messages_06 -> audio/generated/de-DE/lexical/9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6945d540-dabf-5007-8d8f-18580574c66a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_phone_messages_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '036781f17340ce47c14653a728904ecf2f623e83c2a9adcb72e3e8751e9ff844'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9eea1db8-5ae6-5cc2-8819-8e54d2ef42e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6945d540-dabf-5007-8d8f-18580574c66a', 1), '036781f17340ce47c14653a728904ecf2f623e83c2a9adcb72e3e8751e9ff844',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9.mp3', 1201, '2026-09-13 05:30:35.276761', 'c65d0c80d8d84a0586ce98209f9e1f44395e98c806916e8cd8c77dd9dceef293', 'validated', '{"audio_key":"9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9","entity_key":"wf_phone_messages_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c65d0c80d8d84a0586ce98209f9e1f44395e98c806916e8cd8c77dd9dceef293","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9eea4226d14cc5eb188df47cb8008a39a9ce5eb92ae59bc875bfd72a7de83ba9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_news_information_03 -> audio/generated/de-DE/lexical/a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0cedfd4c-1424-5aa4-9326-2614dc4a2f90', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_news_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51967195195262853412341a36292be6cc35f8cceee78e70dcc6851fc5ea4896'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95759d92-4e81-5a62-957c-c49eb2e2c329', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0cedfd4c-1424-5aa4-9326-2614dc4a2f90', 1), '51967195195262853412341a36292be6cc35f8cceee78e70dcc6851fc5ea4896',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5.mp3', 1071, '2026-09-13 06:43:08.414236', '94356b8ff14cb4ede2c2b37c9c43b6187c3b14830b58e24204acd03bbf7fc2d0', 'validated', '{"audio_key":"a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5","entity_key":"lx_news_information_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94356b8ff14cb4ede2c2b37c9c43b6187c3b14830b58e24204acd03bbf7fc2d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_news_information_03 -> audio/generated/de-DE/lexical/a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('14437f1b-0b5c-595f-8f5d-e37114122ddd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_news_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51967195195262853412341a36292be6cc35f8cceee78e70dcc6851fc5ea4896'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81c5ef42-90da-5940-8131-70d660de2fc1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('14437f1b-0b5c-595f-8f5d-e37114122ddd', 1), '51967195195262853412341a36292be6cc35f8cceee78e70dcc6851fc5ea4896',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5.mp3', 1071, '2026-09-13 06:43:08.414236', '94356b8ff14cb4ede2c2b37c9c43b6187c3b14830b58e24204acd03bbf7fc2d0', 'validated', '{"audio_key":"a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5","entity_key":"wf_news_information_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94356b8ff14cb4ede2c2b37c9c43b6187c3b14830b58e24204acd03bbf7fc2d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a0c9cd00efed0945fd3ff4134b238a1d69ed4a524912ff4a793dfb5fc87db4e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clubs_volunteering_04 -> audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e5b843b-ae7c-5427-8b68-531fd4d970a2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clubs_volunteering_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff990fb6-6734-50f3-8106-0fecf0476cf4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e5b843b-ae7c-5427-8b68-531fd4d970a2', 1), '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3', 1071, '2026-09-13 05:30:37.376332', 'bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2', 'validated', '{"audio_key":"a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a","entity_key":"lx_clubs_volunteering_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clubs_volunteering_04 -> audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('117f431a-50f0-5aa7-810b-9d9835dcc928', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clubs_volunteering_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bcd673b-c66a-5703-b1d7-a96f98d8c4fd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('117f431a-50f0-5aa7-810b-9d9835dcc928', 1), '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3', 1071, '2026-09-13 05:30:37.376332', 'bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2', 'validated', '{"audio_key":"a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a","entity_key":"wf_clubs_volunteering_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_unexpected_situations_06 -> audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e708713c-48e1-5462-8b95-09307e527540', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_unexpected_situations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8190fc1-77f3-541f-af3f-5cf8dfa503dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e708713c-48e1-5462-8b95-09307e527540', 1), 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3', 1018, '2026-09-13 05:30:41.786422', 'd2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9', 'validated', '{"audio_key":"ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e","entity_key":"lx_unexpected_situations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_unexpected_situations_06 -> audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('40688f5c-e56f-5f53-95bf-23269f44e706', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_unexpected_situations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ddae0ed-5985-5309-8449-53514932f389', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('40688f5c-e56f-5f53-95bf-23269f44e706', 1), 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3', 1018, '2026-09-13 05:30:41.786422', 'd2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9', 'validated', '{"audio_key":"ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e","entity_key":"wf_unexpected_situations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_news_information_04 -> audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('89d63ab9-72ad-54af-9a53-386f9dfb213c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_news_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80a3dbd0-b1e0-581b-94ea-a5f26e620be9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('89d63ab9-72ad-54af-9a53-386f9dfb213c', 1), 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3', 1201, '2026-09-13 06:43:09.108581', 'a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f', 'validated', '{"audio_key":"b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3","entity_key":"lx_news_information_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_news_information_04 -> audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c5befb2d-4485-5cbc-8dc9-e52bfdeab43e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_news_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbe8079b-1fc1-5efc-bcb1-e14429b2fae9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c5befb2d-4485-5cbc-8dc9-e52bfdeab43e', 1), 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3', 1201, '2026-09-13 06:43:09.108581', 'a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f', 'validated', '{"audio_key":"b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3","entity_key":"wf_news_information_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_news_information_02 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_news_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8e60eed-96d7-5acb-a58c-cbc6a8a661d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"lx_news_information_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_news_information_02 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('53a2d99d-faee-544a-b031-948c3f02d6a7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_news_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c220b2cd-6abd-5c56-b708-c17527e4dcd4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('53a2d99d-faee-544a-b031-948c3f02d6a7', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"wf_news_information_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_news_information_01 -> audio/generated/de-DE/lexical/ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('474d6b9d-4d1f-5032-be0b-1e8274333fd4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_news_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b5c331c689daf983179e79640d3ace7b1b01de7b307c15c8623a115bfe22497'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f160baf-0342-5ae2-99e6-ec65b16d1a7e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('474d6b9d-4d1f-5032-be0b-1e8274333fd4', 1), '1b5c331c689daf983179e79640d3ace7b1b01de7b307c15c8623a115bfe22497',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5.mp3', 1018, '2026-09-13 06:43:10.113000', 'a9224b48ed4bc1f83c25375661454a4a7dd362ee4e27464f8a5df15364369689', 'validated', '{"audio_key":"ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5","entity_key":"lx_news_information_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9224b48ed4bc1f83c25375661454a4a7dd362ee4e27464f8a5df15364369689","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_news_information_01 -> audio/generated/de-DE/lexical/ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a13a9996-8b7a-5edb-9126-bfd4bc681c80', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_news_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b5c331c689daf983179e79640d3ace7b1b01de7b307c15c8623a115bfe22497'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b33e945-5d78-5b1e-b102-9d8f51ed67e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a13a9996-8b7a-5edb-9126-bfd4bc681c80', 1), '1b5c331c689daf983179e79640d3ace7b1b01de7b307c15c8623a115bfe22497',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5.mp3', 1018, '2026-09-13 06:43:10.113000', 'a9224b48ed4bc1f83c25375661454a4a7dd362ee4e27464f8a5df15364369689', 'validated', '{"audio_key":"ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5","entity_key":"wf_news_information_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9224b48ed4bc1f83c25375661454a4a7dd362ee4e27464f8a5df15364369689","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba44924efef0df7ca45d48b7f00c2141a5e47bf2c8172058bbafb0ec7f2989f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_future_changes_04 -> audio/generated/de-DE/lexical/bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc201c00-6e1c-53a4-8857-14749b7338c5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_future_changes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad8692615c57e8d4e729aaafa04f5806127b68793ee7e77307a5aa189529e2bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c0cb694-92c8-515d-b5c1-b708557e1a11', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc201c00-6e1c-53a4-8857-14749b7338c5', 1), 'ad8692615c57e8d4e729aaafa04f5806127b68793ee7e77307a5aa189529e2bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df.mp3', 1071, '2026-09-13 06:43:10.399230', 'f41ae521656ecf7e61554e8832a09670ea688a2d9aa60db08f44924e4c75a29f', 'validated', '{"audio_key":"bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df","entity_key":"lx_future_changes_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f41ae521656ecf7e61554e8832a09670ea688a2d9aa60db08f44924e4c75a29f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_future_changes_04 -> audio/generated/de-DE/lexical/bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fe87a4bf-e192-55b4-ab45-720ce3c72030', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_future_changes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad8692615c57e8d4e729aaafa04f5806127b68793ee7e77307a5aa189529e2bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9bb6d2e-28ef-50ed-8289-a034ec1c9eee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fe87a4bf-e192-55b4-ab45-720ce3c72030', 1), 'ad8692615c57e8d4e729aaafa04f5806127b68793ee7e77307a5aa189529e2bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df.mp3', 1071, '2026-09-13 06:43:10.399230', 'f41ae521656ecf7e61554e8832a09670ea688a2d9aa60db08f44924e4c75a29f', 'validated', '{"audio_key":"bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df","entity_key":"wf_future_changes_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f41ae521656ecf7e61554e8832a09670ea688a2d9aa60db08f44924e4c75a29f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bcafe85c702ea450c8ec7d7a56b85ee35e05a456c3522e9590d24d63fa88e8df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_unexpected_situations_02 -> audio/generated/de-DE/lexical/bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8754b743-dcde-5a0d-a8a4-74a2d4f2b534', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_unexpected_situations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2573c09e1e58b9c8cd241b7d1ecaedca63c2194ae23750da8f957d0bf205dd77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eec7a946-84e8-5865-96f6-1d08821e8f78', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8754b743-dcde-5a0d-a8a4-74a2d4f2b534', 1), '2573c09e1e58b9c8cd241b7d1ecaedca63c2194ae23750da8f957d0bf205dd77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321.mp3', 1097, '2026-09-13 06:43:11.161412', '7d6758d51664a90dc2396ced466098049620e3b4cf3f3397ecd77c32111dc756', 'validated', '{"audio_key":"bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321","entity_key":"lx_unexpected_situations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d6758d51664a90dc2396ced466098049620e3b4cf3f3397ecd77c32111dc756","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_unexpected_situations_02 -> audio/generated/de-DE/lexical/bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ddde89ba-63a3-56c2-a5f2-32ec1788bedc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_unexpected_situations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2573c09e1e58b9c8cd241b7d1ecaedca63c2194ae23750da8f957d0bf205dd77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca9ba82c-58de-551e-91d8-e6edb0a4e149', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ddde89ba-63a3-56c2-a5f2-32ec1788bedc', 1), '2573c09e1e58b9c8cd241b7d1ecaedca63c2194ae23750da8f957d0bf205dd77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321.mp3', 1097, '2026-09-13 06:43:11.161412', '7d6758d51664a90dc2396ced466098049620e3b4cf3f3397ecd77c32111dc756', 'validated', '{"audio_key":"bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321","entity_key":"wf_unexpected_situations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d6758d51664a90dc2396ced466098049620e3b4cf3f3397ecd77c32111dc756","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bf3184cd39d4d467b745bbdd24de484e34e118446e3ceac95d2968ec5c412321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_responsibilities_04 -> audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b144678e-67be-5790-9dca-e66ac9acce6a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_responsibilities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d25d341-8a5e-5f95-96ce-1f62664055b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b144678e-67be-5790-9dca-e66ac9acce6a', 1), 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3', 966, '2026-09-13 06:43:11.391768', 'f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d', 'validated', '{"audio_key":"c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74","entity_key":"lx_family_responsibilities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_responsibilities_04 -> audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('169d98eb-28a0-5a2f-906f-35727eb00a58', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_responsibilities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fde821ca-3e3d-5a85-97f4-aff9d6493b83', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('169d98eb-28a0-5a2f-906f-35727eb00a58', 1), 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3', 966, '2026-09-13 06:43:11.391768', 'f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d', 'validated', '{"audio_key":"c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74","entity_key":"wf_family_responsibilities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_public_services_appointments_06 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_public_services_appointments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a2ebf2-ace9-5fad-9a1f-2af88061d174', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"lx_public_services_appointments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_public_services_appointments_06 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a47b3095-548c-5be1-ae02-b82590e8a9a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_public_services_appointments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2edf1710-5587-51fd-a3cb-aa10ea9cf7af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a47b3095-548c-5be1-ae02-b82590e8a9a0', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"wf_public_services_appointments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_planning_01 -> audio/generated/de-DE/lexical/db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5704e8e5-f4a8-54e5-9547-e7573c01a6d5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40ebf93af8d45215e6ddd544106a2766cf2a6f445edc30f72218b4e044a22c37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b2035b2-378c-5e7d-9afb-265074dca61a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5704e8e5-f4a8-54e5-9547-e7573c01a6d5', 1), '40ebf93af8d45215e6ddd544106a2766cf2a6f445edc30f72218b4e044a22c37',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78.mp3', 1071, '2026-09-13 05:30:59.564946', '3c8ff5f3a76ba9d0ca392b5ebd5c789fe10bc2aab316ade5fecdb1b98ac625ee', 'validated', '{"audio_key":"db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78","entity_key":"lx_project_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c8ff5f3a76ba9d0ca392b5ebd5c789fe10bc2aab316ade5fecdb1b98ac625ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_planning_01 -> audio/generated/de-DE/lexical/db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8a6575c-7121-5ed6-b563-3f2c82433761', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40ebf93af8d45215e6ddd544106a2766cf2a6f445edc30f72218b4e044a22c37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00aba448-f27c-5ecc-b4fe-7a92913db69b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8a6575c-7121-5ed6-b563-3f2c82433761', 1), '40ebf93af8d45215e6ddd544106a2766cf2a6f445edc30f72218b4e044a22c37',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78.mp3', 1071, '2026-09-13 05:30:59.564946', '3c8ff5f3a76ba9d0ca392b5ebd5c789fe10bc2aab316ade5fecdb1b98ac625ee', 'validated', '{"audio_key":"db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78","entity_key":"wf_project_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c8ff5f3a76ba9d0ca392b5ebd5c789fe10bc2aab316ade5fecdb1b98ac625ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/db4443be4f1bd79850974a1f5225d33182363172feb04b876fd533f0c6badc78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_planning_02 -> audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4c32934-6c8f-5106-a8d1-986e8f8c7cd2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46f9c994-a2a2-5f54-a9bd-604ed0abf872', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4c32934-6c8f-5106-a8d1-986e8f8c7cd2', 1), 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3', 966, '2026-09-13 05:31:02.672230', 'f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7', 'validated', '{"audio_key":"e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d","entity_key":"lx_project_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_planning_02 -> audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bfaaa6c0-2a35-592c-8a9c-993db9e79a1d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edae5cf3-6478-590b-8dc0-b06e5365d036', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bfaaa6c0-2a35-592c-8a9c-993db9e79a1d', 1), 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3', 966, '2026-09-13 05:31:02.672230', 'f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7', 'validated', '{"audio_key":"e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d","entity_key":"wf_project_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_transport_delays_04 -> audio/generated/de-DE/lexical/e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ba0c65f4-670e-575b-bee2-e9a2e378af7f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_transport_delays_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ede2a42d4b1c8183518f5ed681dfc1c232559b37ff9e31a5830e862f82f64e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4667a81d-5421-5ecd-93a2-5d7f8198a675', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ba0c65f4-670e-575b-bee2-e9a2e378af7f', 1), '28ede2a42d4b1c8183518f5ed681dfc1c232559b37ff9e31a5830e862f82f64e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978.mp3', 1071, '2026-09-13 05:31:06.432047', '9ab1c99768a899758a056a30f155c70db359142bc8ad42bbfbdc355418af42bb', 'validated', '{"audio_key":"e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978","entity_key":"lx_transport_delays_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ab1c99768a899758a056a30f155c70db359142bc8ad42bbfbdc355418af42bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_transport_delays_04 -> audio/generated/de-DE/lexical/e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ab487c65-4a17-504a-beb1-88a5fe78bec4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_transport_delays_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ede2a42d4b1c8183518f5ed681dfc1c232559b37ff9e31a5830e862f82f64e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de1e3a1b-286e-5c44-b2da-578704224e7e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ab487c65-4a17-504a-beb1-88a5fe78bec4', 1), '28ede2a42d4b1c8183518f5ed681dfc1c232559b37ff9e31a5830e862f82f64e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978.mp3', 1071, '2026-09-13 05:31:06.432047', '9ab1c99768a899758a056a30f155c70db359142bc8ad42bbfbdc355418af42bb', 'validated', '{"audio_key":"e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978","entity_key":"wf_transport_delays_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ab1c99768a899758a056a30f155c70db359142bc8ad42bbfbdc355418af42bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e94b36318812194be2670460fd441988638817eb63dd2cd983fd6c7deace8978.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_transport_delays_03 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_transport_delays_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97eaf1d6-f1c2-534b-a928-0e42d06ad049', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"lx_transport_delays_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_transport_delays_03 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aea353ff-e704-5cfa-ae36-75a67b6243eb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_transport_delays_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('651d440c-33ff-5fed-9b4a-5848af9787fa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aea353ff-e704-5cfa-ae36-75a67b6243eb', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"wf_transport_delays_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_unexpected_situations_03 -> audio/generated/de-DE/lexical/ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('82e30f09-17eb-50ea-94a6-8c7f15f63766', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_unexpected_situations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce65e0311e8d4b0eb46155f4e5da36077d5ecaf4ef7e90ad78d6037814125e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6717f013-42be-5f7f-8a61-e6d029c41083', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('82e30f09-17eb-50ea-94a6-8c7f15f63766', 1), 'ce65e0311e8d4b0eb46155f4e5da36077d5ecaf4ef7e90ad78d6037814125e94',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039.mp3', 1097, '2026-09-13 06:43:12.377366', '2f0e3b5ab1bec6eaa1292d50ed1b621a99ba3f3b6c8061d1c2f8848d97fcfa31', 'validated', '{"audio_key":"ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039","entity_key":"lx_unexpected_situations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f0e3b5ab1bec6eaa1292d50ed1b621a99ba3f3b6c8061d1c2f8848d97fcfa31","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_unexpected_situations_03 -> audio/generated/de-DE/lexical/ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e0ac7a9-4d9b-5b0c-9d62-dcffd34432dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_unexpected_situations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce65e0311e8d4b0eb46155f4e5da36077d5ecaf4ef7e90ad78d6037814125e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4253b4c-2461-5796-8da0-09514a501708', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e0ac7a9-4d9b-5b0c-9d62-dcffd34432dd', 1), 'ce65e0311e8d4b0eb46155f4e5da36077d5ecaf4ef7e90ad78d6037814125e94',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039.mp3', 1097, '2026-09-13 06:43:12.377366', '2f0e3b5ab1bec6eaa1292d50ed1b621a99ba3f3b6c8061d1c2f8848d97fcfa31', 'validated', '{"audio_key":"ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039","entity_key":"wf_unexpected_situations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f0e3b5ab1bec6eaa1292d50ed1b621a99ba3f3b6c8061d1c2f8848d97fcfa31","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ecb3ed9ad0794dfa1d0da5c2280ec3776707c3831d87e448c71cb81159d2c039.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_planning_04 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8166d85-bb84-5b0c-9bce-ac2b757f2973', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"lx_project_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_planning_04 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2612268f-f213-59ed-8ce2-4620c8171ca9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98d7cd51-a109-500f-adec-1afad7dffe14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2612268f-f213-59ed-8ce2-4620c8171ca9', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"wf_project_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_future_changes_06 -> audio/generated/de-DE/lexical/f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c493061-4b4c-51ba-88d7-180ec37c8cc9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_future_changes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5c862f72e17967428fda0389f9686418df030113d7cf0a2c250c73e6f494479'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d34af4c-fc75-5bd1-b7db-812b4c6ba801', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c493061-4b4c-51ba-88d7-180ec37c8cc9', 1), 'f5c862f72e17967428fda0389f9686418df030113d7cf0a2c250c73e6f494479',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab.mp3', 1097, '2026-09-13 06:43:13.165814', '4b901dac93eed7322202d0808b257d57c4b45b726512f16d8cfb5fe36f21e033', 'validated', '{"audio_key":"f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab","entity_key":"lx_future_changes_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b901dac93eed7322202d0808b257d57c4b45b726512f16d8cfb5fe36f21e033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_future_changes_06 -> audio/generated/de-DE/lexical/f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44382a7d-4a74-5762-8320-758812561655', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_future_changes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5c862f72e17967428fda0389f9686418df030113d7cf0a2c250c73e6f494479'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b98470b9-1d5c-54f1-831e-04a48e6e7da2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44382a7d-4a74-5762-8320-758812561655', 1), 'f5c862f72e17967428fda0389f9686418df030113d7cf0a2c250c73e6f494479',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab.mp3', 1097, '2026-09-13 06:43:13.165814', '4b901dac93eed7322202d0808b257d57c4b45b726512f16d8cfb5fe36f21e033', 'validated', '{"audio_key":"f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab","entity_key":"wf_future_changes_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b901dac93eed7322202d0808b257d57c4b45b726512f16d8cfb5fe36f21e033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2fb746a1cbabf1f5c08fd79024af7ced80696da52da90fc18656e6ebee11cab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_responsibilities_01 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_responsibilities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fb0e6d0-33b7-5be7-9f6b-adee23e02d22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"lx_family_responsibilities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_responsibilities_01 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69820936-1796-56f5-bdf2-abf5481f0398', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_responsibilities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('032557b4-f250-5438-8230-a4055d8d6ab6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69820936-1796-56f5-bdf2-abf5481f0398', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"wf_family_responsibilities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_nutrition_02 -> audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b286976b-3b1d-5187-988f-e5e71ce2b2b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_nutrition_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bca8d8c-6b60-505c-96dd-97c65dbb692e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b286976b-3b1d-5187-988f-e5e71ce2b2b7', 1), 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3', 1253, '2026-09-13 05:54:52.561335', '64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb', 'validated', '{"audio_key":"fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3","entity_key":"lx_food_nutrition_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_nutrition_02 -> audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('57f30b21-93a8-596f-b41f-80ee2526196f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_nutrition_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47ee7178-f8c7-532e-8213-431ef0986b3c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('57f30b21-93a8-596f-b41f-80ee2526196f', 1), 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3', 1253, '2026-09-13 05:54:52.561335', '64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb', 'validated', '{"audio_key":"fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3","entity_key":"wf_food_nutrition_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_nutrition_01 -> audio/generated/de-DE/lexical/ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5cafeed0-c1c7-5c76-93ae-38704e238606', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_nutrition_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b07f1220a03f014250e2e9c4a203548360464588acba639b289cbe80232d5b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c83aab1-ae51-5eea-ab03-b4430600a86b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5cafeed0-c1c7-5c76-93ae-38704e238606', 1), '0b07f1220a03f014250e2e9c4a203548360464588acba639b289cbe80232d5b9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1.mp3', 1018, '2026-09-13 06:43:13.388045', 'd52b218e63914ac3114dbedc76b2325995384f8f7bdea9ead3dfbc41f605f2c8', 'validated', '{"audio_key":"ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1","entity_key":"lx_food_nutrition_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d52b218e63914ac3114dbedc76b2325995384f8f7bdea9ead3dfbc41f605f2c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_nutrition_01 -> audio/generated/de-DE/lexical/ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9abb2316-8c20-57c0-9631-bf813154b6c5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_nutrition_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b07f1220a03f014250e2e9c4a203548360464588acba639b289cbe80232d5b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5223e518-805f-5725-bc37-0878bf524714', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9abb2316-8c20-57c0-9631-bf813154b6c5', 1), '0b07f1220a03f014250e2e9c4a203548360464588acba639b289cbe80232d5b9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1.mp3', 1018, '2026-09-13 06:43:13.388045', 'd52b218e63914ac3114dbedc76b2325995384f8f7bdea9ead3dfbc41f605f2c8', 'validated', '{"audio_key":"ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1","entity_key":"wf_food_nutrition_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d52b218e63914ac3114dbedc76b2325995384f8f7bdea9ead3dfbc41f605f2c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ffb3c6758bfdf5790dfd6097bd0e5c642742c49375f9da1fbd243425f3fa77d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_services_appointments_01 -> audio/generated/de-DE/utterances/052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3d0aefb1-747f-594f-9009-6d6999714845', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_services_appointments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e97d5f417b0c8a039be483a7f8814b1b952ad569a94da9d4aea3284b23a10f09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14217276-a8d2-5523-9cf5-3bf3ceff2e2c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3d0aefb1-747f-594f-9009-6d6999714845', 1), 'e97d5f417b0c8a039be483a7f8814b1b952ad569a94da9d4aea3284b23a10f09',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0.mp3', 4205, '2026-09-13 06:43:14.538501', '5a478a911c7e8eaa4eefd0f5436fb782617563d4e3480af9f12b7957842c0802', 'validated', '{"audio_key":"052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0","entity_key":"u_public_services_appointments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a478a911c7e8eaa4eefd0f5436fb782617563d4e3480af9f12b7957842c0802","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_public_services_appointments_01_listen -> audio/generated/de-DE/utterances/052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c3b2a67-c504-5fa5-95ac-145db97d841e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_public_services_appointments_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e97d5f417b0c8a039be483a7f8814b1b952ad569a94da9d4aea3284b23a10f09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('098c7d6a-ad64-5bd6-97e0-d4a2922b5a9d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c3b2a67-c504-5fa5-95ac-145db97d841e', 1), 'e97d5f417b0c8a039be483a7f8814b1b952ad569a94da9d4aea3284b23a10f09',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0.mp3', 4205, '2026-09-13 06:43:14.538501', '5a478a911c7e8eaa4eefd0f5436fb782617563d4e3480af9f12b7957842c0802', 'validated', '{"audio_key":"052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0","entity_key":"ex_public_services_appointments_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a478a911c7e8eaa4eefd0f5436fb782617563d4e3480af9f12b7957842c0802","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/052260bdc6c38c2315e7a703105cf30d4497a0f6780ea826c6209836a5aa7cd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_responsibilities_01 -> audio/generated/de-DE/utterances/08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6cbf4512-2785-564c-b236-1ff6248c4da5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_responsibilities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe61026c9010fb5014a2d4f7878f7700ba1dab9170232c1848259792e0486e4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06e7a4f7-94cb-5f96-aa51-9b9df583b008', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6cbf4512-2785-564c-b236-1ff6248c4da5', 1), 'fe61026c9010fb5014a2d4f7878f7700ba1dab9170232c1848259792e0486e4d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3.mp3', 4022, '2026-09-13 06:43:14.771287', '72c076244e17556e4a313989026011b68b868be63049f0cd1fba6dae0d09b959', 'validated', '{"audio_key":"08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3","entity_key":"u_family_responsibilities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72c076244e17556e4a313989026011b68b868be63049f0cd1fba6dae0d09b959","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_family_responsibilities_01_listen -> audio/generated/de-DE/utterances/08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bc4d8914-7fd8-5191-857e-9baf2a7c55f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_family_responsibilities_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe61026c9010fb5014a2d4f7878f7700ba1dab9170232c1848259792e0486e4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f62373b5-1f07-51c3-9f58-2c6f0df2bedb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bc4d8914-7fd8-5191-857e-9baf2a7c55f3', 1), 'fe61026c9010fb5014a2d4f7878f7700ba1dab9170232c1848259792e0486e4d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3.mp3', 4022, '2026-09-13 06:43:14.771287', '72c076244e17556e4a313989026011b68b868be63049f0cd1fba6dae0d09b959', 'validated', '{"audio_key":"08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3","entity_key":"ex_family_responsibilities_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72c076244e17556e4a313989026011b68b868be63049f0cd1fba6dae0d09b959","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/08690d6393ef59f82d1898b2f187ccff1e2530eb6a8ef144eee2e16a808429f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_nutrition_01 -> audio/generated/de-DE/utterances/0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('911c28b3-898c-5ae3-a4b5-b087624b830e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_nutrition_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc5182f02aaba73422b42fd53d5169bc9a4963ec565d6e511401451c15f621aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e471ef9-9def-5a92-b23e-eccefd4d5c5c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('911c28b3-898c-5ae3-a4b5-b087624b830e', 1), 'fc5182f02aaba73422b42fd53d5169bc9a4963ec565d6e511401451c15f621aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3.mp3', 4127, '2026-09-13 06:43:15.884229', '031e81872676a9a2e2421fdd33950852ad27d503fd85ab597772b857d7ba79c3', 'validated', '{"audio_key":"0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3","entity_key":"u_food_nutrition_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"031e81872676a9a2e2421fdd33950852ad27d503fd85ab597772b857d7ba79c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_food_nutrition_01_listen -> audio/generated/de-DE/utterances/0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c73b217e-1b30-57fd-a6be-f1a02e8ebeb3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_food_nutrition_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc5182f02aaba73422b42fd53d5169bc9a4963ec565d6e511401451c15f621aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('237181e1-53a4-533a-93fa-344f203c7096', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c73b217e-1b30-57fd-a6be-f1a02e8ebeb3', 1), 'fc5182f02aaba73422b42fd53d5169bc9a4963ec565d6e511401451c15f621aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3.mp3', 4127, '2026-09-13 06:43:15.884229', '031e81872676a9a2e2421fdd33950852ad27d503fd85ab597772b857d7ba79c3', 'validated', '{"audio_key":"0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3","entity_key":"ex_food_nutrition_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"031e81872676a9a2e2421fdd33950852ad27d503fd85ab597772b857d7ba79c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c181d918d1816b4034c95452975b46660bce84772bbb0d200dd5370cf2986f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_news_information_04 -> audio/generated/de-DE/utterances/15e5ae9f3253f8756b0105ebc21bdb950c09a998b01f052c07b8259f880b619c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2eface4-86f0-53ab-923d-091010eb135e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_news_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea7539c7469219ae1ca6e2971b4d685b3e6a01da9f47dffc123747bcb041bfa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31241e20-c925-5b80-9b24-d2f83a2ad49d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2eface4-86f0-53ab-923d-091010eb135e', 1), 'ea7539c7469219ae1ca6e2971b4d685b3e6a01da9f47dffc123747bcb041bfa9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/15e5ae9f3253f8756b0105ebc21bdb950c09a998b01f052c07b8259f880b619c.mp3', 5459, '2026-09-13 06:43:16.287043', '082ec663f8ee03d95a66c91878b38a9981c98633fe849d9a87a4ef92749bca7f', 'validated', '{"audio_key":"15e5ae9f3253f8756b0105ebc21bdb950c09a998b01f052c07b8259f880b619c","entity_key":"u_news_information_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"082ec663f8ee03d95a66c91878b38a9981c98633fe849d9a87a4ef92749bca7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/15e5ae9f3253f8756b0105ebc21bdb950c09a998b01f052c07b8259f880b619c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_future_changes_02 -> audio/generated/de-DE/utterances/19388a539bd3cb9b4c08915237ec2488019d3bc980a3f268d038e9a36f599415.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd4a2f09-e5d6-548d-8fdf-2bdde4bc1fc8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_future_changes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5fa3f085f8d5a58911d5cd002e80bbf4ea81f86eaba2c5df5f8b0a47272abff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4bbd2bf-4f4a-51bf-9e1f-1614a4d4175a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd4a2f09-e5d6-548d-8fdf-2bdde4bc1fc8', 1), 'b5fa3f085f8d5a58911d5cd002e80bbf4ea81f86eaba2c5df5f8b0a47272abff',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/19388a539bd3cb9b4c08915237ec2488019d3bc980a3f268d038e9a36f599415.mp3', 5015, '2026-09-13 06:43:17.420858', '3c1d24c8ec87beab68c03d25f99e26ccfac259bf064c244820bf62edf927ac26', 'validated', '{"audio_key":"19388a539bd3cb9b4c08915237ec2488019d3bc980a3f268d038e9a36f599415","entity_key":"u_future_changes_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c1d24c8ec87beab68c03d25f99e26ccfac259bf064c244820bf62edf927ac26","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/19388a539bd3cb9b4c08915237ec2488019d3bc980a3f268d038e9a36f599415.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_planning_02 -> audio/generated/de-DE/utterances/19cea4e7110fb6d514a1fa2c778760a00abb8cc32c207e9e79375ca5e04defad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e29f6644-7e43-5bc1-9755-c0bf94259fcf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e9e9c80ef8bb1e467e365083a751b838d9451a0b3fc57653fcc5d266ad8845d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6b6c620-a055-599e-adeb-ee03065c6907', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e29f6644-7e43-5bc1-9755-c0bf94259fcf', 1), '3e9e9c80ef8bb1e467e365083a751b838d9451a0b3fc57653fcc5d266ad8845d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/19cea4e7110fb6d514a1fa2c778760a00abb8cc32c207e9e79375ca5e04defad.mp3', 4911, '2026-09-13 06:43:17.822159', '9c48a132313348c0e1b42f2d8fef62e5e4f5401f99c7757669de64bbad4b1c9a', 'validated', '{"audio_key":"19cea4e7110fb6d514a1fa2c778760a00abb8cc32c207e9e79375ca5e04defad","entity_key":"u_project_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c48a132313348c0e1b42f2d8fef62e5e4f5401f99c7757669de64bbad4b1c9a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/19cea4e7110fb6d514a1fa2c778760a00abb8cc32c207e9e79375ca5e04defad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_phone_messages_01 -> audio/generated/de-DE/utterances/1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd9f5551-42b8-55f0-92b3-a10c63630ac3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_phone_messages_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd69505c4c29fc207fd004f1e3915c90b01a4daf038c46205bcef6f874a7cd08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8c744e0-3fb1-5113-ae62-d6678bfa3ad4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd9f5551-42b8-55f0-92b3-a10c63630ac3', 1), 'fd69505c4c29fc207fd004f1e3915c90b01a4daf038c46205bcef6f874a7cd08',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300.mp3', 3108, '2026-09-13 06:43:18.644225', 'e409a7c95b7ac83db1b0fc5d1156dfbccdc343a86a6a8212f25a99861df8f1b5', 'validated', '{"audio_key":"1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300","entity_key":"u_phone_messages_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e409a7c95b7ac83db1b0fc5d1156dfbccdc343a86a6a8212f25a99861df8f1b5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_phone_messages_01_listen -> audio/generated/de-DE/utterances/1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9137e4e3-9239-5df7-8b3c-3ae934708f7e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_phone_messages_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd69505c4c29fc207fd004f1e3915c90b01a4daf038c46205bcef6f874a7cd08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65ac9a50-50d9-561b-94b1-ead701008a97', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9137e4e3-9239-5df7-8b3c-3ae934708f7e', 1), 'fd69505c4c29fc207fd004f1e3915c90b01a4daf038c46205bcef6f874a7cd08',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300.mp3', 3108, '2026-09-13 06:43:18.644225', 'e409a7c95b7ac83db1b0fc5d1156dfbccdc343a86a6a8212f25a99861df8f1b5', 'validated', '{"audio_key":"1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300","entity_key":"ex_phone_messages_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e409a7c95b7ac83db1b0fc5d1156dfbccdc343a86a6a8212f25a99861df8f1b5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ef9150bb48aa212e35b3f65bc1eb811b180d064c7b73e0b0391672a4e0f5300.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_nutrition_05 -> audio/generated/de-DE/utterances/1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('005263d6-2ac3-518e-8112-eb075b5e07c3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_nutrition_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '931ce2c1b98bd102ba9fbbcbe50edb36c9e8331a81d1d7b49d500f67dc74c99a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f54471d7-256c-5d59-abc8-4d8b2a071df4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('005263d6-2ac3-518e-8112-eb075b5e07c3', 1), '931ce2c1b98bd102ba9fbbcbe50edb36c9e8331a81d1d7b49d500f67dc74c99a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4.mp3', 4440, '2026-09-13 06:43:19.190941', '0707b15167e724010ad598bd0fecacf1c2dc9137f706083306b01777f5ff0bda', 'validated', '{"audio_key":"1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4","entity_key":"u_food_nutrition_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0707b15167e724010ad598bd0fecacf1c2dc9137f706083306b01777f5ff0bda","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_food_nutrition_03_listen -> audio/generated/de-DE/utterances/1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68f929d8-c540-5076-94cb-87781ab96443', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_food_nutrition_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '931ce2c1b98bd102ba9fbbcbe50edb36c9e8331a81d1d7b49d500f67dc74c99a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ab2ec8-0d10-5ae6-acd8-93927ff41190', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68f929d8-c540-5076-94cb-87781ab96443', 1), '931ce2c1b98bd102ba9fbbcbe50edb36c9e8331a81d1d7b49d500f67dc74c99a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4.mp3', 4440, '2026-09-13 06:43:19.190941', '0707b15167e724010ad598bd0fecacf1c2dc9137f706083306b01777f5ff0bda', 'validated', '{"audio_key":"1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4","entity_key":"ex_food_nutrition_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0707b15167e724010ad598bd0fecacf1c2dc9137f706083306b01777f5ff0bda","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f40fcd6859f85cdb1ca9a8706522c1fff2c4651ad3e5b4bdab7a6af33a48aa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_unexpected_situations_03 -> audio/generated/de-DE/utterances/1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('490e5945-95fa-54f5-8e24-2ee0e6e1e4a3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_unexpected_situations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01893a95be63edb92f4b2f53e39396602be383a2d6485f25f0521d6d7a1d219a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbf49387-e085-5642-aa1e-f0d472fdecfa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('490e5945-95fa-54f5-8e24-2ee0e6e1e4a3', 1), '01893a95be63edb92f4b2f53e39396602be383a2d6485f25f0521d6d7a1d219a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751.mp3', 2951, '2026-09-13 06:43:19.840421', 'f807de4d77af599c2cfd2a92ab1451cdb9e72a599460240a7cc93a399e656de4', 'validated', '{"audio_key":"1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751","entity_key":"u_unexpected_situations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f807de4d77af599c2cfd2a92ab1451cdb9e72a599460240a7cc93a399e656de4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_unexpected_situations_02_listen -> audio/generated/de-DE/utterances/1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dc96d9e7-4ff5-526a-a622-5c43b65eaebc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_unexpected_situations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01893a95be63edb92f4b2f53e39396602be383a2d6485f25f0521d6d7a1d219a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bce5fd3-d1f6-5073-b9af-2248f73a5349', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dc96d9e7-4ff5-526a-a622-5c43b65eaebc', 1), '01893a95be63edb92f4b2f53e39396602be383a2d6485f25f0521d6d7a1d219a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751.mp3', 2951, '2026-09-13 06:43:19.840421', 'f807de4d77af599c2cfd2a92ab1451cdb9e72a599460240a7cc93a399e656de4', 'validated', '{"audio_key":"1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751","entity_key":"ex_unexpected_situations_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f807de4d77af599c2cfd2a92ab1451cdb9e72a599460240a7cc93a399e656de4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f601bdf3100a31fd41c04b1464f7d800b61404cf1780deb3eccf826d1052751.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_services_appointments_02 -> audio/generated/de-DE/utterances/204530b2870e58c04a4f46bbb292ca01549a13fc9b22e0df51f9d8a4940aa91f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('af4c4528-113d-5646-b092-14435856ed82', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_services_appointments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae143c1aa170fced86a06a2b38018944f3340c5b0c252cb0e4f0065f3bc21487'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('478f8783-eb24-5fdd-bd61-95b0f5c2bd6f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('af4c4528-113d-5646-b092-14435856ed82', 1), 'ae143c1aa170fced86a06a2b38018944f3340c5b0c252cb0e4f0065f3bc21487',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/204530b2870e58c04a4f46bbb292ca01549a13fc9b22e0df51f9d8a4940aa91f.mp3', 3291, '2026-09-13 06:43:20.455151', '7526dd563cc92984a05d572737dbec22b23d6f4461a02a15a0b1e68542bea98b', 'validated', '{"audio_key":"204530b2870e58c04a4f46bbb292ca01549a13fc9b22e0df51f9d8a4940aa91f","entity_key":"u_public_services_appointments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7526dd563cc92984a05d572737dbec22b23d6f4461a02a15a0b1e68542bea98b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/204530b2870e58c04a4f46bbb292ca01549a13fc9b22e0df51f9d8a4940aa91f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clubs_volunteering_06 -> audio/generated/de-DE/utterances/2361dcc02347c2a3ca57cbfc70f40e9fe4e9ef892bec5b1da73333ad898aae54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1a29e0c7-d3f7-572d-b289-b288067a077f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clubs_volunteering_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8e0126543a0834c1706c867701b079e0d97b377aca351ccb414a65788e1f6a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d744b79-d6af-5882-a43f-c15301b9a98c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1a29e0c7-d3f7-572d-b289-b288067a077f', 1), 'a8e0126543a0834c1706c867701b079e0d97b377aca351ccb414a65788e1f6a5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2361dcc02347c2a3ca57cbfc70f40e9fe4e9ef892bec5b1da73333ad898aae54.mp3', 5093, '2026-09-13 06:43:21.395162', '75209dc18198f92119ef4239b28f8ad2c7d36e6234561cb18472dff049ab90ba', 'validated', '{"audio_key":"2361dcc02347c2a3ca57cbfc70f40e9fe4e9ef892bec5b1da73333ad898aae54","entity_key":"u_clubs_volunteering_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75209dc18198f92119ef4239b28f8ad2c7d36e6234561cb18472dff049ab90ba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2361dcc02347c2a3ca57cbfc70f40e9fe4e9ef892bec5b1da73333ad898aae54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clubs_volunteering_03 -> audio/generated/de-DE/utterances/23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ad976b4e-5a10-51e1-8a32-0a5d494f89cd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clubs_volunteering_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'def5bdf259b75dc1faa4c9477f09d80235c2125fb8dbddc0deac3eab44e5a6ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dab7175-f68e-5745-8f95-c046104b0dde', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ad976b4e-5a10-51e1-8a32-0a5d494f89cd', 1), 'def5bdf259b75dc1faa4c9477f09d80235c2125fb8dbddc0deac3eab44e5a6ad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791.mp3', 3422, '2026-09-13 06:43:21.756575', 'bee754d73550a64342ff074d74a843770edef1b4171012ec81d05479096cd653', 'validated', '{"audio_key":"23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791","entity_key":"u_clubs_volunteering_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bee754d73550a64342ff074d74a843770edef1b4171012ec81d05479096cd653","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_clubs_volunteering_02_listen -> audio/generated/de-DE/utterances/23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('18977cec-4551-5314-9e88-762f51095aae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_clubs_volunteering_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'def5bdf259b75dc1faa4c9477f09d80235c2125fb8dbddc0deac3eab44e5a6ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('213cfb90-e88b-57cb-a059-bb83876c1bc8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('18977cec-4551-5314-9e88-762f51095aae', 1), 'def5bdf259b75dc1faa4c9477f09d80235c2125fb8dbddc0deac3eab44e5a6ad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791.mp3', 3422, '2026-09-13 06:43:21.756575', 'bee754d73550a64342ff074d74a843770edef1b4171012ec81d05479096cd653', 'validated', '{"audio_key":"23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791","entity_key":"ex_clubs_volunteering_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bee754d73550a64342ff074d74a843770edef1b4171012ec81d05479096cd653","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/23d7a0c9fd0eac4743f9b2fe3cf456f019ef6b0d04294cca4fb077ac533e6791.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_planning_03 -> audio/generated/de-DE/utterances/2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('946d6be8-5e21-5693-8587-c8ec9e82f649', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1317b218ea968763f903a4b453b26c226d7c3009f25c836f3085415758afc95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e75ff8d3-e6a9-5b8f-902f-00db12c45f6d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('946d6be8-5e21-5693-8587-c8ec9e82f649', 1), 'a1317b218ea968763f903a4b453b26c226d7c3009f25c836f3085415758afc95',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659.mp3', 4545, '2026-09-13 06:43:22.840925', '9942547f39f07c94e840d8494b83b08d508e29526b62405400131b22b97cb884', 'validated', '{"audio_key":"2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659","entity_key":"u_project_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9942547f39f07c94e840d8494b83b08d508e29526b62405400131b22b97cb884","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_project_planning_02_listen -> audio/generated/de-DE/utterances/2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('be68d738-c140-5adc-9ee8-e78303c6d540', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_project_planning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1317b218ea968763f903a4b453b26c226d7c3009f25c836f3085415758afc95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62baed5c-5454-513c-af0f-b0aef173480d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('be68d738-c140-5adc-9ee8-e78303c6d540', 1), 'a1317b218ea968763f903a4b453b26c226d7c3009f25c836f3085415758afc95',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659.mp3', 4545, '2026-09-13 06:43:22.840925', '9942547f39f07c94e840d8494b83b08d508e29526b62405400131b22b97cb884', 'validated', '{"audio_key":"2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659","entity_key":"ex_project_planning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9942547f39f07c94e840d8494b83b08d508e29526b62405400131b22b97cb884","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2476e9e4809f41ba8bf3036403975337b5cca6f513d7025aac28f7d2d764b659.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_nutrition_03 -> audio/generated/de-DE/utterances/264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2f39c0dd-424b-5b5d-9730-b6945ff551f7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_nutrition_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da54e911ece1069b6c2b8db2357617b6841abb2d4f58744506a915d618959ba0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57ecdc76-a00d-589d-a57b-301e6907d344', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2f39c0dd-424b-5b5d-9730-b6945ff551f7', 1), 'da54e911ece1069b6c2b8db2357617b6841abb2d4f58744506a915d618959ba0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995.mp3', 4780, '2026-09-13 06:43:23.183930', 'd967e863c5d0652dc2ebcde76bbe4f313e999eaab2158ff8705d9bce3190effb', 'validated', '{"audio_key":"264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995","entity_key":"u_food_nutrition_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d967e863c5d0652dc2ebcde76bbe4f313e999eaab2158ff8705d9bce3190effb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_food_nutrition_02_listen -> audio/generated/de-DE/utterances/264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cf139888-5de3-55b3-9bcc-4a3797187f81', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_food_nutrition_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da54e911ece1069b6c2b8db2357617b6841abb2d4f58744506a915d618959ba0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d5a319b-e9d9-5c9a-97d4-55ad7dc73c94', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cf139888-5de3-55b3-9bcc-4a3797187f81', 1), 'da54e911ece1069b6c2b8db2357617b6841abb2d4f58744506a915d618959ba0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995.mp3', 4780, '2026-09-13 06:43:23.183930', 'd967e863c5d0652dc2ebcde76bbe4f313e999eaab2158ff8705d9bce3190effb', 'validated', '{"audio_key":"264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995","entity_key":"ex_food_nutrition_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d967e863c5d0652dc2ebcde76bbe4f313e999eaab2158ff8705d9bce3190effb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/264a4647f0846368bc2c9062eb2d087b4494ce06b42576dd5a3815269366c995.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_services_appointments_04 -> audio/generated/de-DE/utterances/2e2bc5fa17e45e0c6c097c6a78e891e76a828cadfe06c1a65334a7df9d8f13bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('44655892-4fef-5e89-b7e7-9498bc73e15d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_services_appointments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa2b2617898cacc1c2d35a47c207d59bae94952a8d295e1ce9589a964fcca201'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('031d6126-425a-5e66-8cf4-564514b8f981', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('44655892-4fef-5e89-b7e7-9498bc73e15d', 1), 'aa2b2617898cacc1c2d35a47c207d59bae94952a8d295e1ce9589a964fcca201',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e2bc5fa17e45e0c6c097c6a78e891e76a828cadfe06c1a65334a7df9d8f13bf.mp3', 2925, '2026-09-13 06:43:24.034191', '7f12f14f60907fed7b61659c1e7e0f991429928276bb8240be2f7f4e031e8e1c', 'validated', '{"audio_key":"2e2bc5fa17e45e0c6c097c6a78e891e76a828cadfe06c1a65334a7df9d8f13bf","entity_key":"u_public_services_appointments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f12f14f60907fed7b61659c1e7e0f991429928276bb8240be2f7f4e031e8e1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e2bc5fa17e45e0c6c097c6a78e891e76a828cadfe06c1a65334a7df9d8f13bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_phone_messages_04 -> audio/generated/de-DE/utterances/2ede706bf7313c383e5eb902a187f8d1ac851921330cb9870e0b3354ef31add9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1d973b4c-b337-589d-b482-e9134259bdec', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_phone_messages_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '076a60d5c25795e54bafca52f55fa0ee53453cdd7dafd5198857db01980fbaf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('910fd6a2-f459-5ca4-a158-1b918839079f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1d973b4c-b337-589d-b482-e9134259bdec', 1), '076a60d5c25795e54bafca52f55fa0ee53453cdd7dafd5198857db01980fbaf2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2ede706bf7313c383e5eb902a187f8d1ac851921330cb9870e0b3354ef31add9.mp3', 4205, '2026-09-13 06:43:24.473959', 'bf0b4f8ebc201d58666988b17157fe06465329036a61e79cf8f0890b56bf99b3', 'validated', '{"audio_key":"2ede706bf7313c383e5eb902a187f8d1ac851921330cb9870e0b3354ef31add9","entity_key":"u_phone_messages_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf0b4f8ebc201d58666988b17157fe06465329036a61e79cf8f0890b56bf99b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2ede706bf7313c383e5eb902a187f8d1ac851921330cb9870e0b3354ef31add9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_transport_delays_02 -> audio/generated/de-DE/utterances/3131b3c05a5562860515da4c5983da767e6a2b8617b7eb055a8ef0dfd2041611.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eb819f84-153b-57bb-9d7d-b70c53d3eefc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_transport_delays_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70cacefae7973e1b938ba8ada693057655b36affdc2819ff6e6d427afc754f43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9dd1e8ff-0e5f-5db7-a14b-b6d87d1ee0a0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eb819f84-153b-57bb-9d7d-b70c53d3eefc', 1), '70cacefae7973e1b938ba8ada693057655b36affdc2819ff6e6d427afc754f43',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3131b3c05a5562860515da4c5983da767e6a2b8617b7eb055a8ef0dfd2041611.mp3', 2925, '2026-09-13 06:43:25.201976', '83437b61fa8f3f97ada17152825f282db80ff493a1603630c3d0bbf840d0a965', 'validated', '{"audio_key":"3131b3c05a5562860515da4c5983da767e6a2b8617b7eb055a8ef0dfd2041611","entity_key":"u_transport_delays_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"83437b61fa8f3f97ada17152825f282db80ff493a1603630c3d0bbf840d0a965","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3131b3c05a5562860515da4c5983da767e6a2b8617b7eb055a8ef0dfd2041611.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_transport_delays_01 -> audio/generated/de-DE/utterances/32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a46bd5d2-3c79-5b33-9272-72699b4a5f2d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_transport_delays_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7eb5d7db2e38b6fc0d70210f7fe0859db4cfb18ab24fbeae4da51e8802675eab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dff2071a-d52b-5e20-a31a-9f9869055239', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a46bd5d2-3c79-5b33-9272-72699b4a5f2d', 1), '7eb5d7db2e38b6fc0d70210f7fe0859db4cfb18ab24fbeae4da51e8802675eab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4.mp3', 4440, '2026-09-13 06:43:25.808303', '64c130e17a302415343121c14351834c8e42b17a99889de67d7668ef58953335', 'validated', '{"audio_key":"32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4","entity_key":"u_transport_delays_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64c130e17a302415343121c14351834c8e42b17a99889de67d7668ef58953335","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_transport_delays_01_listen -> audio/generated/de-DE/utterances/32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e2645cb-0906-5582-88b7-187ba2ef1510', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_transport_delays_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7eb5d7db2e38b6fc0d70210f7fe0859db4cfb18ab24fbeae4da51e8802675eab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c883e660-fd77-571c-aa37-1e3334cd3f8c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e2645cb-0906-5582-88b7-187ba2ef1510', 1), '7eb5d7db2e38b6fc0d70210f7fe0859db4cfb18ab24fbeae4da51e8802675eab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4.mp3', 4440, '2026-09-13 06:43:25.808303', '64c130e17a302415343121c14351834c8e42b17a99889de67d7668ef58953335', 'validated', '{"audio_key":"32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4","entity_key":"ex_transport_delays_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64c130e17a302415343121c14351834c8e42b17a99889de67d7668ef58953335","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/32ba690de2dfcc95eeb7a89b227b9fe3c03460d2a07ffd28db15cb6d3e0bffe4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_future_changes_06 -> audio/generated/de-DE/utterances/354b78d48fd2b96efd20ee7cfd86cc3dc2e74654308c8098768347cb90427cc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4431d703-9d9a-586a-8ddd-72fa4eadc9cf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_future_changes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5da40d0450458774434d4728c4bfadb58fefe28166dbcd28f5dbd27dab8c074'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d56c82e9-009b-5fe2-90d4-1dbeaf60d0e0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4431d703-9d9a-586a-8ddd-72fa4eadc9cf', 1), 'c5da40d0450458774434d4728c4bfadb58fefe28166dbcd28f5dbd27dab8c074',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/354b78d48fd2b96efd20ee7cfd86cc3dc2e74654308c8098768347cb90427cc7.mp3', 5015, '2026-09-13 06:43:26.675035', 'f0cc154bfabaa78fe9a760b157ab05eca3bfcb1ecba5a74ead4b6a896826ef69', 'validated', '{"audio_key":"354b78d48fd2b96efd20ee7cfd86cc3dc2e74654308c8098768347cb90427cc7","entity_key":"u_future_changes_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0cc154bfabaa78fe9a760b157ab05eca3bfcb1ecba5a74ead4b6a896826ef69","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/354b78d48fd2b96efd20ee7cfd86cc3dc2e74654308c8098768347cb90427cc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_nutrition_04 -> audio/generated/de-DE/utterances/3a95290d1d3f7db681a4a881f9a9c8637b1cc05acc6be189bf43edd117310d15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc5d3410-fc87-5486-b954-a6c958c898a3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_nutrition_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed00099b3e386e8be9280d44ffd34c849813b72e7898785ec7c964a8175f284'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4cb8b19-4835-5c7c-ba97-5e6c4b7c1b24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc5d3410-fc87-5486-b954-a6c958c898a3', 1), '9ed00099b3e386e8be9280d44ffd34c849813b72e7898785ec7c964a8175f284',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3a95290d1d3f7db681a4a881f9a9c8637b1cc05acc6be189bf43edd117310d15.mp3', 4075, '2026-09-13 06:43:27.152708', '3800a8f3230d6e00b454320d5ec5b8c121829720e41b00125794850d7fcc96f4', 'validated', '{"audio_key":"3a95290d1d3f7db681a4a881f9a9c8637b1cc05acc6be189bf43edd117310d15","entity_key":"u_food_nutrition_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3800a8f3230d6e00b454320d5ec5b8c121829720e41b00125794850d7fcc96f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3a95290d1d3f7db681a4a881f9a9c8637b1cc05acc6be189bf43edd117310d15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_responsibilities_02 -> audio/generated/de-DE/utterances/3d716213a37f4a5d2e33571276aeb0e71964e3e9200d4a8656e4b85e4dc65414.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3275235b-4650-5fad-9024-9b81cee02c29', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_responsibilities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52b0755fe201e4cc7ef441487991f2be73c3b24b470ba6ea8b99bdba89040aaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('758e3582-2518-5b5f-b7df-4392b6c0ae5a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3275235b-4650-5fad-9024-9b81cee02c29', 1), '52b0755fe201e4cc7ef441487991f2be73c3b24b470ba6ea8b99bdba89040aaa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3d716213a37f4a5d2e33571276aeb0e71964e3e9200d4a8656e4b85e4dc65414.mp3', 3291, '2026-09-13 06:43:27.913146', 'af8ef98c682705a869b03f025d14c5713cc78655798e66cbcc256add31cafa03', 'validated', '{"audio_key":"3d716213a37f4a5d2e33571276aeb0e71964e3e9200d4a8656e4b85e4dc65414","entity_key":"u_family_responsibilities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af8ef98c682705a869b03f025d14c5713cc78655798e66cbcc256add31cafa03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3d716213a37f4a5d2e33571276aeb0e71964e3e9200d4a8656e4b85e4dc65414.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_responsibilities_05 -> audio/generated/de-DE/utterances/3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('60052054-6309-5a7e-887c-4a5d237d027a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_responsibilities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1d9012de5acd1121f15550cf97d72c2166714b0f1209ed40d6880c083d8e45e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0fad569-d612-5a8f-9ff0-d8c494a5116c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('60052054-6309-5a7e-887c-4a5d237d027a', 1), 'd1d9012de5acd1121f15550cf97d72c2166714b0f1209ed40d6880c083d8e45e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed.mp3', 4414, '2026-09-13 06:43:28.556158', '075767314137b90e7a3d24abc7c236eef357b50fdee76ec55932cd240bfc9e85', 'validated', '{"audio_key":"3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed","entity_key":"u_family_responsibilities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"075767314137b90e7a3d24abc7c236eef357b50fdee76ec55932cd240bfc9e85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_family_responsibilities_03_listen -> audio/generated/de-DE/utterances/3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a431ebc0-57cd-502a-9b4b-b88ef876ea55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_family_responsibilities_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1d9012de5acd1121f15550cf97d72c2166714b0f1209ed40d6880c083d8e45e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2965ca9-b41c-5ffd-bede-5c18e3a55cac', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a431ebc0-57cd-502a-9b4b-b88ef876ea55', 1), 'd1d9012de5acd1121f15550cf97d72c2166714b0f1209ed40d6880c083d8e45e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed.mp3', 4414, '2026-09-13 06:43:28.556158', '075767314137b90e7a3d24abc7c236eef357b50fdee76ec55932cd240bfc9e85', 'validated', '{"audio_key":"3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed","entity_key":"ex_family_responsibilities_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"075767314137b90e7a3d24abc7c236eef357b50fdee76ec55932cd240bfc9e85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3ea9b2c732363ce24ea540fba841802a35ed5ea8f1cd4f3ac90ca1d29dc157ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clubs_volunteering_01 -> audio/generated/de-DE/utterances/4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e24ae01d-ab85-570a-8f61-e27fa0654903', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clubs_volunteering_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4adb7c0b81d005944a621c244ef03a28041734187f92b7da9394476c9532cb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32586629-1780-5498-9a30-6e35431aeca2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e24ae01d-ab85-570a-8f61-e27fa0654903', 1), 'a4adb7c0b81d005944a621c244ef03a28041734187f92b7da9394476c9532cb8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a.mp3', 3056, '2026-09-13 06:43:29.146693', '85c955e07a9d315945ba7e3cbd6422ecc24d8f78790e282aacedfb859d955de2', 'validated', '{"audio_key":"4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a","entity_key":"u_clubs_volunteering_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85c955e07a9d315945ba7e3cbd6422ecc24d8f78790e282aacedfb859d955de2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_clubs_volunteering_01_listen -> audio/generated/de-DE/utterances/4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('33363a5d-7653-59fa-a8a9-d0e008b77a6e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_clubs_volunteering_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4adb7c0b81d005944a621c244ef03a28041734187f92b7da9394476c9532cb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1666c05-e82d-586f-a922-aa31b45c9afe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('33363a5d-7653-59fa-a8a9-d0e008b77a6e', 1), 'a4adb7c0b81d005944a621c244ef03a28041734187f92b7da9394476c9532cb8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a.mp3', 3056, '2026-09-13 06:43:29.146693', '85c955e07a9d315945ba7e3cbd6422ecc24d8f78790e282aacedfb859d955de2', 'validated', '{"audio_key":"4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a","entity_key":"ex_clubs_volunteering_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85c955e07a9d315945ba7e3cbd6422ecc24d8f78790e282aacedfb859d955de2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4917d4810c5c4ce836862aabca847b99116e17da56a22a34356a98a6e0a1a26a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_responsibilities_06 -> audio/generated/de-DE/utterances/4c6f0b039c74a1591368766072c567fb1cee9d21f4ab7ec36c896a3da7e53b41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('68a444ad-645d-5e39-84aa-3d1d0e7ede51', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_responsibilities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10dfdbf3f54489db041ce20ce5ff78278142470f6762abe590f29e9334656fa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad2a0cb6-545e-573f-8517-1021da851894', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('68a444ad-645d-5e39-84aa-3d1d0e7ede51', 1), '10dfdbf3f54489db041ce20ce5ff78278142470f6762abe590f29e9334656fa9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4c6f0b039c74a1591368766072c567fb1cee9d21f4ab7ec36c896a3da7e53b41.mp3', 5093, '2026-09-13 06:43:30.023403', '80c48a87616d3bc52e61fc669bdb8302a02f28221edeb591f1d7e50f57f517f9', 'validated', '{"audio_key":"4c6f0b039c74a1591368766072c567fb1cee9d21f4ab7ec36c896a3da7e53b41","entity_key":"u_family_responsibilities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80c48a87616d3bc52e61fc669bdb8302a02f28221edeb591f1d7e50f57f517f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4c6f0b039c74a1591368766072c567fb1cee9d21f4ab7ec36c896a3da7e53b41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_unexpected_situations_05 -> audio/generated/de-DE/utterances/5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0bf8b298-27c5-596f-9ff5-2d9da7716d70', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_unexpected_situations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cebeca382d697c1c170a899b66c0f62c862a8f38e68c8d49f340f6f71b45da4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d4e1337-e75d-50ba-9434-44d0b4d7703b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0bf8b298-27c5-596f-9ff5-2d9da7716d70', 1), '8cebeca382d697c1c170a899b66c0f62c862a8f38e68c8d49f340f6f71b45da4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45.mp3', 4911, '2026-09-13 06:43:30.614652', 'a52e10a601c63a1ef502a1661ad6791f5e4ad3ba59f241e32f5f821276448331', 'validated', '{"audio_key":"5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45","entity_key":"u_unexpected_situations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a52e10a601c63a1ef502a1661ad6791f5e4ad3ba59f241e32f5f821276448331","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_unexpected_situations_03_listen -> audio/generated/de-DE/utterances/5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7abf859a-5a1b-5f22-99ac-b8a2a56285f7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_unexpected_situations_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cebeca382d697c1c170a899b66c0f62c862a8f38e68c8d49f340f6f71b45da4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f19a733b-d80a-5f5c-8e70-c32cd99e3dbb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7abf859a-5a1b-5f22-99ac-b8a2a56285f7', 1), '8cebeca382d697c1c170a899b66c0f62c862a8f38e68c8d49f340f6f71b45da4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45.mp3', 4911, '2026-09-13 06:43:30.614652', 'a52e10a601c63a1ef502a1661ad6791f5e4ad3ba59f241e32f5f821276448331', 'validated', '{"audio_key":"5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45","entity_key":"ex_unexpected_situations_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a52e10a601c63a1ef502a1661ad6791f5e4ad3ba59f241e32f5f821276448331","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5156a3f4b351bccc98ca97fc4dec713d63844837bd3eace13ab5cc888b74dd45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_unexpected_situations_06 -> audio/generated/de-DE/utterances/577ffde46b4224bd190f29fb52ca5dc5b752bdf2d61bb827e148ab3651fc1aad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d65b69c8-e0f0-5118-9491-d5d839ff2d31', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_unexpected_situations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87f076b00b27f8247eab61b26b1d7042b462250e75fbe903c41e0f41d9aa91bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e4c530b-fbf2-5aaf-9a62-cb1c5d5fbc19', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d65b69c8-e0f0-5118-9491-d5d839ff2d31', 1), '87f076b00b27f8247eab61b26b1d7042b462250e75fbe903c41e0f41d9aa91bc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/577ffde46b4224bd190f29fb52ca5dc5b752bdf2d61bb827e148ab3651fc1aad.mp3', 5511, '2026-09-13 06:43:31.560078', 'fc3f1b9e80ed91ba9b79469e4ab77733b2d957281f957ac8cb0383f52057f6f0', 'validated', '{"audio_key":"577ffde46b4224bd190f29fb52ca5dc5b752bdf2d61bb827e148ab3651fc1aad","entity_key":"u_unexpected_situations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc3f1b9e80ed91ba9b79469e4ab77733b2d957281f957ac8cb0383f52057f6f0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/577ffde46b4224bd190f29fb52ca5dc5b752bdf2d61bb827e148ab3651fc1aad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_phone_messages_03 -> audio/generated/de-DE/utterances/661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8ebe156e-f9d1-58ea-bbe6-7b9c37eb38a2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_phone_messages_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bce6241766d328847b2634e9f08c45aa091d9b58de6163531bf6411028307a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30fa94cf-fcf6-5ce7-81fa-074b2dc477ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8ebe156e-f9d1-58ea-bbe6-7b9c37eb38a2', 1), '1bce6241766d328847b2634e9f08c45aa091d9b58de6163531bf6411028307a8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630.mp3', 3056, '2026-09-13 06:43:31.842014', '216072bd3666dbf2c10cbf8dcebc8412666ee8ad56945c5fbce280255278e52c', 'validated', '{"audio_key":"661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630","entity_key":"u_phone_messages_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"216072bd3666dbf2c10cbf8dcebc8412666ee8ad56945c5fbce280255278e52c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_phone_messages_02_listen -> audio/generated/de-DE/utterances/661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('aeff248b-9810-5bd1-b5c4-2c4732a885f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_phone_messages_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bce6241766d328847b2634e9f08c45aa091d9b58de6163531bf6411028307a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010ee03e-b16a-5bd0-bbee-d6ef63fe177a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('aeff248b-9810-5bd1-b5c4-2c4732a885f3', 1), '1bce6241766d328847b2634e9f08c45aa091d9b58de6163531bf6411028307a8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630.mp3', 3056, '2026-09-13 06:43:31.842014', '216072bd3666dbf2c10cbf8dcebc8412666ee8ad56945c5fbce280255278e52c', 'validated', '{"audio_key":"661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630","entity_key":"ex_phone_messages_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"216072bd3666dbf2c10cbf8dcebc8412666ee8ad56945c5fbce280255278e52c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/661e81731ca443143b7f01a0519c977abb63e658f76afbefd51842205fee7630.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_news_information_01 -> audio/generated/de-DE/utterances/6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('89dec2e5-7bd3-5f9d-99ef-a8d2e9b64170', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_news_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac38fe0a8c3ede8af7d04aac4f3fed27fc61b1cd0b9e7999a934f3dcee832e93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2c3e23a-e5f8-500e-89d6-d38b8a87e0ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('89dec2e5-7bd3-5f9d-99ef-a8d2e9b64170', 1), 'ac38fe0a8c3ede8af7d04aac4f3fed27fc61b1cd0b9e7999a934f3dcee832e93',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b.mp3', 4127, '2026-09-13 06:43:32.881121', 'd2fec08b401cce8a64e46abee9acdff2c41338ca67e9828c19003eb2c2d28ddf', 'validated', '{"audio_key":"6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b","entity_key":"u_news_information_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2fec08b401cce8a64e46abee9acdff2c41338ca67e9828c19003eb2c2d28ddf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_news_information_01_listen -> audio/generated/de-DE/utterances/6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1ef306f4-1ee3-575e-b11f-acca7666238b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_news_information_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac38fe0a8c3ede8af7d04aac4f3fed27fc61b1cd0b9e7999a934f3dcee832e93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d74a49ff-b649-54d8-bf46-5cb19691599f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1ef306f4-1ee3-575e-b11f-acca7666238b', 1), 'ac38fe0a8c3ede8af7d04aac4f3fed27fc61b1cd0b9e7999a934f3dcee832e93',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b.mp3', 4127, '2026-09-13 06:43:32.881121', 'd2fec08b401cce8a64e46abee9acdff2c41338ca67e9828c19003eb2c2d28ddf', 'validated', '{"audio_key":"6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b","entity_key":"ex_news_information_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2fec08b401cce8a64e46abee9acdff2c41338ca67e9828c19003eb2c2d28ddf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c7271a8808a00a5316628e0c430b4b0c2c492566b79331a7571379af2304b5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_news_information_03 -> audio/generated/de-DE/utterances/774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eda6b3ff-b6af-52ab-978d-8a67e2f6f383', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_news_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a326f810f9088c08637d917ede94fe0e676a75e569833221b855cb9c2af0521'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3d5dfb0-42d6-5ce3-9982-2c859809d2fb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eda6b3ff-b6af-52ab-978d-8a67e2f6f383', 1), '5a326f810f9088c08637d917ede94fe0e676a75e569833221b855cb9c2af0521',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49.mp3', 4075, '2026-09-13 06:43:33.150488', '476889f9234a2da161eebf1ef6cf43b9b63c7244efb3300809863947044dc46f', 'validated', '{"audio_key":"774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49","entity_key":"u_news_information_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"476889f9234a2da161eebf1ef6cf43b9b63c7244efb3300809863947044dc46f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_news_information_02_listen -> audio/generated/de-DE/utterances/774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6b9b1f45-fb75-5f7e-92f4-64d30a13e023', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_news_information_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a326f810f9088c08637d917ede94fe0e676a75e569833221b855cb9c2af0521'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdc2b6bb-c120-56cd-8d50-2d8a1f9deced', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6b9b1f45-fb75-5f7e-92f4-64d30a13e023', 1), '5a326f810f9088c08637d917ede94fe0e676a75e569833221b855cb9c2af0521',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49.mp3', 4075, '2026-09-13 06:43:33.150488', '476889f9234a2da161eebf1ef6cf43b9b63c7244efb3300809863947044dc46f', 'validated', '{"audio_key":"774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49","entity_key":"ex_news_information_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"476889f9234a2da161eebf1ef6cf43b9b63c7244efb3300809863947044dc46f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/774b0e4de1f75682e3d02c2b8c409f52b69bcca16f1e0cfca4d3037149fa7f49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_planning_06 -> audio/generated/de-DE/utterances/7d466737dc5d674483ad9945643f29e21418f3422a942b74652ea44febb29b4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bcf69bb7-5833-50ad-93a9-07329a6126cf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efe26a78cc7ff2d9445ab593d719142d5d0a0f2c26a6422787613e1687504a1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9abadb72-47f5-504f-95e5-262d7d45732f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bcf69bb7-5833-50ad-93a9-07329a6126cf', 1), 'efe26a78cc7ff2d9445ab593d719142d5d0a0f2c26a6422787613e1687504a1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7d466737dc5d674483ad9945643f29e21418f3422a942b74652ea44febb29b4f.mp3', 4832, '2026-09-13 06:43:34.337552', 'fa3b8cb142b9de6f32c87c972615192d350a995eb567cd2ede45d6044a0c6056', 'validated', '{"audio_key":"7d466737dc5d674483ad9945643f29e21418f3422a942b74652ea44febb29b4f","entity_key":"u_project_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa3b8cb142b9de6f32c87c972615192d350a995eb567cd2ede45d6044a0c6056","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7d466737dc5d674483ad9945643f29e21418f3422a942b74652ea44febb29b4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_planning_05 -> audio/generated/de-DE/utterances/830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e6193b47-06cf-5d22-a903-8ef4f37b692b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f24ac8e8e4005477c8e34195edc1cba27f8a9142c7303434bba3b124275d175d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ba90c57-0591-591f-8e90-f07fa2bc88c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e6193b47-06cf-5d22-a903-8ef4f37b692b', 1), 'f24ac8e8e4005477c8e34195edc1cba27f8a9142c7303434bba3b124275d175d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d.mp3', 4832, '2026-09-13 06:43:34.602058', '973a43392d83c1e72fed5221dec5c5de9d921d6318468181b6e63039ddfc1ba7', 'validated', '{"audio_key":"830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d","entity_key":"u_project_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"973a43392d83c1e72fed5221dec5c5de9d921d6318468181b6e63039ddfc1ba7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_project_planning_03_listen -> audio/generated/de-DE/utterances/830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44455ecb-8fa5-591f-8593-ba418c2e4cc1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_project_planning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f24ac8e8e4005477c8e34195edc1cba27f8a9142c7303434bba3b124275d175d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f62343c-14b6-55b3-b83d-0b1d526ea349', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44455ecb-8fa5-591f-8593-ba418c2e4cc1', 1), 'f24ac8e8e4005477c8e34195edc1cba27f8a9142c7303434bba3b124275d175d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d.mp3', 4832, '2026-09-13 06:43:34.602058', '973a43392d83c1e72fed5221dec5c5de9d921d6318468181b6e63039ddfc1ba7', 'validated', '{"audio_key":"830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d","entity_key":"ex_project_planning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"973a43392d83c1e72fed5221dec5c5de9d921d6318468181b6e63039ddfc1ba7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/830f0cfb51aeb5b81efa7a46ec8ae9db2e536e391d28073176e657820655174d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_phone_messages_06 -> audio/generated/de-DE/utterances/837aafa7855d7dfde1e3bbcab7cd4000098a7a75904329a89beb7444b3f6a019.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('271f3b17-cf83-5f0c-9103-ed98128e340d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_phone_messages_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4021942e230aa1d740aa8a945cf05d8b4d42bfef235c14ccf09f39f2e34e22cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76ab405e-5117-57c1-9b02-93e6f56ac227', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('271f3b17-cf83-5f0c-9103-ed98128e340d', 1), '4021942e230aa1d740aa8a945cf05d8b4d42bfef235c14ccf09f39f2e34e22cb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/837aafa7855d7dfde1e3bbcab7cd4000098a7a75904329a89beb7444b3f6a019.mp3', 4440, '2026-09-13 06:43:35.682223', '7ab617ae11733531ade7d8c25b28b80d20b1a643705cfbdcbc6e3ef71043db87', 'validated', '{"audio_key":"837aafa7855d7dfde1e3bbcab7cd4000098a7a75904329a89beb7444b3f6a019","entity_key":"u_phone_messages_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ab617ae11733531ade7d8c25b28b80d20b1a643705cfbdcbc6e3ef71043db87","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/837aafa7855d7dfde1e3bbcab7cd4000098a7a75904329a89beb7444b3f6a019.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_services_appointments_05 -> audio/generated/de-DE/utterances/853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03f0313b-bae6-5c93-aebc-931c3bb5be80', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_services_appointments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b5bfd843ef47144968e7b45268aeb0315c537373f8dfcf64af8c946fcaa710f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97929663-e5b1-579e-b78e-270d8f9750aa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03f0313b-bae6-5c93-aebc-931c3bb5be80', 1), '7b5bfd843ef47144968e7b45268aeb0315c537373f8dfcf64af8c946fcaa710f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8.mp3', 5015, '2026-09-13 06:43:36.075381', 'f1a7f91effa22266c1ade9bb225e7a166126d96a16157737cba1a6e928893e2e', 'validated', '{"audio_key":"853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8","entity_key":"u_public_services_appointments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1a7f91effa22266c1ade9bb225e7a166126d96a16157737cba1a6e928893e2e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_public_services_appointments_03_listen -> audio/generated/de-DE/utterances/853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2b93c101-31f5-5d62-855b-3ed654ff4eed', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_public_services_appointments_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b5bfd843ef47144968e7b45268aeb0315c537373f8dfcf64af8c946fcaa710f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3756ab4-83df-5f13-beb9-8b46c6b28c61', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2b93c101-31f5-5d62-855b-3ed654ff4eed', 1), '7b5bfd843ef47144968e7b45268aeb0315c537373f8dfcf64af8c946fcaa710f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8.mp3', 5015, '2026-09-13 06:43:36.075381', 'f1a7f91effa22266c1ade9bb225e7a166126d96a16157737cba1a6e928893e2e', 'validated', '{"audio_key":"853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8","entity_key":"ex_public_services_appointments_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1a7f91effa22266c1ade9bb225e7a166126d96a16157737cba1a6e928893e2e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/853a0ea6378499345b1c52d742bc2121f03328b6cfa810cb8c303b3a59a9b8c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_future_changes_05 -> audio/generated/de-DE/utterances/899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce1dbce5-94ad-533b-b8e0-97a99b6bb788', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_future_changes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec453152fd6435e12b91b6a25b3668edded8999cbca1bbbbebc5231f08277458'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4c5b582-ae9d-5cf4-a3b1-7ff654060626', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce1dbce5-94ad-533b-b8e0-97a99b6bb788', 1), 'ec453152fd6435e12b91b6a25b3668edded8999cbca1bbbbebc5231f08277458',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95.mp3', 4858, '2026-09-13 06:43:37.164716', 'c3fa9367e800d5a4f22c71580953b7eb0876ef2ced0b40da222e392d785ab47a', 'validated', '{"audio_key":"899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95","entity_key":"u_future_changes_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3fa9367e800d5a4f22c71580953b7eb0876ef2ced0b40da222e392d785ab47a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_future_changes_03_listen -> audio/generated/de-DE/utterances/899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('94ecbfd7-f1c7-5deb-a236-702c73277de9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_future_changes_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec453152fd6435e12b91b6a25b3668edded8999cbca1bbbbebc5231f08277458'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('713f52ae-97a0-52d3-83c1-92dd3fbe6c70', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('94ecbfd7-f1c7-5deb-a236-702c73277de9', 1), 'ec453152fd6435e12b91b6a25b3668edded8999cbca1bbbbebc5231f08277458',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95.mp3', 4858, '2026-09-13 06:43:37.164716', 'c3fa9367e800d5a4f22c71580953b7eb0876ef2ced0b40da222e392d785ab47a', 'validated', '{"audio_key":"899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95","entity_key":"ex_future_changes_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3fa9367e800d5a4f22c71580953b7eb0876ef2ced0b40da222e392d785ab47a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/899e7b5ce41662d9b782325ff1eb2093b7d451fec9005cfebc077eb621044e95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_responsibilities_03 -> audio/generated/de-DE/utterances/90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9a5cdbe-2e18-5551-96dd-1464ec1908b2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_responsibilities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4c8cce7f03aa5cb3f113c78f0718ae9c2d8b7550392df7c1959a084d1e51b1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1b5eb81-63e5-592d-ba28-f556655d408f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9a5cdbe-2e18-5551-96dd-1464ec1908b2', 1), 'b4c8cce7f03aa5cb3f113c78f0718ae9c2d8b7550392df7c1959a084d1e51b1e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33.mp3', 3840, '2026-09-13 06:43:37.358680', '4f83a1c9a662add1daadec52c1583fa7464363d9ab490e52adbd598e846bc581', 'validated', '{"audio_key":"90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33","entity_key":"u_family_responsibilities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f83a1c9a662add1daadec52c1583fa7464363d9ab490e52adbd598e846bc581","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_family_responsibilities_02_listen -> audio/generated/de-DE/utterances/90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('49972bda-388e-5ad5-bc69-ff413f9d3281', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_family_responsibilities_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4c8cce7f03aa5cb3f113c78f0718ae9c2d8b7550392df7c1959a084d1e51b1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a85c7260-ff21-552f-8efd-fca6ede33fba', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('49972bda-388e-5ad5-bc69-ff413f9d3281', 1), 'b4c8cce7f03aa5cb3f113c78f0718ae9c2d8b7550392df7c1959a084d1e51b1e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33.mp3', 3840, '2026-09-13 06:43:37.358680', '4f83a1c9a662add1daadec52c1583fa7464363d9ab490e52adbd598e846bc581', 'validated', '{"audio_key":"90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33","entity_key":"ex_family_responsibilities_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f83a1c9a662add1daadec52c1583fa7464363d9ab490e52adbd598e846bc581","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90504f416eb062f214ff96b5601b079517cadc1eea50ddeb8531b85d75e61e33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_unexpected_situations_02 -> audio/generated/de-DE/utterances/922fb83e175d3c8fb5667a2ee75af603f83235d410afeec5a58dd81d81cff982.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f046234-bb43-5f76-a0d7-01f95f07bec8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_unexpected_situations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0acaeeafcb4ef1cc52466c38187355b7c6f64daf7c18149505d3cc845e91e7a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2bf1c46-1f6b-5b56-8cc1-b57f60c88a54', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f046234-bb43-5f76-a0d7-01f95f07bec8', 1), '0acaeeafcb4ef1cc52466c38187355b7c6f64daf7c18149505d3cc845e91e7a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/922fb83e175d3c8fb5667a2ee75af603f83235d410afeec5a58dd81d81cff982.mp3', 3996, '2026-09-13 06:43:38.531178', '645bd8f629726fa7f61dde38d0c484a8f97fd9c684d50e0e0b18d6cb2764bf07', 'validated', '{"audio_key":"922fb83e175d3c8fb5667a2ee75af603f83235d410afeec5a58dd81d81cff982","entity_key":"u_unexpected_situations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"645bd8f629726fa7f61dde38d0c484a8f97fd9c684d50e0e0b18d6cb2764bf07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/922fb83e175d3c8fb5667a2ee75af603f83235d410afeec5a58dd81d81cff982.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_transport_delays_05 -> audio/generated/de-DE/utterances/92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f430cc20-07c5-5013-b98c-6819dc659cdd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_transport_delays_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0fbc194b3be8eda27c4fd9f392dc128784d7e5973ed9fc0d6317401eb5ac940'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fcfbf2c-6f62-561d-a52a-46e659cb7a7e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f430cc20-07c5-5013-b98c-6819dc659cdd', 1), 'f0fbc194b3be8eda27c4fd9f392dc128784d7e5973ed9fc0d6317401eb5ac940',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b.mp3', 4127, '2026-09-13 06:43:38.705917', 'cf1e21bbc60994ef7bd1b8b6f1c9c3341d4f311ee62076f04dc6724371966d28', 'validated', '{"audio_key":"92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b","entity_key":"u_transport_delays_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf1e21bbc60994ef7bd1b8b6f1c9c3341d4f311ee62076f04dc6724371966d28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_transport_delays_03_listen -> audio/generated/de-DE/utterances/92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f5689d52-0797-5f0e-9b3c-a593a1131246', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_transport_delays_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0fbc194b3be8eda27c4fd9f392dc128784d7e5973ed9fc0d6317401eb5ac940'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66887aff-b5ee-56fc-a752-947da24f6357', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f5689d52-0797-5f0e-9b3c-a593a1131246', 1), 'f0fbc194b3be8eda27c4fd9f392dc128784d7e5973ed9fc0d6317401eb5ac940',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b.mp3', 4127, '2026-09-13 06:43:38.705917', 'cf1e21bbc60994ef7bd1b8b6f1c9c3341d4f311ee62076f04dc6724371966d28', 'validated', '{"audio_key":"92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b","entity_key":"ex_transport_delays_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf1e21bbc60994ef7bd1b8b6f1c9c3341d4f311ee62076f04dc6724371966d28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/92757646ab33b9b12aa58fa862a48f2099ac16449ba654d89985e29266dbad3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_phone_messages_02 -> audio/generated/de-DE/utterances/94d229841a03763e847069e915f2e17052e15069b0072d81c7ff83203d0da381.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6452d7ed-a884-5911-b63f-e1a543cb61af', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_phone_messages_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de0d68c1e462899ebaa92b6b3b4c11a98cba6efbb8979b74bb3254804073e665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e00c47f-2a6a-551b-85b1-a9aacc02cd24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6452d7ed-a884-5911-b63f-e1a543cb61af', 1), 'de0d68c1e462899ebaa92b6b3b4c11a98cba6efbb8979b74bb3254804073e665',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/94d229841a03763e847069e915f2e17052e15069b0072d81c7ff83203d0da381.mp3', 3160, '2026-09-13 06:43:39.786205', '1acfa0e64c3fc3245ac32dc5e9cb04911e30c9fcfd571dfb82f75c186664a6f0', 'validated', '{"audio_key":"94d229841a03763e847069e915f2e17052e15069b0072d81c7ff83203d0da381","entity_key":"u_phone_messages_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1acfa0e64c3fc3245ac32dc5e9cb04911e30c9fcfd571dfb82f75c186664a6f0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/94d229841a03763e847069e915f2e17052e15069b0072d81c7ff83203d0da381.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clubs_volunteering_02 -> audio/generated/de-DE/utterances/9a94752b251f81116ba9dc99dbd284ec3893405ecb679791b7d6fb2080c81a07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('28089f4f-9991-563f-8b29-98fdd2064fd1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clubs_volunteering_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b74e61626f013240aff9a31f49f57105d3294c71dcc004c7062a477eed8f31a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('821670fa-3bea-50a3-a910-b2057df60c3a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('28089f4f-9991-563f-8b29-98fdd2064fd1', 1), 'b74e61626f013240aff9a31f49f57105d3294c71dcc004c7062a477eed8f31a7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9a94752b251f81116ba9dc99dbd284ec3893405ecb679791b7d6fb2080c81a07.mp3', 4205, '2026-09-13 06:43:40.020712', '3dee81b4820e1c79d7773e592b9854704d0787d4916de3d1f2c6daf5ffc8bbca', 'validated', '{"audio_key":"9a94752b251f81116ba9dc99dbd284ec3893405ecb679791b7d6fb2080c81a07","entity_key":"u_clubs_volunteering_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dee81b4820e1c79d7773e592b9854704d0787d4916de3d1f2c6daf5ffc8bbca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9a94752b251f81116ba9dc99dbd284ec3893405ecb679791b7d6fb2080c81a07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_planning_04 -> audio/generated/de-DE/utterances/9ff87cfc9ce1c3e565e3e23bfddcccd3b1112acc715fd988eb9cb4de3ce663c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('17b8f8fc-fb5b-549c-8499-95ce87e93998', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5868f0095349492a3cd47bd23ec06e6563434f0f6074de094df39a574b5a4a4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7798ed5c-8fdf-50ec-b6ca-c65ef808227d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('17b8f8fc-fb5b-549c-8499-95ce87e93998', 1), '5868f0095349492a3cd47bd23ec06e6563434f0f6074de094df39a574b5a4a4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ff87cfc9ce1c3e565e3e23bfddcccd3b1112acc715fd988eb9cb4de3ce663c6.mp3', 4179, '2026-09-13 06:43:41.179537', 'a640c76d2ce6b0a2409048ccdecc57f0c16bc1e6651d07398cba58d2ace91b6f', 'validated', '{"audio_key":"9ff87cfc9ce1c3e565e3e23bfddcccd3b1112acc715fd988eb9cb4de3ce663c6","entity_key":"u_project_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a640c76d2ce6b0a2409048ccdecc57f0c16bc1e6651d07398cba58d2ace91b6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ff87cfc9ce1c3e565e3e23bfddcccd3b1112acc715fd988eb9cb4de3ce663c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_transport_delays_03 -> audio/generated/de-DE/utterances/a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('430e2279-208a-5567-bef1-fdee8be345e0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_transport_delays_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81208766c111bd23db69fc41b204176fb0b91a030e96664f12ae49971265d3aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a73d4822-a7b4-5865-b6aa-ebbedcff9fc0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('430e2279-208a-5567-bef1-fdee8be345e0', 1), '81208766c111bd23db69fc41b204176fb0b91a030e96664f12ae49971265d3aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6.mp3', 3239, '2026-09-13 06:43:41.265535', '544a4f365d0ba9b888d38d2f93d40a1bbcd6a01cd3e877d80d20bf713cac3a43', 'validated', '{"audio_key":"a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6","entity_key":"u_transport_delays_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544a4f365d0ba9b888d38d2f93d40a1bbcd6a01cd3e877d80d20bf713cac3a43","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_transport_delays_02_listen -> audio/generated/de-DE/utterances/a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bb2c7196-af82-5145-be32-74f8dc12b7a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_transport_delays_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81208766c111bd23db69fc41b204176fb0b91a030e96664f12ae49971265d3aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6546d522-a663-58ec-8120-0082161358d2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bb2c7196-af82-5145-be32-74f8dc12b7a5', 1), '81208766c111bd23db69fc41b204176fb0b91a030e96664f12ae49971265d3aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6.mp3', 3239, '2026-09-13 06:43:41.265535', '544a4f365d0ba9b888d38d2f93d40a1bbcd6a01cd3e877d80d20bf713cac3a43', 'validated', '{"audio_key":"a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6","entity_key":"ex_transport_delays_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544a4f365d0ba9b888d38d2f93d40a1bbcd6a01cd3e877d80d20bf713cac3a43","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a217faea4a8f3908f27732e367fb8537a53747f515bd687c14ce563ab024dcb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_future_changes_04 -> audio/generated/de-DE/utterances/a4a5290d326213e3f92a20b78b8a77caf23f025659cbd3496edbe0aa0e5c08f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d114c4be-6bf4-502f-beb1-15d4a8bc8a5f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_future_changes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91774423efc608e912be44e2f47f4c386451b206092e6dbb9b9582d289b76ce2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('883a816b-c950-5ea4-8f64-6ad81aac9e35', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d114c4be-6bf4-502f-beb1-15d4a8bc8a5f', 1), '91774423efc608e912be44e2f47f4c386451b206092e6dbb9b9582d289b76ce2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4a5290d326213e3f92a20b78b8a77caf23f025659cbd3496edbe0aa0e5c08f5.mp3', 4310, '2026-09-13 06:43:42.531157', '9883a2191bd84af51d8e4e84a7fc35908ec9843cf6a2e920ed786c7867cbd1d3', 'validated', '{"audio_key":"a4a5290d326213e3f92a20b78b8a77caf23f025659cbd3496edbe0aa0e5c08f5","entity_key":"u_future_changes_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9883a2191bd84af51d8e4e84a7fc35908ec9843cf6a2e920ed786c7867cbd1d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4a5290d326213e3f92a20b78b8a77caf23f025659cbd3496edbe0aa0e5c08f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_transport_delays_06 -> audio/generated/de-DE/utterances/ab55eece9fa8aa9d14f53f532f9f8723045af76a7b66609e18385e8dafaa542c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('139615d1-1c23-5859-8aae-39f890c8aa6c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_transport_delays_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b783edcb4f0ec9c99cd7d5b2d620413224734aebc7550435e34b7ac0a5fd1038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38abf460-a045-5f1c-9303-089474a78969', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('139615d1-1c23-5859-8aae-39f890c8aa6c', 1), 'b783edcb4f0ec9c99cd7d5b2d620413224734aebc7550435e34b7ac0a5fd1038',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ab55eece9fa8aa9d14f53f532f9f8723045af76a7b66609e18385e8dafaa542c.mp3', 3787, '2026-09-13 06:43:42.591817', '9d3e05d23b30d904fafdac83e4f4a11ce90e62bdc3ac1229cfc5641c1b3f68c8', 'validated', '{"audio_key":"ab55eece9fa8aa9d14f53f532f9f8723045af76a7b66609e18385e8dafaa542c","entity_key":"u_transport_delays_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d3e05d23b30d904fafdac83e4f4a11ce90e62bdc3ac1229cfc5641c1b3f68c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ab55eece9fa8aa9d14f53f532f9f8723045af76a7b66609e18385e8dafaa542c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_planning_01 -> audio/generated/de-DE/utterances/b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d834e0b7-6e98-5468-a658-ac9ce5e9fe15', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3358f76e5a1f8642b465b094a4b087dc579152cebee1eb16430c7a6701a85440'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a389a8e-3b3d-5af8-b089-f4fe15a7c220', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d834e0b7-6e98-5468-a658-ac9ce5e9fe15', 1), '3358f76e5a1f8642b465b094a4b087dc579152cebee1eb16430c7a6701a85440',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af.mp3', 4310, '2026-09-13 06:43:43.873795', '1ed24d419ab99a99eff03db98d9af5fed590adcb704021cdc9f0f7260db6e3dd', 'validated', '{"audio_key":"b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af","entity_key":"u_project_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ed24d419ab99a99eff03db98d9af5fed590adcb704021cdc9f0f7260db6e3dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_project_planning_01_listen -> audio/generated/de-DE/utterances/b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3e71cf74-0062-527a-a253-30ab58ed3873', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_project_planning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3358f76e5a1f8642b465b094a4b087dc579152cebee1eb16430c7a6701a85440'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0598ad4-0183-531a-a478-254fe5d4a775', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3e71cf74-0062-527a-a253-30ab58ed3873', 1), '3358f76e5a1f8642b465b094a4b087dc579152cebee1eb16430c7a6701a85440',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af.mp3', 4310, '2026-09-13 06:43:43.873795', '1ed24d419ab99a99eff03db98d9af5fed590adcb704021cdc9f0f7260db6e3dd', 'validated', '{"audio_key":"b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af","entity_key":"ex_project_planning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ed24d419ab99a99eff03db98d9af5fed590adcb704021cdc9f0f7260db6e3dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8bcac5a0c0a10f293f1531877cf76fe9e9f084839ce9bf60bd88e94ab0384af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clubs_volunteering_05 -> audio/generated/de-DE/utterances/bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3caa7f08-5561-5c16-8298-9effce285248', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clubs_volunteering_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '766996f1b5d4718dcda330217c578cce5968f578e082e211c8796e6c162b6aad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec672b89-ad4c-56a6-939d-e439d8510b0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3caa7f08-5561-5c16-8298-9effce285248', 1), '766996f1b5d4718dcda330217c578cce5968f578e082e211c8796e6c162b6aad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3.mp3', 4414, '2026-09-13 06:43:43.950551', 'f23a6e05aea7cb2b55d9b8ee1d89dcfd69b4dad0e55b8b9e8354239a5f1d14a1', 'validated', '{"audio_key":"bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3","entity_key":"u_clubs_volunteering_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f23a6e05aea7cb2b55d9b8ee1d89dcfd69b4dad0e55b8b9e8354239a5f1d14a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_clubs_volunteering_03_listen -> audio/generated/de-DE/utterances/bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1926cc2-950d-522b-bcb1-6a00e2c8c0ae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_clubs_volunteering_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '766996f1b5d4718dcda330217c578cce5968f578e082e211c8796e6c162b6aad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cf0f5dc-6259-5e6e-b415-233f2343e3b4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1926cc2-950d-522b-bcb1-6a00e2c8c0ae', 1), '766996f1b5d4718dcda330217c578cce5968f578e082e211c8796e6c162b6aad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3.mp3', 4414, '2026-09-13 06:43:43.950551', 'f23a6e05aea7cb2b55d9b8ee1d89dcfd69b4dad0e55b8b9e8354239a5f1d14a1', 'validated', '{"audio_key":"bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3","entity_key":"ex_clubs_volunteering_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f23a6e05aea7cb2b55d9b8ee1d89dcfd69b4dad0e55b8b9e8354239a5f1d14a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bcc18a1aeae057a52dda86932ed244a28ec32bfa84f97b52c2f6316f7685a9b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clubs_volunteering_04 -> audio/generated/de-DE/utterances/c25614a033aa259ec1d6a3bc8f86f2eaabc1e7c43b8339071c6f1d3370a204c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c9f930df-44ee-5de3-ac72-f397fe2f1bde', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clubs_volunteering_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8f6f2f89ccf07b5a92eecd1d2b749e16761e65f76bdc29bcc7f406baf0da4a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c82aa1b8-b636-5a43-b8b7-1e217189a5af', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c9f930df-44ee-5de3-ac72-f397fe2f1bde', 1), 'a8f6f2f89ccf07b5a92eecd1d2b749e16761e65f76bdc29bcc7f406baf0da4a0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c25614a033aa259ec1d6a3bc8f86f2eaabc1e7c43b8339071c6f1d3370a204c1.mp3', 4310, '2026-09-13 06:43:45.243542', 'c90044340153fc53edd02c74c2b29eb161e7c6a181c763ca358d36e3f5a93f51', 'validated', '{"audio_key":"c25614a033aa259ec1d6a3bc8f86f2eaabc1e7c43b8339071c6f1d3370a204c1","entity_key":"u_clubs_volunteering_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c90044340153fc53edd02c74c2b29eb161e7c6a181c763ca358d36e3f5a93f51","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c25614a033aa259ec1d6a3bc8f86f2eaabc1e7c43b8339071c6f1d3370a204c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_unexpected_situations_01 -> audio/generated/de-DE/utterances/c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de1b7c6c-c414-5034-b9f6-0e75a6058e8f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_unexpected_situations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca0256e8ef5cace5ff1cd1bc2ecfe15a3704be71292c1cc1adc53a3731256d16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3312715-979b-5a02-acf9-d4ca0f8ae321', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de1b7c6c-c414-5034-b9f6-0e75a6058e8f', 1), 'ca0256e8ef5cace5ff1cd1bc2ecfe15a3704be71292c1cc1adc53a3731256d16',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74.mp3', 4493, '2026-09-13 06:43:45.470408', 'ec83505bc72a53045b9b6ec0c875e046cbf77681a2b6255c94bdbe36f2b7b171', 'validated', '{"audio_key":"c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74","entity_key":"u_unexpected_situations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec83505bc72a53045b9b6ec0c875e046cbf77681a2b6255c94bdbe36f2b7b171","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_unexpected_situations_01_listen -> audio/generated/de-DE/utterances/c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f7d3b5ff-dcfb-5d1d-9368-27db55258c6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_unexpected_situations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca0256e8ef5cace5ff1cd1bc2ecfe15a3704be71292c1cc1adc53a3731256d16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c42026ce-3f98-533d-95d8-36c171f41c0d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f7d3b5ff-dcfb-5d1d-9368-27db55258c6a', 1), 'ca0256e8ef5cace5ff1cd1bc2ecfe15a3704be71292c1cc1adc53a3731256d16',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74.mp3', 4493, '2026-09-13 06:43:45.470408', 'ec83505bc72a53045b9b6ec0c875e046cbf77681a2b6255c94bdbe36f2b7b171', 'validated', '{"audio_key":"c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74","entity_key":"ex_unexpected_situations_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec83505bc72a53045b9b6ec0c875e046cbf77681a2b6255c94bdbe36f2b7b171","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c6cc3d014a2eb807ab180f56dacd5f04a3a0efdf1eb885216355425be082bf74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_services_appointments_03 -> audio/generated/de-DE/utterances/cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8c17c2a2-9530-5909-a5e2-1ee0134e0d8e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_services_appointments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21723fb48af6203a727043ac5aa52b7483bec405327c82360cd6e56bf2ca6692'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c604acb5-d388-538f-b925-8b630f4b27fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8c17c2a2-9530-5909-a5e2-1ee0134e0d8e', 1), '21723fb48af6203a727043ac5aa52b7483bec405327c82360cd6e56bf2ca6692',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8.mp3', 3761, '2026-09-13 06:43:46.521540', 'e42c01bb387d4b2189b353bef40617334257ef45eb1022fe0418e7b47246df04', 'validated', '{"audio_key":"cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8","entity_key":"u_public_services_appointments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e42c01bb387d4b2189b353bef40617334257ef45eb1022fe0418e7b47246df04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_public_services_appointments_02_listen -> audio/generated/de-DE/utterances/cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('aa1f74cf-d965-5c0b-8096-44ae5b92b987', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_public_services_appointments_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21723fb48af6203a727043ac5aa52b7483bec405327c82360cd6e56bf2ca6692'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('646e34c9-880f-588d-9906-fc5c9ec36737', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('aa1f74cf-d965-5c0b-8096-44ae5b92b987', 1), '21723fb48af6203a727043ac5aa52b7483bec405327c82360cd6e56bf2ca6692',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8.mp3', 3761, '2026-09-13 06:43:46.521540', 'e42c01bb387d4b2189b353bef40617334257ef45eb1022fe0418e7b47246df04', 'validated', '{"audio_key":"cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8","entity_key":"ex_public_services_appointments_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e42c01bb387d4b2189b353bef40617334257ef45eb1022fe0418e7b47246df04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cae95f28472367c7ba7cff5a6e9837fd13f9d93a34493bd585d37466bb92d6b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_nutrition_02 -> audio/generated/de-DE/utterances/cc8d853b14fc7736064343ef03d76b1789449b64eafe076ad0456463e9b17feb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('481975d0-45f9-5713-8995-2d1dadf76a20', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_nutrition_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '257b7229f5fcc042630f051ac74673aa9977cbd8fc66f447361492447b2be64c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd45176e-8c0f-515a-8e2e-6fa18830c13d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('481975d0-45f9-5713-8995-2d1dadf76a20', 1), '257b7229f5fcc042630f051ac74673aa9977cbd8fc66f447361492447b2be64c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cc8d853b14fc7736064343ef03d76b1789449b64eafe076ad0456463e9b17feb.mp3', 3526, '2026-09-13 06:43:46.753911', 'ea03baa821f49ee248781783da7908d8a02a526284a97b1f7ddfa953048dc3a7', 'validated', '{"audio_key":"cc8d853b14fc7736064343ef03d76b1789449b64eafe076ad0456463e9b17feb","entity_key":"u_food_nutrition_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea03baa821f49ee248781783da7908d8a02a526284a97b1f7ddfa953048dc3a7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cc8d853b14fc7736064343ef03d76b1789449b64eafe076ad0456463e9b17feb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_transport_delays_04 -> audio/generated/de-DE/utterances/d20ab2c4202e9492f53512e7620d91e2468d03877902733076afff9855a30ccd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c94a1d5f-ebc1-5ccb-a557-64fb16e9697f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_transport_delays_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82273ba7c513b6c69f1b6c0de2d099f0e47e78275a1c350115c9663f7a5915be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8de6e7d6-4180-5fec-b260-9ccfc334e084', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c94a1d5f-ebc1-5ccb-a557-64fb16e9697f', 1), '82273ba7c513b6c69f1b6c0de2d099f0e47e78275a1c350115c9663f7a5915be',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d20ab2c4202e9492f53512e7620d91e2468d03877902733076afff9855a30ccd.mp3', 3578, '2026-09-13 06:43:47.793408', '4ea5d08e12205ef86f5e8e48a65c67659bf466932bc639e61d7ec12c4c8483b7', 'validated', '{"audio_key":"d20ab2c4202e9492f53512e7620d91e2468d03877902733076afff9855a30ccd","entity_key":"u_transport_delays_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ea5d08e12205ef86f5e8e48a65c67659bf466932bc639e61d7ec12c4c8483b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d20ab2c4202e9492f53512e7620d91e2468d03877902733076afff9855a30ccd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_nutrition_06 -> audio/generated/de-DE/utterances/d26f7566ef14a4de316d16c3545936deb03aa8fba8d50b359287601d47bfe4ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9108ba6d-df44-5da4-80d3-481615b3befa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_nutrition_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee9e4b7c69d10915912fe4ddf19678dc01c9d7710788d3e2088f7b2f636786e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d191443f-0645-5824-af2d-497069716ffd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9108ba6d-df44-5da4-80d3-481615b3befa', 1), 'ee9e4b7c69d10915912fe4ddf19678dc01c9d7710788d3e2088f7b2f636786e3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d26f7566ef14a4de316d16c3545936deb03aa8fba8d50b359287601d47bfe4ad.mp3', 3578, '2026-09-13 06:43:48.069974', '9dae6448b996572f2a818a10f8ae8e53cd4f50ec069307ab3351c02f54384980', 'validated', '{"audio_key":"d26f7566ef14a4de316d16c3545936deb03aa8fba8d50b359287601d47bfe4ad","entity_key":"u_food_nutrition_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dae6448b996572f2a818a10f8ae8e53cd4f50ec069307ab3351c02f54384980","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d26f7566ef14a4de316d16c3545936deb03aa8fba8d50b359287601d47bfe4ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_unexpected_situations_04 -> audio/generated/de-DE/utterances/d39c6657c51974e81c7fd8301961c1e592d8fac21e3957226070e027c198359a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5f600a1-bdcf-55b3-9b02-129823223cf8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_unexpected_situations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61f94c31e94c06810bef3d779e28b148143da260923d92f6c9dad42a09d791df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94d5133f-be91-51a4-93f4-33843d8d6e95', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5f600a1-bdcf-55b3-9b02-129823223cf8', 1), '61f94c31e94c06810bef3d779e28b148143da260923d92f6c9dad42a09d791df',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d39c6657c51974e81c7fd8301961c1e592d8fac21e3957226070e027c198359a.mp3', 3578, '2026-09-13 06:43:49.085646', 'c414d684941567078a6657721669e0b60642a6918ac1437385ecf7f8732fef96', 'validated', '{"audio_key":"d39c6657c51974e81c7fd8301961c1e592d8fac21e3957226070e027c198359a","entity_key":"u_unexpected_situations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c414d684941567078a6657721669e0b60642a6918ac1437385ecf7f8732fef96","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d39c6657c51974e81c7fd8301961c1e592d8fac21e3957226070e027c198359a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_news_information_06 -> audio/generated/de-DE/utterances/d90078d6d8cc634df7a32176704a3ac4dfa5c962c952e23a3bcca0630d91d69f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('229e4aec-0e0b-5df5-8aa1-7ac3d329e523', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_news_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c43a9f91412020f7c8011987189f107a0ce8e7bb88d864e1d6290b979cac1df9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf9950d2-72b5-5d11-addd-7a7646011762', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('229e4aec-0e0b-5df5-8aa1-7ac3d329e523', 1), 'c43a9f91412020f7c8011987189f107a0ce8e7bb88d864e1d6290b979cac1df9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d90078d6d8cc634df7a32176704a3ac4dfa5c962c952e23a3bcca0630d91d69f.mp3', 4362, '2026-09-13 06:43:49.423003', 'cdc736f084709af9d5355ab50ad8e227e7b87b416bc029cf93edcc6c5cd235fd', 'validated', '{"audio_key":"d90078d6d8cc634df7a32176704a3ac4dfa5c962c952e23a3bcca0630d91d69f","entity_key":"u_news_information_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdc736f084709af9d5355ab50ad8e227e7b87b416bc029cf93edcc6c5cd235fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d90078d6d8cc634df7a32176704a3ac4dfa5c962c952e23a3bcca0630d91d69f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_responsibilities_04 -> audio/generated/de-DE/utterances/dd988ee5da85d3a092535e2745f220a76ff35d6d9a498a67ababfa76ecac9d73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1fd38453-9c7c-5c93-a8f6-f2f0ddf71736', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_responsibilities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6998f0f7ccc383ff65c45695a7e0c291d970a8018c4cd4b8f64b779c042225c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d173c966-b27b-5140-9dc0-92ade07682b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1fd38453-9c7c-5c93-a8f6-f2f0ddf71736', 1), '6998f0f7ccc383ff65c45695a7e0c291d970a8018c4cd4b8f64b779c042225c5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dd988ee5da85d3a092535e2745f220a76ff35d6d9a498a67ababfa76ecac9d73.mp3', 4022, '2026-09-13 06:43:50.394186', '7c9fcb8ca3bea762d03e150b31c0ee232d1c8b4c0e656cfbeee6951892e35c54', 'validated', '{"audio_key":"dd988ee5da85d3a092535e2745f220a76ff35d6d9a498a67ababfa76ecac9d73","entity_key":"u_family_responsibilities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c9fcb8ca3bea762d03e150b31c0ee232d1c8b4c0e656cfbeee6951892e35c54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dd988ee5da85d3a092535e2745f220a76ff35d6d9a498a67ababfa76ecac9d73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_phone_messages_05 -> audio/generated/de-DE/utterances/e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e933c50b-246d-5a77-9e3e-3d39936987c3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_phone_messages_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b17350b4a3e3f60d15fb1151e30e2af38e987564d061fdd13c90905b945bdda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f453ad2f-167b-5b67-9b8d-ad48a91b72d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e933c50b-246d-5a77-9e3e-3d39936987c3', 1), '4b17350b4a3e3f60d15fb1151e30e2af38e987564d061fdd13c90905b945bdda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb.mp3', 3108, '2026-09-13 06:43:50.655497', 'db4adfd7d938bbfea5f4306190312c180392126cbdae94d237473f0b6a5419c3', 'validated', '{"audio_key":"e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb","entity_key":"u_phone_messages_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db4adfd7d938bbfea5f4306190312c180392126cbdae94d237473f0b6a5419c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_phone_messages_03_listen -> audio/generated/de-DE/utterances/e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ac61d75a-ca4f-5e2f-9d5e-d8d55b78fd07', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_phone_messages_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b17350b4a3e3f60d15fb1151e30e2af38e987564d061fdd13c90905b945bdda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c60bc50d-d077-54f6-82c9-dee03ff634e9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ac61d75a-ca4f-5e2f-9d5e-d8d55b78fd07', 1), '4b17350b4a3e3f60d15fb1151e30e2af38e987564d061fdd13c90905b945bdda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb.mp3', 3108, '2026-09-13 06:43:50.655497', 'db4adfd7d938bbfea5f4306190312c180392126cbdae94d237473f0b6a5419c3', 'validated', '{"audio_key":"e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb","entity_key":"ex_phone_messages_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db4adfd7d938bbfea5f4306190312c180392126cbdae94d237473f0b6a5419c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4958c67ced31506f469460aa451f5e58a754beb454c80185454a1bb064e7bbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_public_services_appointments_06 -> audio/generated/de-DE/utterances/f42b6cd796a1160e7653028187a3f7779ee0c8caa020cc46229643ce8c455d06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a13dc407-66fe-5bac-9313-5a1ac88f6054', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_public_services_appointments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee35a2f53e7433cc029953a7690b7d171659255cb7652409bf042ac211a042e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f15b68e5-f7d6-53c1-90e4-0e28794f3e37', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a13dc407-66fe-5bac-9313-5a1ac88f6054', 1), 'ee35a2f53e7433cc029953a7690b7d171659255cb7652409bf042ac211a042e8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f42b6cd796a1160e7653028187a3f7779ee0c8caa020cc46229643ce8c455d06.mp3', 3526, '2026-09-13 06:43:51.660216', 'e9544def675e7c19e50ba2d1553aa86f561b2f87afd4e5f9fab8b85a6262dd3b', 'validated', '{"audio_key":"f42b6cd796a1160e7653028187a3f7779ee0c8caa020cc46229643ce8c455d06","entity_key":"u_public_services_appointments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9544def675e7c19e50ba2d1553aa86f561b2f87afd4e5f9fab8b85a6262dd3b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f42b6cd796a1160e7653028187a3f7779ee0c8caa020cc46229643ce8c455d06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_future_changes_01 -> audio/generated/de-DE/utterances/f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1b5b688a-0e46-5e4e-ab77-2f544f5c30bf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_future_changes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f4476bb0e3957f4c6806e8b7c15f512a15b14c00e3e13cf0abbcbff4b42d485'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4c22a71-0e42-562c-b018-170490333d79', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1b5b688a-0e46-5e4e-ab77-2f544f5c30bf', 1), '4f4476bb0e3957f4c6806e8b7c15f512a15b14c00e3e13cf0abbcbff4b42d485',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d.mp3', 4075, '2026-09-13 06:43:52.018471', 'ef0d04ad7bf2d67c5d98193c96631d91c00c535e13012de0ee02652ba4d2a69a', 'validated', '{"audio_key":"f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d","entity_key":"u_future_changes_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef0d04ad7bf2d67c5d98193c96631d91c00c535e13012de0ee02652ba4d2a69a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_future_changes_01_listen -> audio/generated/de-DE/utterances/f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('99562d52-ba6b-52b8-80ec-9cb06bbc4ff3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_future_changes_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f4476bb0e3957f4c6806e8b7c15f512a15b14c00e3e13cf0abbcbff4b42d485'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('116432a6-41aa-532a-a787-4bedfe87027c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('99562d52-ba6b-52b8-80ec-9cb06bbc4ff3', 1), '4f4476bb0e3957f4c6806e8b7c15f512a15b14c00e3e13cf0abbcbff4b42d485',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d.mp3', 4075, '2026-09-13 06:43:52.018471', 'ef0d04ad7bf2d67c5d98193c96631d91c00c535e13012de0ee02652ba4d2a69a', 'validated', '{"audio_key":"f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d","entity_key":"ex_future_changes_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef0d04ad7bf2d67c5d98193c96631d91c00c535e13012de0ee02652ba4d2a69a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f47b2d3e7dd455deb290c91cb28ca3f52b18bcbcaaff8d6a530ba931a2cdc61d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_news_information_05 -> audio/generated/de-DE/utterances/f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18432dee-c066-5391-8c8b-b02b1f09c8b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_news_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b702ae3fb53c89f26c91289b54070ffc60b602c4cf5d251beef167a73ddd29ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('367ddb64-b0d5-50fd-b295-63daf0f8228a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18432dee-c066-5391-8c8b-b02b1f09c8b3', 1), 'b702ae3fb53c89f26c91289b54070ffc60b602c4cf5d251beef167a73ddd29ad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f.mp3', 5198, '2026-09-13 06:43:53.128884', 'cb37749dc25891e8805191e29861261e56bed1172f88d08505888c34f6a41ff5', 'validated', '{"audio_key":"f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f","entity_key":"u_news_information_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb37749dc25891e8805191e29861261e56bed1172f88d08505888c34f6a41ff5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_news_information_03_listen -> audio/generated/de-DE/utterances/f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ce3a6ec8-c941-5326-88ea-c47cf3de3c42', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_news_information_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b702ae3fb53c89f26c91289b54070ffc60b602c4cf5d251beef167a73ddd29ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c70cc572-b444-5963-8d10-5f1f0ab7c12a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ce3a6ec8-c941-5326-88ea-c47cf3de3c42', 1), 'b702ae3fb53c89f26c91289b54070ffc60b602c4cf5d251beef167a73ddd29ad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f.mp3', 5198, '2026-09-13 06:43:53.128884', 'cb37749dc25891e8805191e29861261e56bed1172f88d08505888c34f6a41ff5', 'validated', '{"audio_key":"f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f","entity_key":"ex_news_information_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb37749dc25891e8805191e29861261e56bed1172f88d08505888c34f6a41ff5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f88a7fc887f844da0290de34a2b38f47993ec816444138a246aafc8a6353a34f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_news_information_02 -> audio/generated/de-DE/utterances/fa1aae1ab7c890aa2338c7fabb3d36b9c8bcf1dfe9681221a1fd0c54c70707ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fdb22063-0d41-51a4-a120-4ea29f2a0592', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_news_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8c496d7deabee15dd12c0cc32ee379bea9b640251a4852ad68afc185e1d7fa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c3f2795-b878-5116-9415-f2229d0dd6a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fdb22063-0d41-51a4-a120-4ea29f2a0592', 1), 'd8c496d7deabee15dd12c0cc32ee379bea9b640251a4852ad68afc185e1d7fa7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fa1aae1ab7c890aa2338c7fabb3d36b9c8bcf1dfe9681221a1fd0c54c70707ab.mp3', 4022, '2026-09-13 06:43:53.361452', '4f7f9c7c05b20cf3e30dffa8db6edfc7725ca2598008f3bbc72b1ede0e0c860a', 'validated', '{"audio_key":"fa1aae1ab7c890aa2338c7fabb3d36b9c8bcf1dfe9681221a1fd0c54c70707ab","entity_key":"u_news_information_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f7f9c7c05b20cf3e30dffa8db6edfc7725ca2598008f3bbc72b1ede0e0c860a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fa1aae1ab7c890aa2338c7fabb3d36b9c8bcf1dfe9681221a1fd0c54c70707ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_future_changes_03 -> audio/generated/de-DE/utterances/ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8881b7a6-2845-587f-9a56-fe3a1ee9c63f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_future_changes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '461cb0bc2a1e8e948a2835e57df3a9a2eae0652594d8251b5d68ca2281125cb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('398052cb-9744-59f5-9920-d8e1a5c41a79', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8881b7a6-2845-587f-9a56-fe3a1ee9c63f', 1), '461cb0bc2a1e8e948a2835e57df3a9a2eae0652594d8251b5d68ca2281125cb3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2.mp3', 5146, '2026-09-13 06:43:54.586934', 'baa8d6653efa2103f001b889c254d620452edd74ff711739d4c806dfaf89fe77', 'validated', '{"audio_key":"ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2","entity_key":"u_future_changes_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"baa8d6653efa2103f001b889c254d620452edd74ff711739d4c806dfaf89fe77","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_future_changes_02_listen -> audio/generated/de-DE/utterances/ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7223a411-0d62-5585-8dbb-9e6f2463242b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_future_changes_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '461cb0bc2a1e8e948a2835e57df3a9a2eae0652594d8251b5d68ca2281125cb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e525b03-2cae-5525-bc19-bd90f802f532', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7223a411-0d62-5585-8dbb-9e6f2463242b', 1), '461cb0bc2a1e8e948a2835e57df3a9a2eae0652594d8251b5d68ca2281125cb3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2.mp3', 5146, '2026-09-13 06:43:54.586934', 'baa8d6653efa2103f001b889c254d620452edd74ff711739d4c806dfaf89fe77', 'validated', '{"audio_key":"ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2","entity_key":"ex_future_changes_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"baa8d6653efa2103f001b889c254d620452edd74ff711739d4c806dfaf89fe77","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ffa38dcde20435e86111a57411710952b0d9f17255dab9f500ef9857f92eddf2.mp3"}'
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

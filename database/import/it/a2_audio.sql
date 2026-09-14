-- Generated audio link import for it-IT A2
-- Source manifest: audio/manifests/it/A2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_past_experiences_02:3 -> audio/generated/it-IT/dialogues/023502a99a67a70d4ea064d37e5f6cc07adead37fe6e216626db6556b66fb473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b522ab62-eb41-5b69-9745-9b8a5328fa59', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2505e29d77fd5e2ee8131b6937fa4ad6a62f4568e0ddb8d610ca76dc31b2af98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c356f1fd-beef-5a71-a8f5-22cd0f11dde5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b522ab62-eb41-5b69-9745-9b8a5328fa59', 1), '2505e29d77fd5e2ee8131b6937fa4ad6a62f4568e0ddb8d610ca76dc31b2af98',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/023502a99a67a70d4ea064d37e5f6cc07adead37fe6e216626db6556b66fb473.mp3', 1253, '2026-09-14 03:25:58.027341', 'c294b417890b7b73386d1b7f4075c628535620603335b2ebe7705ec0b7b75356', 'validated', '{"audio_key":"023502a99a67a70d4ea064d37e5f6cc07adead37fe6e216626db6556b66fb473","entity_key":"d_past_experiences_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"c294b417890b7b73386d1b7f4075c628535620603335b2ebe7705ec0b7b75356","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/023502a99a67a70d4ea064d37e5f6cc07adead37fe6e216626db6556b66fb473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:4 -> audio/generated/it-IT/dialogues/04f2ccaed73341af50d8db2e277cc8493478f03fbc855c0d15005757af4c10d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4280736a-2625-5be8-859a-d079adad399e', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7750228c33e470e3388bf5e26f793036207541bd3a396be4856d61b53c5daf80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1048fed4-3f84-51e8-8eaa-e6ae28ab68e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4280736a-2625-5be8-859a-d079adad399e', 1), '7750228c33e470e3388bf5e26f793036207541bd3a396be4856d61b53c5daf80',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/04f2ccaed73341af50d8db2e277cc8493478f03fbc855c0d15005757af4c10d9.mp3', 1933, '2026-09-14 03:25:58.050953', 'be6fe9b77949260c5f43755eeb8b371265208f598624d9cfe292960eae23997b', 'validated', '{"audio_key":"04f2ccaed73341af50d8db2e277cc8493478f03fbc855c0d15005757af4c10d9","entity_key":"d_reasons_and_results_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be6fe9b77949260c5f43755eeb8b371265208f598624d9cfe292960eae23997b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/04f2ccaed73341af50d8db2e277cc8493478f03fbc855c0d15005757af4c10d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:1 -> audio/generated/it-IT/dialogues/0a4a413b595e93eed128d866767208c6eece3114ae2ee5e7eb739262bb5ec185.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec783973-127e-5fd6-905f-39edf06a3004', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a53e1aa39e11cf04728bb3191ef8b618082648041cf33859516604c52de54ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44af3ed9-53c4-5aeb-8786-d144bd506858', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec783973-127e-5fd6-905f-39edf06a3004', 1), '0a53e1aa39e11cf04728bb3191ef8b618082648041cf33859516604c52de54ca',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0a4a413b595e93eed128d866767208c6eece3114ae2ee5e7eb739262bb5ec185.mp3', 1515, '2026-09-14 03:25:59.040391', '37ef6fdfe8a46e80721936f098ed92a3760ed9ffc2bc09554a503dbdf342a391', 'validated', '{"audio_key":"0a4a413b595e93eed128d866767208c6eece3114ae2ee5e7eb739262bb5ec185","entity_key":"d_reasons_and_results_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37ef6fdfe8a46e80721936f098ed92a3760ed9ffc2bc09554a503dbdf342a391","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0a4a413b595e93eed128d866767208c6eece3114ae2ee5e7eb739262bb5ec185.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:4 -> audio/generated/it-IT/dialogues/0b59d9e333f7c815c4177fad9ba5eb8d7db0e64409a323c7c36134df3b76df0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4f45120-90c0-52b8-a2c7-5628d9eb7fcd', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd08b2e070fba5439d7cbcd7f69f76e1d23510994f9c4dbd97794e705457a0044'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f183cc18-4e38-57e5-9cf2-c81559b43efb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4f45120-90c0-52b8-a2c7-5628d9eb7fcd', 1), 'd08b2e070fba5439d7cbcd7f69f76e1d23510994f9c4dbd97794e705457a0044',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0b59d9e333f7c815c4177fad9ba5eb8d7db0e64409a323c7c36134df3b76df0e.mp3', 1750, '2026-09-14 03:25:59.117021', '79df146735f202ad83253d1233e2e0c3d96142261bce1ac3f44fb9e951c7f3d7', 'validated', '{"audio_key":"0b59d9e333f7c815c4177fad9ba5eb8d7db0e64409a323c7c36134df3b76df0e","entity_key":"d_ability_and_permission_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79df146735f202ad83253d1233e2e0c3d96142261bce1ac3f44fb9e951c7f3d7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0b59d9e333f7c815c4177fad9ba5eb8d7db0e64409a323c7c36134df3b76df0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:2 -> audio/generated/it-IT/dialogues/0c52fe879b42aad69a8b61abc5ff87b41c5634b1161cb0e0761504f88209fb04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('25327458-d4c6-53d9-8f65-7140c025c954', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c324046218d809ddf90c448cd9b59215c6bb74dae8a28379efa253ed76aad2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e28a54d9-7833-597f-98f0-7c76376b9da5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('25327458-d4c6-53d9-8f65-7140c025c954', 1), 'c5c324046218d809ddf90c448cd9b59215c6bb74dae8a28379efa253ed76aad2',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0c52fe879b42aad69a8b61abc5ff87b41c5634b1161cb0e0761504f88209fb04.mp3', 1332, '2026-09-14 03:26:00.040871', '714d8fdff59851c48c221c9b9503771baeefe46c46be85a91ed2ab70ea706a11', 'validated', '{"audio_key":"0c52fe879b42aad69a8b61abc5ff87b41c5634b1161cb0e0761504f88209fb04","entity_key":"d_plans_and_intentions_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"714d8fdff59851c48c221c9b9503771baeefe46c46be85a91ed2ab70ea706a11","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/0c52fe879b42aad69a8b61abc5ff87b41c5634b1161cb0e0761504f88209fb04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:2 -> audio/generated/it-IT/dialogues/0d506b4c1df49ee1e3e200667fffac07f9338a038d758d54aaee8bd2fa9a5586.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c009e19a-cdfe-525b-b1f1-321823a4f939', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99749376f1f8e5e36c85b3f37d74b412459c7889f800f5f63a719262a3ef7baf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90f13084-674a-5802-b969-408e66e796c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c009e19a-cdfe-525b-b1f1-321823a4f939', 1), '99749376f1f8e5e36c85b3f37d74b412459c7889f800f5f63a719262a3ef7baf',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0d506b4c1df49ee1e3e200667fffac07f9338a038d758d54aaee8bd2fa9a5586.mp3', 1854, '2026-09-14 03:26:00.149529', '81fc4e09fab9ccf5ca44d9641b85e549f9a22ab57b7a78daf37a97752301268f', 'validated', '{"audio_key":"0d506b4c1df49ee1e3e200667fffac07f9338a038d758d54aaee8bd2fa9a5586","entity_key":"d_weather_and_change_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"81fc4e09fab9ccf5ca44d9641b85e549f9a22ab57b7a78daf37a97752301268f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/0d506b4c1df49ee1e3e200667fffac07f9338a038d758d54aaee8bd2fa9a5586.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:3 -> audio/generated/it-IT/dialogues/121486d81a6f829e2610c8ce18ab29f09ed1a7698a73be909b747933d07e902e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f69f00db-fca5-5815-9f6c-97121d84f21f', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24fe0f66cf3e99e00cb200fb7c1cee12d113308c2f1686955d79838f47ea6843'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5e88869-329a-54d4-a5b4-47f99a96acd7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f69f00db-fca5-5815-9f6c-97121d84f21f', 1), '24fe0f66cf3e99e00cb200fb7c1cee12d113308c2f1686955d79838f47ea6843',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/121486d81a6f829e2610c8ce18ab29f09ed1a7698a73be909b747933d07e902e.mp3', 1515, '2026-09-14 03:26:01.068373', '2bc9577643528eb27771062a2b3739de39e9070a3ec3485e4adddadc8d91f397', 'validated', '{"audio_key":"121486d81a6f829e2610c8ce18ab29f09ed1a7698a73be909b747933d07e902e","entity_key":"d_ability_and_permission_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"2bc9577643528eb27771062a2b3739de39e9070a3ec3485e4adddadc8d91f397","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/121486d81a6f829e2610c8ce18ab29f09ed1a7698a73be909b747933d07e902e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:1 -> audio/generated/it-IT/dialogues/14a7fe6631d796e9a437a1883897919d43cbb0105d7df7e79e19a1692f8bed40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30885d87-9d1d-564f-88b1-039e93bc2afe', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ada632c971eb481b46974545dd1ef42c9e237ad769a9bd1f0f81f6cd21f4fa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9a3fae7-5c31-56fe-9954-1d742b85a90d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30885d87-9d1d-564f-88b1-039e93bc2afe', 1), '5ada632c971eb481b46974545dd1ef42c9e237ad769a9bd1f0f81f6cd21f4fa2',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/14a7fe6631d796e9a437a1883897919d43cbb0105d7df7e79e19a1692f8bed40.mp3', 1332, '2026-09-14 03:26:01.143917', 'a3f54a509afc387bada46d51c269ba6a71e03f0151b2f528c7bfc93a9708e283', 'validated', '{"audio_key":"14a7fe6631d796e9a437a1883897919d43cbb0105d7df7e79e19a1692f8bed40","entity_key":"d_health_and_advice_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3f54a509afc387bada46d51c269ba6a71e03f0151b2f528c7bfc93a9708e283","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/14a7fe6631d796e9a437a1883897919d43cbb0105d7df7e79e19a1692f8bed40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:4 -> audio/generated/it-IT/dialogues/165f9226fa4adfbd018b00503292ece2b1792d59c45422ab35be9bcd0951099b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c966d78-21d5-5fa8-90ab-2a0d96f428e7', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9669d2d3e9a1d184944dd96526c41f540f98cbed776f32c9053038accce776c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07efdc18-e4b0-500c-9c2c-ab3f0d4ab4d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c966d78-21d5-5fa8-90ab-2a0d96f428e7', 1), '9669d2d3e9a1d184944dd96526c41f540f98cbed776f32c9053038accce776c1',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/165f9226fa4adfbd018b00503292ece2b1792d59c45422ab35be9bcd0951099b.mp3', 1436, '2026-09-14 03:26:02.080133', 'b609e0830e7e1ae2cc61fd79ae0f9023952a50a6c7c04a3968dba02e3bbe106f', 'validated', '{"audio_key":"165f9226fa4adfbd018b00503292ece2b1792d59c45422ab35be9bcd0951099b","entity_key":"d_weather_and_change_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b609e0830e7e1ae2cc61fd79ae0f9023952a50a6c7c04a3968dba02e3bbe106f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/165f9226fa4adfbd018b00503292ece2b1792d59c45422ab35be9bcd0951099b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:4 -> audio/generated/it-IT/dialogues/1760f43ec9afa8e0565dd9504c615b9e7500b69a914ce4853eea8e289d3a94d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7df42e27-ea73-5cee-a415-0047a2f3dcce', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8b37976-a36d-504f-82ac-5149d810d91e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7df42e27-ea73-5cee-a415-0047a2f3dcce', 1), '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1760f43ec9afa8e0565dd9504c615b9e7500b69a914ce4853eea8e289d3a94d9.mp3', 966, '2026-09-14 03:26:02.126941', '5e6dad90626ae57415ea676edf59e7384e1caf22fee70bb28a1f6f929c2f0937', 'validated', '{"audio_key":"1760f43ec9afa8e0565dd9504c615b9e7500b69a914ce4853eea8e289d3a94d9","entity_key":"d_ability_and_permission_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e6dad90626ae57415ea676edf59e7384e1caf22fee70bb28a1f6f929c2f0937","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/1760f43ec9afa8e0565dd9504c615b9e7500b69a914ce4853eea8e289d3a94d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_01:3 -> audio/generated/it-IT/dialogues/18f1f557597b2016fb3e1270b8147a6b0b1e82b0fc25814e02c888271397c6c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('59071830-dcfc-5441-bdd7-5c0c241ceccc', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a26ce0b644d6e64fade58de89f6d4f8de0eec32cffa03c299d338c4e5d29f428'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c9945ad-7635-5507-aac6-f083d95b3d06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('59071830-dcfc-5441-bdd7-5c0c241ceccc', 1), 'a26ce0b644d6e64fade58de89f6d4f8de0eec32cffa03c299d338c4e5d29f428',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/18f1f557597b2016fb3e1270b8147a6b0b1e82b0fc25814e02c888271397c6c4.mp3', 2168, '2026-09-14 03:26:03.215515', 'd11c97485a531e4101cdd3a4438180e0d8cfaacca745d150712a970978dd6069', 'validated', '{"audio_key":"18f1f557597b2016fb3e1270b8147a6b0b1e82b0fc25814e02c888271397c6c4","entity_key":"d_a2_weekend_capstone_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d11c97485a531e4101cdd3a4438180e0d8cfaacca745d150712a970978dd6069","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/18f1f557597b2016fb3e1270b8147a6b0b1e82b0fc25814e02c888271397c6c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:1 -> audio/generated/it-IT/dialogues/19824bfae6aca2ec51019d6e0805c5f00af04686df3b90c01668ecf809f5c08a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3c0c323-4c05-5009-b57b-8ceeeed5c1e5', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd10efe483b625809aa4bea9be76b7ca0dd38b0c7439a479131b71d8f1f98fedc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('460e0f9f-afca-5fdf-a34b-574d77554506', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3c0c323-4c05-5009-b57b-8ceeeed5c1e5', 1), 'd10efe483b625809aa4bea9be76b7ca0dd38b0c7439a479131b71d8f1f98fedc',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/19824bfae6aca2ec51019d6e0805c5f00af04686df3b90c01668ecf809f5c08a.mp3', 2533, '2026-09-14 03:26:03.293459', '241a8cd2621f7e8b4b73b413b21d24e2c5e37c14d335d6fc0cc9cf507ff063c7', 'validated', '{"audio_key":"19824bfae6aca2ec51019d6e0805c5f00af04686df3b90c01668ecf809f5c08a","entity_key":"d_health_and_advice_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"241a8cd2621f7e8b4b73b413b21d24e2c5e37c14d335d6fc0cc9cf507ff063c7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/19824bfae6aca2ec51019d6e0805c5f00af04686df3b90c01668ecf809f5c08a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:2 -> audio/generated/it-IT/dialogues/1faebf0847d6d7147c9b544bacb59e88f19539617de584bdb50a5b6e88bab30a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f09819e0-e29b-5d44-91a8-148b0669a656', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5d06257fd7a6db57d9ee4d926392602e75bad7923786e1574caa035962ce4a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8713b213-7a23-5d23-b16a-7582d9b09c51', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f09819e0-e29b-5d44-91a8-148b0669a656', 1), 'a5d06257fd7a6db57d9ee4d926392602e75bad7923786e1574caa035962ce4a2',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1faebf0847d6d7147c9b544bacb59e88f19539617de584bdb50a5b6e88bab30a.mp3', 2351, '2026-09-14 03:26:04.298679', 'de66b9a954882c7aa61308f82b662a2201e26181e7c6e4e180288aeb1d3557f2', 'validated', '{"audio_key":"1faebf0847d6d7147c9b544bacb59e88f19539617de584bdb50a5b6e88bab30a","entity_key":"d_health_and_advice_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"de66b9a954882c7aa61308f82b662a2201e26181e7c6e4e180288aeb1d3557f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/1faebf0847d6d7147c9b544bacb59e88f19539617de584bdb50a5b6e88bab30a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:2 -> audio/generated/it-IT/dialogues/20b425e2a403e760facbbc72db2a8a654b11aae8638d4ddb6005fddf3e5108c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5fa6ce8-dfbb-5ea3-b1ef-b71ef8bb04c9', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ddcafaec2d0a62735583f18c21aba9a49d85f3127d1f139d3cffb3eea6b99c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4442cdc8-a92f-5da3-9c02-6e6e25b38233', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5fa6ce8-dfbb-5ea3-b1ef-b71ef8bb04c9', 1), '9ddcafaec2d0a62735583f18c21aba9a49d85f3127d1f139d3cffb3eea6b99c1',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/20b425e2a403e760facbbc72db2a8a654b11aae8638d4ddb6005fddf3e5108c2.mp3', 1985, '2026-09-14 03:26:04.336157', '4b8b4480c0380b04c722c20559609aacc066a1e9cc098a787de5de5370a5d79b', 'validated', '{"audio_key":"20b425e2a403e760facbbc72db2a8a654b11aae8638d4ddb6005fddf3e5108c2","entity_key":"d_comparisons_and_choice_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b8b4480c0380b04c722c20559609aacc066a1e9cc098a787de5de5370a5d79b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/20b425e2a403e760facbbc72db2a8a654b11aae8638d4ddb6005fddf3e5108c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:4 -> audio/generated/it-IT/dialogues/28321746402814ba1886ec7f232dcbce44a0f9c1138a6dcdeac99b0e4de6e028.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64255cf3-8145-5227-b2fa-dd58201798bd', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6f431a3933350ca14af7ab20f7d88b246b311be2217906cd71a143b75711526'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2046c38-2911-594a-badb-df7386a3700e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64255cf3-8145-5227-b2fa-dd58201798bd', 1), 'c6f431a3933350ca14af7ab20f7d88b246b311be2217906cd71a143b75711526',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/28321746402814ba1886ec7f232dcbce44a0f9c1138a6dcdeac99b0e4de6e028.mp3', 1384, '2026-09-14 03:26:05.382197', '1892c2aa21967e5ca458083b2f46e33bab5f4e2a8bdaa329dddb5bcaa82d1560', 'validated', '{"audio_key":"28321746402814ba1886ec7f232dcbce44a0f9c1138a6dcdeac99b0e4de6e028","entity_key":"d_travel_and_hotel_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1892c2aa21967e5ca458083b2f46e33bab5f4e2a8bdaa329dddb5bcaa82d1560","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/28321746402814ba1886ec7f232dcbce44a0f9c1138a6dcdeac99b0e4de6e028.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:4 -> audio/generated/it-IT/dialogues/285d79dacd55507faea3b420ac4c09ceac233f9efb3cd4326b45d447658a3e97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50503350-97b1-54d6-bd65-c2b35280b682', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bb8c485d0a12b4b3812aabd4c89615cf22f071a385e5b9a634fa6204ba9af2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8663c6e-3a45-53cd-97d0-4b6715d54146', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50503350-97b1-54d6-bd65-c2b35280b682', 1), '1bb8c485d0a12b4b3812aabd4c89615cf22f071a385e5b9a634fa6204ba9af2e',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/285d79dacd55507faea3b420ac4c09ceac233f9efb3cd4326b45d447658a3e97.mp3', 1567, '2026-09-14 03:26:05.426923', '9ab9e7036eb631f64a949f9e4cd2107a0422efd7354cb5770b0cd2daa386efd2', 'validated', '{"audio_key":"285d79dacd55507faea3b420ac4c09ceac233f9efb3cd4326b45d447658a3e97","entity_key":"d_health_and_advice_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9ab9e7036eb631f64a949f9e4cd2107a0422efd7354cb5770b0cd2daa386efd2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/285d79dacd55507faea3b420ac4c09ceac233f9efb3cd4326b45d447658a3e97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:1 -> audio/generated/it-IT/dialogues/2937361b87fc257487a825ed408b012b2dd8f8900deaf75d23a75da41bebff39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ddb2cda0-1c15-5561-92b0-60d56aa4f513', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdacb60c90fa92a2acbeedb9b909f3c38cc10778c7b122c5b0da878ffa87e9d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7530a2d6-144d-5650-a453-33e219a3624c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ddb2cda0-1c15-5561-92b0-60d56aa4f513', 1), 'bdacb60c90fa92a2acbeedb9b909f3c38cc10778c7b122c5b0da878ffa87e9d9',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2937361b87fc257487a825ed408b012b2dd8f8900deaf75d23a75da41bebff39.mp3', 2873, '2026-09-14 03:26:06.546200', '5c91b26d114ef5b42bc27e9b0601ee9eb17a07f642225ddfc54434ed29e579f4', 'validated', '{"audio_key":"2937361b87fc257487a825ed408b012b2dd8f8900deaf75d23a75da41bebff39","entity_key":"d_travel_and_hotel_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"5c91b26d114ef5b42bc27e9b0601ee9eb17a07f642225ddfc54434ed29e579f4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/2937361b87fc257487a825ed408b012b2dd8f8900deaf75d23a75da41bebff39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:3 -> audio/generated/it-IT/dialogues/296b9b984f81767ebdf2b357bb7b74daf9738a087bd75d09f595dc927eeb408b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('315375e2-709b-529e-a29f-7084889f09d0', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ea590e604fee3852d5389a70e402ace42b7e5d646916b28ea6a30c12de40eb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eccbed51-b135-5a6e-b6eb-2424265b28b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('315375e2-709b-529e-a29f-7084889f09d0', 1), '1ea590e604fee3852d5389a70e402ace42b7e5d646916b28ea6a30c12de40eb5',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/296b9b984f81767ebdf2b357bb7b74daf9738a087bd75d09f595dc927eeb408b.mp3', 1697, '2026-09-14 03:26:06.496992', '3deb27aec186c24f9493563732e6d7d9adcd009bf3243d32bfca89af5fd3c995', 'validated', '{"audio_key":"296b9b984f81767ebdf2b357bb7b74daf9738a087bd75d09f595dc927eeb408b","entity_key":"d_reasons_and_results_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3deb27aec186c24f9493563732e6d7d9adcd009bf3243d32bfca89af5fd3c995","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/296b9b984f81767ebdf2b357bb7b74daf9738a087bd75d09f595dc927eeb408b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:1 -> audio/generated/it-IT/dialogues/2d74f9d48e12b8bf5b5389c7ee8233ecde11d4ffe675273fc6fadc35a917389d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6419ce6-9823-50bd-a2e8-b81bf6e307bd', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52c8dd0f794e30619d9722dc8fd917e074709270e5a5e39360d4541876944860'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9b8ba9f-c4be-5feb-9c85-1d7153711daa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6419ce6-9823-50bd-a2e8-b81bf6e307bd', 1), '52c8dd0f794e30619d9722dc8fd917e074709270e5a5e39360d4541876944860',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2d74f9d48e12b8bf5b5389c7ee8233ecde11d4ffe675273fc6fadc35a917389d.mp3', 1488, '2026-09-14 03:26:07.482621', '34020016e74e699446f8e3d65dc4a2c6b39defe3f600482efdcf9dbe17dab46d', 'validated', '{"audio_key":"2d74f9d48e12b8bf5b5389c7ee8233ecde11d4ffe675273fc6fadc35a917389d","entity_key":"d_past_experiences_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"34020016e74e699446f8e3d65dc4a2c6b39defe3f600482efdcf9dbe17dab46d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2d74f9d48e12b8bf5b5389c7ee8233ecde11d4ffe675273fc6fadc35a917389d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:4 -> audio/generated/it-IT/dialogues/3124d6dc649f513cfd64f8e147d7bfa2d1aedd47fafad0069ae5d11eb87a527b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2731ab7b-bc55-50dd-84b4-21a37b7e6d16', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cffa09630218a4c7b711edf19469f370818310c86f61ec758429b273dce43df0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e6239e9-cea1-564b-b2c6-0abda42b0e14', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2731ab7b-bc55-50dd-84b4-21a37b7e6d16', 1), 'cffa09630218a4c7b711edf19469f370818310c86f61ec758429b273dce43df0',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3124d6dc649f513cfd64f8e147d7bfa2d1aedd47fafad0069ae5d11eb87a527b.mp3', 1201, '2026-09-14 03:26:07.502681', '3be2f5737bcd5a39817155101df8420c76fdc853fceb1f405697affb59edffd7', 'validated', '{"audio_key":"3124d6dc649f513cfd64f8e147d7bfa2d1aedd47fafad0069ae5d11eb87a527b","entity_key":"d_comparisons_and_choice_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3be2f5737bcd5a39817155101df8420c76fdc853fceb1f405697affb59edffd7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3124d6dc649f513cfd64f8e147d7bfa2d1aedd47fafad0069ae5d11eb87a527b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:1 -> audio/generated/it-IT/dialogues/3872c5df776d795da766f768135199b3225c42c8051173bbdcf5b9db6423cfa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('361b8f15-9606-52fa-bc75-abea1844739c', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e98cf9a8842c234fea543d4c23fd2542edf627556ea59397889fb6610fe6a8bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0492e9b2-eaa6-5584-adaf-66e6c3b40865', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('361b8f15-9606-52fa-bc75-abea1844739c', 1), 'e98cf9a8842c234fea543d4c23fd2542edf627556ea59397889fb6610fe6a8bf',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3872c5df776d795da766f768135199b3225c42c8051173bbdcf5b9db6423cfa9.mp3', 1567, '2026-09-14 03:26:08.575222', '686c36bff30237dd5562174a9e47ce3782b99ccfc09a2ebbd8991826af7c2f65', 'validated', '{"audio_key":"3872c5df776d795da766f768135199b3225c42c8051173bbdcf5b9db6423cfa9","entity_key":"d_reasons_and_results_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"686c36bff30237dd5562174a9e47ce3782b99ccfc09a2ebbd8991826af7c2f65","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/3872c5df776d795da766f768135199b3225c42c8051173bbdcf5b9db6423cfa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:4 -> audio/generated/it-IT/dialogues/3bda6c3b8a14d15f4dd1d265832cecc9b10dfcbfb7c3ffa5851c2db0e09b2ccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b349dda0-06db-54d6-bad8-37c36880572b', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ee2ec1ef270fda1cafb6a81415c4ef294c201cf15c8571c1c190f3872f2c015'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d87944ee-1ad1-55e5-ab40-188d12751714', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b349dda0-06db-54d6-bad8-37c36880572b', 1), '1ee2ec1ef270fda1cafb6a81415c4ef294c201cf15c8571c1c190f3872f2c015',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3bda6c3b8a14d15f4dd1d265832cecc9b10dfcbfb7c3ffa5851c2db0e09b2ccc.mp3', 1018, '2026-09-14 03:26:08.755885', '21b111499f7f3bb349c9935abbb8d96662b713fa2e6ef93027599510285d202a', 'validated', '{"audio_key":"3bda6c3b8a14d15f4dd1d265832cecc9b10dfcbfb7c3ffa5851c2db0e09b2ccc","entity_key":"d_plans_and_intentions_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"21b111499f7f3bb349c9935abbb8d96662b713fa2e6ef93027599510285d202a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/3bda6c3b8a14d15f4dd1d265832cecc9b10dfcbfb7c3ffa5851c2db0e09b2ccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:3 -> audio/generated/it-IT/dialogues/3ead5f754d004c2a9a5ced86c98b97171c17376eefc8fadac39920e48e769c78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('919c15bb-483b-53d6-a364-122cbd1a9005', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b2275e46d0d8c27d1d4c509965a5c25ab8b832571c0eca65c38e08e4de3b2ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80420159-50e8-5adb-ab20-3159a466f9a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('919c15bb-483b-53d6-a364-122cbd1a9005', 1), '8b2275e46d0d8c27d1d4c509965a5c25ab8b832571c0eca65c38e08e4de3b2ae',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3ead5f754d004c2a9a5ced86c98b97171c17376eefc8fadac39920e48e769c78.mp3', 1671, '2026-09-14 03:26:09.589365', '20efab9d28b67eb719c19395f2523ab805fe53062c46b473a738515939c657fb', 'validated', '{"audio_key":"3ead5f754d004c2a9a5ced86c98b97171c17376eefc8fadac39920e48e769c78","entity_key":"d_health_and_advice_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20efab9d28b67eb719c19395f2523ab805fe53062c46b473a738515939c657fb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3ead5f754d004c2a9a5ced86c98b97171c17376eefc8fadac39920e48e769c78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:3 -> audio/generated/it-IT/dialogues/3f2ba0b78910d7409bef5106dba75e6e2941d9cde7d7cf3d4916c11a76e9df79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df0fcda4-004d-5ade-a909-675e97f636ee', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51dbdf24493a0db8e659dd5b3088f35935d4e0c01038a2ebb68ca65cd7f9d10f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c02e8b0-74ba-58ba-abed-61b01aef3075', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df0fcda4-004d-5ade-a909-675e97f636ee', 1), '51dbdf24493a0db8e659dd5b3088f35935d4e0c01038a2ebb68ca65cd7f9d10f',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3f2ba0b78910d7409bef5106dba75e6e2941d9cde7d7cf3d4916c11a76e9df79.mp3', 2533, '2026-09-14 03:26:09.852856', '424ce378b1bdf5797e8735860a1ec0acb0e2042075c34ac1a8217deb92731eba', 'validated', '{"audio_key":"3f2ba0b78910d7409bef5106dba75e6e2941d9cde7d7cf3d4916c11a76e9df79","entity_key":"d_plans_and_intentions_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"424ce378b1bdf5797e8735860a1ec0acb0e2042075c34ac1a8217deb92731eba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/3f2ba0b78910d7409bef5106dba75e6e2941d9cde7d7cf3d4916c11a76e9df79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:2 -> audio/generated/it-IT/dialogues/4593a8afd2dbcffc3d204bc8d719ad92ba3ef53d8be49b6c44576b51aa1b050f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e0517968-86fa-565a-919a-e47ada1da37b', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '790ed9de6e2424a6dd6bd9eb1f04a594659eee15a0775acaed5f2bb4a78b17dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f067255f-34f6-5450-9a74-7ca96938f9d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e0517968-86fa-565a-919a-e47ada1da37b', 1), '790ed9de6e2424a6dd6bd9eb1f04a594659eee15a0775acaed5f2bb4a78b17dc',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4593a8afd2dbcffc3d204bc8d719ad92ba3ef53d8be49b6c44576b51aa1b050f.mp3', 2115, '2026-09-14 03:26:10.646244', '14c915694c4eaf68ffacd44a7218de4e4fc7eb3e2306fa826426ea42f3fb420c', 'validated', '{"audio_key":"4593a8afd2dbcffc3d204bc8d719ad92ba3ef53d8be49b6c44576b51aa1b050f","entity_key":"d_past_experiences_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"14c915694c4eaf68ffacd44a7218de4e4fc7eb3e2306fa826426ea42f3fb420c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/4593a8afd2dbcffc3d204bc8d719ad92ba3ef53d8be49b6c44576b51aa1b050f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:1 -> audio/generated/it-IT/dialogues/47e6bd00202970231ec75eb555a61c046ba11f4e02183e02f3a17d531e0f9eb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a645d07-182d-5a38-882a-1810c1a7b84e', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c21de6f07ed1048bb35812b5e07cc8a636558c6938c739132dbfc1e81cc9541'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3ee3d46-6de5-5105-91ea-d3360bcbce48', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a645d07-182d-5a38-882a-1810c1a7b84e', 1), '0c21de6f07ed1048bb35812b5e07cc8a636558c6938c739132dbfc1e81cc9541',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/47e6bd00202970231ec75eb555a61c046ba11f4e02183e02f3a17d531e0f9eb0.mp3', 2742, '2026-09-14 03:26:10.956861', 'b016851cf6f48fb5f3afae4c79bc31adbc0f1c347d19a4a102143a10950ee3e9', 'validated', '{"audio_key":"47e6bd00202970231ec75eb555a61c046ba11f4e02183e02f3a17d531e0f9eb0","entity_key":"d_opinions_and_softening_02:1","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b016851cf6f48fb5f3afae4c79bc31adbc0f1c347d19a4a102143a10950ee3e9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/47e6bd00202970231ec75eb555a61c046ba11f4e02183e02f3a17d531e0f9eb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:2 -> audio/generated/it-IT/dialogues/4cd1886addc280b1c2cf1c838bb9a9fb7cc660940dba488eddea4c715fb2dff9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('13f2c9fa-1f8c-52da-85cc-162abaf8d496', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55c82ea010c8c6928689da6d2057bbf41ec8e5fa870466508f3598a02cd70ae4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73c2c75e-1914-52bc-8af9-bc295c0aa724', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('13f2c9fa-1f8c-52da-85cc-162abaf8d496', 1), '55c82ea010c8c6928689da6d2057bbf41ec8e5fa870466508f3598a02cd70ae4',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4cd1886addc280b1c2cf1c838bb9a9fb7cc660940dba488eddea4c715fb2dff9.mp3', 2089, '2026-09-14 03:26:11.799056', '9348e2db36cc6ca6bb66a1f46561d8d9081c6e86d0bd8522f007902917218115', 'validated', '{"audio_key":"4cd1886addc280b1c2cf1c838bb9a9fb7cc660940dba488eddea4c715fb2dff9","entity_key":"d_ability_and_permission_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9348e2db36cc6ca6bb66a1f46561d8d9081c6e86d0bd8522f007902917218115","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/4cd1886addc280b1c2cf1c838bb9a9fb7cc660940dba488eddea4c715fb2dff9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:1 -> audio/generated/it-IT/dialogues/4eb353545f71534bb0c6f7edf612aafa38414885c91ef75edeac765af5183d0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f299d6ac-526f-5991-b3d2-ab462dcb5563', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00a4a74973d754ae297f7d6c2db2a37187474c54d779eb35fd313de1339e1b9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe1202a5-28a4-569c-96bb-32c1e8fa172f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f299d6ac-526f-5991-b3d2-ab462dcb5563', 1), '00a4a74973d754ae297f7d6c2db2a37187474c54d779eb35fd313de1339e1b9a',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4eb353545f71534bb0c6f7edf612aafa38414885c91ef75edeac765af5183d0a.mp3', 3186, '2026-09-14 03:26:12.154426', 'e0b6a251ed30f5c69b9b38b7d6198c0c9ee81471051819c42ee73d93d3ebb9de', 'validated', '{"audio_key":"4eb353545f71534bb0c6f7edf612aafa38414885c91ef75edeac765af5183d0a","entity_key":"d_travel_and_hotel_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"e0b6a251ed30f5c69b9b38b7d6198c0c9ee81471051819c42ee73d93d3ebb9de","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/4eb353545f71534bb0c6f7edf612aafa38414885c91ef75edeac765af5183d0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:3 -> audio/generated/it-IT/dialogues/4f8704d85260f09b844da1d18540ed2386930c19edd6690b92d543fca2f6fdbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d808185f-eb23-5ffb-bf48-119db0900971', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10646cb9d20998f88c052f240f59fcccbccc2d5024371a12b7a04beec7cd5be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b9c3186-b737-5cfe-81a6-7f7f504a0c7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d808185f-eb23-5ffb-bf48-119db0900971', 1), 'c10646cb9d20998f88c052f240f59fcccbccc2d5024371a12b7a04beec7cd5be',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4f8704d85260f09b844da1d18540ed2386930c19edd6690b92d543fca2f6fdbc.mp3', 1671, '2026-09-14 03:26:12.843632', '321b7f4179802d3a2f17677e35aff6bd8270a403806f357cf6e3bd76d9ac6851', 'validated', '{"audio_key":"4f8704d85260f09b844da1d18540ed2386930c19edd6690b92d543fca2f6fdbc","entity_key":"d_weather_and_change_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"321b7f4179802d3a2f17677e35aff6bd8270a403806f357cf6e3bd76d9ac6851","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/4f8704d85260f09b844da1d18540ed2386930c19edd6690b92d543fca2f6fdbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:4 -> audio/generated/it-IT/dialogues/5503db9d69738954ea94e86bbd0dc5e4c08d3c887b4c3aa8bf2f181e10044dbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37c8130e-b4f7-56f0-ae08-023a45fa5603', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4a8c3a6805ff4ada74ab2560a9fb5e2f6ee9e102936eb77ef8dafb791ae049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4ad85ad-f698-5785-aa6d-e891e4ba0cec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37c8130e-b4f7-56f0-ae08-023a45fa5603', 1), 'fe4a8c3a6805ff4ada74ab2560a9fb5e2f6ee9e102936eb77ef8dafb791ae049',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5503db9d69738954ea94e86bbd0dc5e4c08d3c887b4c3aa8bf2f181e10044dbd.mp3', 1854, '2026-09-14 03:26:13.188029', '9de1b49ca72f0c7135ac57fdab2128d4c564c86124fff8caad9b445c6cc0e205', 'validated', '{"audio_key":"5503db9d69738954ea94e86bbd0dc5e4c08d3c887b4c3aa8bf2f181e10044dbd","entity_key":"d_travel_and_hotel_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9de1b49ca72f0c7135ac57fdab2128d4c564c86124fff8caad9b445c6cc0e205","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/5503db9d69738954ea94e86bbd0dc5e4c08d3c887b4c3aa8bf2f181e10044dbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_01:1 -> audio/generated/it-IT/dialogues/5b30277432ada3488a8e4f11c3fd5fa372f001c8849009e05d4180729f0c0cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93fc9a24-8567-5351-8cb5-9474a77f0272', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c8a108dd4abd5b030e97598ec82e3721453f554ee774b7a9337348dd21f0273'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9f1fe79-7c8c-5208-a045-e1ad0cc5e061', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93fc9a24-8567-5351-8cb5-9474a77f0272', 1), '2c8a108dd4abd5b030e97598ec82e3721453f554ee774b7a9337348dd21f0273',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5b30277432ada3488a8e4f11c3fd5fa372f001c8849009e05d4180729f0c0cdc.mp3', 1933, '2026-09-14 03:26:13.880035', '2e4f977732e5e77889dc2a5c490dc6519e4687175cefbeac029831f4b148ec4c', 'validated', '{"audio_key":"5b30277432ada3488a8e4f11c3fd5fa372f001c8849009e05d4180729f0c0cdc","entity_key":"d_a2_weekend_capstone_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e4f977732e5e77889dc2a5c490dc6519e4687175cefbeac029831f4b148ec4c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/5b30277432ada3488a8e4f11c3fd5fa372f001c8849009e05d4180729f0c0cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:3 -> audio/generated/it-IT/dialogues/5b90ba144e5c02928a72d49d8694b81261a39bde27fa23d73c2ad5cb7e6f6f5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8f7e198-8b04-5ddd-b515-0dccb88a8899', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1467833ec9458ff03493c5d2a688c534e4ceee17f88c25a8572c3d95073f6f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a41751e3-a8aa-5bf7-a553-e97b762fcca2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8f7e198-8b04-5ddd-b515-0dccb88a8899', 1), 'a1467833ec9458ff03493c5d2a688c534e4ceee17f88c25a8572c3d95073f6f0',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5b90ba144e5c02928a72d49d8694b81261a39bde27fa23d73c2ad5cb7e6f6f5b.mp3', 1567, '2026-09-14 03:26:14.262531', '40d052d9bdaf14eea71e8e411b977ce7884725769b06537d5705639c7ab8e71a', 'validated', '{"audio_key":"5b90ba144e5c02928a72d49d8694b81261a39bde27fa23d73c2ad5cb7e6f6f5b","entity_key":"d_comparisons_and_choice_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40d052d9bdaf14eea71e8e411b977ce7884725769b06537d5705639c7ab8e71a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/5b90ba144e5c02928a72d49d8694b81261a39bde27fa23d73c2ad5cb7e6f6f5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:2 -> audio/generated/it-IT/dialogues/5e935d9b9d43cacf01a039e33a2634f17230e66bba13d3b6227d097400329d89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c89a042-9c9d-5e72-b827-54941de53dfb', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20d63c26ab39dde082639cee9f8f33c1a2a28ee5d01b7b889f14ea08c5fba082'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8af28e2-2ba3-5ddd-b9dc-fc0bd08f3b47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c89a042-9c9d-5e72-b827-54941de53dfb', 1), '20d63c26ab39dde082639cee9f8f33c1a2a28ee5d01b7b889f14ea08c5fba082',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5e935d9b9d43cacf01a039e33a2634f17230e66bba13d3b6227d097400329d89.mp3', 1071, '2026-09-14 03:26:14.816692', 'e2e02af72fabe713e5a34a4516966a05ec76d58d62d97b71d1ab575e93e504e0', 'validated', '{"audio_key":"5e935d9b9d43cacf01a039e33a2634f17230e66bba13d3b6227d097400329d89","entity_key":"d_travel_and_hotel_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2e02af72fabe713e5a34a4516966a05ec76d58d62d97b71d1ab575e93e504e0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/5e935d9b9d43cacf01a039e33a2634f17230e66bba13d3b6227d097400329d89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:3 -> audio/generated/it-IT/dialogues/607daf9b9e517d881289ba70a8deffdc44f7f7be125b482036800c4dc89dcc37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42f46fa9-adb7-5735-a877-031dadd9664e', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '638f0a56f2829f923f8a3a54f2fc06154940cc072cdb24ee6cd630a81b4ffd29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8762d0eb-04ab-5aaf-9eee-97f16b24ba9e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42f46fa9-adb7-5735-a877-031dadd9664e', 1), '638f0a56f2829f923f8a3a54f2fc06154940cc072cdb24ee6cd630a81b4ffd29',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/607daf9b9e517d881289ba70a8deffdc44f7f7be125b482036800c4dc89dcc37.mp3', 1332, '2026-09-14 03:26:15.267177', '7c1ab40073b80f39786aba59cadfcc04cb3b2d2589ca883a5ff0f531aac49e1f', 'validated', '{"audio_key":"607daf9b9e517d881289ba70a8deffdc44f7f7be125b482036800c4dc89dcc37","entity_key":"d_past_experiences_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"7c1ab40073b80f39786aba59cadfcc04cb3b2d2589ca883a5ff0f531aac49e1f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/607daf9b9e517d881289ba70a8deffdc44f7f7be125b482036800c4dc89dcc37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:1 -> audio/generated/it-IT/dialogues/637dc908b1d28d8be0f5e4f63a5e6ff29212c1e6ac87a9ef5eb61b3579ea1fce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('731ad69e-4d46-5896-a0b4-c778e6bcc9c8', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '162b5c3f076924bebc0d81b0ea45e21c47330a12f3d6a5a3570e109a25cbf95c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de062a2a-c0c6-5c20-a3a4-60d024a255ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('731ad69e-4d46-5896-a0b4-c778e6bcc9c8', 1), '162b5c3f076924bebc0d81b0ea45e21c47330a12f3d6a5a3570e109a25cbf95c',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/637dc908b1d28d8be0f5e4f63a5e6ff29212c1e6ac87a9ef5eb61b3579ea1fce.mp3', 1854, '2026-09-14 03:26:15.850690', '0aa76b61b74c321dd836cbd5e435581d47254d284813b20f422de8aaca7d9266', 'validated', '{"audio_key":"637dc908b1d28d8be0f5e4f63a5e6ff29212c1e6ac87a9ef5eb61b3579ea1fce","entity_key":"d_comparisons_and_choice_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0aa76b61b74c321dd836cbd5e435581d47254d284813b20f422de8aaca7d9266","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/637dc908b1d28d8be0f5e4f63a5e6ff29212c1e6ac87a9ef5eb61b3579ea1fce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:4 -> audio/generated/it-IT/dialogues/65e4ebf9789909555fbdd103cf12ae1c6ee0dad05a2589d4226fdb7a4afb2af8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a2d76f8-1cb8-5547-800e-b922fdd44fb4', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e60b34c48cf952bdf8992de37797c8228fb718e770426c3041060f8d993b2a20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01a42cb4-8799-5e91-a275-58f97540526e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a2d76f8-1cb8-5547-800e-b922fdd44fb4', 1), 'e60b34c48cf952bdf8992de37797c8228fb718e770426c3041060f8d993b2a20',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/65e4ebf9789909555fbdd103cf12ae1c6ee0dad05a2589d4226fdb7a4afb2af8.mp3', 2220, '2026-09-14 03:26:16.343011', 'f09daca025972cb2f1889d2a81477f7643bb2e9e9438b07b8faa364867070eda', 'validated', '{"audio_key":"65e4ebf9789909555fbdd103cf12ae1c6ee0dad05a2589d4226fdb7a4afb2af8","entity_key":"d_reasons_and_results_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f09daca025972cb2f1889d2a81477f7643bb2e9e9438b07b8faa364867070eda","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/65e4ebf9789909555fbdd103cf12ae1c6ee0dad05a2589d4226fdb7a4afb2af8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:3 -> audio/generated/it-IT/dialogues/661371ee351be7963da13cba60fe97d8967def3acb7a9136f2fedb37737573e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ac05f9b-d156-50ea-9adb-37dddbe333e5', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e62fb3cbc712022ef2f8d6c21c3a4538afc88ccff6431a155422b9c90eed803a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a30551e6-f44a-5692-86cf-b4afb3868375', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ac05f9b-d156-50ea-9adb-37dddbe333e5', 1), 'e62fb3cbc712022ef2f8d6c21c3a4538afc88ccff6431a155422b9c90eed803a',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/661371ee351be7963da13cba60fe97d8967def3acb7a9136f2fedb37737573e5.mp3', 1933, '2026-09-14 03:26:16.884412', '08fa44dd52a5de505cb0da98b69e3855d25197f682c8feb8c4cf2b56e684a940', 'validated', '{"audio_key":"661371ee351be7963da13cba60fe97d8967def3acb7a9136f2fedb37737573e5","entity_key":"d_opinions_and_softening_02:3","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08fa44dd52a5de505cb0da98b69e3855d25197f682c8feb8c4cf2b56e684a940","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/661371ee351be7963da13cba60fe97d8967def3acb7a9136f2fedb37737573e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:2 -> audio/generated/it-IT/dialogues/66ff0c2490e8ede405239e26b7f2d23bba0246dabd2f3ada1e9e29c8f2434a3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8404a6cc-b957-5d26-8487-7fbfeb77481a', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a44f2b9b39ee436f1a31ee798dce8bc33380eb4f78960df4af3aca3e8c32f7aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdbb00a8-f224-5cde-a427-ebc67b0bdddf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8404a6cc-b957-5d26-8487-7fbfeb77481a', 1), 'a44f2b9b39ee436f1a31ee798dce8bc33380eb4f78960df4af3aca3e8c32f7aa',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/66ff0c2490e8ede405239e26b7f2d23bba0246dabd2f3ada1e9e29c8f2434a3e.mp3', 2951, '2026-09-14 03:26:17.501743', '8414d1555abcaba5d87e8e624a9dd29e631cf26fa34024fb8c12701e196f9079', 'validated', '{"audio_key":"66ff0c2490e8ede405239e26b7f2d23bba0246dabd2f3ada1e9e29c8f2434a3e","entity_key":"d_ability_and_permission_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8414d1555abcaba5d87e8e624a9dd29e631cf26fa34024fb8c12701e196f9079","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/66ff0c2490e8ede405239e26b7f2d23bba0246dabd2f3ada1e9e29c8f2434a3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_01:4 -> audio/generated/it-IT/dialogues/678f1c1eaedadb3f010b39bd258048b8043e062602e779d273354576e355c113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3fee22d0-431a-5338-a6ea-cd6cc962616f', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96abfadcf707b0b4e096f55c8c52089e5eca3d7ca2828457ba29c4788bd01cd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca44b0f5-442f-59a3-a12a-539a6820fd6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3fee22d0-431a-5338-a6ea-cd6cc962616f', 1), '96abfadcf707b0b4e096f55c8c52089e5eca3d7ca2828457ba29c4788bd01cd7',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/678f1c1eaedadb3f010b39bd258048b8043e062602e779d273354576e355c113.mp3', 2455, '2026-09-14 03:26:18.031964', '2b1fbe0e4dbe006e08b47a1cb8d48ddf82bc7d6a8319c3377f5dc5b929f2c20f', 'validated', '{"audio_key":"678f1c1eaedadb3f010b39bd258048b8043e062602e779d273354576e355c113","entity_key":"d_a2_weekend_capstone_01:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2b1fbe0e4dbe006e08b47a1cb8d48ddf82bc7d6a8319c3377f5dc5b929f2c20f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/678f1c1eaedadb3f010b39bd258048b8043e062602e779d273354576e355c113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:2 -> audio/generated/it-IT/dialogues/6e9937a8c879d6bf4ad5c6fdc31c330cc1f209a4538c5199cedbef3eb58855aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db0c5dcd-d44f-5709-a626-37102b1f47ed', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77c1d615d502ae32b8288d4207f02b1a477934fb54712ad28cb67e69bd9fbde3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd709233-08ff-58f2-b5f6-baeccf35cba3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db0c5dcd-d44f-5709-a626-37102b1f47ed', 1), '77c1d615d502ae32b8288d4207f02b1a477934fb54712ad28cb67e69bd9fbde3',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6e9937a8c879d6bf4ad5c6fdc31c330cc1f209a4538c5199cedbef3eb58855aa.mp3', 2089, '2026-09-14 03:26:18.544372', 'd2e4fb0ed5807f7fd348563f698f8717b2bc411c035e65521ed5b48d7f363c58', 'validated', '{"audio_key":"6e9937a8c879d6bf4ad5c6fdc31c330cc1f209a4538c5199cedbef3eb58855aa","entity_key":"d_reasons_and_results_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2e4fb0ed5807f7fd348563f698f8717b2bc411c035e65521ed5b48d7f363c58","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/6e9937a8c879d6bf4ad5c6fdc31c330cc1f209a4538c5199cedbef3eb58855aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:2 -> audio/generated/it-IT/dialogues/6ec4dfcaad43e92d940ed706b75847674c132000f85d60739f32d2a677ee3493.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d11ab49c-ddaa-56ea-bb26-f0ac286284af', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ff2f439e68db258fc3168f161e7973171aa84f42a30acbca4306efbd2514f70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('668ceb12-5999-5535-bac9-4ce84f6a4345', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d11ab49c-ddaa-56ea-bb26-f0ac286284af', 1), '6ff2f439e68db258fc3168f161e7973171aa84f42a30acbca4306efbd2514f70',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6ec4dfcaad43e92d940ed706b75847674c132000f85d60739f32d2a677ee3493.mp3', 3160, '2026-09-14 03:26:19.284542', '678412c67e1e36d801ec2bd77d677b33d29a3d00576fd4ce9c49d71c241ca197', 'validated', '{"audio_key":"6ec4dfcaad43e92d940ed706b75847674c132000f85d60739f32d2a677ee3493","entity_key":"d_opinions_and_softening_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"678412c67e1e36d801ec2bd77d677b33d29a3d00576fd4ce9c49d71c241ca197","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/6ec4dfcaad43e92d940ed706b75847674c132000f85d60739f32d2a677ee3493.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:4 -> audio/generated/it-IT/dialogues/722809747a6a0158b6bed4fc2bebda25ce40b1fe555b17a1456054ab285894d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('87de8ed1-eec7-5514-9fe0-bad5ddc1f6bd', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '980d3838e6a8bbae3ff56a8a1e57b1b9067b3e77b3e1aa6f52579dfb20a60d05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c87f20f-f590-5cdd-a237-cf0727b7b734', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('87de8ed1-eec7-5514-9fe0-bad5ddc1f6bd', 1), '980d3838e6a8bbae3ff56a8a1e57b1b9067b3e77b3e1aa6f52579dfb20a60d05',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/722809747a6a0158b6bed4fc2bebda25ce40b1fe555b17a1456054ab285894d5.mp3', 1488, '2026-09-14 03:26:19.583884', 'e3db5a06b3feb8d8c1d33f1a5c35ad06550957d9d048ec5ca0f7883318db791f', 'validated', '{"audio_key":"722809747a6a0158b6bed4fc2bebda25ce40b1fe555b17a1456054ab285894d5","entity_key":"d_comparisons_and_choice_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3db5a06b3feb8d8c1d33f1a5c35ad06550957d9d048ec5ca0f7883318db791f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/722809747a6a0158b6bed4fc2bebda25ce40b1fe555b17a1456054ab285894d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_02:2 -> audio/generated/it-IT/dialogues/733b1a2667b5d609a88b2e1e9697725f08598bd9e8355f5fe99875014a29a5d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a44b6250-ffae-5855-a0bc-1907c0dce24c', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8b059e3e2657b47df89608ff7d5516f445f6d0b1817940d432a359cfffef1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c42df4f-0bea-5866-a86f-bfce4589f250', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a44b6250-ffae-5855-a0bc-1907c0dce24c', 1), 'c8b059e3e2657b47df89608ff7d5516f445f6d0b1817940d432a359cfffef1f7',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/733b1a2667b5d609a88b2e1e9697725f08598bd9e8355f5fe99875014a29a5d6.mp3', 3239, '2026-09-14 03:26:20.478488', '82e781eec6ef94ca6e54cb1ac8b67a618f5697a87e90d2fd30ef8b0af90e629e', 'validated', '{"audio_key":"733b1a2667b5d609a88b2e1e9697725f08598bd9e8355f5fe99875014a29a5d6","entity_key":"d_a2_weekend_capstone_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"82e781eec6ef94ca6e54cb1ac8b67a618f5697a87e90d2fd30ef8b0af90e629e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/733b1a2667b5d609a88b2e1e9697725f08598bd9e8355f5fe99875014a29a5d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:2 -> audio/generated/it-IT/dialogues/77ddd62cff82dcb751a5c799bec8e7f9aede8585be30b8a2bb9b741f920bd632.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d3476ba-0800-5ce0-bafd-5141c7eeb375', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b05629a230b2d7227cbd8d51ecaab0fb709309c5be6385982f60a60fca11080'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53bb9e8a-2093-51c9-bf15-7f00dc6ff8bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d3476ba-0800-5ce0-bafd-5141c7eeb375', 1), '8b05629a230b2d7227cbd8d51ecaab0fb709309c5be6385982f60a60fca11080',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/77ddd62cff82dcb751a5c799bec8e7f9aede8585be30b8a2bb9b741f920bd632.mp3', 2533, '2026-09-14 03:26:20.726675', 'caf09ab33bc6a0e6d6aaf65a718948a290b86e96a543d90de0029f0311934ac9', 'validated', '{"audio_key":"77ddd62cff82dcb751a5c799bec8e7f9aede8585be30b8a2bb9b741f920bd632","entity_key":"d_weather_and_change_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"caf09ab33bc6a0e6d6aaf65a718948a290b86e96a543d90de0029f0311934ac9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/77ddd62cff82dcb751a5c799bec8e7f9aede8585be30b8a2bb9b741f920bd632.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:1 -> audio/generated/it-IT/dialogues/7c418091163fceef1513c67bc4f7e938fbcfbb6734fd98c05b37ed2445925dd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('869cc133-12e9-5212-9800-4ec4421a47e1', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d9a2bec63eef1ca15e79d3ae7f171762f8b6a52c07d68a63ab07124be8d4b14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('697f5f4d-86aa-5d54-80da-0e3bf57aa7ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('869cc133-12e9-5212-9800-4ec4421a47e1', 1), '4d9a2bec63eef1ca15e79d3ae7f171762f8b6a52c07d68a63ab07124be8d4b14',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7c418091163fceef1513c67bc4f7e938fbcfbb6734fd98c05b37ed2445925dd8.mp3', 1436, '2026-09-14 03:26:21.460603', '41cc1cae45e8acf77073f4ebc3f5dc6d01f8a89751d8711671eeb860682bb8a7', 'validated', '{"audio_key":"7c418091163fceef1513c67bc4f7e938fbcfbb6734fd98c05b37ed2445925dd8","entity_key":"d_ability_and_permission_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"41cc1cae45e8acf77073f4ebc3f5dc6d01f8a89751d8711671eeb860682bb8a7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/7c418091163fceef1513c67bc4f7e938fbcfbb6734fd98c05b37ed2445925dd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:1 -> audio/generated/it-IT/dialogues/7d960448e0a005f7b88734a736252de44a2198af59701e5251bbfa10c995b549.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('440f8712-33f5-5933-b6b7-f402fb269842', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fd8442f43e1ecbeac22f02efcaaf3d57f75b02dfe3aff33d21b1524edc3ab87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5d3a810-fb3d-5163-833b-7a8e59111e16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('440f8712-33f5-5933-b6b7-f402fb269842', 1), '5fd8442f43e1ecbeac22f02efcaaf3d57f75b02dfe3aff33d21b1524edc3ab87',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7d960448e0a005f7b88734a736252de44a2198af59701e5251bbfa10c995b549.mp3', 1619, '2026-09-14 03:26:22.121620', '3a78f8496958f45ad3b01b9821e889858807e595e613abc5c640b36170cb1516', 'validated', '{"audio_key":"7d960448e0a005f7b88734a736252de44a2198af59701e5251bbfa10c995b549","entity_key":"d_plans_and_intentions_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"3a78f8496958f45ad3b01b9821e889858807e595e613abc5c640b36170cb1516","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/7d960448e0a005f7b88734a736252de44a2198af59701e5251bbfa10c995b549.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:4 -> audio/generated/it-IT/dialogues/8569dfd8c81c949146e7f261220fc36ff8b5e1758d0b7c69654b3139170300d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38de0c30-f499-57bb-8bb8-30972cda4c66', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ede3a3d1702be4515b929c19779daa8a191745d679005a9a6caa9d539e3df1dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('822432fa-abfb-505e-9a97-780d45b4878d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38de0c30-f499-57bb-8bb8-30972cda4c66', 1), 'ede3a3d1702be4515b929c19779daa8a191745d679005a9a6caa9d539e3df1dd',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8569dfd8c81c949146e7f261220fc36ff8b5e1758d0b7c69654b3139170300d2.mp3', 1985, '2026-09-14 03:26:22.562076', 'b7ab4fd1d94da09d47b5433f9bf4b56a6d6e9558c898932919a57e7cbdb1631a', 'validated', '{"audio_key":"8569dfd8c81c949146e7f261220fc36ff8b5e1758d0b7c69654b3139170300d2","entity_key":"d_past_experiences_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b7ab4fd1d94da09d47b5433f9bf4b56a6d6e9558c898932919a57e7cbdb1631a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/8569dfd8c81c949146e7f261220fc36ff8b5e1758d0b7c69654b3139170300d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:1 -> audio/generated/it-IT/dialogues/8df423b988c9e72a8d27e35fa0e77771e95284536b5115fe0df1715e9eea09f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76dfbc4e-2128-5605-89ac-2bec6775815c', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0b108310599cbd78f12368461b37da9489bef99be33121e9148a9a389c413ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be38fbcf-5161-59e2-9cfb-62067686bd25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76dfbc4e-2128-5605-89ac-2bec6775815c', 1), 'c0b108310599cbd78f12368461b37da9489bef99be33121e9148a9a389c413ce',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8df423b988c9e72a8d27e35fa0e77771e95284536b5115fe0df1715e9eea09f5.mp3', 1933, '2026-09-14 03:26:23.178632', '23a29370a197d7e6ddd868a543ce97c27d483543c26d83ecb37946b4ebdbadd1', 'validated', '{"audio_key":"8df423b988c9e72a8d27e35fa0e77771e95284536b5115fe0df1715e9eea09f5","entity_key":"d_plans_and_intentions_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"23a29370a197d7e6ddd868a543ce97c27d483543c26d83ecb37946b4ebdbadd1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/8df423b988c9e72a8d27e35fa0e77771e95284536b5115fe0df1715e9eea09f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_02:3 -> audio/generated/it-IT/dialogues/8e469ffa6074ab6d5878df0e9c3825985369703d1e37a3342ad0006de94c8ca3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d862fee8-34f1-51dd-bba8-afed6e8c10de', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db9e3fa2e6391a921e097c713bc305b07d2f9948bcbda89edb8fe1fd7c688dda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88126c93-6ecc-5ac0-b78a-14cfa8c9505b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d862fee8-34f1-51dd-bba8-afed6e8c10de', 1), 'db9e3fa2e6391a921e097c713bc305b07d2f9948bcbda89edb8fe1fd7c688dda',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8e469ffa6074ab6d5878df0e9c3825985369703d1e37a3342ad0006de94c8ca3.mp3', 1854, '2026-09-14 03:26:23.663411', '3ef169cbe927c3d3aa1281a29a961eb06f912b191385351d2b2246418e529011', 'validated', '{"audio_key":"8e469ffa6074ab6d5878df0e9c3825985369703d1e37a3342ad0006de94c8ca3","entity_key":"d_a2_weekend_capstone_02:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3ef169cbe927c3d3aa1281a29a961eb06f912b191385351d2b2246418e529011","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/8e469ffa6074ab6d5878df0e9c3825985369703d1e37a3342ad0006de94c8ca3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:1 -> audio/generated/it-IT/dialogues/937931bbd8a75e8b93f7389e9dcf0d1a4a109ee0e8d9804aaafae9109ff8a605.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('129b7a65-bb53-5c03-ba18-ca9a4ac3c137', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a54f4c79b4c6d17e6a324d1f4c5c7a9dbd16a4675cf4f3e51ba56b5b4f60456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66989e08-82cd-5aa8-93a1-f419ad1870ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('129b7a65-bb53-5c03-ba18-ca9a4ac3c137', 1), '1a54f4c79b4c6d17e6a324d1f4c5c7a9dbd16a4675cf4f3e51ba56b5b4f60456',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/937931bbd8a75e8b93f7389e9dcf0d1a4a109ee0e8d9804aaafae9109ff8a605.mp3', 1567, '2026-09-14 03:26:24.218069', 'b0d0a6d4f034ab86e9842e1bfb6179b0d1efba7b97fb6c2f69fb7f81437d8755', 'validated', '{"audio_key":"937931bbd8a75e8b93f7389e9dcf0d1a4a109ee0e8d9804aaafae9109ff8a605","entity_key":"d_weather_and_change_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0d0a6d4f034ab86e9842e1bfb6179b0d1efba7b97fb6c2f69fb7f81437d8755","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/937931bbd8a75e8b93f7389e9dcf0d1a4a109ee0e8d9804aaafae9109ff8a605.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:1 -> audio/generated/it-IT/dialogues/9423fe21e9302e9e0b61ce54c48f7eb22a49b84b5c5813e9c037277f3b17b8aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aff66d57-7276-5591-9142-bcdd866a9853', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bce37829a88c6374be711f0ad7830750381926d52456f08825532d72468caf51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('555e64c0-5fe0-5b2c-9bd6-01828233b9dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aff66d57-7276-5591-9142-bcdd866a9853', 1), 'bce37829a88c6374be711f0ad7830750381926d52456f08825532d72468caf51',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9423fe21e9302e9e0b61ce54c48f7eb22a49b84b5c5813e9c037277f3b17b8aa.mp3', 1567, '2026-09-14 03:26:24.707815', 'a88d81c9eae6ea142acc5099e3032c8e77bf120834181662dd12634f021a2de9', 'validated', '{"audio_key":"9423fe21e9302e9e0b61ce54c48f7eb22a49b84b5c5813e9c037277f3b17b8aa","entity_key":"d_weather_and_change_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a88d81c9eae6ea142acc5099e3032c8e77bf120834181662dd12634f021a2de9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/9423fe21e9302e9e0b61ce54c48f7eb22a49b84b5c5813e9c037277f3b17b8aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:2 -> audio/generated/it-IT/dialogues/9458d99860d2b8652ccb8edb953fcb0d69c05198eab0817e6fa53e27b3500935.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('25c8c3ff-0fa5-520f-8bac-a93b2c551b58', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5018d5ee1074497622d64783c063e8517f145c65a3b8ad3672d951db116b418c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0de67439-f7a0-54a3-8de9-d4c2205ff846', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('25c8c3ff-0fa5-520f-8bac-a93b2c551b58', 1), '5018d5ee1074497622d64783c063e8517f145c65a3b8ad3672d951db116b418c',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9458d99860d2b8652ccb8edb953fcb0d69c05198eab0817e6fa53e27b3500935.mp3', 1384, '2026-09-14 03:26:25.199772', 'ad7580cade1fb7e326fcd8e58a8539e473ee9c8bd1458b0ad92ce8bdbf6bca68', 'validated', '{"audio_key":"9458d99860d2b8652ccb8edb953fcb0d69c05198eab0817e6fa53e27b3500935","entity_key":"d_health_and_advice_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ad7580cade1fb7e326fcd8e58a8539e473ee9c8bd1458b0ad92ce8bdbf6bca68","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9458d99860d2b8652ccb8edb953fcb0d69c05198eab0817e6fa53e27b3500935.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:3 -> audio/generated/it-IT/dialogues/964b94a10ba9053cadf45942842ac600161e6603d34b36769fe7343dbb15ad8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49bc2fda-63b7-5cde-8852-59a90bfec2de', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbe3eb9a04ebcd5f8e85840cb461cb251468b0e0a3c08ab4bb29f2febe09384c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('511904f6-618a-5171-966c-80f5737399f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49bc2fda-63b7-5cde-8852-59a90bfec2de', 1), 'cbe3eb9a04ebcd5f8e85840cb461cb251468b0e0a3c08ab4bb29f2febe09384c',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/964b94a10ba9053cadf45942842ac600161e6603d34b36769fe7343dbb15ad8c.mp3', 1985, '2026-09-14 03:26:25.741579', '4a1477c370559842c6adcfca02f89d3123bd627778d35299c4feefcb5f743ab2', 'validated', '{"audio_key":"964b94a10ba9053cadf45942842ac600161e6603d34b36769fe7343dbb15ad8c","entity_key":"d_health_and_advice_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4a1477c370559842c6adcfca02f89d3123bd627778d35299c4feefcb5f743ab2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/964b94a10ba9053cadf45942842ac600161e6603d34b36769fe7343dbb15ad8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_01:2 -> audio/generated/it-IT/dialogues/9ce4896e2fbea0d7a4b99ba9aa093d86f8d6def0c51fe49491de891736c89fbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e553a2e9-0b0c-5847-827f-e25e1bededb2', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fee15d8546f74ec696a182fce081d8dfe9c16a484a815db7b1d5fe18813668f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae620071-4968-5f1b-b94e-81cae485ec63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e553a2e9-0b0c-5847-827f-e25e1bededb2', 1), '3fee15d8546f74ec696a182fce081d8dfe9c16a484a815db7b1d5fe18813668f',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9ce4896e2fbea0d7a4b99ba9aa093d86f8d6def0c51fe49491de891736c89fbb.mp3', 2638, '2026-09-14 03:26:26.288510', '6142ca7e7dbc981c6308daa93d7c5e8331ec59e8fcef5e3e0e84a6786ca3c0da', 'validated', '{"audio_key":"9ce4896e2fbea0d7a4b99ba9aa093d86f8d6def0c51fe49491de891736c89fbb","entity_key":"d_a2_weekend_capstone_01:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6142ca7e7dbc981c6308daa93d7c5e8331ec59e8fcef5e3e0e84a6786ca3c0da","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/9ce4896e2fbea0d7a4b99ba9aa093d86f8d6def0c51fe49491de891736c89fbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:1 -> audio/generated/it-IT/dialogues/a0c1455be3a8659a5742164188ecffa9b43f6b5c1fb04bbfbada5b4e9036e4aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('563d2a6b-8764-5557-92bd-d918318d281c', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77fe261a2083fbda256987c5069010bc8592223e97d486a38e166f04ecc63ff4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6464066-7ac7-5406-9f62-bb24e827ae5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('563d2a6b-8764-5557-92bd-d918318d281c', 1), '77fe261a2083fbda256987c5069010bc8592223e97d486a38e166f04ecc63ff4',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a0c1455be3a8659a5742164188ecffa9b43f6b5c1fb04bbfbada5b4e9036e4aa.mp3', 1906, '2026-09-14 03:26:26.758817', '1e355f23e13c35a8300f2f0d470f8dd1e7ba3f80647cdf1984fc0316eccb01e8', 'validated', '{"audio_key":"a0c1455be3a8659a5742164188ecffa9b43f6b5c1fb04bbfbada5b4e9036e4aa","entity_key":"d_opinions_and_softening_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"1e355f23e13c35a8300f2f0d470f8dd1e7ba3f80647cdf1984fc0316eccb01e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/a0c1455be3a8659a5742164188ecffa9b43f6b5c1fb04bbfbada5b4e9036e4aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:3 -> audio/generated/it-IT/dialogues/a2499e67ed6a77649bba45f3f930facf089bd87b1d74c11cf0151b1da34fbd3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38afaf47-875b-53d6-9894-d34d0a850c5d', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '074a2ef0403fca09fd513d48c0c44e93c0a9585c2ee8ace07a05a179e30d7f09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ba21eff-508f-5191-9b8f-b2a6314be757', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38afaf47-875b-53d6-9894-d34d0a850c5d', 1), '074a2ef0403fca09fd513d48c0c44e93c0a9585c2ee8ace07a05a179e30d7f09',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a2499e67ed6a77649bba45f3f930facf089bd87b1d74c11cf0151b1da34fbd3c.mp3', 1280, '2026-09-14 03:26:27.284723', '76362748152ba98e8f64db56e0065058a6a36e1dc85a7cc85e5a464e0c3ea96c', 'validated', '{"audio_key":"a2499e67ed6a77649bba45f3f930facf089bd87b1d74c11cf0151b1da34fbd3c","entity_key":"d_weather_and_change_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"76362748152ba98e8f64db56e0065058a6a36e1dc85a7cc85e5a464e0c3ea96c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a2499e67ed6a77649bba45f3f930facf089bd87b1d74c11cf0151b1da34fbd3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:2 -> audio/generated/it-IT/dialogues/a3ba7343f0698d064bfc907069faeac3805a5bcff07ce560ce181f85fd046c53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b4a9702-4a1c-5b3d-b1d0-ff462ae60c9e', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9590ab65751b41b524da9a21d8ddf89e44156c28c9512243e35c9a29025c47b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1188139b-8675-5ec8-a55b-e26c8a243b0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b4a9702-4a1c-5b3d-b1d0-ff462ae60c9e', 1), '9590ab65751b41b524da9a21d8ddf89e44156c28c9512243e35c9a29025c47b1',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a3ba7343f0698d064bfc907069faeac3805a5bcff07ce560ce181f85fd046c53.mp3', 2638, '2026-09-14 03:26:27.892999', '27552cfd5335a3cef1e7fca2bee4c6441933774517989d5b149bbcd3ca914f8c', 'validated', '{"audio_key":"a3ba7343f0698d064bfc907069faeac3805a5bcff07ce560ce181f85fd046c53","entity_key":"d_past_experiences_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"27552cfd5335a3cef1e7fca2bee4c6441933774517989d5b149bbcd3ca914f8c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/a3ba7343f0698d064bfc907069faeac3805a5bcff07ce560ce181f85fd046c53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_02:1 -> audio/generated/it-IT/dialogues/b41cf11700db44719771ede2a920ee6a3885028b565958f2268f2bc8a4d3f4be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ccdfd45-d033-561b-bcc6-7e5e75c4bf71', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1436db720502e55795428b6bded06d2711cd8e8e911d7af1bc7b9faa5cdf28a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40979a0c-43c8-5651-ba79-dbf40da747a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ccdfd45-d033-561b-bcc6-7e5e75c4bf71', 1), '1436db720502e55795428b6bded06d2711cd8e8e911d7af1bc7b9faa5cdf28a8',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b41cf11700db44719771ede2a920ee6a3885028b565958f2268f2bc8a4d3f4be.mp3', 2220, '2026-09-14 03:26:28.395996', 'ee847a9a08b997fc5d631dfd2110d6a9d4414fb9a86152cdaf5a3dd58c7c606a', 'validated', '{"audio_key":"b41cf11700db44719771ede2a920ee6a3885028b565958f2268f2bc8a4d3f4be","entity_key":"d_a2_weekend_capstone_02:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ee847a9a08b997fc5d631dfd2110d6a9d4414fb9a86152cdaf5a3dd58c7c606a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b41cf11700db44719771ede2a920ee6a3885028b565958f2268f2bc8a4d3f4be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:1 -> audio/generated/it-IT/dialogues/b9c8cd571351cca93dbaffe563b18ce55c06aa5c3b8d3fbbb74b64643fa4250d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63583727-b880-570e-8ae4-d090db54e9b5', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abdda41551eb70f12efee0a00a8da7a0a8b41c29eb0d4ada209fc18285494677'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac1c511d-f89b-543e-aa9c-7e86ec29dd38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63583727-b880-570e-8ae4-d090db54e9b5', 1), 'abdda41551eb70f12efee0a00a8da7a0a8b41c29eb0d4ada209fc18285494677',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b9c8cd571351cca93dbaffe563b18ce55c06aa5c3b8d3fbbb74b64643fa4250d.mp3', 1933, '2026-09-14 03:26:29.002142', '52a3d9ac421d34bd775a1e14650b6948cf2d34bc904c8cc7488843e0e936e2e8', 'validated', '{"audio_key":"b9c8cd571351cca93dbaffe563b18ce55c06aa5c3b8d3fbbb74b64643fa4250d","entity_key":"d_ability_and_permission_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"52a3d9ac421d34bd775a1e14650b6948cf2d34bc904c8cc7488843e0e936e2e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b9c8cd571351cca93dbaffe563b18ce55c06aa5c3b8d3fbbb74b64643fa4250d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:4 -> audio/generated/it-IT/dialogues/bdfb0ebcf7a2a4e31e19b7171577c9081a5cde7a2092e0febade9fd16c644f18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('239fb6e4-5679-508c-8362-f727344cd628', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19a0d813e11072df8525e864772b93c741a1c2f4cc839b180e3ba0d551f9679c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20c7dc64-8e8b-5f79-9bc7-8f6bd9b35bcb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('239fb6e4-5679-508c-8362-f727344cd628', 1), '19a0d813e11072df8525e864772b93c741a1c2f4cc839b180e3ba0d551f9679c',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bdfb0ebcf7a2a4e31e19b7171577c9081a5cde7a2092e0febade9fd16c644f18.mp3', 1332, '2026-09-14 03:26:29.368777', '0bedaa45c9455df005286b343ed6cf2368ba48b1e185818ca6eca3a3393b6665', 'validated', '{"audio_key":"bdfb0ebcf7a2a4e31e19b7171577c9081a5cde7a2092e0febade9fd16c644f18","entity_key":"d_past_experiences_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0bedaa45c9455df005286b343ed6cf2368ba48b1e185818ca6eca3a3393b6665","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/bdfb0ebcf7a2a4e31e19b7171577c9081a5cde7a2092e0febade9fd16c644f18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:4 -> audio/generated/it-IT/dialogues/be9bd6ae4e557fa716549c0cec82ebc6f2c957993a0449338f9eddeb0ae034e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56d29e40-dd61-53bd-abbb-5ef103046191', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a8bcca10f1c4fbbd2cc515dbacb1033e42b0f376a982c3932351fc80fde1953'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2b16561-f871-5823-b3c2-d66934d52d2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56d29e40-dd61-53bd-abbb-5ef103046191', 1), '3a8bcca10f1c4fbbd2cc515dbacb1033e42b0f376a982c3932351fc80fde1953',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/be9bd6ae4e557fa716549c0cec82ebc6f2c957993a0449338f9eddeb0ae034e6.mp3', 1253, '2026-09-14 03:26:30.028128', '9aef5be4457352859f3eea4fe697a03b3fae048d6b74421813ed3284ef709bf5', 'validated', '{"audio_key":"be9bd6ae4e557fa716549c0cec82ebc6f2c957993a0449338f9eddeb0ae034e6","entity_key":"d_health_and_advice_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9aef5be4457352859f3eea4fe697a03b3fae048d6b74421813ed3284ef709bf5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/be9bd6ae4e557fa716549c0cec82ebc6f2c957993a0449338f9eddeb0ae034e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:4 -> audio/generated/it-IT/dialogues/bf09581c868798ee5ed64812bb146df5fec2b6989ce415c9b3ae419ea0e8fcad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f0dbf0f-62f5-5fd9-badc-2e20f665ee5a', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e68c10423527fc413013d771d6882dc90950f221d46903c633c9eb3192fe4f06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48b83145-cc66-5bb3-a30c-dfbf250ff21b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f0dbf0f-62f5-5fd9-badc-2e20f665ee5a', 1), 'e68c10423527fc413013d771d6882dc90950f221d46903c633c9eb3192fe4f06',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bf09581c868798ee5ed64812bb146df5fec2b6989ce415c9b3ae419ea0e8fcad.mp3', 1280, '2026-09-14 03:26:30.398189', 'ed4312cbb7270d9fd58f196f1c6ec737fe5b84ec42e9cf4802fecb84615c10ec', 'validated', '{"audio_key":"bf09581c868798ee5ed64812bb146df5fec2b6989ce415c9b3ae419ea0e8fcad","entity_key":"d_opinions_and_softening_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed4312cbb7270d9fd58f196f1c6ec737fe5b84ec42e9cf4802fecb84615c10ec","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/bf09581c868798ee5ed64812bb146df5fec2b6989ce415c9b3ae419ea0e8fcad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:4 -> audio/generated/it-IT/dialogues/bf3621f6978e4c3fcd53b012f90125a7372d1c9374abdd109735c12372f32cdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5008092-8376-5046-9431-7825eae4462a', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bcbc14278ed5869a8828048987b7317a6b4ca4b7671cafda1f6486af488731'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65400c65-2e94-5c70-8b7d-9bbb63635ad6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5008092-8376-5046-9431-7825eae4462a', 1), '68bcbc14278ed5869a8828048987b7317a6b4ca4b7671cafda1f6486af488731',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bf3621f6978e4c3fcd53b012f90125a7372d1c9374abdd109735c12372f32cdf.mp3', 1515, '2026-09-14 03:26:31.016548', 'a712ff94668ad6e0a1412f428ee4d86d9f766284c904179d8e69877775119079', 'validated', '{"audio_key":"bf3621f6978e4c3fcd53b012f90125a7372d1c9374abdd109735c12372f32cdf","entity_key":"d_opinions_and_softening_01:4","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"a712ff94668ad6e0a1412f428ee4d86d9f766284c904179d8e69877775119079","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/bf3621f6978e4c3fcd53b012f90125a7372d1c9374abdd109735c12372f32cdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:3 -> audio/generated/it-IT/dialogues/bfbb959bb8e4374c44cc081670cd5e1d514e2788fd1ae7849339ab7e114cc839.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5045fdf5-af31-5e5c-88a6-75402d070a6a', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03b6ea37ff0bb2b4cff15496b941a30a689f7afa40d2b1dd6282773d19fcf4c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95f4815c-b71e-5c58-9bfe-d67f30033da2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5045fdf5-af31-5e5c-88a6-75402d070a6a', 1), '03b6ea37ff0bb2b4cff15496b941a30a689f7afa40d2b1dd6282773d19fcf4c0',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bfbb959bb8e4374c44cc081670cd5e1d514e2788fd1ae7849339ab7e114cc839.mp3', 1488, '2026-09-14 03:26:31.409666', '58154c295cf3f1791184a9d06d705e7570b2e195f5636a0f64da6e2c41460de2', 'validated', '{"audio_key":"bfbb959bb8e4374c44cc081670cd5e1d514e2788fd1ae7849339ab7e114cc839","entity_key":"d_reasons_and_results_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"58154c295cf3f1791184a9d06d705e7570b2e195f5636a0f64da6e2c41460de2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/bfbb959bb8e4374c44cc081670cd5e1d514e2788fd1ae7849339ab7e114cc839.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:2 -> audio/generated/it-IT/dialogues/c0c10b7859797e05f76c145c6970a5721e4891e8d0e166d5a8eaf9a687901167.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02a1c086-5a92-5298-acdf-8e04d74115b2', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5ec89c1f6e148b7027ad5ab6ad4186e2f226b0d8135915f8599739323e7ad3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b6a0415-561d-5f3b-8c47-5e0b11f0c090', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02a1c086-5a92-5298-acdf-8e04d74115b2', 1), 'd5ec89c1f6e148b7027ad5ab6ad4186e2f226b0d8135915f8599739323e7ad3e',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c0c10b7859797e05f76c145c6970a5721e4891e8d0e166d5a8eaf9a687901167.mp3', 2220, '2026-09-14 03:26:32.232824', '1692294b7080dbf448f354b6559874cfb38965ecc05fe006f52f7329b903cdb7', 'validated', '{"audio_key":"c0c10b7859797e05f76c145c6970a5721e4891e8d0e166d5a8eaf9a687901167","entity_key":"d_plans_and_intentions_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1692294b7080dbf448f354b6559874cfb38965ecc05fe006f52f7329b903cdb7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c0c10b7859797e05f76c145c6970a5721e4891e8d0e166d5a8eaf9a687901167.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:2 -> audio/generated/it-IT/dialogues/c4746a7c030dfaf34199b70a7b4e1e8c762115209ac0f25d554edf09def2a31a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ea97cb9-53ac-50bc-a4c1-9cba54dbe00d', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bacde4361b44cca078da550e268344135a79a2938fdf690aca79d1f29f5bfcfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('622823ce-f20c-5977-873a-aa21f855e925', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ea97cb9-53ac-50bc-a4c1-9cba54dbe00d', 1), 'bacde4361b44cca078da550e268344135a79a2938fdf690aca79d1f29f5bfcfe',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c4746a7c030dfaf34199b70a7b4e1e8c762115209ac0f25d554edf09def2a31a.mp3', 3578, '2026-09-14 03:26:32.612434', '98d2034909a323965cb4822ca2b8ecc123ee4ac0287ce686c393eaa9bafaa91c', 'validated', '{"audio_key":"c4746a7c030dfaf34199b70a7b4e1e8c762115209ac0f25d554edf09def2a31a","entity_key":"d_comparisons_and_choice_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98d2034909a323965cb4822ca2b8ecc123ee4ac0287ce686c393eaa9bafaa91c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/c4746a7c030dfaf34199b70a7b4e1e8c762115209ac0f25d554edf09def2a31a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:3 -> audio/generated/it-IT/dialogues/c57f84a29aca1b7cb78874d6c962e41291f407b0719420739a444bcb29fc884e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c7bb427-b007-59ed-a31e-4a7ac6613e2f', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb007e6dcdbefb3bebb36475e8a981d4a844dd3c42f4a5151392b0fa9b3bc0d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77091678-5d3b-5ad8-8790-106eadf5fe96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c7bb427-b007-59ed-a31e-4a7ac6613e2f', 1), 'fb007e6dcdbefb3bebb36475e8a981d4a844dd3c42f4a5151392b0fa9b3bc0d2',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c57f84a29aca1b7cb78874d6c962e41291f407b0719420739a444bcb29fc884e.mp3', 1985, '2026-09-14 03:26:33.340826', '3ee54d4b51e50f1e1ed426732014afd4cc8946c0c42a6667db874333140e9d17', 'validated', '{"audio_key":"c57f84a29aca1b7cb78874d6c962e41291f407b0719420739a444bcb29fc884e","entity_key":"d_ability_and_permission_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"3ee54d4b51e50f1e1ed426732014afd4cc8946c0c42a6667db874333140e9d17","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c57f84a29aca1b7cb78874d6c962e41291f407b0719420739a444bcb29fc884e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:1 -> audio/generated/it-IT/dialogues/d133dc912946a8386fbf1a6959101f5bf2e3d042819c40af1c686b5de723e9e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4002d4dc-4d2c-5453-8a46-888a385c161a', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5294340e3ace5aa6540b6403f554e4862a49382a0cdfd92dac8c457ed600d40a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a6971e5-25e9-5477-85a3-5c0a8da789b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4002d4dc-4d2c-5453-8a46-888a385c161a', 1), '5294340e3ace5aa6540b6403f554e4862a49382a0cdfd92dac8c457ed600d40a',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d133dc912946a8386fbf1a6959101f5bf2e3d042819c40af1c686b5de723e9e9.mp3', 1488, '2026-09-14 03:26:33.602029', '7c7805fac6773d08ab1438cb13dfeadd238752e7ae785ecf1a7089efb91474b6', 'validated', '{"audio_key":"d133dc912946a8386fbf1a6959101f5bf2e3d042819c40af1c686b5de723e9e9","entity_key":"d_past_experiences_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"7c7805fac6773d08ab1438cb13dfeadd238752e7ae785ecf1a7089efb91474b6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/d133dc912946a8386fbf1a6959101f5bf2e3d042819c40af1c686b5de723e9e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:2 -> audio/generated/it-IT/dialogues/d565cd909b635eab242d5ed3131e62db6950911be05403edc9795f98e2777da5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('913cca96-1305-59c5-abb6-46ade87e5a54', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b66ed446b899351fa7d5da092cad9570768bc36f51fd42380c6b67a0d5581a5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae139ad4-125a-5dae-9b5e-f116ed5d0524', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('913cca96-1305-59c5-abb6-46ade87e5a54', 1), 'b66ed446b899351fa7d5da092cad9570768bc36f51fd42380c6b67a0d5581a5d',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d565cd909b635eab242d5ed3131e62db6950911be05403edc9795f98e2777da5.mp3', 3944, '2026-09-14 03:26:34.563365', 'f04df2ced040a309155cbc9b39517175c66daa577bc240349f2e37f4ef7fbf38', 'validated', '{"audio_key":"d565cd909b635eab242d5ed3131e62db6950911be05403edc9795f98e2777da5","entity_key":"d_travel_and_hotel_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f04df2ced040a309155cbc9b39517175c66daa577bc240349f2e37f4ef7fbf38","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/d565cd909b635eab242d5ed3131e62db6950911be05403edc9795f98e2777da5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:3 -> audio/generated/it-IT/dialogues/d91b8b48308c01904fcc0eb813c712803f72743c54c567c881feb84fc63f5709.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('954a8a45-b374-5a0c-b475-6938a83e3a91', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a97c93f0e8d3ab25dd9b84b4253a1258866869c1c9e2ea722909ae837d9e2f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39e95740-edf4-536e-b4a8-675a68762bd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('954a8a45-b374-5a0c-b475-6938a83e3a91', 1), '6a97c93f0e8d3ab25dd9b84b4253a1258866869c1c9e2ea722909ae837d9e2f2',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d91b8b48308c01904fcc0eb813c712803f72743c54c567c881feb84fc63f5709.mp3', 2768, '2026-09-14 03:26:34.690653', '6907572403489ed0bc5190966247d83c3d068ba1d7ed511971b376ff37a2912f', 'validated', '{"audio_key":"d91b8b48308c01904fcc0eb813c712803f72743c54c567c881feb84fc63f5709","entity_key":"d_travel_and_hotel_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"6907572403489ed0bc5190966247d83c3d068ba1d7ed511971b376ff37a2912f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/d91b8b48308c01904fcc0eb813c712803f72743c54c567c881feb84fc63f5709.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:4 -> audio/generated/it-IT/dialogues/d98bbe2a092ebb5390227ef3a089755b67c81c8c24c1747ef06f36d83ccf16b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7815490d-aeee-5d61-aaa4-8659b0bb8ccd', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9f0cbdf361fefd6718b41135cc7d3495c916c193426dfa2bad0849557c3157b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98d6c3dd-741c-5efd-8613-fc3ac095bbc9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7815490d-aeee-5d61-aaa4-8659b0bb8ccd', 1), 'c9f0cbdf361fefd6718b41135cc7d3495c916c193426dfa2bad0849557c3157b',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d98bbe2a092ebb5390227ef3a089755b67c81c8c24c1747ef06f36d83ccf16b8.mp3', 1671, '2026-09-14 03:26:35.562515', '6a565d7173d22f9bb26040b49e161af60f32aead3b0318669cac70e6145743c2', 'validated', '{"audio_key":"d98bbe2a092ebb5390227ef3a089755b67c81c8c24c1747ef06f36d83ccf16b8","entity_key":"d_weather_and_change_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6a565d7173d22f9bb26040b49e161af60f32aead3b0318669cac70e6145743c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/d98bbe2a092ebb5390227ef3a089755b67c81c8c24c1747ef06f36d83ccf16b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:3 -> audio/generated/it-IT/dialogues/de99606b773e782855cfc7ce16b1be809790fd8bdcd4b2d56c30d7f9ba66c28c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('edbd3b7f-cb7d-5073-8bdb-d7dbc1834c72', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a3cf0a27d3ea129852b1782f16affa133b801317b88c35d8ac5598ed4e19abf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f006991-212b-5cfd-8889-b8d25aa77093', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('edbd3b7f-cb7d-5073-8bdb-d7dbc1834c72', 1), '6a3cf0a27d3ea129852b1782f16affa133b801317b88c35d8ac5598ed4e19abf',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/de99606b773e782855cfc7ce16b1be809790fd8bdcd4b2d56c30d7f9ba66c28c.mp3', 1436, '2026-09-14 03:26:35.862045', 'baef3a0d863a16da64c0629492d191d8807c365ce43c0619711ebeff50e14bb1', 'validated', '{"audio_key":"de99606b773e782855cfc7ce16b1be809790fd8bdcd4b2d56c30d7f9ba66c28c","entity_key":"d_plans_and_intentions_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"baef3a0d863a16da64c0629492d191d8807c365ce43c0619711ebeff50e14bb1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/de99606b773e782855cfc7ce16b1be809790fd8bdcd4b2d56c30d7f9ba66c28c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:3 -> audio/generated/it-IT/dialogues/e8160644ca2a196cfe6b110210bc539906db1ab18145b5b68fcd5014e5ad956f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('efee3209-5ee4-50b9-8808-720f905dbf22', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdce87721b6fdc0c24a47611db20d039abd2c494d88e2032ca0dd09948a5ecef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fca8990-3dbb-5002-9e39-632e823628c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('efee3209-5ee4-50b9-8808-720f905dbf22', 1), 'cdce87721b6fdc0c24a47611db20d039abd2c494d88e2032ca0dd09948a5ecef',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e8160644ca2a196cfe6b110210bc539906db1ab18145b5b68fcd5014e5ad956f.mp3', 1933, '2026-09-14 03:26:36.651853', 'c5287c0870f4be26018fd36156ebd34de3b67382dd66a626b9691773c2e8aaba', 'validated', '{"audio_key":"e8160644ca2a196cfe6b110210bc539906db1ab18145b5b68fcd5014e5ad956f","entity_key":"d_opinions_and_softening_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"c5287c0870f4be26018fd36156ebd34de3b67382dd66a626b9691773c2e8aaba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e8160644ca2a196cfe6b110210bc539906db1ab18145b5b68fcd5014e5ad956f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:2 -> audio/generated/it-IT/dialogues/eacda7dba11d7990511daefb17402c09c173d178da7b7f95f95ea5127580a8c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb4549b6-7a84-5858-b93c-c170b3f519ca', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31e3029eb63cd1eac42be14d41bc35075daf2450fd77575b8c6fb942f71f1a50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ea7672e-2c86-5e15-b02d-9e6f99fbb8de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb4549b6-7a84-5858-b93c-c170b3f519ca', 1), '31e3029eb63cd1eac42be14d41bc35075daf2450fd77575b8c6fb942f71f1a50',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/eacda7dba11d7990511daefb17402c09c173d178da7b7f95f95ea5127580a8c5.mp3', 2586, '2026-09-14 03:26:36.982973', '3253a9cae9fdf19436eda1622a2e3b48e712d6802cacc707abdc224d1682b745', 'validated', '{"audio_key":"eacda7dba11d7990511daefb17402c09c173d178da7b7f95f95ea5127580a8c5","entity_key":"d_opinions_and_softening_01:2","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"3253a9cae9fdf19436eda1622a2e3b48e712d6802cacc707abdc224d1682b745","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/eacda7dba11d7990511daefb17402c09c173d178da7b7f95f95ea5127580a8c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:4 -> audio/generated/it-IT/dialogues/edc0de77f0a0bdd9937b66f58f566442b306ad8c2f16b2ff046632ae303f55bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bc3aaa4-4d4b-59d9-8dac-f4f8a1c524fe', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45bbb28736bf71a31d2e368bccdd8a8144f7275d266c7fa055be0302907f0691'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5861245d-3fa1-5789-96d4-6078ff8d2d96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bc3aaa4-4d4b-59d9-8dac-f4f8a1c524fe', 1), '45bbb28736bf71a31d2e368bccdd8a8144f7275d266c7fa055be0302907f0691',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/edc0de77f0a0bdd9937b66f58f566442b306ad8c2f16b2ff046632ae303f55bb.mp3', 966, '2026-09-14 03:26:37.596110', '86d32e60908f0ac15fa4f860cd91add0b05c0138d5b781078bb163d5b44106cf', 'validated', '{"audio_key":"edc0de77f0a0bdd9937b66f58f566442b306ad8c2f16b2ff046632ae303f55bb","entity_key":"d_plans_and_intentions_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"86d32e60908f0ac15fa4f860cd91add0b05c0138d5b781078bb163d5b44106cf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/edc0de77f0a0bdd9937b66f58f566442b306ad8c2f16b2ff046632ae303f55bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:3 -> audio/generated/it-IT/dialogues/f3f58723631b1b91a79e773a3924e266abe75c1b4b73230d1ccba422f0c3ed31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f444d32-a51d-56a3-a48c-ab94cd33ef0b', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5960cfeeb5b3b8e004018ac18cac65f09679684ae56c61437af26b15aadc9e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc8c80dd-1b9c-5f52-bd63-7f06ca1cec25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f444d32-a51d-56a3-a48c-ab94cd33ef0b', 1), 'c5960cfeeb5b3b8e004018ac18cac65f09679684ae56c61437af26b15aadc9e4',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f3f58723631b1b91a79e773a3924e266abe75c1b4b73230d1ccba422f0c3ed31.mp3', 2351, '2026-09-14 03:26:38.079952', '94533696ad4f06ee0324706d8091a6ede0548b0c1555a5aa10fcecf9ba41d4d1', 'validated', '{"audio_key":"f3f58723631b1b91a79e773a3924e266abe75c1b4b73230d1ccba422f0c3ed31","entity_key":"d_travel_and_hotel_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"94533696ad4f06ee0324706d8091a6ede0548b0c1555a5aa10fcecf9ba41d4d1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f3f58723631b1b91a79e773a3924e266abe75c1b4b73230d1ccba422f0c3ed31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:1 -> audio/generated/it-IT/dialogues/f87bc8ff512db8346612bcd12a4d586d6b99fe744b3b207fc4cd6ca0b9153539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('effd79ab-34c7-5f4b-9b10-ef2475a2e7aa', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3fa5698e3abb415f52be7d673bd00f866bc28266d6d2083056cf6be9c702a16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cf620f2-88ba-522e-98bd-4c7ebeeefad2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('effd79ab-34c7-5f4b-9b10-ef2475a2e7aa', 1), 'd3fa5698e3abb415f52be7d673bd00f866bc28266d6d2083056cf6be9c702a16',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f87bc8ff512db8346612bcd12a4d586d6b99fe744b3b207fc4cd6ca0b9153539.mp3', 1567, '2026-09-14 03:26:38.608874', '53b88fa15e832731adf5ed4171fbf9ff2bf51d19131eed811e0112ced2675c18', 'validated', '{"audio_key":"f87bc8ff512db8346612bcd12a4d586d6b99fe744b3b207fc4cd6ca0b9153539","entity_key":"d_comparisons_and_choice_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"53b88fa15e832731adf5ed4171fbf9ff2bf51d19131eed811e0112ced2675c18","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f87bc8ff512db8346612bcd12a4d586d6b99fe744b3b207fc4cd6ca0b9153539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_weekend_capstone_02:4 -> audio/generated/it-IT/dialogues/f9521d6b51ef042a831b9ed6fb0b3eb97d55fdbfd40bb0e8b823fa08b68edd77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('89c1f29a-e3fe-5f30-93ea-bcd27863cae3', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_weekend_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8cea5421fb2f78e16bbc797368ba4c49140db061cdb66eb79ddaa5a59291f6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('660c304e-a1c1-5b42-90a5-ddbe6bc887b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('89c1f29a-e3fe-5f30-93ea-bcd27863cae3', 1), 'e8cea5421fb2f78e16bbc797368ba4c49140db061cdb66eb79ddaa5a59291f6f',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f9521d6b51ef042a831b9ed6fb0b3eb97d55fdbfd40bb0e8b823fa08b68edd77.mp3', 2168, '2026-09-14 03:26:39.145431', 'a6460684e000a4640e8e476e34e34faf20ec45ed4f9a087f5cc2cbe6560ccab0', 'validated', '{"audio_key":"f9521d6b51ef042a831b9ed6fb0b3eb97d55fdbfd40bb0e8b823fa08b68edd77","entity_key":"d_a2_weekend_capstone_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a6460684e000a4640e8e476e34e34faf20ec45ed4f9a087f5cc2cbe6560ccab0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f9521d6b51ef042a831b9ed6fb0b3eb97d55fdbfd40bb0e8b823fa08b68edd77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:2 -> audio/generated/it-IT/dialogues/fc9f5c7f17dc767b7e77542f6e8ffdd488a85e1d6971c7a8701829b40d2d3bc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d6256b1-d389-5c41-825e-ee7faab90dfb', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76f73f588fdd3827777833be59bbe3e07c724df9c9d70a77b6e87b71a4432904'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f2fe7d6-c9f0-5940-9321-b6ae81e63cf5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d6256b1-d389-5c41-825e-ee7faab90dfb', 1), '76f73f588fdd3827777833be59bbe3e07c724df9c9d70a77b6e87b71a4432904',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fc9f5c7f17dc767b7e77542f6e8ffdd488a85e1d6971c7a8701829b40d2d3bc5.mp3', 3944, '2026-09-14 03:26:39.896494', '0d3cee24002949de0af58aeb408ea526d421ca34a24bf249c9b353863f8cb4ad', 'validated', '{"audio_key":"fc9f5c7f17dc767b7e77542f6e8ffdd488a85e1d6971c7a8701829b40d2d3bc5","entity_key":"d_reasons_and_results_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d3cee24002949de0af58aeb408ea526d421ca34a24bf249c9b353863f8cb4ad","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/fc9f5c7f17dc767b7e77542f6e8ffdd488a85e1d6971c7a8701829b40d2d3bc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:3 -> audio/generated/it-IT/dialogues/ff28b18dde4b0e0617f3d6a112f2b75ff56c5304345493bf1e7f7a83d658f1c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24dc88cc-d993-59bf-964f-fd249f4ac851', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5e2a727def543507ad2f161acf29ea9be438a02092a26165278843d1acf3fab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d23ca3d8-435a-5d2d-bbb2-3ea72eb4c33f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24dc88cc-d993-59bf-964f-fd249f4ac851', 1), 'd5e2a727def543507ad2f161acf29ea9be438a02092a26165278843d1acf3fab',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ff28b18dde4b0e0617f3d6a112f2b75ff56c5304345493bf1e7f7a83d658f1c7.mp3', 1854, '2026-09-14 03:26:40.205390', 'fa73da71cf2b9fded8cf27672f44e3144292fc9ef3035e1b4b83a8c7b6540b8a', 'validated', '{"audio_key":"ff28b18dde4b0e0617f3d6a112f2b75ff56c5304345493bf1e7f7a83d658f1c7","entity_key":"d_comparisons_and_choice_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"fa73da71cf2b9fded8cf27672f44e3144292fc9ef3035e1b4b83a8c7b6540b8a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/ff28b18dde4b0e0617f3d6a112f2b75ff56c5304345493bf1e7f7a83d658f1c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_05 -> audio/generated/it-IT/lexical/1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1695bb0c-217f-55d0-814a-7328f901b2ec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0806c51f044ea4be523e93b705a884decdd905acc85ab92014a401d0fb92d93e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f5bd3ca-e9c4-5cbd-ab7b-32aa90733d58', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1695bb0c-217f-55d0-814a-7328f901b2ec', 1), '0806c51f044ea4be523e93b705a884decdd905acc85ab92014a401d0fb92d93e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22.mp3', 1071, '2026-09-14 03:26:40.879005', '6a3bb7028cf747d79a4ce464f53e5596cab4b554129cc760bb57aed1d2a22c29', 'validated', '{"audio_key":"1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22","entity_key":"lx_plans_and_intentions_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6a3bb7028cf747d79a4ce464f53e5596cab4b554129cc760bb57aed1d2a22c29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_05 -> audio/generated/it-IT/lexical/1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d8b66ce6-7906-5eec-8034-1f123191849b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0806c51f044ea4be523e93b705a884decdd905acc85ab92014a401d0fb92d93e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d816fc9-624f-5d15-b7e8-7d356048c3ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d8b66ce6-7906-5eec-8034-1f123191849b', 1), '0806c51f044ea4be523e93b705a884decdd905acc85ab92014a401d0fb92d93e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22.mp3', 1071, '2026-09-14 03:26:40.879005', '6a3bb7028cf747d79a4ce464f53e5596cab4b554129cc760bb57aed1d2a22c29', 'validated', '{"audio_key":"1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22","entity_key":"wf_plans_and_intentions_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6a3bb7028cf747d79a4ce464f53e5596cab4b554129cc760bb57aed1d2a22c29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1975e015c9a250851d70d69247c1a25bbed960630a09b850000564774b66ff22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_01 -> audio/generated/it-IT/lexical/1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d7eabda0-47d4-5505-9ac6-fd5f7794eee1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '224acae9bfd9dcd28d71d8e6c8689a1f2f80a27d32e5225fee554bd8bc3d0449'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29cda0e5-3481-513b-912f-6f3cfbaef558', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d7eabda0-47d4-5505-9ac6-fd5f7794eee1', 1), '224acae9bfd9dcd28d71d8e6c8689a1f2f80a27d32e5225fee554bd8bc3d0449',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b.mp3', 1071, '2026-09-14 03:26:41.161935', '62ff07cfdf4f95400f4fe3ebc1db6a27d34832a8ea5cdb543556ecdd56a4d715', 'validated', '{"audio_key":"1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b","entity_key":"lx_weather_and_change_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"62ff07cfdf4f95400f4fe3ebc1db6a27d34832a8ea5cdb543556ecdd56a4d715","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_01 -> audio/generated/it-IT/lexical/1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('58c8cce3-5ea7-5725-9c7f-90a6f7507b0e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '224acae9bfd9dcd28d71d8e6c8689a1f2f80a27d32e5225fee554bd8bc3d0449'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2baada83-6b33-5779-9748-e6478708ed4e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('58c8cce3-5ea7-5725-9c7f-90a6f7507b0e', 1), '224acae9bfd9dcd28d71d8e6c8689a1f2f80a27d32e5225fee554bd8bc3d0449',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b.mp3', 1071, '2026-09-14 03:26:41.161935', '62ff07cfdf4f95400f4fe3ebc1db6a27d34832a8ea5cdb543556ecdd56a4d715', 'validated', '{"audio_key":"1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b","entity_key":"wf_weather_and_change_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"62ff07cfdf4f95400f4fe3ebc1db6a27d34832a8ea5cdb543556ecdd56a4d715","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1a54f3b8e81946e1b653df539cc213c3515bb8745f310c9e160f3a134110367b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_weekend_capstone_03 -> audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0071a2de-79ee-5ccc-8c7e-e39ae043c92b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_weekend_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ffd6013-d7f9-5e16-8488-b34464e9ffdd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0071a2de-79ee-5ccc-8c7e-e39ae043c92b', 1), '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3', 1253, '2026-09-14 03:26:41.858236', 'c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d', 'validated', '{"audio_key":"1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97","entity_key":"lx_a2_weekend_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_weekend_capstone_03 -> audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6227eb66-1b6d-5a1d-a679-767af9bd2f8c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_weekend_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('283a58af-9c96-5c48-a7dd-64b53a655d7e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6227eb66-1b6d-5a1d-a679-767af9bd2f8c', 1), '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3', 1253, '2026-09-14 03:26:41.858236', 'c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d', 'validated', '{"audio_key":"1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97","entity_key":"wf_a2_weekend_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_06 -> audio/generated/it-IT/lexical/221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0e9e32d-5925-514d-8a1e-254d0e1168b8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d5e8656cfc079a60abc9e360508a3f1b824f5372aac6a0a9aa18dfacb652f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79b9be66-f295-58c3-8834-9fc4c38bffd8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0e9e32d-5925-514d-8a1e-254d0e1168b8', 1), 'f2d5e8656cfc079a60abc9e360508a3f1b824f5372aac6a0a9aa18dfacb652f7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b.mp3', 966, '2026-09-14 03:26:42.128431', 'eaa4b1d8357637574b96c3150bf833a678b4fc27d19444bc610217185bbf64b1', 'validated', '{"audio_key":"221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b","entity_key":"lx_health_and_advice_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eaa4b1d8357637574b96c3150bf833a678b4fc27d19444bc610217185bbf64b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_06 -> audio/generated/it-IT/lexical/221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9b0761e7-a86d-58c2-9fed-f8c28b7c326d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d5e8656cfc079a60abc9e360508a3f1b824f5372aac6a0a9aa18dfacb652f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47442597-397d-5b92-9f3c-351647e2f542', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9b0761e7-a86d-58c2-9fed-f8c28b7c326d', 1), 'f2d5e8656cfc079a60abc9e360508a3f1b824f5372aac6a0a9aa18dfacb652f7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b.mp3', 966, '2026-09-14 03:26:42.128431', 'eaa4b1d8357637574b96c3150bf833a678b4fc27d19444bc610217185bbf64b1', 'validated', '{"audio_key":"221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b","entity_key":"wf_health_and_advice_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eaa4b1d8357637574b96c3150bf833a678b4fc27d19444bc610217185bbf64b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/221309895bb6d17341d004cf5e63305662a2d5be54d103b4307c3cb9ef22565b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_weekend_capstone_04 -> audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5f15456-93da-5f68-887e-c8344a2c2b86', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_weekend_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c795cfb3-cae2-56e5-b18e-dcbc7835053d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5f15456-93da-5f68-887e-c8344a2c2b86', 1), '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3', 1097, '2026-09-14 03:26:42.853055', '52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a', 'validated', '{"audio_key":"2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b","entity_key":"lx_a2_weekend_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_weekend_capstone_04 -> audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a345880-34e2-58ac-a536-99726c0338ad', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_weekend_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37aaff3f-f1a9-582a-b992-4354d7b7905d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a345880-34e2-58ac-a536-99726c0338ad', 1), '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3', 1097, '2026-09-14 03:26:42.853055', '52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a', 'validated', '{"audio_key":"2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b","entity_key":"wf_a2_weekend_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_02 -> audio/generated/it-IT/lexical/26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9979c20-4de4-5444-9d8a-029c3a41701e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b9c8acadd9f05997432738a1e38fa9561a0e781c39aba14fac7adee104559b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7a6d98e-3a97-5263-9fa2-a3f0a94e28ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9979c20-4de4-5444-9d8a-029c3a41701e', 1), '0b9c8acadd9f05997432738a1e38fa9561a0e781c39aba14fac7adee104559b1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765.mp3', 1018, '2026-09-14 03:26:43.101057', 'c8f247b174401f13be848313e411214a4b24eaa39cf88961e4fb09beeb639117', 'validated', '{"audio_key":"26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765","entity_key":"lx_weather_and_change_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c8f247b174401f13be848313e411214a4b24eaa39cf88961e4fb09beeb639117","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_02 -> audio/generated/it-IT/lexical/26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb8c8e6c-47d9-59f5-b7ec-86ec0b7d24cb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b9c8acadd9f05997432738a1e38fa9561a0e781c39aba14fac7adee104559b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('557d928d-862b-5ff8-b0dc-25b531a684f9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb8c8e6c-47d9-59f5-b7ec-86ec0b7d24cb', 1), '0b9c8acadd9f05997432738a1e38fa9561a0e781c39aba14fac7adee104559b1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765.mp3', 1018, '2026-09-14 03:26:43.101057', 'c8f247b174401f13be848313e411214a4b24eaa39cf88961e4fb09beeb639117', 'validated', '{"audio_key":"26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765","entity_key":"wf_weather_and_change_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c8f247b174401f13be848313e411214a4b24eaa39cf88961e4fb09beeb639117","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/26214c7e2941e9dd1c3df7771dd37904d18f69d89701fc83e971a2dfe7258765.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_02 -> audio/generated/it-IT/lexical/27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e46e1123-d3e6-56c8-a262-9f63868a25c4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2588a4c05fe8ae141c521973c72561712e9e0a85c4f6a3856cad2e8fc2a45d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a5677a2-6c2f-5fe9-9743-51357cfc44f3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e46e1123-d3e6-56c8-a262-9f63868a25c4', 1), '2588a4c05fe8ae141c521973c72561712e9e0a85c4f6a3856cad2e8fc2a45d8a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6.mp3', 1149, '2026-09-14 03:26:43.968904', 'cf5a242143698c521fb79980d7801219dff3a0e27e8f1f2f4867ee821680d7e7', 'validated', '{"audio_key":"27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6","entity_key":"lx_opinions_and_softening_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cf5a242143698c521fb79980d7801219dff3a0e27e8f1f2f4867ee821680d7e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_02 -> audio/generated/it-IT/lexical/27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1e9e97bb-32e1-5a5a-ac14-ba5746dee5db', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2588a4c05fe8ae141c521973c72561712e9e0a85c4f6a3856cad2e8fc2a45d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a334bd54-5113-5095-8a44-a2e299fa7354', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1e9e97bb-32e1-5a5a-ac14-ba5746dee5db', 1), '2588a4c05fe8ae141c521973c72561712e9e0a85c4f6a3856cad2e8fc2a45d8a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6.mp3', 1149, '2026-09-14 03:26:43.968904', 'cf5a242143698c521fb79980d7801219dff3a0e27e8f1f2f4867ee821680d7e7', 'validated', '{"audio_key":"27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6","entity_key":"wf_opinions_and_softening_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cf5a242143698c521fb79980d7801219dff3a0e27e8f1f2f4867ee821680d7e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/27eb30807f1cea17ff32a176ecc8f5287e0335397662f69183b093034bb245d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_weekend_capstone_05 -> audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('95e7f139-af88-59b0-9079-d6076765db9e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_weekend_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('973f935b-437d-5950-bb8e-d9d4f8fedd07', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('95e7f139-af88-59b0-9079-d6076765db9e', 1), '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3', 1201, '2026-09-14 03:26:44.075541', '7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a', 'validated', '{"audio_key":"2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862","entity_key":"lx_a2_weekend_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_weekend_capstone_05 -> audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2d991fdc-c6f9-5054-a20f-4343a691a4d4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_weekend_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c04b040f-0cb7-56a1-884b-df0834864447', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2d991fdc-c6f9-5054-a20f-4343a691a4d4', 1), '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3', 1201, '2026-09-14 03:26:44.075541', '7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a', 'validated', '{"audio_key":"2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862","entity_key":"wf_a2_weekend_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_05 -> audio/generated/it-IT/lexical/2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6443634e-6ec6-5d1f-9192-c49dacea3d0f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79e3aaf149e1708a41f88328f4ee41af38a0d0f37633ed7a965c8e2afd5e75f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39ff2e31-4958-500f-84f3-6fe3fe6bc48c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6443634e-6ec6-5d1f-9192-c49dacea3d0f', 1), '79e3aaf149e1708a41f88328f4ee41af38a0d0f37633ed7a965c8e2afd5e75f9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d.mp3', 1149, '2026-09-14 03:26:44.944293', '83217f9e55508ca6b3606467e4b3a48dad7d04745cd7e091f4e729c473fa23f2', 'validated', '{"audio_key":"2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d","entity_key":"lx_health_and_advice_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"83217f9e55508ca6b3606467e4b3a48dad7d04745cd7e091f4e729c473fa23f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_05 -> audio/generated/it-IT/lexical/2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0057c3e7-3e5d-515d-9433-47064ade2e6c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79e3aaf149e1708a41f88328f4ee41af38a0d0f37633ed7a965c8e2afd5e75f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a3325b0-9595-5b19-9272-17075a7b3347', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0057c3e7-3e5d-515d-9433-47064ade2e6c', 1), '79e3aaf149e1708a41f88328f4ee41af38a0d0f37633ed7a965c8e2afd5e75f9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d.mp3', 1149, '2026-09-14 03:26:44.944293', '83217f9e55508ca6b3606467e4b3a48dad7d04745cd7e091f4e729c473fa23f2', 'validated', '{"audio_key":"2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d","entity_key":"wf_health_and_advice_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"83217f9e55508ca6b3606467e4b3a48dad7d04745cd7e091f4e729c473fa23f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2efbbdf3d1767ef3aa3d3d098c2984c24ade62bc87174c6f62cc1f4f5b3f619d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_01 -> audio/generated/it-IT/lexical/310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e9d9cf5-595a-548b-88e3-55614bc9a93e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3613078ded7658be15544f634780cf1b8a7027ceea8982ea53bc89e682d5fbc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10602bb4-0c92-5d43-9d07-79a467cd3716', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e9d9cf5-595a-548b-88e3-55614bc9a93e', 1), '3613078ded7658be15544f634780cf1b8a7027ceea8982ea53bc89e682d5fbc6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450.mp3', 1332, '2026-09-14 03:26:45.045956', 'a13ccae42a9bdcbfe85a1428c5847dd5b8a0602e8ed6ae4f43f06b86dfd1574a', 'validated', '{"audio_key":"310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450","entity_key":"lx_travel_and_hotel_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a13ccae42a9bdcbfe85a1428c5847dd5b8a0602e8ed6ae4f43f06b86dfd1574a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_01 -> audio/generated/it-IT/lexical/310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc03549e-7e8e-525d-a2e7-3b6198ecdc3d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3613078ded7658be15544f634780cf1b8a7027ceea8982ea53bc89e682d5fbc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('736ff81d-7ed8-5003-9a6e-21ac5fba06f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc03549e-7e8e-525d-a2e7-3b6198ecdc3d', 1), '3613078ded7658be15544f634780cf1b8a7027ceea8982ea53bc89e682d5fbc6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450.mp3', 1332, '2026-09-14 03:26:45.045956', 'a13ccae42a9bdcbfe85a1428c5847dd5b8a0602e8ed6ae4f43f06b86dfd1574a', 'validated', '{"audio_key":"310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450","entity_key":"wf_travel_and_hotel_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a13ccae42a9bdcbfe85a1428c5847dd5b8a0602e8ed6ae4f43f06b86dfd1574a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/310d76cf8db3a9992abe5bb085a94aad5a141f1ceb0ae5bc159b993bacdd3450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_weekend_capstone_02 -> audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2bad7d70-398e-5fd1-bf22-d6ac1dc79bdc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_weekend_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55cbe465-ebce-5e95-b496-b13be34d0eb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2bad7d70-398e-5fd1-bf22-d6ac1dc79bdc', 1), '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3', 1097, '2026-09-14 03:26:45.905105', 'f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7', 'validated', '{"audio_key":"319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6","entity_key":"lx_a2_weekend_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_weekend_capstone_02 -> audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2923ccbf-9ff2-5709-8ecc-3e89f965d3f9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_weekend_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c83776eb-040e-58e6-8784-b007e7a25b6b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2923ccbf-9ff2-5709-8ecc-3e89f965d3f9', 1), '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3', 1097, '2026-09-14 03:26:45.905105', 'f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7', 'validated', '{"audio_key":"319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6","entity_key":"wf_a2_weekend_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_04 -> audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2bad7d70-398e-5fd1-bf22-d6ac1dc79bdc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55cbe465-ebce-5e95-b496-b13be34d0eb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2bad7d70-398e-5fd1-bf22-d6ac1dc79bdc', 1), '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3', 1097, '2026-09-14 03:26:45.905105', 'f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7', 'validated', '{"audio_key":"319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6","entity_key":"lx_weather_and_change_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_04 -> audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0e6d711-3501-5ffb-a8dc-b2b7e0babe77', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03bf216b-0ece-52be-9464-27ce03a5a70c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0e6d711-3501-5ffb-a8dc-b2b7e0babe77', 1), '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3', 1097, '2026-09-14 03:26:45.905105', 'f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7', 'validated', '{"audio_key":"319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6","entity_key":"wf_weather_and_change_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_05 -> audio/generated/it-IT/lexical/325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4e847783-838f-5194-967e-ebacd317a02b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da15bb00b5edb7b4bc83838482b5772dc2bf505cdd31ab6362497847f3e9c737'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99914982-0f48-57a1-a723-2dee8d2e8e06', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4e847783-838f-5194-967e-ebacd317a02b', 1), 'da15bb00b5edb7b4bc83838482b5772dc2bf505cdd31ab6362497847f3e9c737',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8.mp3', 1201, '2026-09-14 03:26:46.040624', '425acad7debb25a3a18f7401396cd96f71265e8e79a4c5f3087d5da30ba6cad2', 'validated', '{"audio_key":"325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8","entity_key":"lx_opinions_and_softening_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"425acad7debb25a3a18f7401396cd96f71265e8e79a4c5f3087d5da30ba6cad2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_05 -> audio/generated/it-IT/lexical/325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('70f3f88e-21f5-5bf9-91d0-d3652a38eb2a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da15bb00b5edb7b4bc83838482b5772dc2bf505cdd31ab6362497847f3e9c737'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('539ce521-fc5a-5f82-a746-88f1add73368', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('70f3f88e-21f5-5bf9-91d0-d3652a38eb2a', 1), 'da15bb00b5edb7b4bc83838482b5772dc2bf505cdd31ab6362497847f3e9c737',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8.mp3', 1201, '2026-09-14 03:26:46.040624', '425acad7debb25a3a18f7401396cd96f71265e8e79a4c5f3087d5da30ba6cad2', 'validated', '{"audio_key":"325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8","entity_key":"wf_opinions_and_softening_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"425acad7debb25a3a18f7401396cd96f71265e8e79a4c5f3087d5da30ba6cad2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/325c5f22f1b3175b081083e5fefc38cbce1b41d9aa168a4bc1641f84e4fa28a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_01 -> audio/generated/it-IT/lexical/3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0fe3f8b-cc0d-5107-9043-88b38be90794', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c51e5efecc0d16d2961bd6c1cb8b6078cb9bcdd2b6259edb8211bf6f4bdd3567'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b51a4ef3-6520-5c7d-a69c-fac9b5b2de4e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0fe3f8b-cc0d-5107-9043-88b38be90794', 1), 'c51e5efecc0d16d2961bd6c1cb8b6078cb9bcdd2b6259edb8211bf6f4bdd3567',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141.mp3', 966, '2026-09-14 03:26:46.875099', '2036523c19c0f1ca616a4499049b13fb999ff891411b743ac02bf6f0c08b5f96', 'validated', '{"audio_key":"3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141","entity_key":"lx_ability_and_permission_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2036523c19c0f1ca616a4499049b13fb999ff891411b743ac02bf6f0c08b5f96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_01 -> audio/generated/it-IT/lexical/3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a9de21ed-7600-5181-85b3-b14d1d7c667a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c51e5efecc0d16d2961bd6c1cb8b6078cb9bcdd2b6259edb8211bf6f4bdd3567'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e354ca07-01d8-5a79-88f3-f4f352841557', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a9de21ed-7600-5181-85b3-b14d1d7c667a', 1), 'c51e5efecc0d16d2961bd6c1cb8b6078cb9bcdd2b6259edb8211bf6f4bdd3567',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141.mp3', 966, '2026-09-14 03:26:46.875099', '2036523c19c0f1ca616a4499049b13fb999ff891411b743ac02bf6f0c08b5f96', 'validated', '{"audio_key":"3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141","entity_key":"wf_ability_and_permission_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2036523c19c0f1ca616a4499049b13fb999ff891411b743ac02bf6f0c08b5f96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3389e371ebf4812a4e79587c5f28035f88d040daec9abf5942c3a005f0925141.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_05 -> audio/generated/it-IT/lexical/35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4a33a9b5-8093-59ce-98d3-a6894f95cabf', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1ebe23ad7f121c2f5cb1587fc4d25986f0ca6745c1cfa6752395e3a9c80f4ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a89451d-f6dc-5bc3-8eb5-926603d8d5c5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4a33a9b5-8093-59ce-98d3-a6894f95cabf', 1), 'b1ebe23ad7f121c2f5cb1587fc4d25986f0ca6745c1cfa6752395e3a9c80f4ac',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377.mp3', 1149, '2026-09-14 03:26:47.019585', '3418253b7125c7961875cf577584152fc8750230eaf577a4400f7ac9d661ad3c', 'validated', '{"audio_key":"35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377","entity_key":"lx_weather_and_change_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3418253b7125c7961875cf577584152fc8750230eaf577a4400f7ac9d661ad3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_05 -> audio/generated/it-IT/lexical/35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ef5f67bb-02f2-5104-82f3-4975e1fd0bbd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1ebe23ad7f121c2f5cb1587fc4d25986f0ca6745c1cfa6752395e3a9c80f4ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('371bfdf5-e670-52a5-b8c7-abf80e6e8666', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ef5f67bb-02f2-5104-82f3-4975e1fd0bbd', 1), 'b1ebe23ad7f121c2f5cb1587fc4d25986f0ca6745c1cfa6752395e3a9c80f4ac',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377.mp3', 1149, '2026-09-14 03:26:47.019585', '3418253b7125c7961875cf577584152fc8750230eaf577a4400f7ac9d661ad3c', 'validated', '{"audio_key":"35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377","entity_key":"wf_weather_and_change_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3418253b7125c7961875cf577584152fc8750230eaf577a4400f7ac9d661ad3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/35569cde1d91146b358e3f56454f4859ac03fe562cbe73372307bad951690377.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_04 -> audio/generated/it-IT/lexical/37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31872ec0-2462-5c06-8688-e506edce07fe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc83b1ab41b69775cfee39c4fb16abad111f243b0b018b9b5d893843d93bbd3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5fd44ca-492b-5ca7-9dac-b5e0be3404b3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31872ec0-2462-5c06-8688-e506edce07fe', 1), 'cc83b1ab41b69775cfee39c4fb16abad111f243b0b018b9b5d893843d93bbd3b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838.mp3', 1018, '2026-09-14 03:26:47.809262', '8b0b2707c3c00bd9cfe75b6e2877abc698ff78dd4efb84b1709a69c6ffc203de', 'validated', '{"audio_key":"37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838","entity_key":"lx_travel_and_hotel_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8b0b2707c3c00bd9cfe75b6e2877abc698ff78dd4efb84b1709a69c6ffc203de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_04 -> audio/generated/it-IT/lexical/37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f53cba69-c743-52e8-af71-bf28a5fca997', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc83b1ab41b69775cfee39c4fb16abad111f243b0b018b9b5d893843d93bbd3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdfe89dd-ae96-52a6-bda5-7ce45fad4d0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f53cba69-c743-52e8-af71-bf28a5fca997', 1), 'cc83b1ab41b69775cfee39c4fb16abad111f243b0b018b9b5d893843d93bbd3b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838.mp3', 1018, '2026-09-14 03:26:47.809262', '8b0b2707c3c00bd9cfe75b6e2877abc698ff78dd4efb84b1709a69c6ffc203de', 'validated', '{"audio_key":"37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838","entity_key":"wf_travel_and_hotel_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8b0b2707c3c00bd9cfe75b6e2877abc698ff78dd4efb84b1709a69c6ffc203de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/37ac81d5b6a70c5f02490e0acd0ead14876703b5fcda69d9fed2719688520838.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_04 -> audio/generated/it-IT/lexical/3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('329b956f-7c9d-5fdd-a9c0-017e8b24ae28', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf3a7175b3dc1397c38f52a774860cd02171bf68357b9d5ff40b14c69bbcf8dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('466253a3-f07d-5cb3-87ea-0bc2f491f2d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('329b956f-7c9d-5fdd-a9c0-017e8b24ae28', 1), 'bf3a7175b3dc1397c38f52a774860cd02171bf68357b9d5ff40b14c69bbcf8dc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf.mp3', 862, '2026-09-14 03:26:47.956716', '0a7c5607810ceb688d852a0fc21fa9f9ed6ad0fc87a9fa62647707a8ca900664', 'validated', '{"audio_key":"3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf","entity_key":"lx_opinions_and_softening_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0a7c5607810ceb688d852a0fc21fa9f9ed6ad0fc87a9fa62647707a8ca900664","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_04 -> audio/generated/it-IT/lexical/3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('60184042-edb7-59f5-b524-2cdd3f768b7f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf3a7175b3dc1397c38f52a774860cd02171bf68357b9d5ff40b14c69bbcf8dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3494686-2450-595c-ac1b-74170ec369dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('60184042-edb7-59f5-b524-2cdd3f768b7f', 1), 'bf3a7175b3dc1397c38f52a774860cd02171bf68357b9d5ff40b14c69bbcf8dc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf.mp3', 862, '2026-09-14 03:26:47.956716', '0a7c5607810ceb688d852a0fc21fa9f9ed6ad0fc87a9fa62647707a8ca900664', 'validated', '{"audio_key":"3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf","entity_key":"wf_opinions_and_softening_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0a7c5607810ceb688d852a0fc21fa9f9ed6ad0fc87a9fa62647707a8ca900664","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3a1feacf3efb0b569fec1a7a576f60cec9957d584b03b0b120930d3bd723bcbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_02 -> audio/generated/it-IT/lexical/3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('132c3d17-cc07-557e-a7d9-bfa7230d7ff7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36af53093432f900f815182bc729b7c296fde4596f3f3efbeb084b4f9092a8c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa5b5a5c-c0be-5bdc-bda5-ec23f4dc1705', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('132c3d17-cc07-557e-a7d9-bfa7230d7ff7', 1), '36af53093432f900f815182bc729b7c296fde4596f3f3efbeb084b4f9092a8c7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449.mp3', 862, '2026-09-14 03:26:48.744862', '5a5757d3d8207444dc56248521f88c31b7216df2c76d8ef52e62f023e45bfe36', 'validated', '{"audio_key":"3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449","entity_key":"lx_reasons_and_results_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5a5757d3d8207444dc56248521f88c31b7216df2c76d8ef52e62f023e45bfe36","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_02 -> audio/generated/it-IT/lexical/3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('26a48c57-e2fc-595d-8ebf-135520c754ab', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36af53093432f900f815182bc729b7c296fde4596f3f3efbeb084b4f9092a8c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac8be574-e406-5071-b06f-51c43c0ef084', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('26a48c57-e2fc-595d-8ebf-135520c754ab', 1), '36af53093432f900f815182bc729b7c296fde4596f3f3efbeb084b4f9092a8c7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449.mp3', 862, '2026-09-14 03:26:48.744862', '5a5757d3d8207444dc56248521f88c31b7216df2c76d8ef52e62f023e45bfe36', 'validated', '{"audio_key":"3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449","entity_key":"wf_reasons_and_results_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5a5757d3d8207444dc56248521f88c31b7216df2c76d8ef52e62f023e45bfe36","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3bbf45e0bdd65b2681a1c58222bfeba2ad4dfe3e6080268e95a3e64a58690449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_01 -> audio/generated/it-IT/lexical/3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('72031255-1593-52a2-9046-035435bac0e5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ffb0eb46c07c61d7f6945d1091b6341fd2ace9a6beee4892adafed46ca589d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0501da8d-fe51-5513-84eb-dc42f5bb475d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('72031255-1593-52a2-9046-035435bac0e5', 1), 'c8ffb0eb46c07c61d7f6945d1091b6341fd2ace9a6beee4892adafed46ca589d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785.mp3', 835, '2026-09-14 03:26:48.898427', '135b3b43f238790c0c2e096ec38538f5367407d105eac6dfc0d83d8fac52e1fb', 'validated', '{"audio_key":"3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785","entity_key":"lx_past_experiences_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"135b3b43f238790c0c2e096ec38538f5367407d105eac6dfc0d83d8fac52e1fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_01 -> audio/generated/it-IT/lexical/3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('844ec2d7-ac7a-5cb7-89b9-eab755298fad', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ffb0eb46c07c61d7f6945d1091b6341fd2ace9a6beee4892adafed46ca589d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('508681e1-82d6-5e17-b70b-877f097fc7a2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('844ec2d7-ac7a-5cb7-89b9-eab755298fad', 1), 'c8ffb0eb46c07c61d7f6945d1091b6341fd2ace9a6beee4892adafed46ca589d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785.mp3', 835, '2026-09-14 03:26:48.898427', '135b3b43f238790c0c2e096ec38538f5367407d105eac6dfc0d83d8fac52e1fb', 'validated', '{"audio_key":"3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785","entity_key":"wf_past_experiences_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"135b3b43f238790c0c2e096ec38538f5367407d105eac6dfc0d83d8fac52e1fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3be375add27616d4b0679a780eced87f7ea5e5eda1cb1fd73fd47da2c7306785.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_02 -> audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('117a48b2-261e-56ca-b9dd-d5846cd66668', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba68821d-81f8-58cd-aef3-9df43cf040d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('117a48b2-261e-56ca-b9dd-d5846cd66668', 1), '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3', 1149, '2026-09-14 03:09:54.556071', '9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743', 'validated', '{"audio_key":"3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e","entity_key":"lx_comparisons_and_choice_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_02 -> audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e6f968eb-5948-5409-9045-b02edaaa055a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('560e3949-49a7-5e2b-aa1e-ab3b6fc88c35', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e6f968eb-5948-5409-9045-b02edaaa055a', 1), '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3', 1149, '2026-09-14 03:09:54.556071', '9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743', 'validated', '{"audio_key":"3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e","entity_key":"wf_comparisons_and_choice_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_weekend_capstone_06 -> audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc4327d0-cdee-515c-903f-e20d62f92897', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_weekend_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('574b4c8c-df94-5430-8744-104cf6726946', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc4327d0-cdee-515c-903f-e20d62f92897', 1), 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3', 1253, '2026-09-14 03:26:49.702621', '57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2', 'validated', '{"audio_key":"3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769","entity_key":"lx_a2_weekend_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_weekend_capstone_06 -> audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('245f2e21-c528-5369-8f6e-73eb1656526e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_weekend_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d458c1d9-68ca-52fa-a69f-6f159e1394cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('245f2e21-c528-5369-8f6e-73eb1656526e', 1), 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3', 1253, '2026-09-14 03:26:49.702621', '57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2', 'validated', '{"audio_key":"3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769","entity_key":"wf_a2_weekend_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_04 -> audio/generated/it-IT/lexical/41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4cd4991b-9717-5fc2-95e4-03f09f7ebd59', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1197a20df1b4c87b10c868648eba70eac619e18ab6a6772e32bc9c701c315e41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01c88b86-316e-5b9c-b81c-883282d906cf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4cd4991b-9717-5fc2-95e4-03f09f7ebd59', 1), '1197a20df1b4c87b10c868648eba70eac619e18ab6a6772e32bc9c701c315e41',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf.mp3', 1018, '2026-09-14 03:26:49.848307', 'bd6800e952396383f713f0ba0ca749ce3df0a82090d7f4c3031bb9eefe8cf2b6', 'validated', '{"audio_key":"41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf","entity_key":"lx_plans_and_intentions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bd6800e952396383f713f0ba0ca749ce3df0a82090d7f4c3031bb9eefe8cf2b6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_04 -> audio/generated/it-IT/lexical/41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('30e025a3-52f6-5c52-9a10-8e5a637d8085', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1197a20df1b4c87b10c868648eba70eac619e18ab6a6772e32bc9c701c315e41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11e19540-2f77-5d8f-bcff-7a986d756bb4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('30e025a3-52f6-5c52-9a10-8e5a637d8085', 1), '1197a20df1b4c87b10c868648eba70eac619e18ab6a6772e32bc9c701c315e41',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf.mp3', 1018, '2026-09-14 03:26:49.848307', 'bd6800e952396383f713f0ba0ca749ce3df0a82090d7f4c3031bb9eefe8cf2b6', 'validated', '{"audio_key":"41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf","entity_key":"wf_plans_and_intentions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bd6800e952396383f713f0ba0ca749ce3df0a82090d7f4c3031bb9eefe8cf2b6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/41e08a33e41f3493f64183ad83cd68740934ec714a43820b3ed08d8979089edf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_04 -> audio/generated/it-IT/lexical/4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6351b1cc-efc5-5c67-a84f-8bf220f8428c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1dcd4957500bf90bd50529d1ccbf3669e913e17f282ddb576fcb3630fc68fbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2148f07f-aeb1-525d-89d7-c24b9ca32450', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6351b1cc-efc5-5c67-a84f-8bf220f8428c', 1), 'c1dcd4957500bf90bd50529d1ccbf3669e913e17f282ddb576fcb3630fc68fbd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123.mp3', 1071, '2026-09-14 03:26:50.663378', '7e2ce2c0172696fba67931ca7996c3fb0e7ef8400ce48f656048e23144918ea7', 'validated', '{"audio_key":"4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123","entity_key":"lx_comparisons_and_choice_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e2ce2c0172696fba67931ca7996c3fb0e7ef8400ce48f656048e23144918ea7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_04 -> audio/generated/it-IT/lexical/4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f38e6d22-1a38-58d5-af48-20a21791ba93', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1dcd4957500bf90bd50529d1ccbf3669e913e17f282ddb576fcb3630fc68fbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08c32ff2-f5fb-5443-a182-996fd8409af6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f38e6d22-1a38-58d5-af48-20a21791ba93', 1), 'c1dcd4957500bf90bd50529d1ccbf3669e913e17f282ddb576fcb3630fc68fbd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123.mp3', 1071, '2026-09-14 03:26:50.663378', '7e2ce2c0172696fba67931ca7996c3fb0e7ef8400ce48f656048e23144918ea7', 'validated', '{"audio_key":"4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123","entity_key":"wf_comparisons_and_choice_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e2ce2c0172696fba67931ca7996c3fb0e7ef8400ce48f656048e23144918ea7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4532802a112aec06d30a2494b2fb997896a5c6db90a94273d9e24e604194a123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_04 -> audio/generated/it-IT/lexical/476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ad5e210f-348e-5d4d-b4e1-6ebbcc81cf00', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bed9ae713b440eed894573977256ed12a992b93804975fa09aff32dd1572b658'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83cd45fa-b5f0-59bf-a40d-357bc684520d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ad5e210f-348e-5d4d-b4e1-6ebbcc81cf00', 1), 'bed9ae713b440eed894573977256ed12a992b93804975fa09aff32dd1572b658',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492.mp3', 1097, '2026-09-14 03:26:50.851886', '07146601f77585d4b6b3e9ef771ca66526ac1a88187c547fad609f850e366ea0', 'validated', '{"audio_key":"476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492","entity_key":"lx_health_and_advice_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"07146601f77585d4b6b3e9ef771ca66526ac1a88187c547fad609f850e366ea0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_04 -> audio/generated/it-IT/lexical/476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b8596029-bcfb-519a-beaf-682afc30459e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bed9ae713b440eed894573977256ed12a992b93804975fa09aff32dd1572b658'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a50743f-845e-5f85-8c28-f0cc210cfe45', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b8596029-bcfb-519a-beaf-682afc30459e', 1), 'bed9ae713b440eed894573977256ed12a992b93804975fa09aff32dd1572b658',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492.mp3', 1097, '2026-09-14 03:26:50.851886', '07146601f77585d4b6b3e9ef771ca66526ac1a88187c547fad609f850e366ea0', 'validated', '{"audio_key":"476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492","entity_key":"wf_health_and_advice_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"07146601f77585d4b6b3e9ef771ca66526ac1a88187c547fad609f850e366ea0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/476f9861557ca8ac5c2363ca96ec9afe6e0ae965ba9be218be41c2e46cf91492.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_02 -> audio/generated/it-IT/lexical/58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b007765-1398-5a11-b90b-878bc25968c8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0aa547bf21164f99d0eb42568ecf93adf4259a27acae9378b69eca6b3a2ef8fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50bcccb5-8cbd-5800-b8c2-b5ef5917e57e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b007765-1398-5a11-b90b-878bc25968c8', 1), '0aa547bf21164f99d0eb42568ecf93adf4259a27acae9378b69eca6b3a2ef8fb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9.mp3', 914, '2026-09-14 03:26:51.608641', '63111723c69bc4fae567d7ab12ad5af99175475fb9fbe084cbdac60b66ec90e6', 'validated', '{"audio_key":"58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9","entity_key":"lx_health_and_advice_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"63111723c69bc4fae567d7ab12ad5af99175475fb9fbe084cbdac60b66ec90e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_02 -> audio/generated/it-IT/lexical/58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8dc84dd2-0706-5fb1-8ec8-37c0dae074c0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0aa547bf21164f99d0eb42568ecf93adf4259a27acae9378b69eca6b3a2ef8fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94762d57-dc81-5135-9738-74873d6658da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8dc84dd2-0706-5fb1-8ec8-37c0dae074c0', 1), '0aa547bf21164f99d0eb42568ecf93adf4259a27acae9378b69eca6b3a2ef8fb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9.mp3', 914, '2026-09-14 03:26:51.608641', '63111723c69bc4fae567d7ab12ad5af99175475fb9fbe084cbdac60b66ec90e6', 'validated', '{"audio_key":"58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9","entity_key":"wf_health_and_advice_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"63111723c69bc4fae567d7ab12ad5af99175475fb9fbe084cbdac60b66ec90e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58378092c2d8187695b4dccb920aa4d9080f0c6ebf10b398211f0058128210d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_02 -> audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96377afa-1075-5f92-a9f8-361ba9d96d8a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34fdd768-e946-59ac-829c-f772509cdb2d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96377afa-1075-5f92-a9f8-361ba9d96d8a', 1), '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3', 966, '2026-09-14 03:09:58.528902', '057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6', 'validated', '{"audio_key":"5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2","entity_key":"lx_travel_and_hotel_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_02 -> audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8e2ede15-4139-515f-838d-7437b97467c2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('593a080a-2e05-5fa3-b5eb-8a4de2859dcc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8e2ede15-4139-515f-838d-7437b97467c2', 1), '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3', 966, '2026-09-14 03:09:58.528902', '057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6', 'validated', '{"audio_key":"5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2","entity_key":"wf_travel_and_hotel_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_06 -> audio/generated/it-IT/lexical/5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a997a6c1-8f1a-59b2-b104-b7827e8fabd9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ee676b4d03b723176e999ca474374950fe04689b28e4b3ef1fb7ccd4c117bb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9734f078-b824-5ba5-9b04-eda552cd8e2d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a997a6c1-8f1a-59b2-b104-b7827e8fabd9', 1), '0ee676b4d03b723176e999ca474374950fe04689b28e4b3ef1fb7ccd4c117bb2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c.mp3', 1097, '2026-09-14 03:26:51.816354', '790ef9b5156525927d9e5d289ae5d801a057c9fb1132a2b136dab7f75b0727f5', 'validated', '{"audio_key":"5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c","entity_key":"lx_opinions_and_softening_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"790ef9b5156525927d9e5d289ae5d801a057c9fb1132a2b136dab7f75b0727f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_06 -> audio/generated/it-IT/lexical/5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b1beed2b-7cf2-5749-9e25-d6ea4c58ff60', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ee676b4d03b723176e999ca474374950fe04689b28e4b3ef1fb7ccd4c117bb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66954849-4bee-586e-9b58-51261b4dd643', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b1beed2b-7cf2-5749-9e25-d6ea4c58ff60', 1), '0ee676b4d03b723176e999ca474374950fe04689b28e4b3ef1fb7ccd4c117bb2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c.mp3', 1097, '2026-09-14 03:26:51.816354', '790ef9b5156525927d9e5d289ae5d801a057c9fb1132a2b136dab7f75b0727f5', 'validated', '{"audio_key":"5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c","entity_key":"wf_opinions_and_softening_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"790ef9b5156525927d9e5d289ae5d801a057c9fb1132a2b136dab7f75b0727f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5dcbec1548c442d83ec12edf759e29d22a110097edb4136a8d722fa1bc441d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_03 -> audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c65113d-afe3-5149-9403-fb867a4a56a2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106600cb-7a18-54fe-a1a1-00b428cad701', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c65113d-afe3-5149-9403-fb867a4a56a2', 1), '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3', 862, '2026-09-14 03:09:59.532131', '96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d', 'validated', '{"audio_key":"5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb","entity_key":"lx_comparisons_and_choice_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_03 -> audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32651e7d-9b07-5a4c-9efd-896628600c38', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('114d7267-2558-5a12-900d-ce3fff5be1a4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32651e7d-9b07-5a4c-9efd-896628600c38', 1), '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3', 862, '2026-09-14 03:09:59.532131', '96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d', 'validated', '{"audio_key":"5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb","entity_key":"wf_comparisons_and_choice_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_05 -> audio/generated/it-IT/lexical/6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('42aeed02-56a3-50c4-80cf-c51980f6dbf9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc2de4b2aaf36609c87bfc983116836a6d3d7c0c8ad3041e4beeb2b1a18b4ce3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96164107-4952-59a6-bab3-f6cb0727d5dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('42aeed02-56a3-50c4-80cf-c51980f6dbf9', 1), 'cc2de4b2aaf36609c87bfc983116836a6d3d7c0c8ad3041e4beeb2b1a18b4ce3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324.mp3', 966, '2026-09-14 03:26:52.553942', '3691f81cea0e8f6a509efe3e25d8ce97208531d6f5b0a5c275c2dff4eb656275', 'validated', '{"audio_key":"6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324","entity_key":"lx_comparisons_and_choice_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3691f81cea0e8f6a509efe3e25d8ce97208531d6f5b0a5c275c2dff4eb656275","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_05 -> audio/generated/it-IT/lexical/6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bff124a9-506a-5358-acb9-7f161b9e87ff', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc2de4b2aaf36609c87bfc983116836a6d3d7c0c8ad3041e4beeb2b1a18b4ce3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c907a08-2a8d-587e-ab65-b09e00f28264', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bff124a9-506a-5358-acb9-7f161b9e87ff', 1), 'cc2de4b2aaf36609c87bfc983116836a6d3d7c0c8ad3041e4beeb2b1a18b4ce3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324.mp3', 966, '2026-09-14 03:26:52.553942', '3691f81cea0e8f6a509efe3e25d8ce97208531d6f5b0a5c275c2dff4eb656275', 'validated', '{"audio_key":"6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324","entity_key":"wf_comparisons_and_choice_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3691f81cea0e8f6a509efe3e25d8ce97208531d6f5b0a5c275c2dff4eb656275","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6469819c565f36f5904be8570416f76aabc8dc2fa9473dc6f835cccb1447f324.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_03 -> audio/generated/it-IT/lexical/6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('94260984-f63c-5afa-80a7-cb55dff4c54b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '992ea3fc26785e81a3228031605510b05a3fb39dd02c0e66ec089d3de22660ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d232f18-eb4c-5ff5-b8d6-25fdd4fc5f4f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('94260984-f63c-5afa-80a7-cb55dff4c54b', 1), '992ea3fc26785e81a3228031605510b05a3fb39dd02c0e66ec089d3de22660ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456.mp3', 1253, '2026-09-14 03:26:52.828012', 'be347749ac7b3b01c370880eb2a6dcafb2d69b6320f4e778d00e94220fb749e6', 'validated', '{"audio_key":"6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456","entity_key":"lx_weather_and_change_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"be347749ac7b3b01c370880eb2a6dcafb2d69b6320f4e778d00e94220fb749e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_03 -> audio/generated/it-IT/lexical/6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2290a562-8cc3-5091-98a9-9c080d9a2d3e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '992ea3fc26785e81a3228031605510b05a3fb39dd02c0e66ec089d3de22660ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0d4987b-cbe4-5169-9d2a-598a7c27a826', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2290a562-8cc3-5091-98a9-9c080d9a2d3e', 1), '992ea3fc26785e81a3228031605510b05a3fb39dd02c0e66ec089d3de22660ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456.mp3', 1253, '2026-09-14 03:26:52.828012', 'be347749ac7b3b01c370880eb2a6dcafb2d69b6320f4e778d00e94220fb749e6', 'validated', '{"audio_key":"6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456","entity_key":"wf_weather_and_change_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"be347749ac7b3b01c370880eb2a6dcafb2d69b6320f4e778d00e94220fb749e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6871b00524d4f537dcf2ed36d4cf873809514ddb86953598999f8b4428304456.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_03 -> audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8eee9e1d-7bbb-57e6-b502-97dc35873550', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2c42da3-c2f0-5af7-844a-18e3a385917e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8eee9e1d-7bbb-57e6-b502-97dc35873550', 1), 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3', 1149, '2026-09-14 03:26:53.523812', '03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8', 'validated', '{"audio_key":"713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39","entity_key":"lx_opinions_and_softening_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_03 -> audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('51eb69fd-f0e8-50ed-80ba-60c0b28b33bc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('989b422e-7cda-5c8e-b92e-be93986c907b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('51eb69fd-f0e8-50ed-80ba-60c0b28b33bc', 1), 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3', 1149, '2026-09-14 03:26:53.523812', '03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8', 'validated', '{"audio_key":"713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39","entity_key":"wf_opinions_and_softening_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_03 -> audio/generated/it-IT/lexical/76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('85ec556b-bbac-53c1-b570-a3fa64310df1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '849d1a7ea7d1cd5ba7880a65f748341ca61ee19ff0216fe8277a7bf787469edf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9052c716-2649-5da9-82bb-b99f1fc0c259', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('85ec556b-bbac-53c1-b570-a3fa64310df1', 1), '849d1a7ea7d1cd5ba7880a65f748341ca61ee19ff0216fe8277a7bf787469edf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb.mp3', 1332, '2026-09-14 03:26:53.817541', 'ad1b4d5e5511d33236ff112448536e350c9fe18d939776dc64488f2b3954b122', 'validated', '{"audio_key":"76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb","entity_key":"lx_travel_and_hotel_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ad1b4d5e5511d33236ff112448536e350c9fe18d939776dc64488f2b3954b122","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_03 -> audio/generated/it-IT/lexical/76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8b4cf6d6-14d5-5f1a-a00f-d0c6702af0e3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '849d1a7ea7d1cd5ba7880a65f748341ca61ee19ff0216fe8277a7bf787469edf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('021ad495-cdc6-5003-b75b-16e464d87db9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8b4cf6d6-14d5-5f1a-a00f-d0c6702af0e3', 1), '849d1a7ea7d1cd5ba7880a65f748341ca61ee19ff0216fe8277a7bf787469edf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb.mp3', 1332, '2026-09-14 03:26:53.817541', 'ad1b4d5e5511d33236ff112448536e350c9fe18d939776dc64488f2b3954b122', 'validated', '{"audio_key":"76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb","entity_key":"wf_travel_and_hotel_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ad1b4d5e5511d33236ff112448536e350c9fe18d939776dc64488f2b3954b122","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/76afbcfdb96e011f0ba773a7129b999ca87a27b35c30d77e8d2d1d96a53c51fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_02 -> audio/generated/it-IT/lexical/7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('039fbcb2-dce3-528e-b7fd-1dd65d0166fb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c67e543f4c223b2fd1d35b9cd47ca0531380e51b635b889b374def9ef88f6b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05892204-ab01-5894-85c4-2b95e72b67b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('039fbcb2-dce3-528e-b7fd-1dd65d0166fb', 1), '1c67e543f4c223b2fd1d35b9cd47ca0531380e51b635b889b374def9ef88f6b1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8.mp3', 1097, '2026-09-14 03:26:54.487745', '7dfc1776dbeb799a3a02c73c84e3dab5615b8087245726d1058d6690bfa62829', 'validated', '{"audio_key":"7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8","entity_key":"lx_plans_and_intentions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7dfc1776dbeb799a3a02c73c84e3dab5615b8087245726d1058d6690bfa62829","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_02 -> audio/generated/it-IT/lexical/7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5db6da72-8080-584d-aea8-3409903292cb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c67e543f4c223b2fd1d35b9cd47ca0531380e51b635b889b374def9ef88f6b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20107113-8a6b-541f-aa2c-da6b41623725', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5db6da72-8080-584d-aea8-3409903292cb', 1), '1c67e543f4c223b2fd1d35b9cd47ca0531380e51b635b889b374def9ef88f6b1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8.mp3', 1097, '2026-09-14 03:26:54.487745', '7dfc1776dbeb799a3a02c73c84e3dab5615b8087245726d1058d6690bfa62829', 'validated', '{"audio_key":"7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8","entity_key":"wf_plans_and_intentions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7dfc1776dbeb799a3a02c73c84e3dab5615b8087245726d1058d6690bfa62829","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7865003347fe20096837cf02e356de4e88972e1bd8e22275292f8b8b8931fcd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_06 -> audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eab3dc89-d196-5d3f-9d34-aa7d08161887', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ffda2a-dee7-52ae-9211-ab9c04923688', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eab3dc89-d196-5d3f-9d34-aa7d08161887', 1), '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3', 1018, '2026-09-14 03:26:54.772677', '437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5', 'validated', '{"audio_key":"7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3","entity_key":"lx_travel_and_hotel_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_06 -> audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e8e17c7-e210-5caf-950c-d85e9897ecd8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('786af433-36d3-50cb-9971-3c5947e8b6d6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e8e17c7-e210-5caf-950c-d85e9897ecd8', 1), '020a8eb83c90c2b65c25cc8bb5faa1e98ebffee2b02f99850eb5b50e3bb8d140',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3', 1018, '2026-09-14 03:26:54.772677', '437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5', 'validated', '{"audio_key":"7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3","entity_key":"wf_travel_and_hotel_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"437071b2cb5a7947302b8b700ec55897185d592ed51f8cef593cd4ed97baa9a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7b972b0d4bb1e0a135e6c926733febc2031b5243ff33b8c5571073c5bd1947e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_06 -> audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c795f3b2-fa52-5dfe-b384-4bd0b7d6a202', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa2aa99c-a180-553c-a18d-0b6c4703ec13', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c795f3b2-fa52-5dfe-b384-4bd0b7d6a202', 1), '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3', 1149, '2026-09-14 01:57:21.063871', '8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f', 'validated', '{"audio_key":"7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69","entity_key":"lx_plans_and_intentions_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_06 -> audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4fd3754c-a0e1-5e70-88f3-e810740988a6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e35f3da-54be-5a2d-94b2-294602ddb5a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4fd3754c-a0e1-5e70-88f3-e810740988a6', 1), '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3', 1149, '2026-09-14 01:57:21.063871', '8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f', 'validated', '{"audio_key":"7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69","entity_key":"wf_plans_and_intentions_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_01 -> audio/generated/it-IT/lexical/87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e095a37-0a16-5d52-a6af-8f108e9469c7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d81506d1eb102481b9971806f327c61f548ad7a6cc2646bb54c8a9b17871465'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9645eb5-95d4-51fe-beb4-ac0dd30fba7d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e095a37-0a16-5d52-a6af-8f108e9469c7', 1), '1d81506d1eb102481b9971806f327c61f548ad7a6cc2646bb54c8a9b17871465',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030.mp3', 1071, '2026-09-14 03:26:55.476410', '839319917cd6e463eaeed919f05f31ca287679efb89cd342f3a724d3224b6e7b', 'validated', '{"audio_key":"87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030","entity_key":"lx_opinions_and_softening_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"839319917cd6e463eaeed919f05f31ca287679efb89cd342f3a724d3224b6e7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_01 -> audio/generated/it-IT/lexical/87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5f57c9e-1cd7-5ed7-bfe9-90eb8327d086', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d81506d1eb102481b9971806f327c61f548ad7a6cc2646bb54c8a9b17871465'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2f8cdb4-425c-55b3-8c3a-606911c88f19', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5f57c9e-1cd7-5ed7-bfe9-90eb8327d086', 1), '1d81506d1eb102481b9971806f327c61f548ad7a6cc2646bb54c8a9b17871465',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030.mp3', 1071, '2026-09-14 03:26:55.476410', '839319917cd6e463eaeed919f05f31ca287679efb89cd342f3a724d3224b6e7b', 'validated', '{"audio_key":"87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030","entity_key":"wf_opinions_and_softening_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"839319917cd6e463eaeed919f05f31ca287679efb89cd342f3a724d3224b6e7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/87633ae0428c7f63a255daee6b4e5b393d5596e158b712bb72e6fb4cde6cd030.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_05 -> audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cd3625dc-5960-571e-a00f-b0e52e3ca5a0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a806dd9d-551d-50dd-b147-fdb82be0acb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cd3625dc-5960-571e-a00f-b0e52e3ca5a0', 1), '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3', 1018, '2026-09-14 03:10:04.451326', '80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c', 'validated', '{"audio_key":"8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9","entity_key":"lx_past_experiences_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_05 -> audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c726e887-7008-5076-8032-a82704261878', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4796ca7-5db4-5c59-ae0b-7fda52c008df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c726e887-7008-5076-8032-a82704261878', 1), '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3', 1018, '2026-09-14 03:10:04.451326', '80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c', 'validated', '{"audio_key":"8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9","entity_key":"wf_past_experiences_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_06 -> audio/generated/it-IT/lexical/91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35d726f3-bda1-5070-85e5-b2cd82d1c829', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '510bc0cc807112171b57cb07e2a8f0d9839a195be3ff1eef0a58b91c56d31e74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34e44362-7d99-56c5-8004-471fb347d223', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35d726f3-bda1-5070-85e5-b2cd82d1c829', 1), '510bc0cc807112171b57cb07e2a8f0d9839a195be3ff1eef0a58b91c56d31e74',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571.mp3', 1097, '2026-09-14 03:26:55.742965', 'ec851bee76a1f4d961d10aba16c6e262a9142cd311c3738f69de614e43eb8e2d', 'validated', '{"audio_key":"91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571","entity_key":"lx_comparisons_and_choice_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec851bee76a1f4d961d10aba16c6e262a9142cd311c3738f69de614e43eb8e2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_06 -> audio/generated/it-IT/lexical/91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('57be3419-f601-52d5-b0b2-75c4bc672aac', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '510bc0cc807112171b57cb07e2a8f0d9839a195be3ff1eef0a58b91c56d31e74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c19bd83f-cf47-5119-a0df-050a6a9338fa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('57be3419-f601-52d5-b0b2-75c4bc672aac', 1), '510bc0cc807112171b57cb07e2a8f0d9839a195be3ff1eef0a58b91c56d31e74',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571.mp3', 1097, '2026-09-14 03:26:55.742965', 'ec851bee76a1f4d961d10aba16c6e262a9142cd311c3738f69de614e43eb8e2d', 'validated', '{"audio_key":"91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571","entity_key":"wf_comparisons_and_choice_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec851bee76a1f4d961d10aba16c6e262a9142cd311c3738f69de614e43eb8e2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/91670ef546f5e1c3658370e317227b6775cc4ed7fc3c974292e5efc72731f571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_04 -> audio/generated/it-IT/lexical/949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('572448d1-8b7f-5148-aab7-4d95c19e7fd7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e318e218031b0b19549807a6eae1980a4250d7b69a3a6c51d71dcbec874453c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bc79c3c-7e02-53d5-9219-6656b0f412f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('572448d1-8b7f-5148-aab7-4d95c19e7fd7', 1), 'e318e218031b0b19549807a6eae1980a4250d7b69a3a6c51d71dcbec874453c4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707.mp3', 1071, '2026-09-14 03:26:56.462076', 'f6b3a7f36d7966fcf805eb4bc5647c47fa12a011b1990f456c425ec63ebac871', 'validated', '{"audio_key":"949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707","entity_key":"lx_reasons_and_results_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f6b3a7f36d7966fcf805eb4bc5647c47fa12a011b1990f456c425ec63ebac871","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_04 -> audio/generated/it-IT/lexical/949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('16940e7c-7c1e-5a93-a9e8-ac7328de3f30', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e318e218031b0b19549807a6eae1980a4250d7b69a3a6c51d71dcbec874453c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd311319-a840-569f-91cb-1b3aedcca536', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('16940e7c-7c1e-5a93-a9e8-ac7328de3f30', 1), 'e318e218031b0b19549807a6eae1980a4250d7b69a3a6c51d71dcbec874453c4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707.mp3', 1071, '2026-09-14 03:26:56.462076', 'f6b3a7f36d7966fcf805eb4bc5647c47fa12a011b1990f456c425ec63ebac871', 'validated', '{"audio_key":"949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707","entity_key":"wf_reasons_and_results_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f6b3a7f36d7966fcf805eb4bc5647c47fa12a011b1990f456c425ec63ebac871","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/949d76ff214a3df48e6b3ecb5b3cb2a35d30c215c5187a6fc611144557368707.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_04 -> audio/generated/it-IT/lexical/a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ce04acf-218b-5e79-bc0d-ddd4f542522c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c021e01592d315d93d7c71548cccf0c62885da914b2ed63decbd0ad93d3fbf85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9677904-6d0b-5eac-8e9f-d203e9884f53', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ce04acf-218b-5e79-bc0d-ddd4f542522c', 1), 'c021e01592d315d93d7c71548cccf0c62885da914b2ed63decbd0ad93d3fbf85',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b.mp3', 1280, '2026-09-14 03:26:56.757942', 'b294541f0820cadc70185d3c52ee3e42ef4e2ef2e9a4a00e4d33f4756c6fbd6b', 'validated', '{"audio_key":"a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b","entity_key":"lx_ability_and_permission_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b294541f0820cadc70185d3c52ee3e42ef4e2ef2e9a4a00e4d33f4756c6fbd6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_04 -> audio/generated/it-IT/lexical/a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('422b1dd0-a1d2-584a-8b25-3af0e7a33c88', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c021e01592d315d93d7c71548cccf0c62885da914b2ed63decbd0ad93d3fbf85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ab8aa4e-fd6a-52d5-b0e5-1e9144958578', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('422b1dd0-a1d2-584a-8b25-3af0e7a33c88', 1), 'c021e01592d315d93d7c71548cccf0c62885da914b2ed63decbd0ad93d3fbf85',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b.mp3', 1280, '2026-09-14 03:26:56.757942', 'b294541f0820cadc70185d3c52ee3e42ef4e2ef2e9a4a00e4d33f4756c6fbd6b', 'validated', '{"audio_key":"a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b","entity_key":"wf_ability_and_permission_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b294541f0820cadc70185d3c52ee3e42ef4e2ef2e9a4a00e4d33f4756c6fbd6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a2c29799a7ca96ba006a7e3d3c16c996a8d8e6f1bc8e4cc13284ad947c92af3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_03 -> audio/generated/it-IT/lexical/a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2b155300-199e-5033-950b-6db80239dc56', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '337f9fb62c96ec292e4ff8e5963e4ffa95d0b026ccd8b430b7026758962e1ea4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43d8f5c1-7b8e-5fc8-b676-3fe9e50e35a9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2b155300-199e-5033-950b-6db80239dc56', 1), '337f9fb62c96ec292e4ff8e5963e4ffa95d0b026ccd8b430b7026758962e1ea4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84.mp3', 966, '2026-09-14 03:26:57.465343', '0b98f63c9e46f4ef74c66200463bcce02fa5d04f0904ddba9b119508bb7b3d96', 'validated', '{"audio_key":"a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84","entity_key":"lx_past_experiences_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b98f63c9e46f4ef74c66200463bcce02fa5d04f0904ddba9b119508bb7b3d96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_03 -> audio/generated/it-IT/lexical/a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1190660-bfc0-5cd9-a920-a1dd67983e05', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '337f9fb62c96ec292e4ff8e5963e4ffa95d0b026ccd8b430b7026758962e1ea4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75c385a8-ab71-5a41-a14c-2fa2015b1d3c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1190660-bfc0-5cd9-a920-a1dd67983e05', 1), '337f9fb62c96ec292e4ff8e5963e4ffa95d0b026ccd8b430b7026758962e1ea4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84.mp3', 966, '2026-09-14 03:26:57.465343', '0b98f63c9e46f4ef74c66200463bcce02fa5d04f0904ddba9b119508bb7b3d96', 'validated', '{"audio_key":"a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84","entity_key":"wf_past_experiences_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b98f63c9e46f4ef74c66200463bcce02fa5d04f0904ddba9b119508bb7b3d96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a498a4cd2bbb39da4cfd54d7529cb3f0261507ccc94bc06e357f7a2961f8ed84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_03 -> audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d211a4b-6101-5329-9681-bf2480b3886f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f3aa044-a67d-5f18-add1-fe113a04d51e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d211a4b-6101-5329-9681-bf2480b3886f', 1), '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3', 1149, '2026-09-14 01:57:26.664360', '1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d', 'validated', '{"audio_key":"a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b","entity_key":"lx_ability_and_permission_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_03 -> audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b286668a-eec9-5d5d-9d8d-7ed3a1780b15', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bd3eb3f-e7ca-5800-a2ca-c690edf16baf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b286668a-eec9-5d5d-9d8d-7ed3a1780b15', 1), '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3', 1149, '2026-09-14 01:57:26.664360', '1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d', 'validated', '{"audio_key":"a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b","entity_key":"wf_ability_and_permission_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_weekend_capstone_01 -> audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ea248f7-e02b-5f1f-874a-3b3f005357a9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_weekend_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bd6ac7f-81b8-529c-901c-a07c408208bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ea248f7-e02b-5f1f-874a-3b3f005357a9', 1), '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3', 1253, '2026-09-14 03:26:57.745352', 'e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8', 'validated', '{"audio_key":"bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d","entity_key":"lx_a2_weekend_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_weekend_capstone_01 -> audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27b29a3e-be84-517c-b008-8a3fa3862715', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_weekend_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f37dccb-34ec-51f7-a43a-b801cf88f29f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27b29a3e-be84-517c-b008-8a3fa3862715', 1), '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3', 1253, '2026-09-14 03:26:57.745352', 'e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8', 'validated', '{"audio_key":"bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d","entity_key":"wf_a2_weekend_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_03 -> audio/generated/it-IT/lexical/c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e5048af8-3acf-5ec3-b8f3-c1a77160d58d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c22d68007fdc88569c15cdf1f73a65cdf7ee2db8ba123fbdc2772d8865e97b71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba852345-c0f6-503c-8d76-039747a70725', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e5048af8-3acf-5ec3-b8f3-c1a77160d58d', 1), 'c22d68007fdc88569c15cdf1f73a65cdf7ee2db8ba123fbdc2772d8865e97b71',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c.mp3', 1071, '2026-09-14 03:26:58.465669', 'c06328bf22c85f3072bff6da55303b668700e0afe9dd7c5f4b720e22b5684d18', 'validated', '{"audio_key":"c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c","entity_key":"lx_plans_and_intentions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c06328bf22c85f3072bff6da55303b668700e0afe9dd7c5f4b720e22b5684d18","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_03 -> audio/generated/it-IT/lexical/c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47752bd6-3ce7-536c-8128-bac688a4a53d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c22d68007fdc88569c15cdf1f73a65cdf7ee2db8ba123fbdc2772d8865e97b71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46b1845d-195a-5076-bda8-3850a3e870fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47752bd6-3ce7-536c-8128-bac688a4a53d', 1), 'c22d68007fdc88569c15cdf1f73a65cdf7ee2db8ba123fbdc2772d8865e97b71',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c.mp3', 1071, '2026-09-14 03:26:58.465669', 'c06328bf22c85f3072bff6da55303b668700e0afe9dd7c5f4b720e22b5684d18', 'validated', '{"audio_key":"c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c","entity_key":"wf_plans_and_intentions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c06328bf22c85f3072bff6da55303b668700e0afe9dd7c5f4b720e22b5684d18","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c3c80302554b7ebd3621bf78c911bd3686731295a39a6cdd9caa36536d76579c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_01 -> audio/generated/it-IT/lexical/c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b548a0a-0b24-5f5f-942b-2ffc7f9c0ef3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ceb40868331b6aeaf04d231dd8f585ead5144d1da87ea54becec333c7943107'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea2eca74-ac9e-521e-8b2c-cdf0f41d96d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b548a0a-0b24-5f5f-942b-2ffc7f9c0ef3', 1), '6ceb40868331b6aeaf04d231dd8f585ead5144d1da87ea54becec333c7943107',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5.mp3', 914, '2026-09-14 03:26:58.679406', '0fdbdf8f2f807d15203977edd30689aab6431edf78cb06ab02e8a480cbe0fc6a', 'validated', '{"audio_key":"c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5","entity_key":"lx_reasons_and_results_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0fdbdf8f2f807d15203977edd30689aab6431edf78cb06ab02e8a480cbe0fc6a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_01 -> audio/generated/it-IT/lexical/c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c000612b-932e-5a5b-8c75-4e140562f035', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ceb40868331b6aeaf04d231dd8f585ead5144d1da87ea54becec333c7943107'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c628c6b6-df41-59fc-889e-a39d9315d4ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c000612b-932e-5a5b-8c75-4e140562f035', 1), '6ceb40868331b6aeaf04d231dd8f585ead5144d1da87ea54becec333c7943107',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5.mp3', 914, '2026-09-14 03:26:58.679406', '0fdbdf8f2f807d15203977edd30689aab6431edf78cb06ab02e8a480cbe0fc6a', 'validated', '{"audio_key":"c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5","entity_key":"wf_reasons_and_results_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0fdbdf8f2f807d15203977edd30689aab6431edf78cb06ab02e8a480cbe0fc6a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c3dc7247447fd46d614b5fe2dd18d53a4b326cde20f3988685bd42922a3f4bc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_03 -> audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b1d975e-6781-56e9-a0a8-7b7c277060a6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b633450-8306-51ba-b713-a4cc7adc7aa4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b1d975e-6781-56e9-a0a8-7b7c277060a6', 1), '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3', 1149, '2026-09-14 03:26:59.587459', '2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652', 'validated', '{"audio_key":"c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e","entity_key":"lx_reasons_and_results_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_03 -> audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9fd0bf5f-aefc-5e6d-ae7e-cdeb293a18c9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98ff4a61-aecd-55ac-b40c-dd1481516ba6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9fd0bf5f-aefc-5e6d-ae7e-cdeb293a18c9', 1), '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3', 1149, '2026-09-14 03:26:59.587459', '2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652', 'validated', '{"audio_key":"c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e","entity_key":"wf_reasons_and_results_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_05 -> audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b1d975e-6781-56e9-a0a8-7b7c277060a6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b633450-8306-51ba-b713-a4cc7adc7aa4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b1d975e-6781-56e9-a0a8-7b7c277060a6', 1), '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3', 1149, '2026-09-14 03:26:59.587459', '2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652', 'validated', '{"audio_key":"c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e","entity_key":"lx_travel_and_hotel_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_05 -> audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3473aca6-ab01-5b8f-8f5d-0a3c44080ee9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c36bed68-4c53-591f-9195-9b825bfc34b7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3473aca6-ab01-5b8f-8f5d-0a3c44080ee9', 1), '77492d429a410a2f99f09136196328d1201ab84037d44a8b500d77859fa2b7c6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3', 1149, '2026-09-14 03:26:59.587459', '2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652', 'validated', '{"audio_key":"c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e","entity_key":"wf_travel_and_hotel_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e3a79cd46432c5fc102a90a3c1fb8e8d61bca14d03199fe1c002da3a3205652","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5a05ded4f6239721f99c712103e62d4eac5312737ac60ee3be8058a2e912b9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_01 -> audio/generated/it-IT/lexical/cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5344dca7-4ed9-5167-bece-9f60665c551d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6cb6ed32581c8667dc5f59cbc4b6d281a3589f6167b6a4c1bf79ca6e027dffc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a11abb8-f493-52ab-ab04-48a89b3f4d9a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5344dca7-4ed9-5167-bece-9f60665c551d', 1), 'f6cb6ed32581c8667dc5f59cbc4b6d281a3589f6167b6a4c1bf79ca6e027dffc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41.mp3', 1201, '2026-09-14 03:26:59.730939', '1e74cdd2faef70eec445c2d3071a40d7b44ec55e6bece1f7b024adb26f08e008', 'validated', '{"audio_key":"cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41","entity_key":"lx_plans_and_intentions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1e74cdd2faef70eec445c2d3071a40d7b44ec55e6bece1f7b024adb26f08e008","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_01 -> audio/generated/it-IT/lexical/cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('516c6eea-125f-598f-a6d7-a6650c7d6036', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6cb6ed32581c8667dc5f59cbc4b6d281a3589f6167b6a4c1bf79ca6e027dffc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b658577-f5cc-5663-9594-dac5c81db120', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('516c6eea-125f-598f-a6d7-a6650c7d6036', 1), 'f6cb6ed32581c8667dc5f59cbc4b6d281a3589f6167b6a4c1bf79ca6e027dffc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41.mp3', 1201, '2026-09-14 03:26:59.730939', '1e74cdd2faef70eec445c2d3071a40d7b44ec55e6bece1f7b024adb26f08e008', 'validated', '{"audio_key":"cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41","entity_key":"wf_plans_and_intentions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1e74cdd2faef70eec445c2d3071a40d7b44ec55e6bece1f7b024adb26f08e008","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc70eb060a1db0fda95f1651c96a60a0ce4138227925b1a29867676c8aba1f41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_02 -> audio/generated/it-IT/lexical/d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eee2abb2-842f-5dd9-9909-a0a144b38bc0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f65038c9ba708697a3a6733faab13137d59258be602f1cbd47b2c9fafb3298f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a185d03-1eda-5b5c-b738-41582be77b4a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eee2abb2-842f-5dd9-9909-a0a144b38bc0', 1), 'f65038c9ba708697a3a6733faab13137d59258be602f1cbd47b2c9fafb3298f2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b.mp3', 1018, '2026-09-14 03:27:00.590542', '979ea3eec2a5c2039b69d4e1714263040dbce07255090724aa1c70ac4c147cc0', 'validated', '{"audio_key":"d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b","entity_key":"lx_past_experiences_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"979ea3eec2a5c2039b69d4e1714263040dbce07255090724aa1c70ac4c147cc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_02 -> audio/generated/it-IT/lexical/d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f821b08b-57ba-58a7-8346-aae986e22e84', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f65038c9ba708697a3a6733faab13137d59258be602f1cbd47b2c9fafb3298f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0f54fea-901c-5c0c-8841-d6d4732dd024', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f821b08b-57ba-58a7-8346-aae986e22e84', 1), 'f65038c9ba708697a3a6733faab13137d59258be602f1cbd47b2c9fafb3298f2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b.mp3', 1018, '2026-09-14 03:27:00.590542', '979ea3eec2a5c2039b69d4e1714263040dbce07255090724aa1c70ac4c147cc0', 'validated', '{"audio_key":"d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b","entity_key":"wf_past_experiences_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"979ea3eec2a5c2039b69d4e1714263040dbce07255090724aa1c70ac4c147cc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d35f2ba8be0cfbb3faf1b67ab5b443acb67c4cdf77f9f12997962914fc6ca80b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_06 -> audio/generated/it-IT/lexical/d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c4963443-f961-593c-9f24-50dabc64b4c5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946454d89f0fa78c728c55cda79cf8d42d3e4437c3577ea3f41486eb2660d0c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3e569a1-e5c3-5087-b1f6-03a967d12beb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c4963443-f961-593c-9f24-50dabc64b4c5', 1), '946454d89f0fa78c728c55cda79cf8d42d3e4437c3577ea3f41486eb2660d0c3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261.mp3', 1201, '2026-09-14 03:27:00.699374', '28b51537f64efd0638c493ddb433d385385c33ab0e2dd507453a125825b06b41', 'validated', '{"audio_key":"d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261","entity_key":"lx_weather_and_change_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28b51537f64efd0638c493ddb433d385385c33ab0e2dd507453a125825b06b41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_06 -> audio/generated/it-IT/lexical/d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('64f8d19a-cfce-5a9f-a54b-6060d0299e0c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946454d89f0fa78c728c55cda79cf8d42d3e4437c3577ea3f41486eb2660d0c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a318e9b-aeb3-5bb5-aa5b-03f8c5f62b6d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('64f8d19a-cfce-5a9f-a54b-6060d0299e0c', 1), '946454d89f0fa78c728c55cda79cf8d42d3e4437c3577ea3f41486eb2660d0c3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261.mp3', 1201, '2026-09-14 03:27:00.699374', '28b51537f64efd0638c493ddb433d385385c33ab0e2dd507453a125825b06b41', 'validated', '{"audio_key":"d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261","entity_key":"wf_weather_and_change_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28b51537f64efd0638c493ddb433d385385c33ab0e2dd507453a125825b06b41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d88d10a98b5f28a1af0342f2e84163de9d86d4c42103aeb0a61997e3d6168261.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_01 -> audio/generated/it-IT/lexical/dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ad303de0-7fe2-5b8d-84d0-5f7bfd71272b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26c1f380387acef6551bf6f9cb2bf6faeb02be146892840e507b1f5627605e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3ee736f-f564-5116-8ea4-b26a4388d77e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ad303de0-7fe2-5b8d-84d0-5f7bfd71272b', 1), '26c1f380387acef6551bf6f9cb2bf6faeb02be146892840e507b1f5627605e3e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6.mp3', 914, '2026-09-14 03:27:01.575223', '411009da4d4a9b65bd5b36292a98307e5fed136917d8f6c73552ac9c25a466d6', 'validated', '{"audio_key":"dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6","entity_key":"lx_health_and_advice_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"411009da4d4a9b65bd5b36292a98307e5fed136917d8f6c73552ac9c25a466d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_01 -> audio/generated/it-IT/lexical/dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c37c242b-1239-544c-b3eb-69f9f820479e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26c1f380387acef6551bf6f9cb2bf6faeb02be146892840e507b1f5627605e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('668c01d5-e731-5ba4-8f11-dc0fa2ecb55d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c37c242b-1239-544c-b3eb-69f9f820479e', 1), '26c1f380387acef6551bf6f9cb2bf6faeb02be146892840e507b1f5627605e3e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6.mp3', 914, '2026-09-14 03:27:01.575223', '411009da4d4a9b65bd5b36292a98307e5fed136917d8f6c73552ac9c25a466d6', 'validated', '{"audio_key":"dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6","entity_key":"wf_health_and_advice_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"411009da4d4a9b65bd5b36292a98307e5fed136917d8f6c73552ac9c25a466d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dd73b4a2217f14d6088fd20a27d6556c365decc9607ca597afa0c898541392a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_05 -> audio/generated/it-IT/lexical/df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1afa3b69-8bca-589d-a355-0bd2ae05483f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4fd26b58496bca506244c5552d59c86b418fec205bb88df2e93af57861f17f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b76365a-e442-50a5-a0b4-ce6ff6895934', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1afa3b69-8bca-589d-a355-0bd2ae05483f', 1), 'c4fd26b58496bca506244c5552d59c86b418fec205bb88df2e93af57861f17f9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405.mp3', 1280, '2026-09-14 03:27:01.672641', 'ea6938669ea353de2aafb4a91f1f50e80129f3e0ca3638ec196e30f487cf4e51', 'validated', '{"audio_key":"df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405","entity_key":"lx_reasons_and_results_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ea6938669ea353de2aafb4a91f1f50e80129f3e0ca3638ec196e30f487cf4e51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_05 -> audio/generated/it-IT/lexical/df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2a4b54d2-5721-58e7-89ae-ed860c15fbec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4fd26b58496bca506244c5552d59c86b418fec205bb88df2e93af57861f17f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f2b3045-1bc2-538b-99b1-f136ad6541ad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2a4b54d2-5721-58e7-89ae-ed860c15fbec', 1), 'c4fd26b58496bca506244c5552d59c86b418fec205bb88df2e93af57861f17f9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405.mp3', 1280, '2026-09-14 03:27:01.672641', 'ea6938669ea353de2aafb4a91f1f50e80129f3e0ca3638ec196e30f487cf4e51', 'validated', '{"audio_key":"df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405","entity_key":"wf_reasons_and_results_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ea6938669ea353de2aafb4a91f1f50e80129f3e0ca3638ec196e30f487cf4e51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/df6a69c861a2071497d01a5becf1949c523dba65a75f9682856bc43fce276405.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_06 -> audio/generated/it-IT/lexical/e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ccd8a2c9-89dc-5378-aa29-46bc08b61f55', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edc5f2cc3c95b2a8ba4f00aa93d4fd3f80474d1b59a708fc080ca4d9b4cad2f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb783213-3f9f-50ce-9839-eec0e1fa07c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ccd8a2c9-89dc-5378-aa29-46bc08b61f55', 1), 'edc5f2cc3c95b2a8ba4f00aa93d4fd3f80474d1b59a708fc080ca4d9b4cad2f8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2.mp3', 1097, '2026-09-14 03:27:02.635355', '1b677116648d2f2f683cd47c18b0bd45179ea58a6b1373e0d506758e49cd2786', 'validated', '{"audio_key":"e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2","entity_key":"lx_ability_and_permission_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1b677116648d2f2f683cd47c18b0bd45179ea58a6b1373e0d506758e49cd2786","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_06 -> audio/generated/it-IT/lexical/e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0d776b49-3e3a-507c-b001-861aeda868b0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edc5f2cc3c95b2a8ba4f00aa93d4fd3f80474d1b59a708fc080ca4d9b4cad2f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe6ecd4-74db-51da-8b75-473ca3bce673', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0d776b49-3e3a-507c-b001-861aeda868b0', 1), 'edc5f2cc3c95b2a8ba4f00aa93d4fd3f80474d1b59a708fc080ca4d9b4cad2f8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2.mp3', 1097, '2026-09-14 03:27:02.635355', '1b677116648d2f2f683cd47c18b0bd45179ea58a6b1373e0d506758e49cd2786', 'validated', '{"audio_key":"e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2","entity_key":"wf_ability_and_permission_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1b677116648d2f2f683cd47c18b0bd45179ea58a6b1373e0d506758e49cd2786","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e147695121296751b302216780c180af5c532fd5bd062864c061925ef0c093d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_06 -> audio/generated/it-IT/lexical/e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3341aba-7d31-5417-b2e3-e26e04dd7d43', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff97296b036c34d0033dbfdc01a3eaaf7623bff6edd50ab5436f86d6b420f2c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bb26f15-87b5-5b2f-84a4-4ee46e5c0337', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3341aba-7d31-5417-b2e3-e26e04dd7d43', 1), 'ff97296b036c34d0033dbfdc01a3eaaf7623bff6edd50ab5436f86d6b420f2c4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58.mp3', 731, '2026-09-14 03:27:02.605935', '00a1e7fdb95357e5c1be395241b9b57e21749f3cac52253a55fcd3a9f7c2dcc6', 'validated', '{"audio_key":"e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58","entity_key":"lx_past_experiences_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"00a1e7fdb95357e5c1be395241b9b57e21749f3cac52253a55fcd3a9f7c2dcc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_06 -> audio/generated/it-IT/lexical/e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7fdd262b-9d80-5d9f-b537-f07d54cf229e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff97296b036c34d0033dbfdc01a3eaaf7623bff6edd50ab5436f86d6b420f2c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63877ed7-5837-5601-8b7c-8f225034bfcb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7fdd262b-9d80-5d9f-b537-f07d54cf229e', 1), 'ff97296b036c34d0033dbfdc01a3eaaf7623bff6edd50ab5436f86d6b420f2c4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58.mp3', 731, '2026-09-14 03:27:02.605935', '00a1e7fdb95357e5c1be395241b9b57e21749f3cac52253a55fcd3a9f7c2dcc6', 'validated', '{"audio_key":"e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58","entity_key":"wf_past_experiences_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"00a1e7fdb95357e5c1be395241b9b57e21749f3cac52253a55fcd3a9f7c2dcc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e5dae5dc76040d4d9b227c24a0a7a241e559c98660b6f4b8ecfb1d352522bd58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_06 -> audio/generated/it-IT/lexical/efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7c048d6d-3643-5a53-a038-4f1535fde77c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7543e4f2434d8977ef32cfca598ab59455ff84bb022418f937bc14b43b2cb886'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96dd64ac-3de3-56ae-b3bd-e87bdcbdbe5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7c048d6d-3643-5a53-a038-4f1535fde77c', 1), '7543e4f2434d8977ef32cfca598ab59455ff84bb022418f937bc14b43b2cb886',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be.mp3', 1097, '2026-09-14 03:27:03.583340', 'bc189ee31c2cd9c2467e4c2acc06ee231b36805b086c228a17b13b03f9547eef', 'validated', '{"audio_key":"efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be","entity_key":"lx_reasons_and_results_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bc189ee31c2cd9c2467e4c2acc06ee231b36805b086c228a17b13b03f9547eef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_06 -> audio/generated/it-IT/lexical/efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('19a83e4c-bc41-5c4b-97fa-903a65a8b85e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7543e4f2434d8977ef32cfca598ab59455ff84bb022418f937bc14b43b2cb886'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7e4b5ad-45af-52fa-83db-684aa5350328', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('19a83e4c-bc41-5c4b-97fa-903a65a8b85e', 1), '7543e4f2434d8977ef32cfca598ab59455ff84bb022418f937bc14b43b2cb886',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be.mp3', 1097, '2026-09-14 03:27:03.583340', 'bc189ee31c2cd9c2467e4c2acc06ee231b36805b086c228a17b13b03f9547eef', 'validated', '{"audio_key":"efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be","entity_key":"wf_reasons_and_results_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bc189ee31c2cd9c2467e4c2acc06ee231b36805b086c228a17b13b03f9547eef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/efcc647cca8eeefe8d7d6871a0c73683c5575eb5d2b696f98f5653c2fac7c8be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_04 -> audio/generated/it-IT/lexical/f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8b87d7c-98a9-5ff2-974d-6bdc64857ecb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50ba6f7c89c49066e2646ae247202c3b4f8089fd3eb57fc26e391e4b5623707b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ba7eab5-5a25-531f-894e-69bb859aa1a6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8b87d7c-98a9-5ff2-974d-6bdc64857ecb', 1), '50ba6f7c89c49066e2646ae247202c3b4f8089fd3eb57fc26e391e4b5623707b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452.mp3', 1097, '2026-09-14 03:27:03.703869', 'faf2e0cebb8b968687d9d085327a0d4e855bfc4394b87dcf24d8d433258769fc', 'validated', '{"audio_key":"f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452","entity_key":"lx_past_experiences_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"faf2e0cebb8b968687d9d085327a0d4e855bfc4394b87dcf24d8d433258769fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_04 -> audio/generated/it-IT/lexical/f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('845bea69-d887-52c0-8bed-de9f1707c730', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50ba6f7c89c49066e2646ae247202c3b4f8089fd3eb57fc26e391e4b5623707b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2161377c-95b3-5b41-9423-383f0501712d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('845bea69-d887-52c0-8bed-de9f1707c730', 1), '50ba6f7c89c49066e2646ae247202c3b4f8089fd3eb57fc26e391e4b5623707b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452.mp3', 1097, '2026-09-14 03:27:03.703869', 'faf2e0cebb8b968687d9d085327a0d4e855bfc4394b87dcf24d8d433258769fc', 'validated', '{"audio_key":"f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452","entity_key":"wf_past_experiences_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"faf2e0cebb8b968687d9d085327a0d4e855bfc4394b87dcf24d8d433258769fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f5999119ac3df8d94354edbf5131e308d44cb634dfcd2648a1c60eb6c1b73452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_02 -> audio/generated/it-IT/lexical/fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04ece6a7-9c2c-5fc3-9930-5e3abd687284', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81eba17e32b637a31536ac4f18bcf50f266fcc077a5dba07bd85df251e89e52f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c005b7cf-e792-58e1-a213-a5705227ec14', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04ece6a7-9c2c-5fc3-9930-5e3abd687284', 1), '81eba17e32b637a31536ac4f18bcf50f266fcc077a5dba07bd85df251e89e52f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248.mp3', 966, '2026-09-14 03:27:04.523652', '9bef2eeac4bd71b98118686b153d11032663c1b41dc0c9581c2298c3812abde1', 'validated', '{"audio_key":"fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248","entity_key":"lx_ability_and_permission_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9bef2eeac4bd71b98118686b153d11032663c1b41dc0c9581c2298c3812abde1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_02 -> audio/generated/it-IT/lexical/fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cea7bd64-4a52-5112-bd8c-2e48a9d93a55', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81eba17e32b637a31536ac4f18bcf50f266fcc077a5dba07bd85df251e89e52f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea0f8363-d841-5cc9-a087-bb513d2738f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cea7bd64-4a52-5112-bd8c-2e48a9d93a55', 1), '81eba17e32b637a31536ac4f18bcf50f266fcc077a5dba07bd85df251e89e52f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248.mp3', 966, '2026-09-14 03:27:04.523652', '9bef2eeac4bd71b98118686b153d11032663c1b41dc0c9581c2298c3812abde1', 'validated', '{"audio_key":"fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248","entity_key":"wf_ability_and_permission_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9bef2eeac4bd71b98118686b153d11032663c1b41dc0c9581c2298c3812abde1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fb4e8ca2fb6983689a4368c9d62aae9afe132ee87566ad23c2c9cf03121cf248.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_01 -> audio/generated/it-IT/lexical/fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b6f10563-3bec-5a61-b6ac-f5ee0ccd2528', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad56ef2b1aa91676f0103449c4936644245a9a376b0c3497da6c132559f1b0a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83d0b0bf-dded-509c-be59-b7903aece4d2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b6f10563-3bec-5a61-b6ac-f5ee0ccd2528', 1), 'ad56ef2b1aa91676f0103449c4936644245a9a376b0c3497da6c132559f1b0a9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c.mp3', 966, '2026-09-14 03:27:04.745809', 'a19fc68e6a652dee412e029f86b07abafb7fe9767e0f82d296ebac9408e5b92e', 'validated', '{"audio_key":"fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c","entity_key":"lx_comparisons_and_choice_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a19fc68e6a652dee412e029f86b07abafb7fe9767e0f82d296ebac9408e5b92e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_01 -> audio/generated/it-IT/lexical/fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9716b5d8-d218-597e-b043-543bb942ba6e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad56ef2b1aa91676f0103449c4936644245a9a376b0c3497da6c132559f1b0a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5be9df65-31a7-5b80-981f-9a77a6f45330', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9716b5d8-d218-597e-b043-543bb942ba6e', 1), 'ad56ef2b1aa91676f0103449c4936644245a9a376b0c3497da6c132559f1b0a9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c.mp3', 966, '2026-09-14 03:27:04.745809', 'a19fc68e6a652dee412e029f86b07abafb7fe9767e0f82d296ebac9408e5b92e', 'validated', '{"audio_key":"fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c","entity_key":"wf_comparisons_and_choice_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a19fc68e6a652dee412e029f86b07abafb7fe9767e0f82d296ebac9408e5b92e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fdc3fe50ec4de2a36b02dc6ebe112a62a032223a669842096653658cb07e152c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_05 -> audio/generated/it-IT/lexical/ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ff277c7a-8901-54ec-83d3-6a3c2d3a5627', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd048971de08bf77bef77da9fdca82339c4bba9799b390812af813460e3e4e216'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f065ba3-aa14-518a-a7e6-29b9a8ae02c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ff277c7a-8901-54ec-83d3-6a3c2d3a5627', 1), 'd048971de08bf77bef77da9fdca82339c4bba9799b390812af813460e3e4e216',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba.mp3', 966, '2026-09-14 03:27:05.469366', 'bcd6490713badac4e4a49ee878be12bad31ef874967da078005cc34d46c4ef44', 'validated', '{"audio_key":"ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba","entity_key":"lx_ability_and_permission_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bcd6490713badac4e4a49ee878be12bad31ef874967da078005cc34d46c4ef44","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_05 -> audio/generated/it-IT/lexical/ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9fe731c4-6817-55b8-ab97-6162cc2022e8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd048971de08bf77bef77da9fdca82339c4bba9799b390812af813460e3e4e216'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b62f7a61-f184-59a9-8ba7-563884cc156a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9fe731c4-6817-55b8-ab97-6162cc2022e8', 1), 'd048971de08bf77bef77da9fdca82339c4bba9799b390812af813460e3e4e216',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba.mp3', 966, '2026-09-14 03:27:05.469366', 'bcd6490713badac4e4a49ee878be12bad31ef874967da078005cc34d46c4ef44', 'validated', '{"audio_key":"ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba","entity_key":"wf_ability_and_permission_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bcd6490713badac4e4a49ee878be12bad31ef874967da078005cc34d46c4ef44","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ff1e8e48a1724223801bb1537e65e93add244aa3a88b3156bb9a3a7c767e4aba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_03 -> audio/generated/it-IT/lexical/ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87d0497e-1994-52ca-a398-bf585ecaaea8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bfb8b6baa7b8066ffce50c5190acb90279a12edb566f95312d8051d0c051a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa6b82cf-d77f-5f0c-9685-0c0d7587b06e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87d0497e-1994-52ca-a398-bf585ecaaea8', 1), 'c7bfb8b6baa7b8066ffce50c5190acb90279a12edb566f95312d8051d0c051a5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d.mp3', 1018, '2026-09-14 03:27:05.697193', '2e81a44988001f042716d8a09ca34c58423217065635ae11cedd9d2addaea85c', 'validated', '{"audio_key":"ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d","entity_key":"lx_health_and_advice_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e81a44988001f042716d8a09ca34c58423217065635ae11cedd9d2addaea85c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_03 -> audio/generated/it-IT/lexical/ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('273c2a60-1cd6-58bf-9c1f-89ef50ad3d14', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bfb8b6baa7b8066ffce50c5190acb90279a12edb566f95312d8051d0c051a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f66c910b-6e8b-5bed-bc3a-2b0c55290a03', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('273c2a60-1cd6-58bf-9c1f-89ef50ad3d14', 1), 'c7bfb8b6baa7b8066ffce50c5190acb90279a12edb566f95312d8051d0c051a5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d.mp3', 1018, '2026-09-14 03:27:05.697193', '2e81a44988001f042716d8a09ca34c58423217065635ae11cedd9d2addaea85c', 'validated', '{"audio_key":"ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d","entity_key":"wf_health_and_advice_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e81a44988001f042716d8a09ca34c58423217065635ae11cedd9d2addaea85c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ffa23ca9216241a19512cd69b4cf815254fb6d5d53e48331084bd07170cb638d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_02 -> audio/generated/it-IT/utterances/00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b4acacf-deff-57fc-83df-dcd67c08d2c0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7453030645ebda5528e422d9afe03dab494f3924f871371303bb2ece66f7bbc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('470916a4-19c2-5d82-86c3-e4d55e6b321f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b4acacf-deff-57fc-83df-dcd67c08d2c0', 1), '7453030645ebda5528e422d9afe03dab494f3924f871371303bb2ece66f7bbc7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439.mp3', 1985, '2026-09-14 03:27:06.533935', '0914c0fe7045e77ec5c3934bea91bd5c93e6950c022daba574aeee20204fde1f', 'validated', '{"audio_key":"00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439","entity_key":"u_past_experiences_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0914c0fe7045e77ec5c3934bea91bd5c93e6950c022daba574aeee20204fde1f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_past_experiences_01_listen -> audio/generated/it-IT/utterances/00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3437c4ce-a068-553a-8d8e-5bc0526fb4b9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_past_experiences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7453030645ebda5528e422d9afe03dab494f3924f871371303bb2ece66f7bbc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89f8c0e3-0c39-5d12-ab75-823e98ce9718', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3437c4ce-a068-553a-8d8e-5bc0526fb4b9', 1), '7453030645ebda5528e422d9afe03dab494f3924f871371303bb2ece66f7bbc7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439.mp3', 1985, '2026-09-14 03:27:06.533935', '0914c0fe7045e77ec5c3934bea91bd5c93e6950c022daba574aeee20204fde1f', 'validated', '{"audio_key":"00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439","entity_key":"e_past_experiences_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0914c0fe7045e77ec5c3934bea91bd5c93e6950c022daba574aeee20204fde1f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/00160e85389eb43ad26ae9aee824fb4b2498c2e3c6c6f77a75133072385d6439.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_03 -> audio/generated/it-IT/utterances/004a19588f1da75faf1a358b42acb7614f782b000b4986186d2aa0b8c91ac07e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ebf6e93-8b07-5729-84a1-0fd6f16fc701', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ac1c466609d7a3f6f9649cf1488eb5996e7c91a5d96c62993aa507e3335c15a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df4cd7f0-5cfd-52cc-9298-f46a8ac0907c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ebf6e93-8b07-5729-84a1-0fd6f16fc701', 1), '5ac1c466609d7a3f6f9649cf1488eb5996e7c91a5d96c62993aa507e3335c15a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/004a19588f1da75faf1a358b42acb7614f782b000b4986186d2aa0b8c91ac07e.mp3', 1515, '2026-09-14 03:27:06.707110', '6be4efac1bbe143946f442569c2fce0c3c20cb4280d6dfbc99fc29e41adc4f0e', 'validated', '{"audio_key":"004a19588f1da75faf1a358b42acb7614f782b000b4986186d2aa0b8c91ac07e","entity_key":"u_opinions_and_softening_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6be4efac1bbe143946f442569c2fce0c3c20cb4280d6dfbc99fc29e41adc4f0e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/004a19588f1da75faf1a358b42acb7614f782b000b4986186d2aa0b8c91ac07e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_02 -> audio/generated/it-IT/utterances/033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c1a1f97-25cd-5fa0-bdf2-31efd4130c42', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c67f71ee8993f42a18b5d29335be21dcd1ad3a5db9309825192e958edacc3e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35ba91a7-ac98-551f-a2ae-b1612987c7b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c1a1f97-25cd-5fa0-bdf2-31efd4130c42', 1), '5c67f71ee8993f42a18b5d29335be21dcd1ad3a5db9309825192e958edacc3e2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654.mp3', 1515, '2026-09-14 03:27:07.519457', '5c6c5053c7529a895c54624a37cbc02959874dc7e785b8bef3573052c1d20d9a', 'validated', '{"audio_key":"033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654","entity_key":"u_opinions_and_softening_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5c6c5053c7529a895c54624a37cbc02959874dc7e785b8bef3573052c1d20d9a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_softening_01_listen -> audio/generated/it-IT/utterances/033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5ac1da28-30be-5295-92d9-85524892b513', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_softening_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c67f71ee8993f42a18b5d29335be21dcd1ad3a5db9309825192e958edacc3e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e90fc39-8a6f-520c-a8c5-3e2f8d124734', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5ac1da28-30be-5295-92d9-85524892b513', 1), '5c67f71ee8993f42a18b5d29335be21dcd1ad3a5db9309825192e958edacc3e2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654.mp3', 1515, '2026-09-14 03:27:07.519457', '5c6c5053c7529a895c54624a37cbc02959874dc7e785b8bef3573052c1d20d9a', 'validated', '{"audio_key":"033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654","entity_key":"e_opinions_and_softening_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5c6c5053c7529a895c54624a37cbc02959874dc7e785b8bef3573052c1d20d9a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/033d2fcf28527f9506fb8881376fb88eca2da004d8c6f0982ad991d58e452654.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_02 -> audio/generated/it-IT/utterances/0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a4f05e81-8a32-596b-8953-99d77a66b142', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb58d7eeff7d0e822cfbea52f7a8b258d4495d8a759c8673ff2bf7714f8fbf26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0818b7c7-6f33-51e1-a2ae-e887dcc16d05', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a4f05e81-8a32-596b-8953-99d77a66b142', 1), 'eb58d7eeff7d0e822cfbea52f7a8b258d4495d8a759c8673ff2bf7714f8fbf26',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67.mp3', 2533, '2026-09-14 03:27:07.829471', '3dbba79c7f56f652bba508fca6a432efe7b687bcd68ff57ce88da35583ac57e2', 'validated', '{"audio_key":"0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67","entity_key":"u_reasons_and_results_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3dbba79c7f56f652bba508fca6a432efe7b687bcd68ff57ce88da35583ac57e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reasons_and_results_01_listen -> audio/generated/it-IT/utterances/0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8410af41-7a4f-514a-9fc6-af1ed2552453', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reasons_and_results_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb58d7eeff7d0e822cfbea52f7a8b258d4495d8a759c8673ff2bf7714f8fbf26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78971018-3ede-5edd-8867-99c4d3100bc3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8410af41-7a4f-514a-9fc6-af1ed2552453', 1), 'eb58d7eeff7d0e822cfbea52f7a8b258d4495d8a759c8673ff2bf7714f8fbf26',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67.mp3', 2533, '2026-09-14 03:27:07.829471', '3dbba79c7f56f652bba508fca6a432efe7b687bcd68ff57ce88da35583ac57e2', 'validated', '{"audio_key":"0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67","entity_key":"e_reasons_and_results_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3dbba79c7f56f652bba508fca6a432efe7b687bcd68ff57ce88da35583ac57e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0a8a95aec30dfb64d0fabcd2ecd06b9e9f1e0fe509bc3c7cb3bc063f6fe5cf67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_weekend_capstone_02 -> audio/generated/it-IT/utterances/0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b758932-7dde-5c30-9ad6-577e9e23fe6b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_weekend_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f417cebfb39fe3f75f7d4358d19af56b1ccdd119edfeee35a13cf5a1970eb610'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60e0d0c9-f47d-5f93-93d5-073aea520cb7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b758932-7dde-5c30-9ad6-577e9e23fe6b', 1), 'f417cebfb39fe3f75f7d4358d19af56b1ccdd119edfeee35a13cf5a1970eb610',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168.mp3', 2324, '2026-09-14 03:27:08.594465', 'f87f9d5dc4e3035b810ad1cc05b4998268e4dbea7db1f9c0cc2de5312a948c8b', 'validated', '{"audio_key":"0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168","entity_key":"u_a2_weekend_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f87f9d5dc4e3035b810ad1cc05b4998268e4dbea7db1f9c0cc2de5312a948c8b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_weekend_capstone_01_listen -> audio/generated/it-IT/utterances/0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('08ded1bb-fe25-5e0f-a5ee-7e468b0792d4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_weekend_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f417cebfb39fe3f75f7d4358d19af56b1ccdd119edfeee35a13cf5a1970eb610'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('deb1ea1a-69bc-529f-aa15-4661245410ea', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('08ded1bb-fe25-5e0f-a5ee-7e468b0792d4', 1), 'f417cebfb39fe3f75f7d4358d19af56b1ccdd119edfeee35a13cf5a1970eb610',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168.mp3', 2324, '2026-09-14 03:27:08.594465', 'f87f9d5dc4e3035b810ad1cc05b4998268e4dbea7db1f9c0cc2de5312a948c8b', 'validated', '{"audio_key":"0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168","entity_key":"e_a2_weekend_capstone_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f87f9d5dc4e3035b810ad1cc05b4998268e4dbea7db1f9c0cc2de5312a948c8b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0abec1291e995044c8617aa5c8662c1f41b2c73b3fddb21f90c9b0c7c5fb5168.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_04 -> audio/generated/it-IT/utterances/0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('79e92662-9507-50de-bd38-6ff22a3325d8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '307e90849b525dab00713aab28cbfebcc27f8db425d89bee1ca5bcc14fa904fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ab29e6-1edf-563f-980c-8b23b7e6c121', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('79e92662-9507-50de-bd38-6ff22a3325d8', 1), '307e90849b525dab00713aab28cbfebcc27f8db425d89bee1ca5bcc14fa904fd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a.mp3', 1619, '2026-09-14 03:27:08.840545', '41f3d018848c4a2ead23a99211ee1b7fbf181b5a57500be8e9536a8a4bae3461', 'validated', '{"audio_key":"0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a","entity_key":"u_comparisons_and_choice_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41f3d018848c4a2ead23a99211ee1b7fbf181b5a57500be8e9536a8a4bae3461","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_comparisons_and_choice_02_listen -> audio/generated/it-IT/utterances/0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('260565c7-97a0-553b-9dd3-0ef46f840a4a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_comparisons_and_choice_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '307e90849b525dab00713aab28cbfebcc27f8db425d89bee1ca5bcc14fa904fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('168b7d27-a9a1-5adc-a5ab-13f3f45d12cc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('260565c7-97a0-553b-9dd3-0ef46f840a4a', 1), '307e90849b525dab00713aab28cbfebcc27f8db425d89bee1ca5bcc14fa904fd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a.mp3', 1619, '2026-09-14 03:27:08.840545', '41f3d018848c4a2ead23a99211ee1b7fbf181b5a57500be8e9536a8a4bae3461', 'validated', '{"audio_key":"0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a","entity_key":"e_comparisons_and_choice_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41f3d018848c4a2ead23a99211ee1b7fbf181b5a57500be8e9536a8a4bae3461","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0c2c2ce354254e795e8cb222ded5653095428e4f9a37ffc4b690a469ee6e7c2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_02 -> audio/generated/it-IT/utterances/1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4fa20751-69f0-5ba8-9240-30280dddc11a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91e1d3622c1b6969237e4756ce47d14294aae13bcf5eb9ea9647f4521a28695c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3773686-c99e-5d92-a856-a82a6f5fa4c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4fa20751-69f0-5ba8-9240-30280dddc11a', 1), '91e1d3622c1b6969237e4756ce47d14294aae13bcf5eb9ea9647f4521a28695c',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb.mp3', 1436, '2026-09-14 03:27:09.756110', 'eb34bb11ec297e06ecce6c5aab0c8c0fc3fc8926787796c823b16710c02d71e7', 'validated', '{"audio_key":"1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb","entity_key":"u_health_and_advice_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eb34bb11ec297e06ecce6c5aab0c8c0fc3fc8926787796c823b16710c02d71e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_advice_01_listen -> audio/generated/it-IT/utterances/1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ab3bf221-c90a-5ada-90af-ae0908ee6b37', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_advice_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91e1d3622c1b6969237e4756ce47d14294aae13bcf5eb9ea9647f4521a28695c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78e44617-af53-5467-b601-90b551fcd449', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ab3bf221-c90a-5ada-90af-ae0908ee6b37', 1), '91e1d3622c1b6969237e4756ce47d14294aae13bcf5eb9ea9647f4521a28695c',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb.mp3', 1436, '2026-09-14 03:27:09.756110', 'eb34bb11ec297e06ecce6c5aab0c8c0fc3fc8926787796c823b16710c02d71e7', 'validated', '{"audio_key":"1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb","entity_key":"e_health_and_advice_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eb34bb11ec297e06ecce6c5aab0c8c0fc3fc8926787796c823b16710c02d71e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1391228684524d4294d6edf381e87b99557e635a7aeef0f164c97acbf94c16eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_04 -> audio/generated/it-IT/utterances/1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('10246566-5c27-5d55-ad6d-83f81dc3fc52', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dbc1ed560f7cf5a7aea8a28dc8882f091244dc9383492b273786915299eaae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f63302f1-3f3c-535e-957e-05d0421e7119', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('10246566-5c27-5d55-ad6d-83f81dc3fc52', 1), '2dbc1ed560f7cf5a7aea8a28dc8882f091244dc9383492b273786915299eaae1',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b.mp3', 1488, '2026-09-14 03:27:09.844109', '1a8b043ef32a3cfc35428114fcabc397c97c312dfdf9af168e18c3498ab46e94', 'validated', '{"audio_key":"1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b","entity_key":"u_health_and_advice_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1a8b043ef32a3cfc35428114fcabc397c97c312dfdf9af168e18c3498ab46e94","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_advice_02_listen -> audio/generated/it-IT/utterances/1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1775e192-f280-56db-b574-261111ebb526', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_advice_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dbc1ed560f7cf5a7aea8a28dc8882f091244dc9383492b273786915299eaae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fff9f47b-5297-5cb2-8ca0-fdd36dd1b076', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1775e192-f280-56db-b574-261111ebb526', 1), '2dbc1ed560f7cf5a7aea8a28dc8882f091244dc9383492b273786915299eaae1',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b.mp3', 1488, '2026-09-14 03:27:09.844109', '1a8b043ef32a3cfc35428114fcabc397c97c312dfdf9af168e18c3498ab46e94', 'validated', '{"audio_key":"1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b","entity_key":"e_health_and_advice_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1a8b043ef32a3cfc35428114fcabc397c97c312dfdf9af168e18c3498ab46e94","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1fb6e8c0e168cdf49a60835a0b013d9905dc46daef15abe3dcbb05ca5e5e983b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_01 -> audio/generated/it-IT/utterances/220ec46d857581e87167867e46eb534caa8ac203be68fcdc9b536020c433d4aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26a22a79-0a76-58a7-8e21-6ade2f5ce744', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '354b2af24ebcbb3e8cb0edac55b2c95b8afc3d8d7048e2ad6a93497ae569500a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec627cc1-cf87-5f73-893b-460f25e296fb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26a22a79-0a76-58a7-8e21-6ade2f5ce744', 1), '354b2af24ebcbb3e8cb0edac55b2c95b8afc3d8d7048e2ad6a93497ae569500a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/220ec46d857581e87167867e46eb534caa8ac203be68fcdc9b536020c433d4aa.mp3', 1802, '2026-09-14 03:27:10.804727', 'bca01edc7e182cbd48f4621b92800f1175d1c301f501e67140b6c3c8652d3b41', 'validated', '{"audio_key":"220ec46d857581e87167867e46eb534caa8ac203be68fcdc9b536020c433d4aa","entity_key":"u_plans_and_intentions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bca01edc7e182cbd48f4621b92800f1175d1c301f501e67140b6c3c8652d3b41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/220ec46d857581e87167867e46eb534caa8ac203be68fcdc9b536020c433d4aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_03 -> audio/generated/it-IT/utterances/26e950c377f7d241013ad07505f9f09f750585f622260c84ad85391f7105ad04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d8ebfbc3-c56d-53d4-ab4f-2069fe04dc90', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54ca9c140e41dec8b9141865c6a90c7ab99d9c617105679527ba414de11eddf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1914bed1-9d6a-5c36-b858-d8a816682456', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d8ebfbc3-c56d-53d4-ab4f-2069fe04dc90', 1), '54ca9c140e41dec8b9141865c6a90c7ab99d9c617105679527ba414de11eddf9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/26e950c377f7d241013ad07505f9f09f750585f622260c84ad85391f7105ad04.mp3', 1436, '2026-09-14 03:27:10.835415', 'dbef22e2910d6456ec6af09daf3bd407d016450ffcdc066d3048928d59706586', 'validated', '{"audio_key":"26e950c377f7d241013ad07505f9f09f750585f622260c84ad85391f7105ad04","entity_key":"u_health_and_advice_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dbef22e2910d6456ec6af09daf3bd407d016450ffcdc066d3048928d59706586","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/26e950c377f7d241013ad07505f9f09f750585f622260c84ad85391f7105ad04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_weekend_capstone_03 -> audio/generated/it-IT/utterances/2d4d14ae3f202b599b6bb35eb028d5000d78789ef4af8d0ae2211c58e4d4819c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cb74cc4f-adeb-528c-abae-42759f415067', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_weekend_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '234a175c4fc30dbea61727a5c84523eaad4287bf29593956cc817400ff00ca70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38619218-80c4-5303-86ca-7c9dae3b18c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cb74cc4f-adeb-528c-abae-42759f415067', 1), '234a175c4fc30dbea61727a5c84523eaad4287bf29593956cc817400ff00ca70',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2d4d14ae3f202b599b6bb35eb028d5000d78789ef4af8d0ae2211c58e4d4819c.mp3', 2821, '2026-09-14 03:27:11.911040', 'ca2b96a881824f04cef5843d0c44c5e51841d65706a4fa4b3533249d192af04b', 'validated', '{"audio_key":"2d4d14ae3f202b599b6bb35eb028d5000d78789ef4af8d0ae2211c58e4d4819c","entity_key":"u_a2_weekend_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca2b96a881824f04cef5843d0c44c5e51841d65706a4fa4b3533249d192af04b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2d4d14ae3f202b599b6bb35eb028d5000d78789ef4af8d0ae2211c58e4d4819c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_01 -> audio/generated/it-IT/utterances/33200292ee25779aaebae649535edc7b274a21184cc571a66cdb637425b179b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e4d1004d-36e7-5a31-93b2-2277c4986a45', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f62983e5120059e3382d7bd45fc572080175a61a16bd04d137d4a84732493e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c58b6682-47e2-5c5d-ae4b-717cd2437ae3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e4d1004d-36e7-5a31-93b2-2277c4986a45', 1), '3f62983e5120059e3382d7bd45fc572080175a61a16bd04d137d4a84732493e1',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/33200292ee25779aaebae649535edc7b274a21184cc571a66cdb637425b179b4.mp3', 1697, '2026-09-14 03:27:11.919636', '69a95f15e85419575e8faaeffc8c5e720d8b922374e0e840574a2c8a68bb9f27', 'validated', '{"audio_key":"33200292ee25779aaebae649535edc7b274a21184cc571a66cdb637425b179b4","entity_key":"u_comparisons_and_choice_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"69a95f15e85419575e8faaeffc8c5e720d8b922374e0e840574a2c8a68bb9f27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/33200292ee25779aaebae649535edc7b274a21184cc571a66cdb637425b179b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_04 -> audio/generated/it-IT/utterances/4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9ba77eb3-1401-50ce-82d6-d2f9b75eae17', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e98cf9a8842c234fea543d4c23fd2542edf627556ea59397889fb6610fe6a8bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ab76a76-b5bb-5fc0-9d16-26e3c90ddf0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9ba77eb3-1401-50ce-82d6-d2f9b75eae17', 1), 'e98cf9a8842c234fea543d4c23fd2542edf627556ea59397889fb6610fe6a8bf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876.mp3', 1671, '2026-09-14 03:27:12.928110', '3d14fac8091867a6fd5d89287f4f5384d3550f716f79e2e461795922da58502d', 'validated', '{"audio_key":"4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876","entity_key":"u_reasons_and_results_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3d14fac8091867a6fd5d89287f4f5384d3550f716f79e2e461795922da58502d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reasons_and_results_02_listen -> audio/generated/it-IT/utterances/4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ad8e1088-730e-5722-bc4a-2fc8086ccc5d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reasons_and_results_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e98cf9a8842c234fea543d4c23fd2542edf627556ea59397889fb6610fe6a8bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cd4602d-b71f-5f3a-803c-d0198dcf7e0e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ad8e1088-730e-5722-bc4a-2fc8086ccc5d', 1), 'e98cf9a8842c234fea543d4c23fd2542edf627556ea59397889fb6610fe6a8bf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876.mp3', 1671, '2026-09-14 03:27:12.928110', '3d14fac8091867a6fd5d89287f4f5384d3550f716f79e2e461795922da58502d', 'validated', '{"audio_key":"4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876","entity_key":"e_reasons_and_results_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3d14fac8091867a6fd5d89287f4f5384d3550f716f79e2e461795922da58502d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4208f0002dd3dd553699224d7233f366cb080ce5896b9dd54808023096f42876.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_04 -> audio/generated/it-IT/utterances/537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('76ec03bf-b05c-5678-ac3a-afb4939a70f2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'feda9cd820f6b02c0be0802d760da2b8a4858d3c03122d789f3feb9cad351e89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fc0e5db-d01c-5609-89a4-340382212a29', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('76ec03bf-b05c-5678-ac3a-afb4939a70f2', 1), 'feda9cd820f6b02c0be0802d760da2b8a4858d3c03122d789f3feb9cad351e89',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e.mp3', 1515, '2026-09-14 03:27:13.194314', 'c15a93c614a9797ad0ecd5739ffd772e50753dd5b406ad3e0833552dfb501c6b', 'validated', '{"audio_key":"537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e","entity_key":"u_opinions_and_softening_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c15a93c614a9797ad0ecd5739ffd772e50753dd5b406ad3e0833552dfb501c6b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_softening_02_listen -> audio/generated/it-IT/utterances/537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a0a532fe-1eef-55d9-a119-cffcd3228c1d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_softening_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'feda9cd820f6b02c0be0802d760da2b8a4858d3c03122d789f3feb9cad351e89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf9fb1d3-27d7-5f1c-9071-abf7a0b78f6a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a0a532fe-1eef-55d9-a119-cffcd3228c1d', 1), 'feda9cd820f6b02c0be0802d760da2b8a4858d3c03122d789f3feb9cad351e89',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e.mp3', 1515, '2026-09-14 03:27:13.194314', 'c15a93c614a9797ad0ecd5739ffd772e50753dd5b406ad3e0833552dfb501c6b', 'validated', '{"audio_key":"537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e","entity_key":"e_opinions_and_softening_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c15a93c614a9797ad0ecd5739ffd772e50753dd5b406ad3e0833552dfb501c6b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/537a30ee16b35e932696ab9b990773b48e26e0550c421d26e2a0a83570f2e26e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_01 -> audio/generated/it-IT/utterances/5e91f04df3be0cfecb82ef723508dc658de639ceff96dd741db2bda029bf6b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aab6ecc7-5036-51cc-aaac-5c2c58078f2c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6a65509b089e0d3dc290c0ddd836bc8489e622da037f2a88c7cf05f15d95e3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1dec41b-052f-56bb-8098-da11bef87074', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aab6ecc7-5036-51cc-aaac-5c2c58078f2c', 1), 'b6a65509b089e0d3dc290c0ddd836bc8489e622da037f2a88c7cf05f15d95e3d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5e91f04df3be0cfecb82ef723508dc658de639ceff96dd741db2bda029bf6b24.mp3', 1384, '2026-09-14 03:27:13.933451', 'e0e2d6ba087f9b8589fc4f5e005ebc75c01665d303ebb63916dcbfbc8b47d968', 'validated', '{"audio_key":"5e91f04df3be0cfecb82ef723508dc658de639ceff96dd741db2bda029bf6b24","entity_key":"u_health_and_advice_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e0e2d6ba087f9b8589fc4f5e005ebc75c01665d303ebb63916dcbfbc8b47d968","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5e91f04df3be0cfecb82ef723508dc658de639ceff96dd741db2bda029bf6b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_03 -> audio/generated/it-IT/utterances/5f41e26bfab3a4bfa00509d029b6648c328059f14f8048a5fda702e8921296ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e5c5aaf-a9d1-5472-a2d3-510dab52a671', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca8cb1a484c56f81f28e731c8202dfa34c38b96fa0660bbe7ea08b40b0f29f31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1db392d5-976b-56c8-9687-2f92bbccecd2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e5c5aaf-a9d1-5472-a2d3-510dab52a671', 1), 'ca8cb1a484c56f81f28e731c8202dfa34c38b96fa0660bbe7ea08b40b0f29f31',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5f41e26bfab3a4bfa00509d029b6648c328059f14f8048a5fda702e8921296ef.mp3', 1906, '2026-09-14 03:27:14.230616', '57ddd12f6311d5d29d2aab18870c5f47e2d134073e742c6169715d0874527da5', 'validated', '{"audio_key":"5f41e26bfab3a4bfa00509d029b6648c328059f14f8048a5fda702e8921296ef","entity_key":"u_plans_and_intentions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"57ddd12f6311d5d29d2aab18870c5f47e2d134073e742c6169715d0874527da5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5f41e26bfab3a4bfa00509d029b6648c328059f14f8048a5fda702e8921296ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_02 -> audio/generated/it-IT/utterances/5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('63b73445-281f-5ae5-a0fb-16ed95f83fd9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0036929ad0c7d445475cad36266e4d6a1388c26aedd562818ba664fcd851acba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f2c20ed-0e70-510f-87fb-169c5348f1e8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('63b73445-281f-5ae5-a0fb-16ed95f83fd9', 1), '0036929ad0c7d445475cad36266e4d6a1388c26aedd562818ba664fcd851acba',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a.mp3', 1619, '2026-09-14 03:27:14.964441', 'cdae3ad12dc27faaed74bdd9c55b2db3d970f7cfe3abe6dd942f672476049356', 'validated', '{"audio_key":"5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a","entity_key":"u_weather_and_change_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cdae3ad12dc27faaed74bdd9c55b2db3d970f7cfe3abe6dd942f672476049356","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_weather_and_change_01_listen -> audio/generated/it-IT/utterances/5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4baa2df5-6baa-57a0-ac5b-52f8bf67e901', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_weather_and_change_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0036929ad0c7d445475cad36266e4d6a1388c26aedd562818ba664fcd851acba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c97c0046-08c0-5db0-b68d-a5bd7ffbb8c2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4baa2df5-6baa-57a0-ac5b-52f8bf67e901', 1), '0036929ad0c7d445475cad36266e4d6a1388c26aedd562818ba664fcd851acba',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a.mp3', 1619, '2026-09-14 03:27:14.964441', 'cdae3ad12dc27faaed74bdd9c55b2db3d970f7cfe3abe6dd942f672476049356', 'validated', '{"audio_key":"5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a","entity_key":"e_weather_and_change_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cdae3ad12dc27faaed74bdd9c55b2db3d970f7cfe3abe6dd942f672476049356","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5f52228c5eaf1ff2b501c792f27acfcd10fb9c6dc8d6ef07e1658ad8b580396a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_04 -> audio/generated/it-IT/utterances/6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b4f742b-32e8-5fe9-b452-76158a7a4a06', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8153d2536f11d4d3d8878beef4851911d743095913b60aae42bbf7150020b5bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73d17b50-db90-523c-ac75-e4bcd8406dc1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b4f742b-32e8-5fe9-b452-76158a7a4a06', 1), '8153d2536f11d4d3d8878beef4851911d743095913b60aae42bbf7150020b5bf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988.mp3', 1697, '2026-09-14 03:27:15.252812', '2d2af9fbc87e4776f14456dc96fae7266daa8b1da23dfe1797dbd5a2510cd6bc', 'validated', '{"audio_key":"6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988","entity_key":"u_past_experiences_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d2af9fbc87e4776f14456dc96fae7266daa8b1da23dfe1797dbd5a2510cd6bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_past_experiences_02_listen -> audio/generated/it-IT/utterances/6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0f68c5e7-0247-5bef-bf27-8aac542dc793', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_past_experiences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8153d2536f11d4d3d8878beef4851911d743095913b60aae42bbf7150020b5bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5433ad18-8273-537d-99d2-1ba894f89848', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0f68c5e7-0247-5bef-bf27-8aac542dc793', 1), '8153d2536f11d4d3d8878beef4851911d743095913b60aae42bbf7150020b5bf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988.mp3', 1697, '2026-09-14 03:27:15.252812', '2d2af9fbc87e4776f14456dc96fae7266daa8b1da23dfe1797dbd5a2510cd6bc', 'validated', '{"audio_key":"6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988","entity_key":"e_past_experiences_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d2af9fbc87e4776f14456dc96fae7266daa8b1da23dfe1797dbd5a2510cd6bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6325c4b5c355c27c6d079c01344374dc5c38a7383709d72b3c5a868372343988.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_03 -> audio/generated/it-IT/utterances/6ba42f2692cdc1260b6610ed97295d4ea3298f773a80df84ec72a0bd2602eec1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03d43f27-0c10-598c-b491-8c6ed81b4afb', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70b35e61f72a8cad1cdb27d103cc6334c7d46b8e1c5594e4f5d947953f2fcf84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f43f1206-7a9b-501f-ad27-c82d26928540', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03d43f27-0c10-598c-b491-8c6ed81b4afb', 1), '70b35e61f72a8cad1cdb27d103cc6334c7d46b8e1c5594e4f5d947953f2fcf84',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6ba42f2692cdc1260b6610ed97295d4ea3298f773a80df84ec72a0bd2602eec1.mp3', 1854, '2026-09-14 03:27:15.994900', '98eec45af15fb1c4622fc07926d48cb4e0eafc74d0bbbb8ded7da4861695241e', 'validated', '{"audio_key":"6ba42f2692cdc1260b6610ed97295d4ea3298f773a80df84ec72a0bd2602eec1","entity_key":"u_ability_and_permission_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"98eec45af15fb1c4622fc07926d48cb4e0eafc74d0bbbb8ded7da4861695241e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6ba42f2692cdc1260b6610ed97295d4ea3298f773a80df84ec72a0bd2602eec1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_03 -> audio/generated/it-IT/utterances/7c054ecf0aa4dce720400b638614317fce7d6d2db4e8ce2a4bf2ee3c951a0c80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7630622-413d-5716-9fec-98bcf550b434', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3409765d2d49145444376924294b1e35a646c74edcfe487a7d32c00145385c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39740357-0b56-5b73-9f81-3828cb985a01', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7630622-413d-5716-9fec-98bcf550b434', 1), 'e3409765d2d49145444376924294b1e35a646c74edcfe487a7d32c00145385c2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7c054ecf0aa4dce720400b638614317fce7d6d2db4e8ce2a4bf2ee3c951a0c80.mp3', 1854, '2026-09-14 03:27:16.312500', '876f804eea3ff6273871c4128c262584ec5ca8d747b6b731cd8a1d2ac85fb229', 'validated', '{"audio_key":"7c054ecf0aa4dce720400b638614317fce7d6d2db4e8ce2a4bf2ee3c951a0c80","entity_key":"u_comparisons_and_choice_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"876f804eea3ff6273871c4128c262584ec5ca8d747b6b731cd8a1d2ac85fb229","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7c054ecf0aa4dce720400b638614317fce7d6d2db4e8ce2a4bf2ee3c951a0c80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_03 -> audio/generated/it-IT/utterances/7f35e2d3cde24b6afa7bba775fdf6dce732949aa2cb4d80b9caf4658aff08895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('48f556e1-e717-51b7-a91b-9b3165767960', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8131cc0c650a317a43b206b2790d119224af6acf67ae4e7a8f32253dc3d70b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b270f349-7b84-5b63-907b-fe4ff6de9ca0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('48f556e1-e717-51b7-a91b-9b3165767960', 1), 'c8131cc0c650a317a43b206b2790d119224af6acf67ae4e7a8f32253dc3d70b3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7f35e2d3cde24b6afa7bba775fdf6dce732949aa2cb4d80b9caf4658aff08895.mp3', 1515, '2026-09-14 03:27:16.999824', '78d26c309a6d4630a7548489a73972074322b7dcf0e59aae50a703fd926a0ad4', 'validated', '{"audio_key":"7f35e2d3cde24b6afa7bba775fdf6dce732949aa2cb4d80b9caf4658aff08895","entity_key":"u_reasons_and_results_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"78d26c309a6d4630a7548489a73972074322b7dcf0e59aae50a703fd926a0ad4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7f35e2d3cde24b6afa7bba775fdf6dce732949aa2cb4d80b9caf4658aff08895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_01 -> audio/generated/it-IT/utterances/817927f134e173533c95b3dce336365a702c4935e28d54dc214b05cd4b8872e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7655fb61-0982-51b8-b86c-21c008baa951', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ad9617d6ea6d3354b47f08b5e93f6bdfbd973683d32885852f4b263063e87af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ab78a36-edd9-50bc-87c6-631706a2a989', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7655fb61-0982-51b8-b86c-21c008baa951', 1), '8ad9617d6ea6d3354b47f08b5e93f6bdfbd973683d32885852f4b263063e87af',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/817927f134e173533c95b3dce336365a702c4935e28d54dc214b05cd4b8872e0.mp3', 2586, '2026-09-14 03:27:17.430657', 'ea96686b7673e1e334c37763b5acfe130656fa66da58b8c59368e648303d1df2', 'validated', '{"audio_key":"817927f134e173533c95b3dce336365a702c4935e28d54dc214b05cd4b8872e0","entity_key":"u_reasons_and_results_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ea96686b7673e1e334c37763b5acfe130656fa66da58b8c59368e648303d1df2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/817927f134e173533c95b3dce336365a702c4935e28d54dc214b05cd4b8872e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_01 -> audio/generated/it-IT/utterances/82649765a23e5a58956c67eb33d3117ebb06a6cb4699d331a7a50781839efc2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7cb09cd5-97a8-559b-b1b4-8efee713fa08', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd6066db8bbba0712852647f1f4e2a761e753dc8a1cf065282b4172b184d6526'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a251d2f-f609-5cb9-b520-c84c0413fbb9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7cb09cd5-97a8-559b-b1b4-8efee713fa08', 1), 'dd6066db8bbba0712852647f1f4e2a761e753dc8a1cf065282b4172b184d6526',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/82649765a23e5a58956c67eb33d3117ebb06a6cb4699d331a7a50781839efc2b.mp3', 1253, '2026-09-14 03:27:17.982918', '2d813b34cc8e2bef9f2d43a1d75ea59ef425a0770466c41cb5832dc469a06106', 'validated', '{"audio_key":"82649765a23e5a58956c67eb33d3117ebb06a6cb4699d331a7a50781839efc2b","entity_key":"u_ability_and_permission_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d813b34cc8e2bef9f2d43a1d75ea59ef425a0770466c41cb5832dc469a06106","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/82649765a23e5a58956c67eb33d3117ebb06a6cb4699d331a7a50781839efc2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_02 -> audio/generated/it-IT/utterances/8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('611f2be6-c45a-58a0-82e0-6cbcbe31635a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b740f7f9b716067cfdb50c542d7904706e0cdf366630637d38705bd64bb6ce7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('963f7fb8-a1de-50ff-858f-6a937dc89ff2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('611f2be6-c45a-58a0-82e0-6cbcbe31635a', 1), '4b740f7f9b716067cfdb50c542d7904706e0cdf366630637d38705bd64bb6ce7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0.mp3', 1488, '2026-09-14 03:27:18.445006', 'cdaa65f059033b90a25a9d2763c50f106bcb39b4e1eb56daa79e3441ce58910a', 'validated', '{"audio_key":"8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0","entity_key":"u_ability_and_permission_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cdaa65f059033b90a25a9d2763c50f106bcb39b4e1eb56daa79e3441ce58910a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_ability_and_permission_01_listen -> audio/generated/it-IT/utterances/8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7d606719-d141-592c-bb12-6bca99c7c321', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_ability_and_permission_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b740f7f9b716067cfdb50c542d7904706e0cdf366630637d38705bd64bb6ce7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2cb8a07-98ba-5ac0-bdc4-fed209c58634', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7d606719-d141-592c-bb12-6bca99c7c321', 1), '4b740f7f9b716067cfdb50c542d7904706e0cdf366630637d38705bd64bb6ce7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0.mp3', 1488, '2026-09-14 03:27:18.445006', 'cdaa65f059033b90a25a9d2763c50f106bcb39b4e1eb56daa79e3441ce58910a', 'validated', '{"audio_key":"8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0","entity_key":"e_ability_and_permission_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cdaa65f059033b90a25a9d2763c50f106bcb39b4e1eb56daa79e3441ce58910a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8480b394c57e8d830ae17f02b4dc31ddffa1efa67a7c93c1441bf997def604f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_02 -> audio/generated/it-IT/utterances/8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea6788e0-2f3e-5d00-9d8e-45e2f4fb9336', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb05936fbbf2b5742ff6c7af29c83e764fd2face30af184934fc0d78e468ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90322916-9518-536e-873b-8ca7a8cbb1ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea6788e0-2f3e-5d00-9d8e-45e2f4fb9336', 1), 'fbb05936fbbf2b5742ff6c7af29c83e764fd2face30af184934fc0d78e468ded',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e.mp3', 1567, '2026-09-14 03:27:18.998848', 'f734b76e1e75ff0053edbac51f86bd0c50c45b9c0c350d25eacdff0a6a85daf9', 'validated', '{"audio_key":"8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e","entity_key":"u_travel_and_hotel_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f734b76e1e75ff0053edbac51f86bd0c50c45b9c0c350d25eacdff0a6a85daf9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travel_and_hotel_01_listen -> audio/generated/it-IT/utterances/8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d7d39d3a-7dff-51ba-aa05-cbce0e3297b0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travel_and_hotel_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb05936fbbf2b5742ff6c7af29c83e764fd2face30af184934fc0d78e468ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ca1101c-8bf5-52a2-83eb-56c5fe112275', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d7d39d3a-7dff-51ba-aa05-cbce0e3297b0', 1), 'fbb05936fbbf2b5742ff6c7af29c83e764fd2face30af184934fc0d78e468ded',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e.mp3', 1567, '2026-09-14 03:27:18.998848', 'f734b76e1e75ff0053edbac51f86bd0c50c45b9c0c350d25eacdff0a6a85daf9', 'validated', '{"audio_key":"8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e","entity_key":"e_travel_and_hotel_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f734b76e1e75ff0053edbac51f86bd0c50c45b9c0c350d25eacdff0a6a85daf9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8513a7e0f626f8ac0c883d45cee33f00e72170735d8e1fc0e5efdea2424d0c7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_04 -> audio/generated/it-IT/utterances/96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f83c7a0-792b-5181-9a6e-ef47f67bf889', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dcbae1fa8571f53b67455b6ecc6ee94df361ec8e45941ff377764b50b86ee13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef429639-925f-58d5-bd62-439513f870c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f83c7a0-792b-5181-9a6e-ef47f67bf889', 1), '9dcbae1fa8571f53b67455b6ecc6ee94df361ec8e45941ff377764b50b86ee13',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0.mp3', 2272, '2026-09-14 03:27:19.532447', 'e30e8cf3bdeb6bb165957fc59b9be1a58307f5826c6dda6e9edf4e7c54136b2f', 'validated', '{"audio_key":"96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0","entity_key":"u_weather_and_change_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e30e8cf3bdeb6bb165957fc59b9be1a58307f5826c6dda6e9edf4e7c54136b2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_weather_and_change_02_listen -> audio/generated/it-IT/utterances/96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c56b934d-b3e3-5d02-86be-009613242743', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_weather_and_change_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dcbae1fa8571f53b67455b6ecc6ee94df361ec8e45941ff377764b50b86ee13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1dd5717-329a-5209-ba38-852e5c7c1dfe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c56b934d-b3e3-5d02-86be-009613242743', 1), '9dcbae1fa8571f53b67455b6ecc6ee94df361ec8e45941ff377764b50b86ee13',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0.mp3', 2272, '2026-09-14 03:27:19.532447', 'e30e8cf3bdeb6bb165957fc59b9be1a58307f5826c6dda6e9edf4e7c54136b2f', 'validated', '{"audio_key":"96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0","entity_key":"e_weather_and_change_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e30e8cf3bdeb6bb165957fc59b9be1a58307f5826c6dda6e9edf4e7c54136b2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/96bfbcc1ce0fb8d99804627e91a2e0bb42e4245798e8e2d410b74254136972c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_03 -> audio/generated/it-IT/utterances/988811b9741880efd5485f912dbdc019f2cf685d69b2427c6402ec787b3ac324.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a760ebaf-98cf-58cd-a5be-e354aaa9e2b0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc6ea7b1030a011b118bd1da6dca13ad0199eff301bad5a2271ef00ac4e771bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8add3b53-24e7-52ed-acc9-f7aa4c16ca07', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a760ebaf-98cf-58cd-a5be-e354aaa9e2b0', 1), 'bc6ea7b1030a011b118bd1da6dca13ad0199eff301bad5a2271ef00ac4e771bd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/988811b9741880efd5485f912dbdc019f2cf685d69b2427c6402ec787b3ac324.mp3', 1933, '2026-09-14 03:27:20.043821', '6ebd647d686e3c9bc6e8c4a1362b4a320a4294ee446a0421d79c25de37947f00', 'validated', '{"audio_key":"988811b9741880efd5485f912dbdc019f2cf685d69b2427c6402ec787b3ac324","entity_key":"u_travel_and_hotel_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6ebd647d686e3c9bc6e8c4a1362b4a320a4294ee446a0421d79c25de37947f00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/988811b9741880efd5485f912dbdc019f2cf685d69b2427c6402ec787b3ac324.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_01 -> audio/generated/it-IT/utterances/9d286be372cb07df71add5a682f2f6d3420a783da077155274ea258e7820dd03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c8d245b8-eb32-5e95-a396-04e6ff02ba48', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd461f7d6b1ffba43c6fb42337c91a2d98d1ac67cab6f150b1393b22efb446c81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2010e71a-bd36-5148-86b2-be6e2f5a4a74', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c8d245b8-eb32-5e95-a396-04e6ff02ba48', 1), 'd461f7d6b1ffba43c6fb42337c91a2d98d1ac67cab6f150b1393b22efb446c81',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9d286be372cb07df71add5a682f2f6d3420a783da077155274ea258e7820dd03.mp3', 1671, '2026-09-14 03:27:20.553672', 'a2cfab971ba0be8d70e9bd2de6e04c60d3448dc8c3dfc96a819cc6a77fa143b9', 'validated', '{"audio_key":"9d286be372cb07df71add5a682f2f6d3420a783da077155274ea258e7820dd03","entity_key":"u_past_experiences_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a2cfab971ba0be8d70e9bd2de6e04c60d3448dc8c3dfc96a819cc6a77fa143b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9d286be372cb07df71add5a682f2f6d3420a783da077155274ea258e7820dd03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_04 -> audio/generated/it-IT/utterances/b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('593972f7-712d-5727-abd7-2af20c78e571', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2588d7b1626cab0ec17e298cf99f930fcfa0e6b76d2f4394a9bf81fdf8a5a87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fa34b6e-507f-5607-ad11-b467de98ac25', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('593972f7-712d-5727-abd7-2af20c78e571', 1), 'a2588d7b1626cab0ec17e298cf99f930fcfa0e6b76d2f4394a9bf81fdf8a5a87',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16.mp3', 2403, '2026-09-14 03:27:21.110283', 'fe5e6396e30776a0ed17200f83453b3efde0169d167d7f4492e0d36add67cf13', 'validated', '{"audio_key":"b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16","entity_key":"u_travel_and_hotel_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fe5e6396e30776a0ed17200f83453b3efde0169d167d7f4492e0d36add67cf13","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travel_and_hotel_02_listen -> audio/generated/it-IT/utterances/b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6fc0e85b-ece7-5538-8377-03d6c7df4a88', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travel_and_hotel_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2588d7b1626cab0ec17e298cf99f930fcfa0e6b76d2f4394a9bf81fdf8a5a87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39aea691-d721-56cc-9746-711f10882ccc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6fc0e85b-ece7-5538-8377-03d6c7df4a88', 1), 'a2588d7b1626cab0ec17e298cf99f930fcfa0e6b76d2f4394a9bf81fdf8a5a87',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16.mp3', 2403, '2026-09-14 03:27:21.110283', 'fe5e6396e30776a0ed17200f83453b3efde0169d167d7f4492e0d36add67cf13', 'validated', '{"audio_key":"b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16","entity_key":"e_travel_and_hotel_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fe5e6396e30776a0ed17200f83453b3efde0169d167d7f4492e0d36add67cf13","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b3d7e069d6e612e808b1fdfd2c387152b1e383a615fe2d2a82e701e7072fcd16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_02 -> audio/generated/it-IT/utterances/b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cb17254b-cd01-5f1b-ac99-fe052d8102be', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71fa2d0dad51c1e757424e368e60c326906de0cdc2352ebb402219e5a8c574f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f497be76-0d40-566a-9260-4e9562041d0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cb17254b-cd01-5f1b-ac99-fe052d8102be', 1), '71fa2d0dad51c1e757424e368e60c326906de0cdc2352ebb402219e5a8c574f8',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec.mp3', 1488, '2026-09-14 03:27:21.593953', '39afdf263a880ca370de0b36fe9360af9a01d51ac47ba0f83e73fe7ff2bbca81', 'validated', '{"audio_key":"b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec","entity_key":"u_plans_and_intentions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"39afdf263a880ca370de0b36fe9360af9a01d51ac47ba0f83e73fe7ff2bbca81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_plans_and_intentions_01_listen -> audio/generated/it-IT/utterances/b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('89c34eb3-d227-50c1-963a-2f668b1f585b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_plans_and_intentions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71fa2d0dad51c1e757424e368e60c326906de0cdc2352ebb402219e5a8c574f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cb19424-a3c6-5e33-adcb-1b428b9a3f62', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('89c34eb3-d227-50c1-963a-2f668b1f585b', 1), '71fa2d0dad51c1e757424e368e60c326906de0cdc2352ebb402219e5a8c574f8',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec.mp3', 1488, '2026-09-14 03:27:21.593953', '39afdf263a880ca370de0b36fe9360af9a01d51ac47ba0f83e73fe7ff2bbca81', 'validated', '{"audio_key":"b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec","entity_key":"e_plans_and_intentions_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"39afdf263a880ca370de0b36fe9360af9a01d51ac47ba0f83e73fe7ff2bbca81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b6e8c238db4a3758bdaa93a08812c318ef8e96fb6cb3e4345121a9708b772fec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_weekend_capstone_01 -> audio/generated/it-IT/utterances/c7281eec0c22f55891745cf7e1277727e774cd169a46c507229bf3ea6b0a1f15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('497e6126-348b-570c-911d-f7ec9091e539', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_weekend_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc2110ee8d0f5c64902e0d8f881147a0b45713b4c23a837d3c25d522b8f95ba5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('720e92e3-b161-5d17-8603-6c4d2b41d9c8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('497e6126-348b-570c-911d-f7ec9091e539', 1), 'fc2110ee8d0f5c64902e0d8f881147a0b45713b4c23a837d3c25d522b8f95ba5',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c7281eec0c22f55891745cf7e1277727e774cd169a46c507229bf3ea6b0a1f15.mp3', 2115, '2026-09-14 03:27:22.159867', '2df6e07fe744db54fd57f5771beda35f21d66a85bfe8559574bc27b35fe8fc77', 'validated', '{"audio_key":"c7281eec0c22f55891745cf7e1277727e774cd169a46c507229bf3ea6b0a1f15","entity_key":"u_a2_weekend_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2df6e07fe744db54fd57f5771beda35f21d66a85bfe8559574bc27b35fe8fc77","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c7281eec0c22f55891745cf7e1277727e774cd169a46c507229bf3ea6b0a1f15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_04 -> audio/generated/it-IT/utterances/d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b614783e-7831-5070-a57e-e1ae660d8cc0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a3cf0a27d3ea129852b1782f16affa133b801317b88c35d8ac5598ed4e19abf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9910ce2a-dae0-5754-9768-53d8459342f9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b614783e-7831-5070-a57e-e1ae660d8cc0', 1), '6a3cf0a27d3ea129852b1782f16affa133b801317b88c35d8ac5598ed4e19abf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96.mp3', 1488, '2026-09-14 03:27:22.590166', '685ae219dc1a0a23a7c0740e4928e29a1cd1183d86b677eb5e33aed48dc9ab9e', 'validated', '{"audio_key":"d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96","entity_key":"u_plans_and_intentions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"685ae219dc1a0a23a7c0740e4928e29a1cd1183d86b677eb5e33aed48dc9ab9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_plans_and_intentions_02_listen -> audio/generated/it-IT/utterances/d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('827d90ac-ca89-5d8c-99f4-3d49565bc200', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_plans_and_intentions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a3cf0a27d3ea129852b1782f16affa133b801317b88c35d8ac5598ed4e19abf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bfe330f-900e-5a7e-98ec-01185b0d4829', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('827d90ac-ca89-5d8c-99f4-3d49565bc200', 1), '6a3cf0a27d3ea129852b1782f16affa133b801317b88c35d8ac5598ed4e19abf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96.mp3', 1488, '2026-09-14 03:27:22.590166', '685ae219dc1a0a23a7c0740e4928e29a1cd1183d86b677eb5e33aed48dc9ab9e', 'validated', '{"audio_key":"d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96","entity_key":"e_plans_and_intentions_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"685ae219dc1a0a23a7c0740e4928e29a1cd1183d86b677eb5e33aed48dc9ab9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d0382cfc1e6ac9b1253a4ac14faf88945166bfce2ac467182f75c5eaf4bb8d96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_03 -> audio/generated/it-IT/utterances/d3a73cc39363fbd67ab9d3033e98bd55fd1ecd2d8482bbd35c4b70293623ddae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4a761543-4077-52f8-8094-1f76badbe800', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8eb90083e41e70549723897065055ed45aedde8ca168c12de24f313169267734'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab2bfc49-1bad-5eb2-8c7f-7a86af716c87', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4a761543-4077-52f8-8094-1f76badbe800', 1), '8eb90083e41e70549723897065055ed45aedde8ca168c12de24f313169267734',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d3a73cc39363fbd67ab9d3033e98bd55fd1ecd2d8482bbd35c4b70293623ddae.mp3', 1488, '2026-09-14 03:27:23.132356', '7705af7889fd727fe8fc8a393459cc06a0305258e2f15bf7d1343e0e6817baaf', 'validated', '{"audio_key":"d3a73cc39363fbd67ab9d3033e98bd55fd1ecd2d8482bbd35c4b70293623ddae","entity_key":"u_past_experiences_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7705af7889fd727fe8fc8a393459cc06a0305258e2f15bf7d1343e0e6817baaf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d3a73cc39363fbd67ab9d3033e98bd55fd1ecd2d8482bbd35c4b70293623ddae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_01 -> audio/generated/it-IT/utterances/e750ed1a9dbc3fc70919012be1ef9083918a77d0b080237b0281f6e1de7a3836.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d221bb0-f851-5d1e-b4d3-1c84e82b8cd0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55ae08180748c3e32884743c2ea13f4fb832008d5dd23c54b5437c702361c72a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27f8c221-9fa5-5dee-90db-53191c21ab29', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d221bb0-f851-5d1e-b4d3-1c84e82b8cd0', 1), '55ae08180748c3e32884743c2ea13f4fb832008d5dd23c54b5437c702361c72a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e750ed1a9dbc3fc70919012be1ef9083918a77d0b080237b0281f6e1de7a3836.mp3', 2089, '2026-09-14 03:27:23.665035', 'c9d7df9a71e517ef576fe26373e4bdf0a4a983172a983471c25a480c66d373d8', 'validated', '{"audio_key":"e750ed1a9dbc3fc70919012be1ef9083918a77d0b080237b0281f6e1de7a3836","entity_key":"u_weather_and_change_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c9d7df9a71e517ef576fe26373e4bdf0a4a983172a983471c25a480c66d373d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e750ed1a9dbc3fc70919012be1ef9083918a77d0b080237b0281f6e1de7a3836.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_02 -> audio/generated/it-IT/utterances/ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6cde97bf-b1fa-5e21-8c2d-046d9d50b78d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45366945e732c79988faab0f98550fc9c0fea6601af63029aed13e7cfaa61c2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d2ea513-608e-56da-860c-ff2a0118fc8d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6cde97bf-b1fa-5e21-8c2d-046d9d50b78d', 1), '45366945e732c79988faab0f98550fc9c0fea6601af63029aed13e7cfaa61c2b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58.mp3', 1436, '2026-09-14 03:27:24.203301', '455ddbbdd03cf9f088c592d2ee3eda5aa6db2828280cdc0591f0210813febffa', 'validated', '{"audio_key":"ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58","entity_key":"u_comparisons_and_choice_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"455ddbbdd03cf9f088c592d2ee3eda5aa6db2828280cdc0591f0210813febffa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_comparisons_and_choice_01_listen -> audio/generated/it-IT/utterances/ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0ff08e29-c223-50fb-95a6-d44a7ea1539f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_comparisons_and_choice_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45366945e732c79988faab0f98550fc9c0fea6601af63029aed13e7cfaa61c2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f0eebeb-aae0-5033-aec8-b48d73895551', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0ff08e29-c223-50fb-95a6-d44a7ea1539f', 1), '45366945e732c79988faab0f98550fc9c0fea6601af63029aed13e7cfaa61c2b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58.mp3', 1436, '2026-09-14 03:27:24.203301', '455ddbbdd03cf9f088c592d2ee3eda5aa6db2828280cdc0591f0210813febffa', 'validated', '{"audio_key":"ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58","entity_key":"e_comparisons_and_choice_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"455ddbbdd03cf9f088c592d2ee3eda5aa6db2828280cdc0591f0210813febffa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ea8002fe70957282eb1da2f7af2ce35a84e3834a0ba6180b2364821e112c4b58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_03 -> audio/generated/it-IT/utterances/ed7de3d1062477b2ca4605e4c2ea9f62179b794a28937699c9641d7929f4be46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3ddc85c-e169-5550-9c51-863f06da0746', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b706f97b30e7164c62c9210847e00c1ec7f765b137ff080b324f0e18fbcb90dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63f93691-6584-5f74-b4d1-ae2e251e939d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3ddc85c-e169-5550-9c51-863f06da0746', 1), 'b706f97b30e7164c62c9210847e00c1ec7f765b137ff080b324f0e18fbcb90dd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ed7de3d1062477b2ca4605e4c2ea9f62179b794a28937699c9641d7929f4be46.mp3', 1619, '2026-09-14 03:27:24.735791', '83f6bd82093c7b58f4df7acaf7d7b5fdb7c562b2ab2b42b8ddfc449787381292', 'validated', '{"audio_key":"ed7de3d1062477b2ca4605e4c2ea9f62179b794a28937699c9641d7929f4be46","entity_key":"u_weather_and_change_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"83f6bd82093c7b58f4df7acaf7d7b5fdb7c562b2ab2b42b8ddfc449787381292","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ed7de3d1062477b2ca4605e4c2ea9f62179b794a28937699c9641d7929f4be46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_weekend_capstone_04 -> audio/generated/it-IT/utterances/eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c408a2b4-e05f-50c3-8c65-118993f0584a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_weekend_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ee89c2af206c5bc67feff0312ab29801972bb1dee130857974b5c9e05d8724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a1ee224-4bf9-51a9-81cd-31d7beb6ea95', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c408a2b4-e05f-50c3-8c65-118993f0584a', 1), '00ee89c2af206c5bc67feff0312ab29801972bb1dee130857974b5c9e05d8724',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104.mp3', 2586, '2026-09-14 03:27:25.328662', '45b2441d50a98f64facc95c357a2a50951c01980c24b5fa9b1f17a107ae1184d', 'validated', '{"audio_key":"eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104","entity_key":"u_a2_weekend_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"45b2441d50a98f64facc95c357a2a50951c01980c24b5fa9b1f17a107ae1184d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_weekend_capstone_02_listen -> audio/generated/it-IT/utterances/eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d277959c-0da4-5e0a-aee4-ae4ff3d8d7eb', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_weekend_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ee89c2af206c5bc67feff0312ab29801972bb1dee130857974b5c9e05d8724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64c8cf4c-2052-5fdd-a40f-d22d67614ae8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d277959c-0da4-5e0a-aee4-ae4ff3d8d7eb', 1), '00ee89c2af206c5bc67feff0312ab29801972bb1dee130857974b5c9e05d8724',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104.mp3', 2586, '2026-09-14 03:27:25.328662', '45b2441d50a98f64facc95c357a2a50951c01980c24b5fa9b1f17a107ae1184d', 'validated', '{"audio_key":"eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104","entity_key":"e_a2_weekend_capstone_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"45b2441d50a98f64facc95c357a2a50951c01980c24b5fa9b1f17a107ae1184d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/eecfc9ac351669d22f9a239ed68055e3e95d5caab9a0e4b2a518479313a03104.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_01 -> audio/generated/it-IT/utterances/f3628fd5c0d4a32662cdfd253063b8f65d0f237dbb045ff8916b8704463ccd79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d373c624-9e79-50e2-b392-727238186756', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49878c7347291fa4608904ec57fc5441388767b507627bf413484867252f87ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec26f7ac-d748-5c8f-99fd-ebde2f6019cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d373c624-9e79-50e2-b392-727238186756', 1), '49878c7347291fa4608904ec57fc5441388767b507627bf413484867252f87ce',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f3628fd5c0d4a32662cdfd253063b8f65d0f237dbb045ff8916b8704463ccd79.mp3', 1671, '2026-09-14 03:27:25.786811', 'b160b222ead4ea69c9f36be809d3a595e04b8a50d05c1f5909915984591e9be7', 'validated', '{"audio_key":"f3628fd5c0d4a32662cdfd253063b8f65d0f237dbb045ff8916b8704463ccd79","entity_key":"u_opinions_and_softening_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b160b222ead4ea69c9f36be809d3a595e04b8a50d05c1f5909915984591e9be7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f3628fd5c0d4a32662cdfd253063b8f65d0f237dbb045ff8916b8704463ccd79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_04 -> audio/generated/it-IT/utterances/f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9f35ec66-1aee-5249-9d84-2d3948c784ce', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73ba3fcc1e7c0cd28ef17f3285e5042bfb6e357627984fe000a737f3beb442d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('284c7ebe-9e0f-5e26-a986-24444f9597c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9f35ec66-1aee-5249-9d84-2d3948c784ce', 1), '73ba3fcc1e7c0cd28ef17f3285e5042bfb6e357627984fe000a737f3beb442d7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074.mp3', 2168, '2026-09-14 03:27:26.403626', '0c3d5efdfe6847718c14be216c8990820da2592b2f8c74cddae6bcc732c274fe', 'validated', '{"audio_key":"f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074","entity_key":"u_ability_and_permission_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0c3d5efdfe6847718c14be216c8990820da2592b2f8c74cddae6bcc732c274fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_ability_and_permission_02_listen -> audio/generated/it-IT/utterances/f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4f8bc4aa-deac-5593-92fb-389b964265e8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_ability_and_permission_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73ba3fcc1e7c0cd28ef17f3285e5042bfb6e357627984fe000a737f3beb442d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9931f3c3-c7e2-55dc-b1b5-83e82b338ac0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4f8bc4aa-deac-5593-92fb-389b964265e8', 1), '73ba3fcc1e7c0cd28ef17f3285e5042bfb6e357627984fe000a737f3beb442d7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074.mp3', 2168, '2026-09-14 03:27:26.403626', '0c3d5efdfe6847718c14be216c8990820da2592b2f8c74cddae6bcc732c274fe', 'validated', '{"audio_key":"f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074","entity_key":"e_ability_and_permission_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0c3d5efdfe6847718c14be216c8990820da2592b2f8c74cddae6bcc732c274fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f9af947d508a09671d01ef6c6caa247d58afc2ddae344821417475b40426e074.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_01 -> audio/generated/it-IT/utterances/fa1b44abc2062b6b0e6d66afd3252c7af02380e3684c533e3796438668e470c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1ed4593d-1b34-54a2-8d20-a646895d816e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed05f17422433b51f16604a2cdb0e97ddb7a233c702e32e4511af233adcefbf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e847600-9ddf-565d-8346-77079d6bff88', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1ed4593d-1b34-54a2-8d20-a646895d816e', 1), 'ed05f17422433b51f16604a2cdb0e97ddb7a233c702e32e4511af233adcefbf5',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fa1b44abc2062b6b0e6d66afd3252c7af02380e3684c533e3796438668e470c2.mp3', 2403, '2026-09-14 03:27:26.877209', '8d336851e354342aa24a05d5533bf3bd2e1c9e9bfff568b9bae9734da74aab07', 'validated', '{"audio_key":"fa1b44abc2062b6b0e6d66afd3252c7af02380e3684c533e3796438668e470c2","entity_key":"u_travel_and_hotel_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d336851e354342aa24a05d5533bf3bd2e1c9e9bfff568b9bae9734da74aab07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fa1b44abc2062b6b0e6d66afd3252c7af02380e3684c533e3796438668e470c2.mp3"}'
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

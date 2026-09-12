-- Generated audio link import for en-US Pre-A1
-- Source manifest: audio/manifests/en/Pre-A1.json
-- Generated rows: 71
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'en' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'en-US' LIMIT 1);
START TRANSACTION;

-- d_pre_capstone_meeting:7 -> audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('419095c3-d364-538a-9480-763a925640e2', 1)
  AND voice_key = 'character:nina:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fef58b96-66ff-567a-a7e5-d2e5231f968d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('419095c3-d364-538a-9480-763a925640e2', 1), '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3', 914, '2026-09-12 08:20:02.973405', 'eaee02ff964b3c5f4c7ef4ba29fd8b3ef6014012d16342b593ced1737ec09eba', 'validated', '{"audio_key":"013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2","entity_key":"d_pre_capstone_meeting:7","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"eaee02ff964b3c5f4c7ef4ba29fd8b3ef6014012d16342b593ced1737ec09eba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/013475e2747f315db4d90336c12e6c96db7aeca8f4012ed3f25a02a819ed31d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:3 -> audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db6462d3-c342-562e-b11e-06c74f4bec83', 1)
  AND voice_key = 'character:lina:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e25cc8c6bc71f7ea45a4d02973326d901a43b14491a7458d3bac6fe8b5a1086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeb19c1f-8850-5aba-bea6-b8c29ac2cdb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db6462d3-c342-562e-b11e-06c74f4bec83', 1), '2e25cc8c6bc71f7ea45a4d02973326d901a43b14491a7458d3bac6fe8b5a1086',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3', 653, '2026-09-12 08:20:02.957439', '759d26c5cc0f0262e9258bcd24640c2894eedef1cca73984312586942369feda', 'validated', '{"audio_key":"211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419","entity_key":"d_pre_water_offer:3","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"759d26c5cc0f0262e9258bcd24640c2894eedef1cca73984312586942369feda","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/211f171d8e753799fb1d9d51f19a901a8bbdd2445731e51c8c0d2f81b7b56419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:3 -> audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d207f19-bc4d-540a-b169-8a1a2ad25a18', 1)
  AND voice_key = 'character:nina:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('791ebcac-b75b-5148-a9ee-ee59265774cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d207f19-bc4d-540a-b169-8a1a2ad25a18', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3', 1071, '2026-09-12 08:20:03.958036', '73b7dfa570b9a7d8e50fae3b9d759b2ff60b76cb8257804c1ce15b474c3f854c', 'validated', '{"audio_key":"25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349","entity_key":"d_pre_capstone_meeting:3","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"73b7dfa570b9a7d8e50fae3b9d759b2ff60b76cb8257804c1ce15b474c3f854c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/25bca8fcbc7b14df3f5e01cb377154b11e10c020ef4c788c77c5112cc2165349.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_spell_name:2 -> audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('064beba9-9806-56af-b5b7-d12830202c04', 1)
  AND voice_key = 'character:kai:male_professional'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f06cb7d99930fb835b0b34f8f15022cd51c51bf050ea17bfb25631bca32daf74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fa297f0-ff00-550f-aeef-36d5d931d6e7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('064beba9-9806-56af-b5b7-d12830202c04', 1), 'f06cb7d99930fb835b0b34f8f15022cd51c51bf050ea17bfb25631bca32daf74',
  'character:kai:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3', 1384, '2026-09-12 08:20:08.266761', 'c26ce4fc3e76e619164883789d111cd779ebc714039da2e33c18cd2bdff72e42', 'validated', '{"audio_key":"2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9","entity_key":"d_pre_spell_name:2","voice_id":"uju3wxzG5OhpWcoi3SMy","voice_name":"Michael C. Vincent - Confident, Expressive","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c26ce4fc3e76e619164883789d111cd779ebc714039da2e33c18cd2bdff72e42","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/2fc04fd78f108ae74416f50d7a340f3a1ac8ec728bc7ef7564a22e0600b974c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:6 -> audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58a98258-bd41-58f9-acd8-9a249146e131', 1)
  AND voice_key = 'character:arman:male_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('605cc848-a881-5ca3-8d5f-54e5d9c560db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58a98258-bd41-58f9-acd8-9a249146e131', 1), 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3', 783, '2026-09-12 08:20:04.892185', 'ab49e8134e91391cca86d9907a8e0e75a7b53265de1fbd471199d9bd13d27695', 'validated', '{"audio_key":"32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d","entity_key":"d_pre_capstone_meeting:6","voice_id":"NMilCCbfoygNnI2VZ7ME","voice_name":"Austin - Dramatic Narration","voice_labels":{"accent":"american","language":"en","descriptive":"professional","use_case":"narrative_story","age":"middle_aged","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"ab49e8134e91391cca86d9907a8e0e75a7b53265de1fbd471199d9bd13d27695","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/32ceaa61a2ee72426b38b789badf9a0a61f37b76972b608517f005d0adfc192d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:4 -> audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ce5e3ed-0735-5252-a5fe-4123ddf33bf0', 1)
  AND voice_key = 'character:arman:male_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b280e9bd-9de4-5a24-8fda-14ba231da637', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ce5e3ed-0735-5252-a5fe-4123ddf33bf0', 1), '494a28cc9c5410225d951a27c8feddc3bb1417be0a5375c648f4e131d3640ea0',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3', 914, '2026-09-12 08:20:05.862961', '0b6348d11c003dba11285497cb7fb90c0f606080690d11a4c86b5812960bb8e0', 'validated', '{"audio_key":"42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1","entity_key":"d_pre_capstone_meeting:4","voice_id":"NMilCCbfoygNnI2VZ7ME","voice_name":"Austin - Dramatic Narration","voice_labels":{"accent":"american","language":"en","descriptive":"professional","use_case":"narrative_story","age":"middle_aged","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"0b6348d11c003dba11285497cb7fb90c0f606080690d11a4c86b5812960bb8e0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/42a23de2a56ccd0a101f08f9055d905a8e8b145f667d25a6dbe7b430d93d33e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:2 -> audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a34c9d35-397d-5342-a00d-9afb290f324a', 1)
  AND voice_key = 'character:ben:male_bright'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d62a670-8bdd-5fe5-978e-3ca06f2776ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a34c9d35-397d-5342-a00d-9afb290f324a', 1), '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3', 1280, '2026-09-12 08:20:10.629576', 'e01a17efd1610e2a1a05ad3e9b50d11ed4e718f3a6de0dd9a720414cea96fca9', 'validated', '{"audio_key":"4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad","entity_key":"d_pre_water_offer:2","voice_id":"e5WNhrdI30aXpS2RSGm1","voice_name":"Ian Cartwell - Suspense and Mystery","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e01a17efd1610e2a1a05ad3e9b50d11ed4e718f3a6de0dd9a720414cea96fca9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/4c82405ff36182af7bf345dbdc0edfefa5076ce64c5c08cab7269d780f8921ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_two:2 -> audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75c13d88-0756-5595-92a0-98559a092852', 1)
  AND voice_key = 'character:ali:male_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93dcd29592078477d5e87c6289a33f7dbc8711eeed28451a2d626fbc10c287dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b8db5c8-7e0b-534b-98ed-fbc8e6a0d551', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75c13d88-0756-5595-92a0-98559a092852', 1), '93dcd29592078477d5e87c6289a33f7dbc8711eeed28451a2d626fbc10c287dc',
  'character:ali:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3', 1097, '2026-09-12 08:20:09.248302', 'c6f9900cee3bb7995a8f75a4f15f3d25b5d257f37eea511b1dbfd50da7592449', 'validated', '{"audio_key":"4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6","entity_key":"d_pre_names_two:2","voice_id":"tMvyQtpCVQ0DkixuYm6J","voice_name":"Nova - Markus","voice_labels":{"accent":"american","language":"en","descriptive":"casual","use_case":"narrative_story","age":"middle_aged","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"c6f9900cee3bb7995a8f75a4f15f3d25b5d257f37eea511b1dbfd50da7592449","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/4f1b57a4d3d2044ef0311abe146a571573126068111a691c353da81bb91abeb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:1 -> audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cc0b3af-6dfb-51a3-b92a-fed11999c6d9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab4a6bfa-7733-5cd3-8da0-7fab05d03a1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cc0b3af-6dfb-51a3-b92a-fed11999c6d9', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3', 914, '2026-09-12 08:20:10.217150', '82861c8137ada19642cbc0866da0a987809f027f2e814756ebe08cf363b80930', 'validated', '{"audio_key":"5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f","entity_key":"d_pre_capstone_meeting:1","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"82861c8137ada19642cbc0866da0a987809f027f2e814756ebe08cf363b80930","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/5f148afab2203bc028d95163045bda8f4837382f2427bba2fddb5198eec8324f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_greeting_door:2 -> audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34524510-8a00-57fd-82cf-979a7b311d97', 1)
  AND voice_key = 'character:leo:male_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('318d7792-7c99-53c7-a090-d7cee638c1a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34524510-8a00-57fd-82cf-979a7b311d97', 1), 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8',
  'character:leo:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3', 679, '2026-09-12 08:20:14.913393', '45c49d6329a316e45e033f098bf570d32a9361dcc7a1282afb7ee399d29242a5', 'validated', '{"audio_key":"60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef","entity_key":"d_pre_greeting_door:2","voice_id":"UgBBYS2sOqTuMpoF3BR0","voice_name":"Mark - Natural Conversations","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"45c49d6329a316e45e033f098bf570d32a9361dcc7a1282afb7ee399d29242a5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/60758f6b6ad5b5ea8c548fb63f58e549ac2d47cfaa2d1b54dcd26679ce04a2ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_two:1 -> audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a2657ac-57c2-5281-ade4-f687c488889f', 1)
  AND voice_key = 'character:emma:female_bright'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31734177-42d3-5644-a737-b18a45efb043', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a2657ac-57c2-5281-ade4-f687c488889f', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'character:emma:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3', 1097, '2026-09-12 08:20:11.582858', 'd5b59107dfa4f9d3817db940d06aaea11b167fece9188fda89cb3952e4e0f6d1', 'validated', '{"audio_key":"624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a","entity_key":"d_pre_names_two:1","voice_id":"WAhoMTNdLdMoq1j3wf3I","voice_name":"Hope - Smooth, Engaging and Kind","voice_labels":{"use_case":"conversational","language":"en","descriptive":"soft","accent":"american","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"d5b59107dfa4f9d3817db940d06aaea11b167fece9188fda89cb3952e4e0f6d1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/624c59b8dea55144865e7d0fda365a0bc0cf30d256f74340f079eecd738aef0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_spell_name:1 -> audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('707756c7-e75c-5a44-9356-7365cd4b5e03', 1)
  AND voice_key = 'character:nora:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1e3c1e0c77d7d57762e95bb12833cc640f0074343f17ee5201a75adc09d304'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee97a9cb-a1a4-5c51-970d-65809e46df21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('707756c7-e75c-5a44-9356-7365cd4b5e03', 1), '9e1e3c1e0c77d7d57762e95bb12833cc640f0074343f17ee5201a75adc09d304',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3', 679, '2026-09-12 08:20:12.497144', '0236c743d3d859a0e8b24519ca71004a7f94098f3a4d67e155693a33978c8ce5', 'validated', '{"audio_key":"7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b","entity_key":"d_pre_spell_name:1","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"0236c743d3d859a0e8b24519ca71004a7f94098f3a4d67e155693a33978c8ce5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/7a9453bdb808ef548c740ef86912e493caad3a93440a581735bbe13181f7133b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_one:2 -> audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d92e9c87-b73f-57b8-a053-5abec26322c8', 1)
  AND voice_key = 'character:omid:male_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '696fb64b000936b6e5ab2db9740ee4d9c8536f0bbc86200a50ee6733b1d17e37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc3c535c-37b3-563c-9cde-e60f8d494fc1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d92e9c87-b73f-57b8-a053-5abec26322c8', 1), '696fb64b000936b6e5ab2db9740ee4d9c8536f0bbc86200a50ee6733b1d17e37',
  'character:omid:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3', 1201, '2026-09-12 08:20:18.209737', '70ac9d21a8e3eeaa7e20d2e86cdc02fa3f9237e3d071f74ddf6748bac967ff61', 'validated', '{"audio_key":"846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72","entity_key":"d_pre_names_one:2","voice_id":"yl2ZDV1MzN4HbQJbMihG","voice_name":"Alex - Upbeat, Energetic and Clear","voice_labels":{"gender":"male","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"70ac9d21a8e3eeaa7e20d2e86cdc02fa3f9237e3d071f74ddf6748bac967ff61","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/846a6df13ab742c55d899e27f562dc28a6bcbbec8b146896670b386ce98a5c72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:4 -> audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfc1081d-9836-5412-93a7-89d8fe169c22', 1)
  AND voice_key = 'character:ben:male_bright'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f51bead488e14b656af3a13e33eb1d6fa9580832cbb9d7a20061f84c4b1c160f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c0d36fe-c338-5203-9049-569ce5cbe57c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfc1081d-9836-5412-93a7-89d8fe169c22', 1), 'f51bead488e14b656af3a13e33eb1d6fa9580832cbb9d7a20061f84c4b1c160f',
  'character:ben:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3', 966, '2026-09-12 08:20:15.864487', '8172ac885f41deecee3c3fceff3e03ae414da8b5f81bf5b2dddf2a1cc1ee0048', 'validated', '{"audio_key":"8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05","entity_key":"d_pre_water_offer:4","voice_id":"e5WNhrdI30aXpS2RSGm1","voice_name":"Ian Cartwell - Suspense and Mystery","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"8172ac885f41deecee3c3fceff3e03ae414da8b5f81bf5b2dddf2a1cc1ee0048","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":1.01},"relative_path":"audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/8c9841e746e8dd94889a3619df9ae3ea620270f4b51fde622a2ca34fa1564e05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_names_one:1 -> audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cadfae9f-cd2c-5bd1-9b34-4202b92f47a4', 1)
  AND voice_key = 'character:sara:female_professional'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd15818e7b84e73730d2bad3aed9f4d132edfe6a4782327d38828d5153196d24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0661a90-26c4-5343-8bb2-0f17ea9f0e46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cadfae9f-cd2c-5bd1-9b34-4202b92f47a4', 1), 'dd15818e7b84e73730d2bad3aed9f4d132edfe6a4782327d38828d5153196d24',
  'character:sara:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3', 1149, '2026-09-12 08:20:20.059395', 'f5ead109c82479f7dcfef210011018ec2a0532aa747b07a50849b4e8101e7d18', 'validated', '{"audio_key":"b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809","entity_key":"d_pre_names_one:1","voice_id":"kdmDKE6EkgrWrrykO9Qt","voice_name":"Alexandra - Conversational and Natural","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f5ead109c82479f7dcfef210011018ec2a0532aa747b07a50849b4e8101e7d18","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.98},"relative_path":"audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/b6351953acd93cdd1dd1ca083172e17a586129b2b9b54a81c1af651d77d66809.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_spell_name:3 -> audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6eb9b2ac-7e3d-5a4b-8dc9-dcfbc5e3e9d3', 1)
  AND voice_key = 'character:nora:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '511f886dc17710b915e45077adf2b0ca2db16ff5b4381e72867881c6cef0d4b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed496c8a-7dbf-573e-94dc-b4142b7499d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6eb9b2ac-7e3d-5a4b-8dc9-dcfbc5e3e9d3', 1), '511f886dc17710b915e45077adf2b0ca2db16ff5b4381e72867881c6cef0d4b8',
  'character:nora:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3', 1697, '2026-09-12 08:20:19.201668', '103f664267d9f76d8fad545b6b0e32bf9e742648715c05109f23d2428916f242', 'validated', '{"audio_key":"b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589","entity_key":"d_pre_spell_name:3","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"103f664267d9f76d8fad545b6b0e32bf9e742648715c05109f23d2428916f242","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/b8a47bf137c6e8bb4204930fd2e80972b1d2cb443b6a67db01a7c42c9fbdb589.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:5 -> audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e541a84e-b8c7-513f-ac3a-81526a0df8fa', 1)
  AND voice_key = 'character:nina:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff70c7ac95663d0237a01a5adb17b6a3517ac255fd062b0ccec372a024db6c30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a431d6b-2ee4-5b8d-90ac-8758de06b3c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e541a84e-b8c7-513f-ac3a-81526a0df8fa', 1), 'ff70c7ac95663d0237a01a5adb17b6a3517ac255fd062b0ccec372a024db6c30',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3', 966, '2026-09-12 08:20:20.123550', 'd912f0336a5edb04b6958bc199b41b88eb1031f5236a2498e121606da4a2c9c7', 'validated', '{"audio_key":"bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868","entity_key":"d_pre_capstone_meeting:5","voice_id":"KoVIHoyLDrQyd4pGalbs","voice_name":"Autumn Veil -  Warm & Reflective","voice_labels":{"accent":"american","language":"en","descriptive":"calm","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"d912f0336a5edb04b6958bc199b41b88eb1031f5236a2498e121606da4a2c9c7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/bab9c06f61baa7aa06cd96fe4d403671a60fa43d09bef85ea4aed303c4590868.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_water_offer:1 -> audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a769e7c3-bb9a-53c6-9659-3c1e1c77c01b', 1)
  AND voice_key = 'character:lina:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68b84dafd06bb7ac0b411d0bc4c0a4a982423ab56831bcbf63e797255dcebee0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5794713b-6e2b-532b-b642-84b19de67ad8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a769e7c3-bb9a-53c6-9659-3c1e1c77c01b', 1), '68b84dafd06bb7ac0b411d0bc4c0a4a982423ab56831bcbf63e797255dcebee0',
  'character:lina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3', 783, '2026-09-12 08:20:20.986763', 'c5e2646554596ecf73665ff416ff608e05870c99c5dbfbfbf18d05f189ff26c6', 'validated', '{"audio_key":"e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca","entity_key":"d_pre_water_offer:1","voice_id":"kPzsL2i3teMYv0FxEYQ6","voice_name":"Brittney - Social Media Voice - Fun, Youthful & Informative","voice_labels":{"accent":"american","language":"en","descriptive":"upbeat","use_case":"social_media","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"c5e2646554596ecf73665ff416ff608e05870c99c5dbfbfbf18d05f189ff26c6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/e8d9beb0073c98e0a14df4fc5b6c8e47809ceab67730a68c4942720fe1cc5eca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_greeting_door:1 -> audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e5ec1a6-e320-52bc-b631-cc0bcb2ed4e5', 1)
  AND voice_key = 'character:mia:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('237388ff-172b-5fcc-86ad-e8c0ef262b45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e5ec1a6-e320-52bc-b631-cc0bcb2ed4e5', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'character:mia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3', 862, '2026-09-12 08:20:21.038908', 'fd7a1b44536be6f534db47e346c7f861c33ed13cfd0f0ffa2110409fc8931fa5', 'validated', '{"audio_key":"e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce","entity_key":"d_pre_greeting_door:1","voice_id":"Z3R5wn05IrDiVCyEkUrK","voice_name":"Arabella","voice_labels":{"accent":"american","language":"en","descriptive":"gentle","use_case":"narrative_story","age":"young","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"fd7a1b44536be6f534db47e346c7f861c33ed13cfd0f0ffa2110409fc8931fa5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/e9a785ddfd8e53ef8a6c0106415bf8c6fd14fb054d0b8933c278c303cc4ec8ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_capstone_meeting:2 -> audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20761349-5bcc-5760-98de-b2ae1db26a0a', 1)
  AND voice_key = 'character:arman:male_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1233be4-8794-559a-90b9-26b9cc0dffee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20761349-5bcc-5760-98de-b2ae1db26a0a', 1), 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8',
  'character:arman:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3', 731, '2026-09-12 08:20:21.901254', '9803788d7805f582800ad47f075d6f0bf615ebf9884ced98f1c42475a12ffdc7', 'validated', '{"audio_key":"eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c","entity_key":"d_pre_capstone_meeting:2","voice_id":"NMilCCbfoygNnI2VZ7ME","voice_name":"Austin - Dramatic Narration","voice_labels":{"accent":"american","language":"en","descriptive":"professional","use_case":"narrative_story","age":"middle_aged","gender":"male"},"output_format":"mp3_44100_192","file_sha256":"9803788d7805f582800ad47f075d6f0bf615ebf9884ced98f1c42475a12ffdc7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/eb6c18160a10677e2a10449e24a2d9302300beda606fd2354ac4c64e79c67d8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_bye_class:1 -> audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a71c42db-4ab4-515c-a74a-9953326b10ff', 1)
  AND voice_key = 'character:ava:female_warm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('015b205c-3805-538d-b6c5-78523f645432', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a71c42db-4ab4-515c-a74a-9953326b10ff', 1), 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed',
  'character:ava:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3', 548, '2026-09-12 08:20:22.095969', '9f464cd327c90a693436d55b42fa6dcad987cd014a5de9ae348383b7eb8997b7', 'validated', '{"audio_key":"fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0","entity_key":"d_pre_bye_class:1","voice_id":"BBz8H3kffyIUs3SYExlh","voice_name":"Sabine - Fun and Dynamic Narrator","voice_labels":{"accent":"american","language":"en","descriptive":"confident","use_case":"narrative_story","age":"middle_aged","gender":"female"},"output_format":"mp3_44100_192","file_sha256":"9f464cd327c90a693436d55b42fa6dcad987cd014a5de9ae348383b7eb8997b7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/fb800cfeeb8f672d6807669900d9872c629172021198d477745d5f8b6e8bedd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_pre_bye_class:2 -> audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8394f4f9-1467-5523-ba59-27954dad753e', 1)
  AND voice_key = 'character:noah:male_calm'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c0ebb82-a324-5c76-bc45-125762caf706', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8394f4f9-1467-5523-ba59-27954dad753e', 1), '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002',
  'character:noah:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3', 914, '2026-09-12 08:20:27.918969', '59ce82ecaa8ff3c5c919ff21884d50cd3eab2bb9b73b7817c1ef1f12886d2251', 'validated', '{"audio_key":"fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf","entity_key":"d_pre_bye_class:2","voice_id":"c6SfcYrb2t09NHXiT80T","voice_name":"Jarnathan - Confident and Versatile","voice_labels":{"gender":"male","accent":"american","age":"middle_aged","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"59ce82ecaa8ff3c5c919ff21884d50cd3eab2bb9b73b7817c1ef1f12886d2251","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/dialogues/fc1c863984fb0c104c6c7fc19b488351218444f0d62bcf2983113416e1215dcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_repeat -> audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fda38cd7-6d68-55f7-9366-de3f291d48ce', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25e2b6b106523880e27763084ffa6a0756335be0d7106022535365b9ad39b4b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb17644b-a1a8-54fd-8630-25e596a24b25', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fda38cd7-6d68-55f7-9366-de3f291d48ce', 1), '25e2b6b106523880e27763084ffa6a0756335be0d7106022535365b9ad39b4b1',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3', 862, '2026-09-12 08:20:23.046221', 'dcc00223bc98787fcd08d8ad17e9d50014eaf390693a9b772267e392df548891', 'validated', '{"audio_key":"0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5","entity_key":"lx_pre_repeat","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"dcc00223bc98787fcd08d8ad17e9d50014eaf390693a9b772267e392df548891","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/0ef1f5ed86f256029e8b463aaa3f36c26b1e6b5522811f576fbba8437581efc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_key -> audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('489fea4a-9cc7-5781-a5df-528d5f1a4f18', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c70e12b7a0646f92279f427c7b38e7334d8e5389cff167a1dc30e73f826b683'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27b69b8c-1002-50e9-a9cb-cd824672386c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('489fea4a-9cc7-5781-a5df-528d5f1a4f18', 1), '2c70e12b7a0646f92279f427c7b38e7334d8e5389cff167a1dc30e73f826b683',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3', 783, '2026-09-12 08:20:23.980611', 'befb2cec3faf45125b1aded7d09c1546fc32e05d295f067230f84940438cb98f', 'validated', '{"audio_key":"13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4","entity_key":"lx_pre_key","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"befb2cec3faf45125b1aded7d09c1546fc32e05d295f067230f84940438cb98f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/13957c37c5d84e5709b160c419e285fb47c014e37948a2898878b4986313fff4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_thanks -> audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d6b2340-2f47-578c-90d9-f2e9c515a0a6', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6a2729cbf6bcadce577a31f7f76201d5ce63c57d6c53318000d67714bb354ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1db499c7-8ce3-5e71-9179-50dbbe670c9e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d6b2340-2f47-578c-90d9-f2e9c515a0a6', 1), 'a6a2729cbf6bcadce577a31f7f76201d5ce63c57d6c53318000d67714bb354ef',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3', 862, '2026-09-12 08:20:24.898942', 'a9e489b6e2d4fc522fb353ba0b972774eb8211ca3342630714e72d4e4fb9cb3c', 'validated', '{"audio_key":"16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233","entity_key":"lx_pre_thanks","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a9e489b6e2d4fc522fb353ba0b972774eb8211ca3342630714e72d4e4fb9cb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/16a5678da48db635208d59bb7d97c58aad6c603f2d8ecd268dcb7199077ce233.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_ten -> audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dfec0d85-d849-5904-9466-9d79842097d2', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f440d31-3791-50f2-bc1a-6e6b31b47eff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dfec0d85-d849-5904-9466-9d79842097d2', 1), 'e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3', 914, '2026-09-12 08:20:25.820247', '94c96c771b64bc596de19bbede50c3be6fd871a444fc291ac92b3ea81e0a45e0', 'validated', '{"audio_key":"1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3","entity_key":"lx_pre_ten","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"94c96c771b64bc596de19bbede50c3be6fd871a444fc291ac92b3ea81e0a45e0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/1a4ce729d00b35a118639fc87b5eacae5aa1f881416603ca67751dc49bb084d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_five -> audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8ff7798-2d2e-59f2-860b-294ba7c2d5e2', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '222b0bd51fcef7e65c2e62db2ed65457013bab56be6fafeb19ee11d453153c80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308174ce-8571-5fc6-ba0f-8adb2c0b8e75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8ff7798-2d2e-59f2-860b-294ba7c2d5e2', 1), '222b0bd51fcef7e65c2e62db2ed65457013bab56be6fafeb19ee11d453153c80',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3', 835, '2026-09-12 08:20:26.767032', '888cafc924b0f93c7f50c633367f6e545c802946fbb44d3e085066545b2cf7e6', 'validated', '{"audio_key":"22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e","entity_key":"lx_pre_five","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"888cafc924b0f93c7f50c633367f6e545c802946fbb44d3e085066545b2cf7e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/22c2b1ce27d8369cc9326b1a2c20628cbaed820a1e85353ac84125341049f67e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_no -> audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('63558d47-126f-538e-ade5-945a5a952624', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ce35e29-c63e-59ff-b084-00c0d1a73400', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('63558d47-126f-538e-ade5-945a5a952624', 1), '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3', 835, '2026-09-12 08:20:27.689585', '070cb394698a402aa756e609e13ddadfb2b440f9a289f2a3348318d165c5bc56', 'validated', '{"audio_key":"2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9","entity_key":"lx_pre_no","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"070cb394698a402aa756e609e13ddadfb2b440f9a289f2a3348318d165c5bc56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/2a33686a32c8cf7e1f691ea8777e052bad1959f99e728b16cdb77372bd105aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_bag -> audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8ec421c-444d-55c4-b5b3-dbf1bec8d8e8', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c018019b6a8b01ab5868cf4be8db327a7549ae03202548b9ffcd2671c4c2b624'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12dbe824-2b07-5d3c-9eef-728ba74af9b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8ec421c-444d-55c4-b5b3-dbf1bec8d8e8', 1), 'c018019b6a8b01ab5868cf4be8db327a7549ae03202548b9ffcd2671c4c2b624',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3', 1018, '2026-09-12 08:20:28.626096', 'af6438f0d001700e9f7f2b539cf8038e9a84cc0637a262f3c796dc3106621b70', 'validated', '{"audio_key":"3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2","entity_key":"lx_pre_bag","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"af6438f0d001700e9f7f2b539cf8038e9a84cc0637a262f3c796dc3106621b70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/3af0b70d080f4ef453a13b857c04db789b04dc8a6dc1f953ac0858e95afa4ac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_phone -> audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c95ba449-4102-55af-a54b-d8ee4f5e6306', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45569da57f4b7bf472d7a864ef4781451cae6383fee9fb0ae40c59aa1ce475b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30b88877-f3e7-5461-be34-cd3a2b861052', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c95ba449-4102-55af-a54b-d8ee4f5e6306', 1), '45569da57f4b7bf472d7a864ef4781451cae6383fee9fb0ae40c59aa1ce475b7',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3', 862, '2026-09-12 08:20:28.826046', 'eebd7eedeff13740bce4e8baa6ffaf1294a88fccb4fb6f2d4051f49ec1ab6fbb', 'validated', '{"audio_key":"59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64","entity_key":"lx_pre_phone","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"eebd7eedeff13740bce4e8baa6ffaf1294a88fccb4fb6f2d4051f49ec1ab6fbb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/59fc70855b8ef8b672d5edf77dbec6606311da9c26baab1e6c2e97a7d4c24e64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_seven -> audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1094ec10-abc7-577a-9073-abdad7d57e45', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ba8d02b16fd2a01c1a8ba1a1f036d7ce386ed953696fa57331c2ac48a80b255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6d6c0fa-c42a-5df6-a957-460e4b11cfaf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1094ec10-abc7-577a-9073-abdad7d57e45', 1), '3ba8d02b16fd2a01c1a8ba1a1f036d7ce386ed953696fa57331c2ac48a80b255',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3', 835, '2026-09-12 08:20:29.525903', '2b8c4be34591789c2bd32a13c4af67bff461635d014693c51ef81408b37845bf', 'validated', '{"audio_key":"601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8","entity_key":"lx_pre_seven","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"2b8c4be34591789c2bd32a13c4af67bff461635d014693c51ef81408b37845bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/601bd3d93a5f6455ee0cf4423d424d1335e8bcf730d362811d1f0c5a5dbcc6f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_listen -> audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('352db903-37b1-500a-8161-6add3f3d339a', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f8860eb5103a16b917146f9cbf21aa00fe7d2291b1aad7f4fe83a6db71688cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7f6236a-5c5c-5216-84f8-7eeb6a0eb0c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('352db903-37b1-500a-8161-6add3f3d339a', 1), '6f8860eb5103a16b917146f9cbf21aa00fe7d2291b1aad7f4fe83a6db71688cf',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3', 835, '2026-09-12 08:20:29.817749', '23446e256b641dafe0680fbdebe0c583aff2995a7eef416211d1cfd131645573', 'validated', '{"audio_key":"636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f","entity_key":"lx_pre_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"23446e256b641dafe0680fbdebe0c583aff2995a7eef416211d1cfd131645573","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/636422417e6c6efbb6a95b8c2e0f72dfeb5e83e77f73824bcd5182928fd3511f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_nine -> audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a0354be-6750-55d7-9653-4a73081e63b0', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edcd8e701a2df0cd66a39bae6aa156cf16fe2b9653ef65f7d31742e2352421e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f9f2890-cf09-5b6a-8e3e-083ab46564d1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a0354be-6750-55d7-9653-4a73081e63b0', 1), 'edcd8e701a2df0cd66a39bae6aa156cf16fe2b9653ef65f7d31742e2352421e4',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3', 914, '2026-09-12 08:20:30.472245', '36436d1589576ad5a980c3816862603deea98bbdc209f46f803139573dd9dd8a', 'validated', '{"audio_key":"6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4","entity_key":"lx_pre_nine","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"36436d1589576ad5a980c3816862603deea98bbdc209f46f803139573dd9dd8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/6a794498586c39d6bfbd5a8f1dd1beaf5a06d40418cbe996bea07bac8e50b6b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_one -> audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('435d7e57-ec18-5426-b2be-a6536d97b4a0', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7692c3ad3540bb803c020b3aee66cd8887123234ea0c6e7143c0add73ff431ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4438835e-0d0e-50d0-92e0-3eb6391fad2d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('435d7e57-ec18-5426-b2be-a6536d97b4a0', 1), '7692c3ad3540bb803c020b3aee66cd8887123234ea0c6e7143c0add73ff431ed',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3', 600, '2026-09-12 08:20:30.715413', '3703e68cb0b6ad2757237a3f0a1a3b95d09374a28d4916518f0b4b31f04b7b91', 'validated', '{"audio_key":"6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1","entity_key":"lx_pre_one","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"3703e68cb0b6ad2757237a3f0a1a3b95d09374a28d4916518f0b4b31f04b7b91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/6e1d43ca33cfeedf1ce9da21c0780a282a6b3ea8dfa227b9bfacdd8e3f5545c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_six -> audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e79b2eda-28d8-5d15-8959-048f9d933352', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44778d82365e4af681c40d5f0eef5cf6f5899d3f0ac335050a7ed6779cf3f674'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d60c1ef2-721d-561b-8788-1bf360707d52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e79b2eda-28d8-5d15-8959-048f9d933352', 1), '44778d82365e4af681c40d5f0eef5cf6f5899d3f0ac335050a7ed6779cf3f674',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3', 835, '2026-09-12 08:20:31.434354', '01275b5ae4b24ddcb7c8a1938bc2280bbacba81c2d8e89e58ea8343799b45f89', 'validated', '{"audio_key":"70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0","entity_key":"lx_pre_six","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"01275b5ae4b24ddcb7c8a1938bc2280bbacba81c2d8e89e58ea8343799b45f89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/70bdadc931492d11db62e5a00abbeb3998dbe02d6155df43fa065c260e15d2d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_book -> audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fb4aaceb-fa01-5717-b4c0-075bb55d2ee5', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92719fe0cf8cd51592af31ee8a5736d79f7273777fa3f7b70bfe993a4cd32180'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3947f56-a9d9-52d6-a631-a9ffd889642c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fb4aaceb-fa01-5717-b4c0-075bb55d2ee5', 1), '92719fe0cf8cd51592af31ee8a5736d79f7273777fa3f7b70bfe993a4cd32180',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3', 862, '2026-09-12 08:20:31.652562', 'ee0197bd032c49555809d52aaed265fd3f4aeb4eafcc796510e0bf782f5db850', 'validated', '{"audio_key":"80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44","entity_key":"lx_pre_book","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"ee0197bd032c49555809d52aaed265fd3f4aeb4eafcc796510e0bf782f5db850","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/80173f810f1febf537d87c1c1818d8c31135c7f4237c2c29c5b2544ce6d50d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_please -> audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('958eaea3-e5ed-54ea-884e-6a74fbff5eb1', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56ccc4dcfc96534b06fc0c08a301be24f13b491484d5d984953cc0dba9bbb89a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07545da2-f0eb-5b7b-aabe-8012fb6b11d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('958eaea3-e5ed-54ea-884e-6a74fbff5eb1', 1), '56ccc4dcfc96534b06fc0c08a301be24f13b491484d5d984953cc0dba9bbb89a',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3', 862, '2026-09-12 08:20:32.352788', '85eca4dabc5492369a85d6bf287f1c29c235c5d2d799f9ee243f42b842a08c81', 'validated', '{"audio_key":"8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf","entity_key":"lx_pre_please","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"85eca4dabc5492369a85d6bf287f1c29c235c5d2d799f9ee243f42b842a08c81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/8f7934b9329120ddedac9f37747de7bd967253a5c4b286c236d1ae7a0c4b9ddf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_yes -> audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc94104e-c504-5a27-8692-16f2a1f82a7a', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a798890fe93817163b10b5f7bd2ca4d25d84c52739a645a889c173eee7d9d3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad0b00eb-54e9-53bc-883c-4158ba4e1839', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc94104e-c504-5a27-8692-16f2a1f82a7a', 1), '8a798890fe93817163b10b5f7bd2ca4d25d84c52739a645a889c173eee7d9d3d',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3', 783, '2026-09-12 08:20:32.583014', 'f0669874896eb6dc5414d08b880e7c880635666884737423d8451500ad18b911', 'validated', '{"audio_key":"97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04","entity_key":"lx_pre_yes","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f0669874896eb6dc5414d08b880e7c880635666884737423d8451500ad18b911","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/97d8e1aa297c1ee442ea53068d595bdfd67e1296d009c0d5b417f85b2a7b0b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_four -> audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('931c9a52-1ac8-5822-91b5-547cc20b3f2b', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04efaf080f5a3e74e1c29d1ca6a48569382cbbcd324e8d59d2b83ef21c039f00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88b963f5-5e44-5bfe-a0db-f62d1efcd007', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('931c9a52-1ac8-5822-91b5-547cc20b3f2b', 1), '04efaf080f5a3e74e1c29d1ca6a48569382cbbcd324e8d59d2b83ef21c039f00',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3', 914, '2026-09-12 08:20:33.304363', 'cb1c2bce7b4218dca8f7d0d123f306659c22c956320e366cb73e7c54a85679e0', 'validated', '{"audio_key":"992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db","entity_key":"lx_pre_four","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"cb1c2bce7b4218dca8f7d0d123f306659c22c956320e366cb73e7c54a85679e0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/992b5e42251f75203186bffd6f392ab1426a52d4417f0fade9eaac2f33e715db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_look -> audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e5a11230-304c-5098-a63d-8fb969361be7', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c01eba119e00d79c82b6f65d70bc5f1044d568618bf41377e6d1432023fc2b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e262cc8c-5394-5f06-af32-67ba1cd69013', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e5a11230-304c-5098-a63d-8fb969361be7', 1), '3c01eba119e00d79c82b6f65d70bc5f1044d568618bf41377e6d1432023fc2b8',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3', 835, '2026-09-12 08:20:33.584965', 'e8e2855d5f4c24000a456b8125bb8d1060325db5ccec4c0b34c08d65e7bc4589', 'validated', '{"audio_key":"a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482","entity_key":"lx_pre_look","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e8e2855d5f4c24000a456b8125bb8d1060325db5ccec4c0b34c08d65e7bc4589","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/a256935afefaa6c952ab58914a892d9b0ff992e0ea396093654eadd5beb32482.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_two -> audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7980c2ea-f310-5aa3-aef4-5050bc65164c', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('338a6d80-05b7-5564-b71b-593dd889a23b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7980c2ea-f310-5aa3-aef4-5050bc65164c', 1), '3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3', 731, '2026-09-12 08:20:34.218162', 'b7e3731fb2daa83d2e74d3881c5ec73b1b3700bdd1cd6bc53907990e6e9ae60e', 'validated', '{"audio_key":"acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796","entity_key":"lx_pre_two","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"b7e3731fb2daa83d2e74d3881c5ec73b1b3700bdd1cd6bc53907990e6e9ae60e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/acedc299a03a7e67802160f303778bf86dd3ae11e033ae9ee8609b9472108796.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_sorry -> audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d04751a1-16fd-56a2-bf60-0a65db7482ac', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '484aab2f2cd0f77b3c30f91521ba9a76c8c501112a53e100154a098c274f03d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c67b7302-bcd4-5848-b610-965f7d8917f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d04751a1-16fd-56a2-bf60-0a65db7482ac', 1), '484aab2f2cd0f77b3c30f91521ba9a76c8c501112a53e100154a098c274f03d3',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3', 835, '2026-09-12 08:20:34.527077', 'e059943691c51563ff923ac3eb14c997f3a32506b5833fce141d2ea4d2de4016', 'validated', '{"audio_key":"b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616","entity_key":"lx_pre_sorry","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e059943691c51563ff923ac3eb14c997f3a32506b5833fce141d2ea4d2de4016","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/b9269c31b741beb7966276c1bfc0a0282c07bb27e7303ef5e430581b4cde6616.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_three -> audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b1a99ad-d50e-57b4-ae0c-95af46c51cd2', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccdc8536-3318-5201-babb-8f46cb38a6df', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b1a99ad-d50e-57b4-ae0c-95af46c51cd2', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3', 783, '2026-09-12 08:20:35.137413', '07e1bf6852e18a9650bbafa00fc546926c0787ed1a2fe56afddc8a7edff66b85', 'validated', '{"audio_key":"b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea","entity_key":"lx_pre_three","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"07e1bf6852e18a9650bbafa00fc546926c0787ed1a2fe56afddc8a7edff66b85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/b92e82f22cfc7422512fdce43b06104f709b29de7ea160357c9f63010ce4c9ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_read -> audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28610b97-6a01-5de8-b6a8-d05282bd4dad', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3316348dbadfb7b11c7c2ea235949419e23f9fa898ad2c198f999617912a9925'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12fcb93a-6d72-5a23-ae49-8e1782086b73', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28610b97-6a01-5de8-b6a8-d05282bd4dad', 1), '3316348dbadfb7b11c7c2ea235949419e23f9fa898ad2c198f999617912a9925',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3', 835, '2026-09-12 08:20:35.461201', 'e12dc6d620d3ebd55383bece556992fae13ab06aec939df79529cfd19ce9606d', 'validated', '{"audio_key":"c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df","entity_key":"lx_pre_read","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"e12dc6d620d3ebd55383bece556992fae13ab06aec939df79529cfd19ce9606d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/c1e4f94eba1a8ad62a81b73fb9794eeb7463338df53fefe5100633e2ee2a46df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_zero -> audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1805a8b1-e0b4-50d9-8361-a734e63e4d7d', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f20c4fd8-161a-544c-8afa-b7c7c45aae52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1805a8b1-e0b4-50d9-8361-a734e63e4d7d', 1), 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3', 835, '2026-09-12 08:20:36.052980', '8e11383287900d7cca509d5612a1d2c72e56e64b0517aaddfbb6145908897615', 'validated', '{"audio_key":"cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92","entity_key":"lx_pre_zero","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"8e11383287900d7cca509d5612a1d2c72e56e64b0517aaddfbb6145908897615","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/cc9f83df1c6d71522bfe30e5def447e3e7c42028548d02a6aac274dfad457c92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_write -> audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4a431c0-de1a-5576-ac1e-8ae8d0ace951', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10fd874b68dad080ed706762c8e163dabb20514bddae38fb159c56f714a3b143'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e39950f-ccea-5a1a-89f0-f70cecb4a7d8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4a431c0-de1a-5576-ac1e-8ae8d0ace951', 1), '10fd874b68dad080ed706762c8e163dabb20514bddae38fb159c56f714a3b143',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3', 835, '2026-09-12 08:20:36.406383', 'a492a954f13ab75556af5efd214892e6a6848476ce6c165f7e26512f5d27dcd0', 'validated', '{"audio_key":"d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75","entity_key":"lx_pre_write","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"a492a954f13ab75556af5efd214892e6a6848476ce6c165f7e26512f5d27dcd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/d5a72f20b8e3486cbae2cb8084fd0baa06175a21dea8b1c2e4e2cb7e54648a75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_pre_eight -> audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e91343b-0bf2-50d3-8d09-c572b6de6846', 1)
  AND voice_key = 'en-us.lexical.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97545664-40fa-5bb5-b2f4-33f14cc3945b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e91343b-0bf2-50d3-8d09-c572b6de6846', 1), 'c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a',
  'en-us.lexical.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3', 731, '2026-09-12 08:20:36.976412', '3e7e40584767cbb8ffa4ab58260744765948cea4f850c30952f1ea0fb0db5f90', 'validated', '{"audio_key":"e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f","entity_key":"lx_pre_eight","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"3e7e40584767cbb8ffa4ab58260744765948cea4f850c30952f1ea0fb0db5f90","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.94},"relative_path":"audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/lexical/e8f8cb4ee2a7d5c28bd4d1e9b871fcf617a219530ff0809c5db15fb04d55d34f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_green -> audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('095884e5-dcd0-5f86-9873-5b8063d6aca9', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba4788b226aa8dc2e6dc74248bb9f618cfa8c959e0c26c147be48f6839a0b088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02d8f8bb-e9ec-50a2-ad08-98cf006e1434', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('095884e5-dcd0-5f86-9873-5b8063d6aca9', 1), 'ba4788b226aa8dc2e6dc74248bb9f618cfa8c959e0c26c147be48f6839a0b088',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3', 783, '2026-09-12 08:20:37.319331', '42eaedb9cdc217b06df956727e7aecbaf82eb035359d87408e3655f38072ee7b', 'validated', '{"audio_key":"080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f","entity_key":"u_pre_green","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"42eaedb9cdc217b06df956727e7aecbaf82eb035359d87408e3655f38072ee7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/080c34e412b8b3426157b91398ab3b4c9c435d90d842ca2e659b0382290b883f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_name_im -> audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fa9832bc-4dd6-5603-b32d-270f78a4f936', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dc9ca760d4456473b66bbe5730fae606785743e662f7bae79013c077d916726'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bea4a85-d068-5ef7-b134-6e6f2a9a8a32', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fa9832bc-4dd6-5603-b32d-270f78a4f936', 1), '8dc9ca760d4456473b66bbe5730fae606785743e662f7bae79013c077d916726',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3', 914, '2026-09-12 08:20:37.945175', 'bbb85f8993deb71f73a76c3b07bf92d6c32b302beb0786aa40b44ab53211a4ed', 'validated', '{"audio_key":"0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2","entity_key":"u_pre_name_im","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"bbb85f8993deb71f73a76c3b07bf92d6c32b302beb0786aa40b44ab53211a4ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/0e5017699a5fdfdb7d6289cf570a5f5cfb71a479a5ff5d127d3919b2a0cf90c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_goodbye -> audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce1460d3-0eda-582f-b0e2-00f5e5527eb9', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c090ecad-c1e8-5f68-be52-17bd19491362', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce1460d3-0eda-582f-b0e2-00f5e5527eb9', 1), '1cb7b221b7adda1cf4c4724b32369394580480c84ab835795d608ac59aa13002',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3', 1018, '2026-09-12 08:20:38.252995', '4268c28393afb95c6f5ca1a92d3cf7a9c6980d1ea7c45b6d7126444187ed35f4', 'validated', '{"audio_key":"115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8","entity_key":"u_pre_goodbye","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4268c28393afb95c6f5ca1a92d3cf7a9c6980d1ea7c45b6d7126444187ed35f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/115d6a0fdee47725b68f01a842e87d1d7944b6c221a75dd9d0f716abd7efdce8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_how_spell -> audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('63f0acad-cef5-5829-a97e-56abb3eb2766', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '099eca0c2efa8ee3b45f2c111ec5f0feaf33337e9c712495b002f53ae029c939'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c21ff82-1ec7-5042-a88c-e76e45ffde9f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('63f0acad-cef5-5829-a97e-56abb3eb2766', 1), '099eca0c2efa8ee3b45f2c111ec5f0feaf33337e9c712495b002f53ae029c939',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3', 1149, '2026-09-12 08:20:38.895703', '6abd908897b844e8c40abefe9d5bd2cfb90ee41140b4733ec689e2295f682ead', 'validated', '{"audio_key":"1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4","entity_key":"u_pre_how_spell","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"6abd908897b844e8c40abefe9d5bd2cfb90ee41140b4733ec689e2295f682ead","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/1b205ed4ffe968b129823532b643ddb47d1bb7250c6a0837b9906a6480ca82e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_write -> audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('655ec62f-42c4-543b-bddd-2ed496cba4fc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76050b6862606edfa19c0bc54339d800c6f7016d89c55c539ff58d21a462d2a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('602e7c32-8e8c-5df8-a7cd-9f7a4e448b23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('655ec62f-42c4-543b-bddd-2ed496cba4fc', 1), '76050b6862606edfa19c0bc54339d800c6f7016d89c55c539ff58d21a462d2a1',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3', 862, '2026-09-12 08:20:39.196510', 'f27c73783c1dd61259d8737be718b65e12023943099fe4685c5d04c5ed8678c6', 'validated', '{"audio_key":"2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c","entity_key":"u_pre_write","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f27c73783c1dd61259d8737be718b65e12023943099fe4685c5d04c5ed8678c6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/2c0edb378414ccfebdd8ab54bd8724a5559d4ee7d25b8fd7bb88c207aabaa90c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_chair -> audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e61135a4-519e-5ab4-8adf-760fd8d33839', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d7eb3d3dab17ee509a6911e0feb928eb46e956adcada792493614bfb97a7a9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4256816-d5e3-5cd9-8b16-a9d2435a7f84', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e61135a4-519e-5ab4-8adf-760fd8d33839', 1), '3d7eb3d3dab17ee509a6911e0feb928eb46e956adcada792493614bfb97a7a9c',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3', 966, '2026-09-12 08:20:39.838101', '133ef0ebf83955994c573a806be9465c7dc7ecfa0edf071eaedfaaf69ef9f631', 'validated', '{"audio_key":"3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab","entity_key":"u_pre_chair","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"133ef0ebf83955994c573a806be9465c7dc7ecfa0edf071eaedfaaf69ef9f631","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/3152f8284e339b670f0cb41aa13f0c527526d242eaa31f82c2924836b6e3d6ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_bye -> audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('612b0330-bd14-55bb-a813-6cb3a800a82c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5e6e601-bda3-5264-bcc4-9704bc35fd86', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('612b0330-bd14-55bb-a813-6cb3a800a82c', 1), 'c330978d116519d7b4de4d0bfba4c80063ebaf26415c437121c09753427bc6ed',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3', 679, '2026-09-12 08:20:40.098713', '755bd9500f5919043badc3b360c3e8ef34bd5e9d34280ddb5fe882287a9f60ae', 'validated', '{"audio_key":"32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7","entity_key":"u_pre_bye","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"755bd9500f5919043badc3b360c3e8ef34bd5e9d34280ddb5fe882287a9f60ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/32b23c1dc0f72543c013ef54b7e82c85f6bb6266b3616cf6e11211102bc2fec7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_name_myname -> audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd9c7eff-d8dd-54d1-aaa0-af9436c553ea', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e124c1a5c5c3e430bc6f0d0f9e47eeae894403d13a41eb8c42a58075d952c8c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ac2f9e2-860a-5b89-9ddc-110acd3cda7b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd9c7eff-d8dd-54d1-aaa0-af9436c553ea', 1), 'e124c1a5c5c3e430bc6f0d0f9e47eeae894403d13a41eb8c42a58075d952c8c7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3', 1253, '2026-09-12 08:20:40.831983', 'c10655682bf37f537170d4dd94d1146d392cc6b3a2c1cbd42e118448d2f9d8c8', 'validated', '{"audio_key":"3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d","entity_key":"u_pre_name_myname","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c10655682bf37f537170d4dd94d1146d392cc6b3a2c1cbd42e118448d2f9d8c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/3707a0f1b7171dfa9ce05640826cf76f1f815c0511c9eed54cd3e4732d19ad4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_food -> audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cce1e20f-a8df-56f9-bd9c-b759204fd101', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72339735-9a61-52fd-939a-32231d86adf9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cce1e20f-a8df-56f9-bd9c-b759204fd101', 1), 'c1f026582fe6e8cb620d0c85a72fe421ddded756662a8ec00ed4c297ad10676b',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3', 783, '2026-09-12 08:20:41.045127', 'c6f74ad5b20dae207e2b5803ccf339a1023e0f7ad80c268b591d0bc65a50973d', 'validated', '{"audio_key":"4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156","entity_key":"u_pre_food","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"c6f74ad5b20dae207e2b5803ccf339a1023e0f7ad80c268b591d0bc65a50973d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/4c322b95359c7e27a2984ea93a1ff4985cf1fc7bb5d3b1da144be58b8a493156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_look -> audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8a8bd6f5-51f1-5b33-81e4-1745d76c52c6', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de5176e3d6e25344fb5d17ca4f9a8f08cdafe73796e4c23f4cc047643d1d7ae9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('278fcea1-c4dc-53c9-a577-eff7e90bfe0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8a8bd6f5-51f1-5b33-81e4-1745d76c52c6', 1), 'de5176e3d6e25344fb5d17ca4f9a8f08cdafe73796e4c23f4cc047643d1d7ae9',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3', 679, '2026-09-12 08:20:41.804790', '3e62dd7a1b25a1c1170ab2637347fb41caae1ffbc205de2cbdff83967dd9ef06', 'validated', '{"audio_key":"4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41","entity_key":"u_pre_look","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"3e62dd7a1b25a1c1170ab2637347fb41caae1ffbc205de2cbdff83967dd9ef06","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/4f4e7949dc35cbece83f280dfec0990ee8c7f0972919be852ee65386bad24d41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_spell_sam -> audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('588c087e-d090-56ee-bd3b-459c7078fa2f', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ff59bc7e53fd11e26a2384beb71f081f8162080addcae56a45b87127a4bdaae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8d206c5-3dd1-5c4b-bd50-4b4a4735d343', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('588c087e-d090-56ee-bd3b-459c7078fa2f', 1), '8ff59bc7e53fd11e26a2384beb71f081f8162080addcae56a45b87127a4bdaae',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3', 1097, '2026-09-12 08:20:41.997802', 'bd5b82e10092f3ac6c6f55c9bec31ea11b014b628265e5b83f03b56505ce9f7c', 'validated', '{"audio_key":"535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9","entity_key":"u_pre_spell_sam","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"bd5b82e10092f3ac6c6f55c9bec31ea11b014b628265e5b83f03b56505ce9f7c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/535f91449325f24a4011d49f1ad002179968fdf2518339da427941535f6448f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_read -> audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('000ffd4c-fd79-5cf7-9e7b-2dfa935a35b1', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00ccb589bcef337db8a18fd57cd64007a14fd351dc7f56e832feb56171d10d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67263afc-b7d4-52a7-a721-001c6077b617', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('000ffd4c-fd79-5cf7-9e7b-2dfa935a35b1', 1), 'b00ccb589bcef337db8a18fd57cd64007a14fd351dc7f56e832feb56171d10d6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3', 679, '2026-09-12 08:20:42.759494', '729c47ee0131f9c11a11ab12fa8e76e443fbfc7fd950cc314450eb560355a488', 'validated', '{"audio_key":"68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527","entity_key":"u_pre_read","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"729c47ee0131f9c11a11ab12fa8e76e443fbfc7fd950cc314450eb560355a488","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/68cbee1f0c6960d4c8adc826ff4f9cb9e5274bd3b58d61c09c353c51eb754527.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_three -> audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('46fcba73-5a91-5aa2-894e-b22dc9312ccd', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aaacd6c-98d7-54be-af7e-dfa789967f41', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('46fcba73-5a91-5aa2-894e-b22dc9312ccd', 1), '8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3', 783, '2026-09-12 08:20:42.929289', '0bd6605226cead8c9bb2472ff4cc2daba1e7ee0713652368ad0276fb55c3bc35', 'validated', '{"audio_key":"8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9","entity_key":"u_pre_three","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"0bd6605226cead8c9bb2472ff4cc2daba1e7ee0713652368ad0276fb55c3bc35","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/8914de65fb38f64f5d7f7da0e7d32814023ff597b856b81f3d3352cc6fb0ebe9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_spell_amy -> audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0987baa-9c34-53b3-9752-da34a8aa5f97', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '266c16e50e9aa7a33cff0cae2e685680e8f58234d4f1882ea933e1e06e7c4f3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eae47f8-c832-5a99-8aa9-a4c1f3b7c2fd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0987baa-9c34-53b3-9752-da34a8aa5f97', 1), '266c16e50e9aa7a33cff0cae2e685680e8f58234d4f1882ea933e1e06e7c4f3f',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3', 1201, '2026-09-12 08:20:43.726358', '2e54bac896b2ead5f32a39a47becd3c80c2d5daa44b895ffca4b17b7d7bb3a91', 'validated', '{"audio_key":"8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef","entity_key":"u_pre_spell_amy","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"2e54bac896b2ead5f32a39a47becd3c80c2d5daa44b895ffca4b17b7d7bb3a91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/8d37d70bda810709044df63b9307de08cbecd3b76e86b0702e995db02ada49ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_that_bag -> audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('720b3230-abfc-5269-b4ad-106bb9ae4358', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a47addc3f303e423e3f81b3fa503b4ab8f524bd821a3e1670aca52c816f2c4ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24a4f57b-7468-538f-a21d-c8c0467684a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('720b3230-abfc-5269-b4ad-106bb9ae4358', 1), 'a47addc3f303e423e3f81b3fa503b4ab8f524bd821a3e1670aca52c816f2c4ec',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3', 1201, '2026-09-12 08:20:43.871049', 'bff94dbecf1f4b9c7aa10c51e4a64bfded4a3e89388fe6df68bd6106204f8fcd', 'validated', '{"audio_key":"942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2","entity_key":"u_pre_that_bag","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"bff94dbecf1f4b9c7aa10c51e4a64bfded4a3e89388fe6df68bd6106204f8fcd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/942f8fd73f4a48fd516c6fa50d27252be806c44c3ad23f2e27395e03601bc9e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_this_book -> audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22dfa403-7db4-5691-8159-93daa5cbd11d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83a30d3fbd93cbb9d1e91256c8854475c41498e48de9ee6d80820a4f40168bf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32a9ee09-209c-5a20-adad-b4877b3b46ed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22dfa403-7db4-5691-8159-93daa5cbd11d', 1), '83a30d3fbd93cbb9d1e91256c8854475c41498e48de9ee6d80820a4f40168bf8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3', 1149, '2026-09-12 08:20:44.685780', '480d456e790507f68d8f0c6723c9b8cafb5c5cd276291b6cb0cd89013cbc729b', 'validated', '{"audio_key":"9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f","entity_key":"u_pre_this_book","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"480d456e790507f68d8f0c6723c9b8cafb5c5cd276291b6cb0cd89013cbc729b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/9ab1cb7e5ce668ee49d4a0ba3b6d514a0cb98f83193cd450662ab148df23fe1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_repeat -> audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e595d1c1-8515-50ff-bce3-731704335b5c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e906f2bb5a2a0bac0f760d4ca07102055e6f18e5d96383d56bc643dff532c00a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0079ca26-af6e-5137-b2d3-44ad588e875b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e595d1c1-8515-50ff-bce3-731704335b5c', 1), 'e906f2bb5a2a0bac0f760d4ca07102055e6f18e5d96383d56bc643dff532c00a',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3', 835, '2026-09-12 08:20:44.805080', '19a18ca59740699650247c785b06eccd0c9e952b07ae5a0e741f89b4a8884e16', 'validated', '{"audio_key":"ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f","entity_key":"u_pre_repeat","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"19a18ca59740699650247c785b06eccd0c9e952b07ae5a0e741f89b4a8884e16","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/ac1cedb9465936002e37b18cd478aa209b4da016928eb8ea560d62faf4f2630f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_no_thanks -> audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('da334dcd-dade-52ed-a412-58ed1885172c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b91d613f300c3bcc2c23ef2b53de52452a7b0e297e3e615026872452e27a2116'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('121d2884-e406-534b-a16e-40b5373c890c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('da334dcd-dade-52ed-a412-58ed1885172c', 1), 'b91d613f300c3bcc2c23ef2b53de52452a7b0e297e3e615026872452e27a2116',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3', 835, '2026-09-12 08:20:45.644640', '7b151ece25397e73a009001022fb98f63188755438d7599bc3a212e9d1494bec', 'validated', '{"audio_key":"c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047","entity_key":"u_pre_no_thanks","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"7b151ece25397e73a009001022fb98f63188755438d7599bc3a212e9d1494bec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/c04ab1ab636a9c5d1110adeb985d370bb8f1cadaa51144f180202a8332da9047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_listen -> audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cc26cd1f-04db-58e2-8eb5-38af818946dc', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64df403570548cf0d3fbc42eeaa82612d5f224b0b05586984aa2a2abac9b0434'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab46f18e-6b58-5a94-9713-f5ef38de1748', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cc26cd1f-04db-58e2-8eb5-38af818946dc', 1), '64df403570548cf0d3fbc42eeaa82612d5f224b0b05586984aa2a2abac9b0434',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3', 783, '2026-09-12 08:20:45.766444', '88e711db4da947bd903b66e2afd946a5bfd652d4ff81a7d59157288e1bcb6e12', 'validated', '{"audio_key":"c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898","entity_key":"u_pre_listen","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"88e711db4da947bd903b66e2afd946a5bfd652d4ff81a7d59157288e1bcb6e12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/c178c12bab0a30b3433c7cc71ada6d2f89d4c39009d1ccb92b57b6948cb61898.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_name_whats -> audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1bbcaba7-403b-59c6-a628-6df679fd587a', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01d1f260-7008-5fc8-8ddb-f142cbe03d33', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1bbcaba7-403b-59c6-a628-6df679fd587a', 1), '56e8908ad76682304d68ca9cd055ca9d6b96ff2f8077d1041567dde66aed9724',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3', 1097, '2026-09-12 08:20:46.599265', '52454bd4b77646ea6aca97ec7fb45efc47f19bb8237fc4ad6a96c6ff9b487e3f', 'validated', '{"audio_key":"e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4","entity_key":"u_pre_name_whats","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"52454bd4b77646ea6aca97ec7fb45efc47f19bb8237fc4ad6a96c6ff9b487e3f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/e45c9811551d6ba99df70824b1bb5009748b6489125c74cf80a7931372b99af4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_hello -> audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('174b099d-e7f3-516d-88e7-3ebb99b3d53d', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ce07c53-8847-5f01-bf3f-ff3692c146b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('174b099d-e7f3-516d-88e7-3ebb99b3d53d', 1), '334d016f755cd6dc58c53a86e183882f8ec14f52fb05345887c8a5edd42c87b7',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3', 835, '2026-09-12 08:20:46.698890', '64857b8198fafe1111604211b97e83aac955c858270b74fd5ee9ae750b1a02d6', 'validated', '{"audio_key":"e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d","entity_key":"u_pre_hello","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"64857b8198fafe1111604211b97e83aac955c858270b74fd5ee9ae750b1a02d6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/e634c8af94071187e3152877a89def90f863d719ce7c9187d87b42b25932ef7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_ship -> audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54a30c06-e4bf-5607-a642-8cff05160cef', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e8fbc04-ae5c-50f4-b53c-28df152b0a5b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54a30c06-e4bf-5607-a642-8cff05160cef', 1), 'e5d5b971139eefeb36d6edb9938fa246740c90da2003626487eb2d5d9646aec6',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3', 914, '2026-09-12 08:20:47.565080', '4162a643a15816c8ba5bf8fed2075326daab67e4a9472cb26f45576081fa4898', 'validated', '{"audio_key":"edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5","entity_key":"u_pre_ship","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"4162a643a15816c8ba5bf8fed2075326daab67e4a9472cb26f45576081fa4898","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/edc1f5d78b3cf11a1f8e8c1955020a0c69189870ecca625657e69b68ad10b1e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_hi -> audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3eaa346-1f2f-51c1-ab25-fe3f6eb7f97c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ab4b81f-c83d-503d-97ea-f069b29431fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3eaa346-1f2f-51c1-ab25-fe3f6eb7f97c', 1), 'ca51ce1fb15acc6d69b8a5700256172fcc507e02073e6f19592e341bd6508ab8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3', 731, '2026-09-12 08:20:47.651412', '510040fc655170aeb1c99dd1808129caf2bb6ab6b73ff73b36b74bb95a242ebc', 'validated', '{"audio_key":"ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4","entity_key":"u_pre_hi","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"510040fc655170aeb1c99dd1808129caf2bb6ab6b73ff73b36b74bb95a242ebc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/ee99893fe76050415615f284ccd7785c44bd10f6b2493fa1b568543b4480a7e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_pre_yes_please -> audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b615b97b-974a-5739-b085-5b9c9bff0d8c', 1)
  AND voice_key = 'en-us.sentence.lori'
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df3f68c-576b-5157-9b0f-59ee12097110', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b615b97b-974a-5739-b085-5b9c9bff0d8c', 1), '2fa98e4d3bdb2c5d0c5bfc3d0da3126aab14ae1c8676a538b6098883e0e71ec8',
  'en-us.sentence.lori', 'elevenlabs', 'eleven_multilingual_v2', 'https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3', 914, '2026-09-12 08:20:48.543275', 'f8d1642ee111a6f5197c8b66d6474ca048b0e8721fb57a6496dc82bf1e8d005e', 'validated', '{"audio_key":"f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7","entity_key":"u_pre_yes_please","voice_id":"tnSpp4vdxKPjI9w0GnoV","voice_name":"Hope - upbeat and clear","voice_labels":{"gender":"female","accent":"american","age":"young","category":"high_quality","language":"en"},"output_format":"mp3_44100_192","file_sha256":"f8d1642ee111a6f5197c8b66d6474ca048b0e8721fb57a6496dc82bf1e8d005e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3","github_url":"https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/audio/generated/en-US/utterances/f7860ce375dc8686878515ac64303d959466f40a73fb29d33fc7d7c2376a8dc7.mp3"}'
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

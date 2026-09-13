-- Generated audio link import for de-DE B2
-- Source manifest: audio/manifests/de/B2-batch-5.json
-- Generated rows: 165
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_formal_decision_writing_03:4 -> audio/generated/de-DE/dialogues/02e69e1be5e72ca6594f5549faaaca5ff8454ab4277f7b4e32f400dce2b15b28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('87860246-021f-551f-be17-ffc40cb45798', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '388620d3eab150e13161930143dbb480263bd554ee9de64a408a371d0015cca7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0374b776-8316-5afb-935f-10dcc1237302', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('87860246-021f-551f-be17-ffc40cb45798', 1), '388620d3eab150e13161930143dbb480263bd554ee9de64a408a371d0015cca7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/02e69e1be5e72ca6594f5549faaaca5ff8454ab4277f7b4e32f400dce2b15b28.mp3', 1802, '2026-09-13 09:17:37.670228', 'b556f702057dafde00310dcc4e9c77fef207598a0db6c0f0a887c952b2e18066', 'validated', '{"audio_key":"02e69e1be5e72ca6594f5549faaaca5ff8454ab4277f7b4e32f400dce2b15b28","entity_key":"d_formal_decision_writing_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b556f702057dafde00310dcc4e9c77fef207598a0db6c0f0a887c952b2e18066","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/02e69e1be5e72ca6594f5549faaaca5ff8454ab4277f7b4e32f400dce2b15b28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_02:3 -> audio/generated/de-DE/dialogues/036d7a6e754cc42ef2f232cc2998ec400ae8d8617b121bc1cd32ecb472941637.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe6aa9ca-aba1-56d7-9df6-b470df78b9b6', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2924209ed7539b43f5685fe8f14e5b8d90e1c1c61f07ebedda1a4a8a4ceb6b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e84c5ff-5b07-5969-8f22-5c35c4f89f57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe6aa9ca-aba1-56d7-9df6-b470df78b9b6', 1), 'c2924209ed7539b43f5685fe8f14e5b8d90e1c1c61f07ebedda1a4a8a4ceb6b8',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/036d7a6e754cc42ef2f232cc2998ec400ae8d8617b121bc1cd32ecb472941637.mp3', 3239, '2026-09-13 09:17:37.851670', '8ba649077da7d4df575fcb506d2f8777662d9e66deb62b3bb92e83d7e2af185d', 'validated', '{"audio_key":"036d7a6e754cc42ef2f232cc2998ec400ae8d8617b121bc1cd32ecb472941637","entity_key":"d_formal_decision_writing_02:3","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8ba649077da7d4df575fcb506d2f8777662d9e66deb62b3bb92e83d7e2af185d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/036d7a6e754cc42ef2f232cc2998ec400ae8d8617b121bc1cd32ecb472941637.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:2 -> audio/generated/de-DE/dialogues/048b0497c027be46858b74c8499ab8a76acbc59ce39206b911f523b3ee57651c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94575192-acc8-55ac-a467-1b617af2c306', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '325f1a2b30a24e3d1e71b60b8962317151f1e31564655486131b166090d62992'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e3dabe7-fac1-5883-ba0f-644c84b2a2eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94575192-acc8-55ac-a467-1b617af2c306', 1), '325f1a2b30a24e3d1e71b60b8962317151f1e31564655486131b166090d62992',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/048b0497c027be46858b74c8499ab8a76acbc59ce39206b911f523b3ee57651c.mp3', 4493, '2026-09-13 09:17:39.146014', 'c0c5b40e82eac2e066f74d424b4f4226d606e35eeff69e6faf2921053884daea', 'validated', '{"audio_key":"048b0497c027be46858b74c8499ab8a76acbc59ce39206b911f523b3ee57651c","entity_key":"d_integrated_capstone_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c0c5b40e82eac2e066f74d424b4f4226d606e35eeff69e6faf2921053884daea","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/048b0497c027be46858b74c8499ab8a76acbc59ce39206b911f523b3ee57651c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_02:4 -> audio/generated/de-DE/dialogues/0a57a20a5f9c113ad5051c08027ee2913c45a9415413c8f57b146f1c1bb4ad10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('853114ff-be27-5f5c-a9fe-c1ac8cd7d1bf', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e84bc2e94cced48be8bcc87855251e401a47262eb292adf58e98c19c9f6a60b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecd76f9a-0b14-5a1b-bb4b-456d7b7733e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('853114ff-be27-5f5c-a9fe-c1ac8cd7d1bf', 1), '0e84bc2e94cced48be8bcc87855251e401a47262eb292adf58e98c19c9f6a60b',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0a57a20a5f9c113ad5051c08027ee2913c45a9415413c8f57b146f1c1bb4ad10.mp3', 2638, '2026-09-13 09:17:39.032102', '0d113e86d0f63acaab2ff0e3a9a8cf6158f57bce2582204b7772ddd0dbd80439', 'validated', '{"audio_key":"0a57a20a5f9c113ad5051c08027ee2913c45a9415413c8f57b146f1c1bb4ad10","entity_key":"d_formal_decision_writing_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0d113e86d0f63acaab2ff0e3a9a8cf6158f57bce2582204b7772ddd0dbd80439","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0a57a20a5f9c113ad5051c08027ee2913c45a9415413c8f57b146f1c1bb4ad10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_01:1 -> audio/generated/de-DE/dialogues/0ddc0175490f5647ce8b242b7b2947764d32c8e79b8bbd115bc40c11eade0e54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1673276f-a2b4-5e5d-8b26-06aef4604d3b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ad6fc75c76c6f29dc91155d05805e304cc4a48ec0e011e11255da5d32d4648b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec73d9a9-e7ab-50c5-abbb-e3d8a90e7eed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1673276f-a2b4-5e5d-8b26-06aef4604d3b', 1), '9ad6fc75c76c6f29dc91155d05805e304cc4a48ec0e011e11255da5d32d4648b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ddc0175490f5647ce8b242b7b2947764d32c8e79b8bbd115bc40c11eade0e54.mp3', 2220, '2026-09-13 09:17:40.190070', '54f2b445e610ae01ec175e452119915d106c7af878de944a48ac681461957b09', 'validated', '{"audio_key":"0ddc0175490f5647ce8b242b7b2947764d32c8e79b8bbd115bc40c11eade0e54","entity_key":"d_process_guidance_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"54f2b445e610ae01ec175e452119915d106c7af878de944a48ac681461957b09","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0ddc0175490f5647ce8b242b7b2947764d32c8e79b8bbd115bc40c11eade0e54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:1 -> audio/generated/de-DE/dialogues/107637bf32ab897955e073f9ec6d8cd63128fce80cf9ca11340764f03dac3393.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3671f6a-fbb0-56cc-b83c-655b270ad3e4', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e00ab42cd50a02c287fa5e1b4c901e99663c0a8d8ed5f791d50087ebf602674c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e19d1ce5-ffc0-5030-b327-80e9a75af015', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3671f6a-fbb0-56cc-b83c-655b270ad3e4', 1), 'e00ab42cd50a02c287fa5e1b4c901e99663c0a8d8ed5f791d50087ebf602674c',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/107637bf32ab897955e073f9ec6d8cd63128fce80cf9ca11340764f03dac3393.mp3', 5146, '2026-09-13 09:17:40.555091', '89bcb8bfbfc73694a283dfe4cac9f3089eb97f37d09e62208c8bf1d3eed5902a', 'validated', '{"audio_key":"107637bf32ab897955e073f9ec6d8cd63128fce80cf9ca11340764f03dac3393","entity_key":"d_integrated_capstone_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"89bcb8bfbfc73694a283dfe4cac9f3089eb97f37d09e62208c8bf1d3eed5902a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/107637bf32ab897955e073f9ec6d8cd63128fce80cf9ca11340764f03dac3393.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_02:2 -> audio/generated/de-DE/dialogues/10c70cfaa9bac855fb86787f9f56680b1152fdc6349b052a2ca2ef4beed61a20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8358e4c5-901f-510b-aa30-e2bb9e285ed2', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9862d1074301decb6a80e33097db431b80ad002d43e50a65b676b927edb52f94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec41bfe1-3acf-5962-95ed-a1527d42808d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8358e4c5-901f-510b-aa30-e2bb9e285ed2', 1), '9862d1074301decb6a80e33097db431b80ad002d43e50a65b676b927edb52f94',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/10c70cfaa9bac855fb86787f9f56680b1152fdc6349b052a2ca2ef4beed61a20.mp3', 3369, '2026-09-13 09:17:41.537164', 'aafffd67448f84e3a9a37f9c07aa622e4860962cf5f98056f9ae4211221d4ca2', 'validated', '{"audio_key":"10c70cfaa9bac855fb86787f9f56680b1152fdc6349b052a2ca2ef4beed61a20","entity_key":"d_process_guidance_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"aafffd67448f84e3a9a37f9c07aa622e4860962cf5f98056f9ae4211221d4ca2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/10c70cfaa9bac855fb86787f9f56680b1152fdc6349b052a2ca2ef4beed61a20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:2 -> audio/generated/de-DE/dialogues/1393699cb97a02dbda3122b3ceed22250d10da135d8979077774ded3c6e7249d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('941b79fb-d678-5087-bd8e-72cb3dcd850b', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb92939aaf2807073ef19586f9c8a444f3d4dc6df5065bcbf60abe6be67d173'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f70ccad1-ad4e-5d37-bf95-83299cdf2e62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('941b79fb-d678-5087-bd8e-72cb3dcd850b', 1), '0fb92939aaf2807073ef19586f9c8a444f3d4dc6df5065bcbf60abe6be67d173',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1393699cb97a02dbda3122b3ceed22250d10da135d8979077774ded3c6e7249d.mp3', 2533, '2026-09-13 09:17:41.821013', 'f5c6f8873bf7fb85d89bfced76116bf8cf20b4be89c1f4882f8e6eb54d53b3fc', 'validated', '{"audio_key":"1393699cb97a02dbda3122b3ceed22250d10da135d8979077774ded3c6e7249d","entity_key":"d_integrated_capstone_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f5c6f8873bf7fb85d89bfced76116bf8cf20b4be89c1f4882f8e6eb54d53b3fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1393699cb97a02dbda3122b3ceed22250d10da135d8979077774ded3c6e7249d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_02:2 -> audio/generated/de-DE/dialogues/15d92509ca7e3b5ca6e318f5ba607c9acd59dbe4c3192b2263fae69fb82868ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2edc8241-78cf-5dfe-90c6-55cd18eb54fc', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4001e65b5058a27645f390db3384064b2ce496c1018d2b6dac7b4f804bcc712'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38c3b033-7b52-50aa-8afc-c6786b7b2961', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2edc8241-78cf-5dfe-90c6-55cd18eb54fc', 1), 'e4001e65b5058a27645f390db3384064b2ce496c1018d2b6dac7b4f804bcc712',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/15d92509ca7e3b5ca6e318f5ba607c9acd59dbe4c3192b2263fae69fb82868ca.mp3', 1933, '2026-09-13 09:17:42.747952', 'fd2a6660ffcf4a125007365035408b8a89b21a0e664ece5eb61c437f0a1bf697', 'validated', '{"audio_key":"15d92509ca7e3b5ca6e318f5ba607c9acd59dbe4c3192b2263fae69fb82868ca","entity_key":"d_integrating_viewpoints_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fd2a6660ffcf4a125007365035408b8a89b21a0e664ece5eb61c437f0a1bf697","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/15d92509ca7e3b5ca6e318f5ba607c9acd59dbe4c3192b2263fae69fb82868ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_02:1 -> audio/generated/de-DE/dialogues/1615adbf022008b8eb9a7863e6617656b2287b56d0ddac4cf04d83ea39bc51f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c077534-bcb6-590d-844c-b1210af6907f', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaf0ef420b9396fc3097a2367b1635c36c7c31ac80e65484105abd742322ac89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('966dbad4-4239-53ab-8900-9b5ba07afc08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c077534-bcb6-590d-844c-b1210af6907f', 1), 'eaf0ef420b9396fc3097a2367b1635c36c7c31ac80e65484105abd742322ac89',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1615adbf022008b8eb9a7863e6617656b2287b56d0ddac4cf04d83ea39bc51f4.mp3', 3160, '2026-09-13 09:17:43.047701', '3d9a7dd0c8ad9a2449fe00b744f8879ed0e205541b59eeb902c881b2e3297024', 'validated', '{"audio_key":"1615adbf022008b8eb9a7863e6617656b2287b56d0ddac4cf04d83ea39bc51f4","entity_key":"d_change_proposals_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3d9a7dd0c8ad9a2449fe00b744f8879ed0e205541b59eeb902c881b2e3297024","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1615adbf022008b8eb9a7863e6617656b2287b56d0ddac4cf04d83ea39bc51f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_02:4 -> audio/generated/de-DE/dialogues/161c2d0a4c04b28798ed7364edee33b44b7ea59dc16d94d35987732278d47dff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06e204ee-2b26-5b4a-9e41-f89d738dadbf', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97f144a2ce7ade81f504ea94d079995f6985e8d4fc1236619f8c40945b42288f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d17dd726-8913-5d3d-87b2-568f570f7a61', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06e204ee-2b26-5b4a-9e41-f89d738dadbf', 1), '97f144a2ce7ade81f504ea94d079995f6985e8d4fc1236619f8c40945b42288f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/161c2d0a4c04b28798ed7364edee33b44b7ea59dc16d94d35987732278d47dff.mp3', 2324, '2026-09-13 09:17:44.212638', 'bafc9f61d3da805a9a0269c8f602083cfe7e77307a66f82534a16948fea21cee', 'validated', '{"audio_key":"161c2d0a4c04b28798ed7364edee33b44b7ea59dc16d94d35987732278d47dff","entity_key":"d_integrating_viewpoints_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bafc9f61d3da805a9a0269c8f602083cfe7e77307a66f82534a16948fea21cee","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/161c2d0a4c04b28798ed7364edee33b44b7ea59dc16d94d35987732278d47dff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_02:1 -> audio/generated/de-DE/dialogues/1eb2674edba769133a55963645d56d5ec2dd6bf209436ef60adffc2cb0287ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e2ba03e-034b-549b-b137-308dd23d7cd6', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dde9a2c3e9ebde88b8773edee12e7735290933f2a192218336ebb41e092042d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cf70925-c6cc-5891-87b1-2de7c32caf6b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e2ba03e-034b-549b-b137-308dd23d7cd6', 1), 'dde9a2c3e9ebde88b8773edee12e7735290933f2a192218336ebb41e092042d5',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1eb2674edba769133a55963645d56d5ec2dd6bf209436ef60adffc2cb0287ec6.mp3', 3604, '2026-09-13 09:17:44.310533', '97146a03388bc37f4e13e696018c8177a45053ebb54690f532695f873086d2a7', 'validated', '{"audio_key":"1eb2674edba769133a55963645d56d5ec2dd6bf209436ef60adffc2cb0287ec6","entity_key":"d_integrating_viewpoints_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"97146a03388bc37f4e13e696018c8177a45053ebb54690f532695f873086d2a7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1eb2674edba769133a55963645d56d5ec2dd6bf209436ef60adffc2cb0287ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_01:2 -> audio/generated/de-DE/dialogues/22d26b5bbd9589e67cb83ede86564e772ae4c2832df327ea227ef7b11dc85c61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e17137c4-e384-5e8b-a5df-cbe7e55100a5', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d20e2de3c24627b0020e9cdaec91113d1cb0cf2c19f81b9c2bfd0de217a6b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c63e87a-49b3-5c89-a9fb-1d58edfa24f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e17137c4-e384-5e8b-a5df-cbe7e55100a5', 1), '2d20e2de3c24627b0020e9cdaec91113d1cb0cf2c19f81b9c2bfd0de217a6b89',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/22d26b5bbd9589e67cb83ede86564e772ae4c2832df327ea227ef7b11dc85c61.mp3', 3709, '2026-09-13 09:17:45.475219', 'f7569b3044f3d8ce9ecc6242aa15999987257cd14253d2aabc0fdfcb22681c09', 'validated', '{"audio_key":"22d26b5bbd9589e67cb83ede86564e772ae4c2832df327ea227ef7b11dc85c61","entity_key":"d_integrating_viewpoints_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f7569b3044f3d8ce9ecc6242aa15999987257cd14253d2aabc0fdfcb22681c09","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/22d26b5bbd9589e67cb83ede86564e772ae4c2832df327ea227ef7b11dc85c61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_02:1 -> audio/generated/de-DE/dialogues/25ab75344826c1181ad0fa4f20e8f0f669eb430cc01898b8c11e2967cb9387d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b390f61-55a1-5405-9db4-79a7e95ce0d0', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bc8079caa4dfe042e5a5a390e365a673b71e62ff0559060cecffa8a68567d19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a0c6b29-0ab8-5d34-9e1f-369694774564', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b390f61-55a1-5405-9db4-79a7e95ce0d0', 1), '5bc8079caa4dfe042e5a5a390e365a673b71e62ff0559060cecffa8a68567d19',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/25ab75344826c1181ad0fa4f20e8f0f669eb430cc01898b8c11e2967cb9387d4.mp3', 3291, '2026-09-13 09:17:45.509209', 'fa8dc7937e895a9dc57a04a6e19ec0327396504b2ae40e57c5693cd1852b6f04', 'validated', '{"audio_key":"25ab75344826c1181ad0fa4f20e8f0f669eb430cc01898b8c11e2967cb9387d4","entity_key":"d_formal_decision_writing_02:1","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fa8dc7937e895a9dc57a04a6e19ec0327396504b2ae40e57c5693cd1852b6f04","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/25ab75344826c1181ad0fa4f20e8f0f669eb430cc01898b8c11e2967cb9387d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_03:1 -> audio/generated/de-DE/dialogues/28bafe556c47b5d2ababd2030837bd9028d4c93b9f1abda239da465c7037d4f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9b7c23d-5655-55a8-ab79-6a9f7ad77d1b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88ff9fa214ebf0e11153cefcef2246634fc68c74254e17e6ebfaf7acffc8ef93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0461b7b-a8d4-58cc-a7b8-c4cc2083a9ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9b7c23d-5655-55a8-ab79-6a9f7ad77d1b', 1), '88ff9fa214ebf0e11153cefcef2246634fc68c74254e17e6ebfaf7acffc8ef93',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/28bafe556c47b5d2ababd2030837bd9028d4c93b9f1abda239da465c7037d4f1.mp3', 3239, '2026-09-13 09:17:46.726571', '5365293212b8e433f4fe463a5ea040c56c1b46daf836b0108b75f91d590b6df6', 'validated', '{"audio_key":"28bafe556c47b5d2ababd2030837bd9028d4c93b9f1abda239da465c7037d4f1","entity_key":"d_process_guidance_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5365293212b8e433f4fe463a5ea040c56c1b46daf836b0108b75f91d590b6df6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/28bafe556c47b5d2ababd2030837bd9028d4c93b9f1abda239da465c7037d4f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_03:2 -> audio/generated/de-DE/dialogues/3f64e71824166d4ea23566289975c82cebec94397ca7c4e1dd136a4edfc05919.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('887a4155-a1a8-5201-9fb4-600903a140d2', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6499714ec1b250e5622f5e3aaa3ecd3b500cc0774068e460c6c84d671fb53e2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5318488a-c786-5490-ae46-d155bb292bda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('887a4155-a1a8-5201-9fb4-600903a140d2', 1), '6499714ec1b250e5622f5e3aaa3ecd3b500cc0774068e460c6c84d671fb53e2b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f64e71824166d4ea23566289975c82cebec94397ca7c4e1dd136a4edfc05919.mp3', 3761, '2026-09-13 09:17:46.770440', 'f841e82f1a09840b55b8012040c2b7f9e9a7174b37a8105a4dd111d5f56ee5e8', 'validated', '{"audio_key":"3f64e71824166d4ea23566289975c82cebec94397ca7c4e1dd136a4edfc05919","entity_key":"d_process_guidance_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f841e82f1a09840b55b8012040c2b7f9e9a7174b37a8105a4dd111d5f56ee5e8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3f64e71824166d4ea23566289975c82cebec94397ca7c4e1dd136a4edfc05919.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_01:4 -> audio/generated/de-DE/dialogues/49654e3c34c040bdb75b5e59ccd66b7cc1a8d090e37a4d403f18a921fa993ae5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('943a79f7-9e83-5529-928a-35d7dbe7e9ac', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f09fe5f0278b79e51970e5de8a41e78ee5c9b8794165daf268f3138e1ef42e85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fc49598-a729-5f81-ab7f-5d96255771f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('943a79f7-9e83-5529-928a-35d7dbe7e9ac', 1), 'f09fe5f0278b79e51970e5de8a41e78ee5c9b8794165daf268f3138e1ef42e85',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/49654e3c34c040bdb75b5e59ccd66b7cc1a8d090e37a4d403f18a921fa993ae5.mp3', 3239, '2026-09-13 09:17:48.021467', '4e82d71b7bd2f75904e01afb6271595129e5974cc64d39cddd3b81b2310198c2', 'validated', '{"audio_key":"49654e3c34c040bdb75b5e59ccd66b7cc1a8d090e37a4d403f18a921fa993ae5","entity_key":"d_formal_decision_writing_01:4","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e82d71b7bd2f75904e01afb6271595129e5974cc64d39cddd3b81b2310198c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/49654e3c34c040bdb75b5e59ccd66b7cc1a8d090e37a4d403f18a921fa993ae5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:3 -> audio/generated/de-DE/dialogues/4a50c41c48d8ed5015e50106a28aba0a0f5da3965891c85be7fbfb2bb9eb1673.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f8f9c1e-cf07-5800-b5f4-d2f48b8a93d3', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd2980a3b428856c3ee2e04dd0ab878c5b706ae230ea93a958963d4d2dee0da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f19c2ba-47ba-586c-85ed-52ede75733aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f8f9c1e-cf07-5800-b5f4-d2f48b8a93d3', 1), '7bd2980a3b428856c3ee2e04dd0ab878c5b706ae230ea93a958963d4d2dee0da',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4a50c41c48d8ed5015e50106a28aba0a0f5da3965891c85be7fbfb2bb9eb1673.mp3', 4858, '2026-09-13 09:17:48.240539', '312051925f3afcbe5860c954648895ae8bbfb0ca1ba2ba2e25e0ee9ccae279bf', 'validated', '{"audio_key":"4a50c41c48d8ed5015e50106a28aba0a0f5da3965891c85be7fbfb2bb9eb1673","entity_key":"d_integrated_capstone_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"312051925f3afcbe5860c954648895ae8bbfb0ca1ba2ba2e25e0ee9ccae279bf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4a50c41c48d8ed5015e50106a28aba0a0f5da3965891c85be7fbfb2bb9eb1673.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_03:1 -> audio/generated/de-DE/dialogues/54f76ea1c95969b5a4b8b8e0642fc3b9eae3ae26820214065157ad82dfb2855f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('edec4dfa-928f-532d-87c5-f7f254e7246d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '762e12c68d577971f78026a09e096cc90c1ada035fb40c36dffa2b1cd22b567d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c39dda7-1a88-570b-8a14-2f66dba41c8c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('edec4dfa-928f-532d-87c5-f7f254e7246d', 1), '762e12c68d577971f78026a09e096cc90c1ada035fb40c36dffa2b1cd22b567d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/54f76ea1c95969b5a4b8b8e0642fc3b9eae3ae26820214065157ad82dfb2855f.mp3', 2742, '2026-09-13 09:17:49.245546', '9e80d19a429bd09ba3e07b505e7fae2f8b8ed77917841eb85d4f842f5008e8f6', 'validated', '{"audio_key":"54f76ea1c95969b5a4b8b8e0642fc3b9eae3ae26820214065157ad82dfb2855f","entity_key":"d_integrating_viewpoints_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e80d19a429bd09ba3e07b505e7fae2f8b8ed77917841eb85d4f842f5008e8f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/54f76ea1c95969b5a4b8b8e0642fc3b9eae3ae26820214065157ad82dfb2855f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:1 -> audio/generated/de-DE/dialogues/56ed840ea90b689a578479ea3c2d0e9277a41da2eb60fc617e664e9bf4d7bde8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5efa0125-80cb-53b3-b65f-d106b496f40a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f06b9823c67e7988fa6cf2dccc9aace62d6183a18a6a9de3c7a2e80cf8fdc53e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc4ddebb-9b36-5a64-929a-faf1c94849d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5efa0125-80cb-53b3-b65f-d106b496f40a', 1), 'f06b9823c67e7988fa6cf2dccc9aace62d6183a18a6a9de3c7a2e80cf8fdc53e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56ed840ea90b689a578479ea3c2d0e9277a41da2eb60fc617e664e9bf4d7bde8.mp3', 5093, '2026-09-13 09:17:49.627936', '143ad23a29a66ce08f0a9524a381855c7e07d9293ecca8c9da87da6a2bd7ce68', 'validated', '{"audio_key":"56ed840ea90b689a578479ea3c2d0e9277a41da2eb60fc617e664e9bf4d7bde8","entity_key":"d_integrated_capstone_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"143ad23a29a66ce08f0a9524a381855c7e07d9293ecca8c9da87da6a2bd7ce68","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/56ed840ea90b689a578479ea3c2d0e9277a41da2eb60fc617e664e9bf4d7bde8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_01:2 -> audio/generated/de-DE/dialogues/5b2eb44427be0c00f527e41f703a6aceffffb896dc30fa64b8b0e4de49e266a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8acab82a-1d0c-5ba2-a3eb-b34b5568300b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0df0a6058aebc61a6989a23a8775caf11635ed4cb2c9b5098faf13e63db72f1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f522b4a2-2f40-5ca7-995a-5d2709a8e9ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8acab82a-1d0c-5ba2-a3eb-b34b5568300b', 1), '0df0a6058aebc61a6989a23a8775caf11635ed4cb2c9b5098faf13e63db72f1c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b2eb44427be0c00f527e41f703a6aceffffb896dc30fa64b8b0e4de49e266a2.mp3', 2873, '2026-09-13 09:17:50.407550', '4d60ba3cd68714b12899b86b195fca619e4230cf320b3eb1da24b73e674c89f3', 'validated', '{"audio_key":"5b2eb44427be0c00f527e41f703a6aceffffb896dc30fa64b8b0e4de49e266a2","entity_key":"d_change_proposals_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4d60ba3cd68714b12899b86b195fca619e4230cf320b3eb1da24b73e674c89f3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5b2eb44427be0c00f527e41f703a6aceffffb896dc30fa64b8b0e4de49e266a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_03:3 -> audio/generated/de-DE/dialogues/5dc5f170d7c3d688a5f1b4d3858ee68e11865e1c8e016f707f8349304bb10a75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e579b0d3-00b4-571f-99e0-d3babdcbf03b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '842f847dcd8b770bd34edb6a5b2e40138a347fe2f6264be72eeccc3ffe584336'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('387876c1-fd21-5e70-aef4-b5717531800a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e579b0d3-00b4-571f-99e0-d3babdcbf03b', 1), '842f847dcd8b770bd34edb6a5b2e40138a347fe2f6264be72eeccc3ffe584336',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5dc5f170d7c3d688a5f1b4d3858ee68e11865e1c8e016f707f8349304bb10a75.mp3', 2220, '2026-09-13 09:17:50.662625', '114377ce230d8566c1a11b23464db23d3e691cd3cab95d3449154106e205cf3c', 'validated', '{"audio_key":"5dc5f170d7c3d688a5f1b4d3858ee68e11865e1c8e016f707f8349304bb10a75","entity_key":"d_process_guidance_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"114377ce230d8566c1a11b23464db23d3e691cd3cab95d3449154106e205cf3c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5dc5f170d7c3d688a5f1b4d3858ee68e11865e1c8e016f707f8349304bb10a75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_02:4 -> audio/generated/de-DE/dialogues/68c7c90f79bb3578690ce456585b4abc39fd97eae5a11faa58ea29afcf55be13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e79bc34-8aad-5016-b78f-f5a02ff6f215', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c2a02b12cdd464e10d3fdaae24bec3727db211ab3727640127588f14d548a6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d127c377-c8fa-5998-9f3d-e4aabc7de6e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e79bc34-8aad-5016-b78f-f5a02ff6f215', 1), '4c2a02b12cdd464e10d3fdaae24bec3727db211ab3727640127588f14d548a6f',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/68c7c90f79bb3578690ce456585b4abc39fd97eae5a11faa58ea29afcf55be13.mp3', 2586, '2026-09-13 09:17:51.534356', '1143b0e1cb45404ff00c013dbc130d86ffef044fa25331433cf4a932dc9cd0d0', 'validated', '{"audio_key":"68c7c90f79bb3578690ce456585b4abc39fd97eae5a11faa58ea29afcf55be13","entity_key":"d_change_proposals_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1143b0e1cb45404ff00c013dbc130d86ffef044fa25331433cf4a932dc9cd0d0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/68c7c90f79bb3578690ce456585b4abc39fd97eae5a11faa58ea29afcf55be13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_02:1 -> audio/generated/de-DE/dialogues/6e0f83c76aeb21b18455374fd80f8f5d3a60d20902e31b815525dd7db8c3b1fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5104e63b-91aa-57cc-9a7f-7cc27ba86984', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b12f37e6b913671ec80ce530062d53cc98c843180f7e3ce45b4700b8203df5de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fc1b0ba-c27c-5164-8347-87d4315464b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5104e63b-91aa-57cc-9a7f-7cc27ba86984', 1), 'b12f37e6b913671ec80ce530062d53cc98c843180f7e3ce45b4700b8203df5de',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6e0f83c76aeb21b18455374fd80f8f5d3a60d20902e31b815525dd7db8c3b1fa.mp3', 2089, '2026-09-13 09:17:51.736731', 'ea49efa2051c21134e24fd0f69834c4620074b62c9481c32ea5436206a034b79', 'validated', '{"audio_key":"6e0f83c76aeb21b18455374fd80f8f5d3a60d20902e31b815525dd7db8c3b1fa","entity_key":"d_process_guidance_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ea49efa2051c21134e24fd0f69834c4620074b62c9481c32ea5436206a034b79","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6e0f83c76aeb21b18455374fd80f8f5d3a60d20902e31b815525dd7db8c3b1fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_03:4 -> audio/generated/de-DE/dialogues/727d67649d19d1c93116ffe91ad6bfe4055bef8fce6d484d5e0ace7c03e87c67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ef910a2-f7cc-5abf-a3d2-3c8e98c1a5ad', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12196e2332e0062e583525c2f3ddc18556be48616c4c477219fcbfc1433a5c06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bccf4586-0ab1-562f-b04e-0f1f02731348', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ef910a2-f7cc-5abf-a3d2-3c8e98c1a5ad', 1), '12196e2332e0062e583525c2f3ddc18556be48616c4c477219fcbfc1433a5c06',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/727d67649d19d1c93116ffe91ad6bfe4055bef8fce6d484d5e0ace7c03e87c67.mp3', 3526, '2026-09-13 09:17:52.733870', 'f5cd6a25cc3c907d14e7d5ec1b363b49a38ef0e0172f04728b6c292df7d8537c', 'validated', '{"audio_key":"727d67649d19d1c93116ffe91ad6bfe4055bef8fce6d484d5e0ace7c03e87c67","entity_key":"d_integrating_viewpoints_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f5cd6a25cc3c907d14e7d5ec1b363b49a38ef0e0172f04728b6c292df7d8537c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/727d67649d19d1c93116ffe91ad6bfe4055bef8fce6d484d5e0ace7c03e87c67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_01:4 -> audio/generated/de-DE/dialogues/7357047961a4d91c263a3df66737041d547c336962ec45a87b4e16524343b69c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('616ef778-7c76-591f-83d3-d1b5f276075b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c88ef111fab3f69ec75067b54b8f0ff3f57dbcffe48ed27bcbf53340ce856507'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa46f913-3ef6-542e-9da1-783a3ed4c618', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('616ef778-7c76-591f-83d3-d1b5f276075b', 1), 'c88ef111fab3f69ec75067b54b8f0ff3f57dbcffe48ed27bcbf53340ce856507',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7357047961a4d91c263a3df66737041d547c336962ec45a87b4e16524343b69c.mp3', 2586, '2026-09-13 09:17:52.822216', 'dc685826376b27bb6fb58d8ed599a8243a1953c34be7929cdf3528d15a1ab602', 'validated', '{"audio_key":"7357047961a4d91c263a3df66737041d547c336962ec45a87b4e16524343b69c","entity_key":"d_change_proposals_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dc685826376b27bb6fb58d8ed599a8243a1953c34be7929cdf3528d15a1ab602","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7357047961a4d91c263a3df66737041d547c336962ec45a87b4e16524343b69c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_03:4 -> audio/generated/de-DE/dialogues/735f0d22c5c6ea390d0b5f5a155cda94a7c6bb6eb4a9d3915da64d5bdd721f92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b4275a0-a7ff-523f-bed7-e8bd6144bca6', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80699172970078af0b7753f30bcd552629d3373bb151b7ad05a05de891c6f196'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b08db8db-3aea-5dba-9a1f-dd22e34a911a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b4275a0-a7ff-523f-bed7-e8bd6144bca6', 1), '80699172970078af0b7753f30bcd552629d3373bb151b7ad05a05de891c6f196',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/735f0d22c5c6ea390d0b5f5a155cda94a7c6bb6eb4a9d3915da64d5bdd721f92.mp3', 1906, '2026-09-13 09:17:53.763530', '11ecc98b01291f34ed37014d6d6835ed9f9f07c2feb831435e6249616a1a85cf', 'validated', '{"audio_key":"735f0d22c5c6ea390d0b5f5a155cda94a7c6bb6eb4a9d3915da64d5bdd721f92","entity_key":"d_process_guidance_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"11ecc98b01291f34ed37014d6d6835ed9f9f07c2feb831435e6249616a1a85cf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/735f0d22c5c6ea390d0b5f5a155cda94a7c6bb6eb4a9d3915da64d5bdd721f92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:1 -> audio/generated/de-DE/dialogues/788836b1215a3408edba68d02cb5f5e6910c190cd93cf39a3260ad86431c6ce0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8341695c-85dc-52b7-8b4f-8ad2fc5327fe', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5a41af9057278357791783758f4f4dcda62db3242697fa8592fd5cd79504553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0da07614-e8b8-503a-a966-097b0d1b781b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8341695c-85dc-52b7-8b4f-8ad2fc5327fe', 1), 'b5a41af9057278357791783758f4f4dcda62db3242697fa8592fd5cd79504553',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/788836b1215a3408edba68d02cb5f5e6910c190cd93cf39a3260ad86431c6ce0.mp3', 4414, '2026-09-13 09:17:54.175712', '894fbbf56a5e8098f99bee1f20501b7b2817bcf46a2c4c5fe9cb2d9006e603d7', 'validated', '{"audio_key":"788836b1215a3408edba68d02cb5f5e6910c190cd93cf39a3260ad86431c6ce0","entity_key":"d_integrated_capstone_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"894fbbf56a5e8098f99bee1f20501b7b2817bcf46a2c4c5fe9cb2d9006e603d7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/788836b1215a3408edba68d02cb5f5e6910c190cd93cf39a3260ad86431c6ce0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_03:3 -> audio/generated/de-DE/dialogues/7b8e4de79da452759cf358688ac09051429a0b872fe2fbd5e93ebab72e9d5781.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e6108e9-9792-57f9-b843-13c59ba6441a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e25c1bc175811c519f88862a9d19d0fd5d55ab0d444d5be624c339f73059bcec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52867675-0476-5096-a921-19898d02ece9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e6108e9-9792-57f9-b843-13c59ba6441a', 1), 'e25c1bc175811c519f88862a9d19d0fd5d55ab0d444d5be624c339f73059bcec',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7b8e4de79da452759cf358688ac09051429a0b872fe2fbd5e93ebab72e9d5781.mp3', 2951, '2026-09-13 09:17:54.933339', 'd55d7a4191d4e0a93c3d6c0b23927b728fa8c0fb7212e829d68780f2863f0bc8', 'validated', '{"audio_key":"7b8e4de79da452759cf358688ac09051429a0b872fe2fbd5e93ebab72e9d5781","entity_key":"d_integrating_viewpoints_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d55d7a4191d4e0a93c3d6c0b23927b728fa8c0fb7212e829d68780f2863f0bc8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7b8e4de79da452759cf358688ac09051429a0b872fe2fbd5e93ebab72e9d5781.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_01:3 -> audio/generated/de-DE/dialogues/861abcdf04c31e5f44e017ad2f6e9ad4fa2ff7c121c354a9f73c9b32de9d8394.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67e14ee3-702f-5614-b2b9-ad025b939a5a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00bf363e207eb2a764962c8d32a1c81226dd796c7b820ccabb867cd678b713c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3829469-2e5d-5224-a406-c07074bb6ec9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67e14ee3-702f-5614-b2b9-ad025b939a5a', 1), '00bf363e207eb2a764962c8d32a1c81226dd796c7b820ccabb867cd678b713c1',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/861abcdf04c31e5f44e017ad2f6e9ad4fa2ff7c121c354a9f73c9b32de9d8394.mp3', 1750, '2026-09-13 09:17:55.201326', '92b9cad77a8578902198c5678633edf4de4500fd925ebe45b19177134a6472ea', 'validated', '{"audio_key":"861abcdf04c31e5f44e017ad2f6e9ad4fa2ff7c121c354a9f73c9b32de9d8394","entity_key":"d_process_guidance_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"92b9cad77a8578902198c5678633edf4de4500fd925ebe45b19177134a6472ea","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/861abcdf04c31e5f44e017ad2f6e9ad4fa2ff7c121c354a9f73c9b32de9d8394.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_03:2 -> audio/generated/de-DE/dialogues/867f8c32c5d26cdc2fee15e3147ba48fa0874616b34cb1b3606da89cb0baf1a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a0e5780-996c-5ad0-bb23-14e03a458fd4', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7900c09acb40cca1729786975a66acee700fb14cf231b7419dde0bae85ad8e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d83dbd28-fc7b-5018-a281-cc862a0f0d36', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a0e5780-996c-5ad0-bb23-14e03a458fd4', 1), '7900c09acb40cca1729786975a66acee700fb14cf231b7419dde0bae85ad8e5e',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/867f8c32c5d26cdc2fee15e3147ba48fa0874616b34cb1b3606da89cb0baf1a2.mp3', 4075, '2026-09-13 09:17:56.217765', 'e1d5bafd678e2d3cf88c72e58696641ba2faa49ead38a0c333b3aec61a7993e0', 'validated', '{"audio_key":"867f8c32c5d26cdc2fee15e3147ba48fa0874616b34cb1b3606da89cb0baf1a2","entity_key":"d_formal_decision_writing_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e1d5bafd678e2d3cf88c72e58696641ba2faa49ead38a0c333b3aec61a7993e0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/867f8c32c5d26cdc2fee15e3147ba48fa0874616b34cb1b3606da89cb0baf1a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_02:3 -> audio/generated/de-DE/dialogues/89456e85c8c788d6b143e0ad62e77e9fd150c6233b1f3ebe5636639b5c7b9d11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09727f2d-6dbd-5e17-80ae-2ef4da7eb315', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ec915069d33e363941f5760312bf0418e6ec008a770639a30a7d6adfcae0c48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('201e19e5-cd41-530f-b6ed-6934b092dcfc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09727f2d-6dbd-5e17-80ae-2ef4da7eb315', 1), '5ec915069d33e363941f5760312bf0418e6ec008a770639a30a7d6adfcae0c48',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89456e85c8c788d6b143e0ad62e77e9fd150c6233b1f3ebe5636639b5c7b9d11.mp3', 5093, '2026-09-13 09:17:56.714777', 'b915d30b561b444120609a178cf76cf3103cf9a1835da51f6047d5de4e2a1e69', 'validated', '{"audio_key":"89456e85c8c788d6b143e0ad62e77e9fd150c6233b1f3ebe5636639b5c7b9d11","entity_key":"d_integrating_viewpoints_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b915d30b561b444120609a178cf76cf3103cf9a1835da51f6047d5de4e2a1e69","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/89456e85c8c788d6b143e0ad62e77e9fd150c6233b1f3ebe5636639b5c7b9d11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_03:2 -> audio/generated/de-DE/dialogues/8bb80a4bf0dfecfbbca2db5a1648991580d0fd46b00eb4d821851827396dc293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4532e9e-b6c3-5566-8272-68af1872efa3', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de509a4d220783de12f506312c5f52c6ce13bd21283e4e780c9087df65292e5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50898a20-dfd7-5923-b645-d269bdb03fbc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4532e9e-b6c3-5566-8272-68af1872efa3', 1), 'de509a4d220783de12f506312c5f52c6ce13bd21283e4e780c9087df65292e5f',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8bb80a4bf0dfecfbbca2db5a1648991580d0fd46b00eb4d821851827396dc293.mp3', 3369, '2026-09-13 09:17:57.444234', 'b22f06cd72e19e177ebfe3a04b30ad96fd2a660e19181c6268b7802745fa5144', 'validated', '{"audio_key":"8bb80a4bf0dfecfbbca2db5a1648991580d0fd46b00eb4d821851827396dc293","entity_key":"d_integrating_viewpoints_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b22f06cd72e19e177ebfe3a04b30ad96fd2a660e19181c6268b7802745fa5144","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8bb80a4bf0dfecfbbca2db5a1648991580d0fd46b00eb4d821851827396dc293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_02:3 -> audio/generated/de-DE/dialogues/8bf6c5a4ff28380459767c2c8b9f7ec0bdcf94cb8c82922069d293db17cdfa54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9b2cb63-8b1a-517e-a931-c53fafc8f666', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da04d9efc273136c3d23fef95465cc40e220f79db952fea56513190ce356fe0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a6d8a53-a181-5548-882c-dfe37368daf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9b2cb63-8b1a-517e-a931-c53fafc8f666', 1), 'da04d9efc273136c3d23fef95465cc40e220f79db952fea56513190ce356fe0b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8bf6c5a4ff28380459767c2c8b9f7ec0bdcf94cb8c82922069d293db17cdfa54.mp3', 3160, '2026-09-13 09:17:57.870606', 'ee2c45b45ed2f7d6854914777f7517f67ed9e6f5dff975d7e12a7f479ccec040', 'validated', '{"audio_key":"8bf6c5a4ff28380459767c2c8b9f7ec0bdcf94cb8c82922069d293db17cdfa54","entity_key":"d_change_proposals_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ee2c45b45ed2f7d6854914777f7517f67ed9e6f5dff975d7e12a7f479ccec040","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8bf6c5a4ff28380459767c2c8b9f7ec0bdcf94cb8c82922069d293db17cdfa54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:4 -> audio/generated/de-DE/dialogues/8c496b920c389327dc4e859d225071ce66a55d6afdf32de3f4127b5636e21808.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c0ce6b69-f5db-586c-8132-093c37ba1631', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65fe4a1ea57b49a192e5cf9f2657ef5defea2982b8ec7bb75e1441ad7976e57b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca622fff-db8a-50fd-a57e-ed2e1a9a4cd9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c0ce6b69-f5db-586c-8132-093c37ba1631', 1), '65fe4a1ea57b49a192e5cf9f2657ef5defea2982b8ec7bb75e1441ad7976e57b',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c496b920c389327dc4e859d225071ce66a55d6afdf32de3f4127b5636e21808.mp3', 3474, '2026-09-13 09:17:58.675387', '55ae31f0c4ab46819339f0cf8579dd6c9a7543f3fe9d670cf826800ff96c101d', 'validated', '{"audio_key":"8c496b920c389327dc4e859d225071ce66a55d6afdf32de3f4127b5636e21808","entity_key":"d_integrated_capstone_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"55ae31f0c4ab46819339f0cf8579dd6c9a7543f3fe9d670cf826800ff96c101d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8c496b920c389327dc4e859d225071ce66a55d6afdf32de3f4127b5636e21808.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_03:4 -> audio/generated/de-DE/dialogues/8cb6eecb217685943d91b98613f8406e809040b59ed3154e7ba041223734967d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d731b2e0-d5e8-5013-8f31-c0f948fde60b', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f61aff9744b8d8caa6f80f3c130dec681eec1f3ecbf880573ee0a17c5211db6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b6661ba-678b-545c-9fd5-0be08f68c634', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d731b2e0-d5e8-5013-8f31-c0f948fde60b', 1), '3f61aff9744b8d8caa6f80f3c130dec681eec1f3ecbf880573ee0a17c5211db6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8cb6eecb217685943d91b98613f8406e809040b59ed3154e7ba041223734967d.mp3', 2742, '2026-09-13 09:17:58.961115', '5e247cc10546cffd6a62fbfb2f9553987045cf91ea73afdb429b44eb65fa70b5', 'validated', '{"audio_key":"8cb6eecb217685943d91b98613f8406e809040b59ed3154e7ba041223734967d","entity_key":"d_change_proposals_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5e247cc10546cffd6a62fbfb2f9553987045cf91ea73afdb429b44eb65fa70b5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8cb6eecb217685943d91b98613f8406e809040b59ed3154e7ba041223734967d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_01:1 -> audio/generated/de-DE/dialogues/91a323b900c8bb260c653355f8e3febd607b9a1106f3be0146f1884018766820.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03f712b3-e262-53ae-80dd-14c2b9eb599f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b4c0958bbe7dd0e2f47751f1f8c78b5cd567475aebf313620f692c0417642d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('676417c7-1d02-5267-9b10-50bb436ab040', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03f712b3-e262-53ae-80dd-14c2b9eb599f', 1), '0b4c0958bbe7dd0e2f47751f1f8c78b5cd567475aebf313620f692c0417642d7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/91a323b900c8bb260c653355f8e3febd607b9a1106f3be0146f1884018766820.mp3', 3108, '2026-09-13 09:17:59.810105', 'b32ef8b47fc4761a5af4b1b923f595a772a8f9d9557bee3b9d9c5180d41f3fae', 'validated', '{"audio_key":"91a323b900c8bb260c653355f8e3febd607b9a1106f3be0146f1884018766820","entity_key":"d_formal_decision_writing_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b32ef8b47fc4761a5af4b1b923f595a772a8f9d9557bee3b9d9c5180d41f3fae","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/91a323b900c8bb260c653355f8e3febd607b9a1106f3be0146f1884018766820.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_03:1 -> audio/generated/de-DE/dialogues/9d82d4ed42295b9242d11eba45dbbb6e51dbedfc90a5419aba6ce7950ef0a939.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e612fc08-a48a-587d-ab9c-cddcfe2dd5e3', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aacded64417ab26d0ca32ca718b400cb1999f796e74f4e280e7586634649abf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fdd598f-5cfe-565a-8a31-6ab5873085ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e612fc08-a48a-587d-ab9c-cddcfe2dd5e3', 1), 'aacded64417ab26d0ca32ca718b400cb1999f796e74f4e280e7586634649abf5',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9d82d4ed42295b9242d11eba45dbbb6e51dbedfc90a5419aba6ce7950ef0a939.mp3', 2586, '2026-09-13 09:18:00.130602', 'b911cad877f49ed4d49f8c58d68892381e1726d60826934233813bdfaa7fbae5', 'validated', '{"audio_key":"9d82d4ed42295b9242d11eba45dbbb6e51dbedfc90a5419aba6ce7950ef0a939","entity_key":"d_formal_decision_writing_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b911cad877f49ed4d49f8c58d68892381e1726d60826934233813bdfaa7fbae5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9d82d4ed42295b9242d11eba45dbbb6e51dbedfc90a5419aba6ce7950ef0a939.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:3 -> audio/generated/de-DE/dialogues/aecee6e842dc77576de530330747734ff917b601f1fb5bc64535ede4a94765e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ba56aa1-f39c-537b-968c-a8aede0c6073', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e67eaf26d449fdaffc6c2944da5357625b0da68986408f279e94a74d8bf6e553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d3fe9e8-27a0-5886-a496-6f2fee09b7ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ba56aa1-f39c-537b-968c-a8aede0c6073', 1), 'e67eaf26d449fdaffc6c2944da5357625b0da68986408f279e94a74d8bf6e553',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aecee6e842dc77576de530330747734ff917b601f1fb5bc64535ede4a94765e9.mp3', 5276, '2026-09-13 09:18:01.307339', 'd58510ddd5ea19e3d4f1b573d7f69164a752be01bc19a26415a1b4080b78e287', 'validated', '{"audio_key":"aecee6e842dc77576de530330747734ff917b601f1fb5bc64535ede4a94765e9","entity_key":"d_integrated_capstone_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d58510ddd5ea19e3d4f1b573d7f69164a752be01bc19a26415a1b4080b78e287","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/aecee6e842dc77576de530330747734ff917b601f1fb5bc64535ede4a94765e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_01:1 -> audio/generated/de-DE/dialogues/b4987c260c10e3758c8f4316da711cfa3705b6d7667334fd0b15afeae6081a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('261c34fa-047a-500e-a1ec-e1e805bbb115', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53f61a4179bf26ffab438c58c0656f3fcfde7c7000ae745c8833b264188c7ed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0db7193e-e364-51e1-af7e-47ce15eba87c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('261c34fa-047a-500e-a1ec-e1e805bbb115', 1), '53f61a4179bf26ffab438c58c0656f3fcfde7c7000ae745c8833b264188c7ed1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4987c260c10e3758c8f4316da711cfa3705b6d7667334fd0b15afeae6081a1a.mp3', 3239, '2026-09-13 09:18:01.389687', 'fb6f9f92a432626735f251bfcae714f2ccc50db1191cc8936c7dc2aada57184b', 'validated', '{"audio_key":"b4987c260c10e3758c8f4316da711cfa3705b6d7667334fd0b15afeae6081a1a","entity_key":"d_integrating_viewpoints_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fb6f9f92a432626735f251bfcae714f2ccc50db1191cc8936c7dc2aada57184b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b4987c260c10e3758c8f4316da711cfa3705b6d7667334fd0b15afeae6081a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_03:3 -> audio/generated/de-DE/dialogues/b626ac40294542147ff3dd1f2650d6a79ced8e80e879bccfdaed3ef90bba9f9d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85d64047-33df-541c-b4d5-146c1f4deee8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '475f118217512253262c1e9c21a80d4d1cd39a9f42c1a07521eb21db5a90f9f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f6750a8-bd2f-53d3-9acc-a17d2ad395fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85d64047-33df-541c-b4d5-146c1f4deee8', 1), '475f118217512253262c1e9c21a80d4d1cd39a9f42c1a07521eb21db5a90f9f6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b626ac40294542147ff3dd1f2650d6a79ced8e80e879bccfdaed3ef90bba9f9d.mp3', 2690, '2026-09-13 09:18:02.453837', '7541eb14b62d0a1050e55c620979b4c11605f5ac6dad6b2f8003b5c30a0547ba', 'validated', '{"audio_key":"b626ac40294542147ff3dd1f2650d6a79ced8e80e879bccfdaed3ef90bba9f9d","entity_key":"d_change_proposals_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7541eb14b62d0a1050e55c620979b4c11605f5ac6dad6b2f8003b5c30a0547ba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b626ac40294542147ff3dd1f2650d6a79ced8e80e879bccfdaed3ef90bba9f9d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_01:2 -> audio/generated/de-DE/dialogues/bf9bdb7933090c10da64112d0fdb0eaa531d456eba381ae3b2c7fd0fecc7f116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79a1a344-8000-5f81-a84a-0479c699b461', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86bab1e6511489c38b416280f6875386b1e211cf676a7965f28a354afd999b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6047467-1387-5f5a-8599-feb6d150b7ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79a1a344-8000-5f81-a84a-0479c699b461', 1), '2c86bab1e6511489c38b416280f6875386b1e211cf676a7965f28a354afd999b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bf9bdb7933090c10da64112d0fdb0eaa531d456eba381ae3b2c7fd0fecc7f116.mp3', 5093, '2026-09-13 09:18:02.828358', '2527c05418379b312131cfdd7deebc0b20e948a7fd64a976c41db3de9bd324be', 'validated', '{"audio_key":"bf9bdb7933090c10da64112d0fdb0eaa531d456eba381ae3b2c7fd0fecc7f116","entity_key":"d_process_guidance_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2527c05418379b312131cfdd7deebc0b20e948a7fd64a976c41db3de9bd324be","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/bf9bdb7933090c10da64112d0fdb0eaa531d456eba381ae3b2c7fd0fecc7f116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:3 -> audio/generated/de-DE/dialogues/c1ef9ed527ddf520bb2038066be43a9ecfc2d0ff4872a14e1fdf915f3002c7ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9164ec55-f3b3-5428-bf7d-7a15c5e3c210', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4b4184a2a753d4aa4013161750a0fba4141e61b0e8b8514b0256c966f271038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4abdf45e-c2be-59be-97ac-edf4ba4ff364', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9164ec55-f3b3-5428-bf7d-7a15c5e3c210', 1), 'c4b4184a2a753d4aa4013161750a0fba4141e61b0e8b8514b0256c966f271038',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c1ef9ed527ddf520bb2038066be43a9ecfc2d0ff4872a14e1fdf915f3002c7ff.mp3', 3996, '2026-09-13 09:18:03.712229', 'ff4eddd977b667283868788ebcba43b2fec16f63c8cc158668a7550a5896dbc6', 'validated', '{"audio_key":"c1ef9ed527ddf520bb2038066be43a9ecfc2d0ff4872a14e1fdf915f3002c7ff","entity_key":"d_integrated_capstone_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ff4eddd977b667283868788ebcba43b2fec16f63c8cc158668a7550a5896dbc6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c1ef9ed527ddf520bb2038066be43a9ecfc2d0ff4872a14e1fdf915f3002c7ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_01:1 -> audio/generated/de-DE/dialogues/c77ad988923fc3558eb60905e406f74192293c464672225c61ca0fdb67786c09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc2768c8-8131-5fe1-8103-72586bb258dc', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96d0356f2838ee34c5c2fa1d25feefcd258d52e5c4b4e106387dc37e771fec76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b874516c-9f2a-56b2-98e5-7121950fa103', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc2768c8-8131-5fe1-8103-72586bb258dc', 1), '96d0356f2838ee34c5c2fa1d25feefcd258d52e5c4b4e106387dc37e771fec76',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c77ad988923fc3558eb60905e406f74192293c464672225c61ca0fdb67786c09.mp3', 2951, '2026-09-13 09:18:03.939219', '5881baeef1a911d65f6800b9cc0df67cdf03efb9d4316b3de71c4b3bfb35a0a3', 'validated', '{"audio_key":"c77ad988923fc3558eb60905e406f74192293c464672225c61ca0fdb67786c09","entity_key":"d_change_proposals_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5881baeef1a911d65f6800b9cc0df67cdf03efb9d4316b3de71c4b3bfb35a0a3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c77ad988923fc3558eb60905e406f74192293c464672225c61ca0fdb67786c09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_01:3 -> audio/generated/de-DE/dialogues/cdcc46d23447e52c80fa443fb8002c29a21ee5c0af639733b829db9557a97af0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5ae4d86-9574-5c50-a825-ba71cdbf9c81', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cae4ab4b8b2a5e24f92bbae9b1d6030cc9d95469f9da996ed2a4ac93790705c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddcc787a-b447-52b9-ab35-1c743795b426', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5ae4d86-9574-5c50-a825-ba71cdbf9c81', 1), '7cae4ab4b8b2a5e24f92bbae9b1d6030cc9d95469f9da996ed2a4ac93790705c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cdcc46d23447e52c80fa443fb8002c29a21ee5c0af639733b829db9557a97af0.mp3', 2873, '2026-09-13 09:18:04.874142', '41f16329a581733209e35d15ffa2a3cf5c94db5fa496b4d762362ec335751ca9', 'validated', '{"audio_key":"cdcc46d23447e52c80fa443fb8002c29a21ee5c0af639733b829db9557a97af0","entity_key":"d_integrating_viewpoints_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"41f16329a581733209e35d15ffa2a3cf5c94db5fa496b4d762362ec335751ca9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cdcc46d23447e52c80fa443fb8002c29a21ee5c0af639733b829db9557a97af0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_03:2 -> audio/generated/de-DE/dialogues/d1050f347d0591db96bd2160b26ca979970b7caa630ffeac80f9c899cf15b86e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f5626d2-1b82-5f40-9334-db31989cf989', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03eaa48dde2239b0ca561698a62561a6360824352d05249b941652ca036ef0be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d547b21-42c6-501d-a95b-a4476248d766', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f5626d2-1b82-5f40-9334-db31989cf989', 1), '03eaa48dde2239b0ca561698a62561a6360824352d05249b941652ca036ef0be',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1050f347d0591db96bd2160b26ca979970b7caa630ffeac80f9c899cf15b86e.mp3', 2925, '2026-09-13 09:18:05.078826', 'acf18f79b5687fa4cfac706715a2d80ca9e637b8fdb67232c371b88a6291ff23', 'validated', '{"audio_key":"d1050f347d0591db96bd2160b26ca979970b7caa630ffeac80f9c899cf15b86e","entity_key":"d_change_proposals_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"acf18f79b5687fa4cfac706715a2d80ca9e637b8fdb67232c371b88a6291ff23","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d1050f347d0591db96bd2160b26ca979970b7caa630ffeac80f9c899cf15b86e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_01:3 -> audio/generated/de-DE/dialogues/d265261eef68d3fa135367813fca029dd5d21a90076fcd80e68206e0baa3c0d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eddf164e-ab9b-595e-a3d2-23ff90fbba69', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6139d621ed069cac6489956cb4bd22c2686bd3c0f56a5daca3161aaaef14eec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e19ad88f-3801-545e-8904-e79fb579ba6a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eddf164e-ab9b-595e-a3d2-23ff90fbba69', 1), 'f6139d621ed069cac6489956cb4bd22c2686bd3c0f56a5daca3161aaaef14eec',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d265261eef68d3fa135367813fca029dd5d21a90076fcd80e68206e0baa3c0d1.mp3', 4310, '2026-09-13 09:18:06.236374', '7aaf2724f84c862cef31735e8a4d1a573c5640d02db4272aa7e45fdb5a7b325f', 'validated', '{"audio_key":"d265261eef68d3fa135367813fca029dd5d21a90076fcd80e68206e0baa3c0d1","entity_key":"d_change_proposals_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7aaf2724f84c862cef31735e8a4d1a573c5640d02db4272aa7e45fdb5a7b325f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d265261eef68d3fa135367813fca029dd5d21a90076fcd80e68206e0baa3c0d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_02:3 -> audio/generated/de-DE/dialogues/d2c5012bf35a5eb4b0b796b669eed464df5e90cc4a78d11ac3f701ad64f8170e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15d5ad22-7d3a-59bb-94d1-ce3d30efc585', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccc010b2683d530c9a8e35962c36ee1b205f6f75fd569423940952311f45b0a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13637583-4d80-5fd3-a471-18bd89b8fc20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15d5ad22-7d3a-59bb-94d1-ce3d30efc585', 1), 'ccc010b2683d530c9a8e35962c36ee1b205f6f75fd569423940952311f45b0a7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2c5012bf35a5eb4b0b796b669eed464df5e90cc4a78d11ac3f701ad64f8170e.mp3', 3239, '2026-09-13 09:18:06.247272', 'ce679eb712e150312f0e98fa9d56a2c4a1aa4293e84fae374765bb30a6e88b61', 'validated', '{"audio_key":"d2c5012bf35a5eb4b0b796b669eed464df5e90cc4a78d11ac3f701ad64f8170e","entity_key":"d_process_guidance_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ce679eb712e150312f0e98fa9d56a2c4a1aa4293e84fae374765bb30a6e88b61","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2c5012bf35a5eb4b0b796b669eed464df5e90cc4a78d11ac3f701ad64f8170e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_02:4 -> audio/generated/de-DE/dialogues/d4e054adc87705fe8414fb1ffdb23a1559d41942964f6b8e2cef1fec67010bc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e342ae08-8cea-5205-899c-7a5e288d18d8', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54f2f091c2c2a45619d0b327142905c0941c70e6096d3b6a458bacd3f52505a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f21ad136-0ce6-578f-a44d-a2062e78f07e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e342ae08-8cea-5205-899c-7a5e288d18d8', 1), '54f2f091c2c2a45619d0b327142905c0941c70e6096d3b6a458bacd3f52505a0',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d4e054adc87705fe8414fb1ffdb23a1559d41942964f6b8e2cef1fec67010bc1.mp3', 2951, '2026-09-13 09:18:07.380296', 'b9c98e8354a019cc465f70a82aa81b180d0a49ab7a5517d45135b62506c37630', 'validated', '{"audio_key":"d4e054adc87705fe8414fb1ffdb23a1559d41942964f6b8e2cef1fec67010bc1","entity_key":"d_process_guidance_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b9c98e8354a019cc465f70a82aa81b180d0a49ab7a5517d45135b62506c37630","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d4e054adc87705fe8414fb1ffdb23a1559d41942964f6b8e2cef1fec67010bc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:4 -> audio/generated/de-DE/dialogues/d6b95236df13db52aff9c928281ebff68833467ed9ad2c713c392b0cb464df59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a9d9dd9-7edb-5afd-b628-23ff032d74c9', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ffc5f8d17f70e21ab7ad5e3021524a6c1f5c69507f2c2ac853bfe2fb451b5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77428595-aa97-5adb-a438-6dfe012cfe7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a9d9dd9-7edb-5afd-b628-23ff032d74c9', 1), '00ffc5f8d17f70e21ab7ad5e3021524a6c1f5c69507f2c2ac853bfe2fb451b5f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d6b95236df13db52aff9c928281ebff68833467ed9ad2c713c392b0cb464df59.mp3', 3343, '2026-09-13 09:18:07.450330', '0c224be69829727ce41ee71d9f6fef4deeb069735ebc92c5cf4e0109d788c853', 'validated', '{"audio_key":"d6b95236df13db52aff9c928281ebff68833467ed9ad2c713c392b0cb464df59","entity_key":"d_integrated_capstone_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0c224be69829727ce41ee71d9f6fef4deeb069735ebc92c5cf4e0109d788c853","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d6b95236df13db52aff9c928281ebff68833467ed9ad2c713c392b0cb464df59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_process_guidance_01:4 -> audio/generated/de-DE/dialogues/d9c63c4800232ab45a79f15e607f46adc73debc95601bff83214a5c0e97dbe90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b4679fe6-d331-541b-8cac-d6b7f5ea3f39', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_process_guidance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52245addfd25483abe3f87c14dd0be56a7320cc046aa265a878b5ad7e59fdefe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb7c476b-f02f-5b8e-9354-2f7914b21494', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b4679fe6-d331-541b-8cac-d6b7f5ea3f39', 1), '52245addfd25483abe3f87c14dd0be56a7320cc046aa265a878b5ad7e59fdefe',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d9c63c4800232ab45a79f15e607f46adc73debc95601bff83214a5c0e97dbe90.mp3', 3343, '2026-09-13 09:18:08.594598', '7a8c66f6af449d1193ccde1378d18f425cfa742900794d1e6e78fecc76da44c0', 'validated', '{"audio_key":"d9c63c4800232ab45a79f15e607f46adc73debc95601bff83214a5c0e97dbe90","entity_key":"d_process_guidance_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7a8c66f6af449d1193ccde1378d18f425cfa742900794d1e6e78fecc76da44c0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d9c63c4800232ab45a79f15e607f46adc73debc95601bff83214a5c0e97dbe90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_03:3 -> audio/generated/de-DE/dialogues/db3be6745d4f359a415c46c09b063c5f6445f2179cca724f2abb238918c472a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('69d3e787-0768-5272-8621-e4f0388d97c6', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '025a7584d93a32ca4ab3b9efda6862d8929871cd7fce2dc01c02fabb39f5a6cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85fa7cb2-3bf7-5ba8-90bc-fdb97a53ee69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('69d3e787-0768-5272-8621-e4f0388d97c6', 1), '025a7584d93a32ca4ab3b9efda6862d8929871cd7fce2dc01c02fabb39f5a6cb',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db3be6745d4f359a415c46c09b063c5f6445f2179cca724f2abb238918c472a7.mp3', 3787, '2026-09-13 09:18:08.747449', '9813789562d1711cca3f073adb67985e78900e96050cf6e5c3666d6741088445', 'validated', '{"audio_key":"db3be6745d4f359a415c46c09b063c5f6445f2179cca724f2abb238918c472a7","entity_key":"d_formal_decision_writing_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9813789562d1711cca3f073adb67985e78900e96050cf6e5c3666d6741088445","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/db3be6745d4f359a415c46c09b063c5f6445f2179cca724f2abb238918c472a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrating_viewpoints_01:4 -> audio/generated/de-DE/dialogues/de278061ff5d9484fa93df04af17a8289065b747ce6655e04729de6694b32141.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f50b914c-413f-5927-9909-cdc1835e0b13', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrating_viewpoints_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc0fdfaaa5404e3021fe8603aa6bab03c64d98b4e12d755ef3d9d0dafe0dcee8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a9fdc56-6bc2-529d-94e1-3ba61a0c7a4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f50b914c-413f-5927-9909-cdc1835e0b13', 1), 'cc0fdfaaa5404e3021fe8603aa6bab03c64d98b4e12d755ef3d9d0dafe0dcee8',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/de278061ff5d9484fa93df04af17a8289065b747ce6655e04729de6694b32141.mp3', 2768, '2026-09-13 09:18:09.680331', 'c56612d1236d771a46a8e9cc05c4672aa464edd4021b49fa7f2c0896558c4ef3', 'validated', '{"audio_key":"de278061ff5d9484fa93df04af17a8289065b747ce6655e04729de6694b32141","entity_key":"d_integrating_viewpoints_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"c56612d1236d771a46a8e9cc05c4672aa464edd4021b49fa7f2c0896558c4ef3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/de278061ff5d9484fa93df04af17a8289065b747ce6655e04729de6694b32141.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:4 -> audio/generated/de-DE/dialogues/e77c2bca5aa0e2bc4d2556418c4a23493543df3185f9849f655f78c94fdba044.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4783a521-06e0-5b95-a22f-0c2bef5c536a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '938c8fb446bc2cf73859377d6263bc9b4246d73ae6e5adb231d330f84bae6118'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e697896-6420-505e-b0c6-ff8bd391a606', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4783a521-06e0-5b95-a22f-0c2bef5c536a', 1), '938c8fb446bc2cf73859377d6263bc9b4246d73ae6e5adb231d330f84bae6118',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e77c2bca5aa0e2bc4d2556418c4a23493543df3185f9849f655f78c94fdba044.mp3', 6582, '2026-09-13 09:18:10.302860', '5cf5fd7e3b9002e72d446d0b2233c036f7320a3770367616216fde53a472e2d5', 'validated', '{"audio_key":"e77c2bca5aa0e2bc4d2556418c4a23493543df3185f9849f655f78c94fdba044","entity_key":"d_integrated_capstone_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5cf5fd7e3b9002e72d446d0b2233c036f7320a3770367616216fde53a472e2d5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e77c2bca5aa0e2bc4d2556418c4a23493543df3185f9849f655f78c94fdba044.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_02:2 -> audio/generated/de-DE/dialogues/f019c7d2bc53ed1bf394b66066dc3122c3fa529e4e51ef024b5d225cde5578a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9abb8e86-4392-5358-9188-a9af7683612d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41f43cb18be56e213c4df220dc63c7718491e49d32e8f4d6a5dfe12404fe5159'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('138f7bcb-cb25-5135-8f1d-5dba12571b7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9abb8e86-4392-5358-9188-a9af7683612d', 1), '41f43cb18be56e213c4df220dc63c7718491e49d32e8f4d6a5dfe12404fe5159',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f019c7d2bc53ed1bf394b66066dc3122c3fa529e4e51ef024b5d225cde5578a0.mp3', 4075, '2026-09-13 09:18:10.942377', '34da96d4572991569de74c3b96c4ea429274b35f2e0f0c17771691ec26fd07ed', 'validated', '{"audio_key":"f019c7d2bc53ed1bf394b66066dc3122c3fa529e4e51ef024b5d225cde5578a0","entity_key":"d_formal_decision_writing_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"34da96d4572991569de74c3b96c4ea429274b35f2e0f0c17771691ec26fd07ed","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f019c7d2bc53ed1bf394b66066dc3122c3fa529e4e51ef024b5d225cde5578a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_01:3 -> audio/generated/de-DE/dialogues/f2237ac5ff91d0dda9177b7946d8c870d8253b1734e2b5f0c94c830c0cc78c00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c1f7e9b7-52e4-5818-8c21-6c8c11c73c95', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b97d18784cabfd29ae2c9f2150222a028aa10e407abbc4c31128a1f3eeae46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a382661f-8005-5f7f-a0a3-5055751e9bae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c1f7e9b7-52e4-5818-8c21-6c8c11c73c95', 1), '10b97d18784cabfd29ae2c9f2150222a028aa10e407abbc4c31128a1f3eeae46',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f2237ac5ff91d0dda9177b7946d8c870d8253b1734e2b5f0c94c830c0cc78c00.mp3', 3186, '2026-09-13 09:18:11.530470', '26419058135de1bd4ec3bda4110cbbe839029cae172260a04c3cb4afeeea97c0', 'validated', '{"audio_key":"f2237ac5ff91d0dda9177b7946d8c870d8253b1734e2b5f0c94c830c0cc78c00","entity_key":"d_formal_decision_writing_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26419058135de1bd4ec3bda4110cbbe839029cae172260a04c3cb4afeeea97c0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f2237ac5ff91d0dda9177b7946d8c870d8253b1734e2b5f0c94c830c0cc78c00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:2 -> audio/generated/de-DE/dialogues/f5c0a4929a72c04ece088c2a155e9a91932389feb4507aa8bcb4f68f16d92127.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('919b8382-f3a7-593d-888d-7ae0112e18f0', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6eed03fdf54688df7bd9e95da6b557e0eae5fea4a958ecd722aea9733d266934'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15495908-a6f3-5610-927c-df4f08aa8e9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('919b8382-f3a7-593d-888d-7ae0112e18f0', 1), '6eed03fdf54688df7bd9e95da6b557e0eae5fea4a958ecd722aea9733d266934',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f5c0a4929a72c04ece088c2a155e9a91932389feb4507aa8bcb4f68f16d92127.mp3', 5616, '2026-09-13 09:18:12.350408', 'abced61e52bf7776d022b119c6b129ee7da649b5034395173d0d2ea468755e3d', 'validated', '{"audio_key":"f5c0a4929a72c04ece088c2a155e9a91932389feb4507aa8bcb4f68f16d92127","entity_key":"d_integrated_capstone_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"abced61e52bf7776d022b119c6b129ee7da649b5034395173d0d2ea468755e3d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f5c0a4929a72c04ece088c2a155e9a91932389feb4507aa8bcb4f68f16d92127.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_decision_writing_01:2 -> audio/generated/de-DE/dialogues/f5e37a540498556b7fcdb17a5c65370e4a1ada284a939705666e0ba59c1f47ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6a4eed7-e5e1-5073-a93f-a1c3c98c8524', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_decision_writing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70c831015113e7b9e85870d17525c0e67c73be8113743fa00a198114885436bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1f2f4a5-062b-550b-ad5a-7d6e09da9072', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6a4eed7-e5e1-5073-a93f-a1c3c98c8524', 1), '70c831015113e7b9e85870d17525c0e67c73be8113743fa00a198114885436bf',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f5e37a540498556b7fcdb17a5c65370e4a1ada284a939705666e0ba59c1f47ce.mp3', 1933, '2026-09-13 09:18:12.534963', 'ca2e06e85e3a5e5f5360aafeae237e928050f6f33466df4f888cd893f2f2a6bb', 'validated', '{"audio_key":"f5e37a540498556b7fcdb17a5c65370e4a1ada284a939705666e0ba59c1f47ce","entity_key":"d_formal_decision_writing_01:2","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca2e06e85e3a5e5f5360aafeae237e928050f6f33466df4f888cd893f2f2a6bb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f5e37a540498556b7fcdb17a5c65370e4a1ada284a939705666e0ba59c1f47ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_02:2 -> audio/generated/de-DE/dialogues/fba033cd0af64b07cbaa228f7f1489e1ed7ab9698a052609be1e34169bdb08e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a838128-1f8f-5480-bf3c-8425779c2120', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0938a8947be3ad822edb06648ebaf555239782a369770830658d97ad1adae486'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39dbfa29-e049-59e1-b210-74c48a4956ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a838128-1f8f-5480-bf3c-8425779c2120', 1), '0938a8947be3ad822edb06648ebaf555239782a369770830658d97ad1adae486',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fba033cd0af64b07cbaa228f7f1489e1ed7ab9698a052609be1e34169bdb08e5.mp3', 3422, '2026-09-13 09:18:13.537719', 'b2d9db33d93acf133684559376dfbe4f89129eb0d4662afb5b2c8335f89fdb5d', 'validated', '{"audio_key":"fba033cd0af64b07cbaa228f7f1489e1ed7ab9698a052609be1e34169bdb08e5","entity_key":"d_change_proposals_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b2d9db33d93acf133684559376dfbe4f89129eb0d4662afb5b2c8335f89fdb5d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/fba033cd0af64b07cbaa228f7f1489e1ed7ab9698a052609be1e34169bdb08e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_proposals_03:1 -> audio/generated/de-DE/dialogues/fd0d545e42628882d6d0cb3345a52aec26e26a463c8a17a90f58de5a26201c87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0ef0862-db58-5de4-a421-c7abe4d32ea9', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_proposals_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23821ba830419306eed8eb46cf7c4cc9854571320b72bc3ea079e694f4cb5c2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a43b4bc6-50b7-5ec3-b5a0-a217efd1257e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0ef0862-db58-5de4-a421-c7abe4d32ea9', 1), '23821ba830419306eed8eb46cf7c4cc9854571320b72bc3ea079e694f4cb5c2d',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd0d545e42628882d6d0cb3345a52aec26e26a463c8a17a90f58de5a26201c87.mp3', 3239, '2026-09-13 09:18:13.739188', '3b9b99449a228be8078a1752c04277a0ceb6d2d17a187cf71dc27eebe8afa749', 'validated', '{"audio_key":"fd0d545e42628882d6d0cb3345a52aec26e26a463c8a17a90f58de5a26201c87","entity_key":"d_change_proposals_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3b9b99449a228be8078a1752c04277a0ceb6d2d17a187cf71dc27eebe8afa749","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fd0d545e42628882d6d0cb3345a52aec26e26a463c8a17a90f58de5a26201c87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrating_viewpoints_05 -> audio/generated/de-DE/lexical/00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1cf6a5d5-60d0-5c30-81ca-af2f3f52ff82', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrating_viewpoints_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7239dd2dce99fa9331164a1e07e324fa9f9b1115261adeeeca4de4788998599b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b42a002-0067-5edd-abc9-87a00acc5c77', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1cf6a5d5-60d0-5c30-81ca-af2f3f52ff82', 1), '7239dd2dce99fa9331164a1e07e324fa9f9b1115261adeeeca4de4788998599b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794.mp3', 1253, '2026-09-13 09:18:14.471766', 'be20835050c96a5a452952a9467031ecd42e8be0b45532674ab662c2fedb16a1', 'validated', '{"audio_key":"00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794","entity_key":"lx_integrating_viewpoints_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be20835050c96a5a452952a9467031ecd42e8be0b45532674ab662c2fedb16a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrating_viewpoints_05 -> audio/generated/de-DE/lexical/00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('561ff4c1-9f14-577e-a894-1a2e4d67660d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrating_viewpoints_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7239dd2dce99fa9331164a1e07e324fa9f9b1115261adeeeca4de4788998599b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('132dd480-d28b-53e9-9bdb-dc23648022c1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('561ff4c1-9f14-577e-a894-1a2e4d67660d', 1), '7239dd2dce99fa9331164a1e07e324fa9f9b1115261adeeeca4de4788998599b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794.mp3', 1253, '2026-09-13 09:18:14.471766', 'be20835050c96a5a452952a9467031ecd42e8be0b45532674ab662c2fedb16a1', 'validated', '{"audio_key":"00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794","entity_key":"wf_integrating_viewpoints_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be20835050c96a5a452952a9467031ecd42e8be0b45532674ab662c2fedb16a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00d7ac5a4999e4d0d5182d8e07356360bf00458a5d471b254112b80c40471794.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_decision_writing_06 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_decision_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b1017d-1d06-5d9f-87df-da31fff57190', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"lx_formal_decision_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_decision_writing_06 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f39cdbe3-bd48-5ade-a8a6-1c0583ad5ce1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_decision_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17cae881-f8d8-5957-bf7b-9a59c9c83522', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f39cdbe3-bd48-5ade-a8a6-1c0583ad5ce1', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"wf_formal_decision_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrating_viewpoints_06 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrating_viewpoints_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7fb0c14-b683-560b-98e1-23fea6d02b09', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"lx_integrating_viewpoints_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrating_viewpoints_06 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d7cceef-95e2-5d81-bff3-eee3e580a312', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrating_viewpoints_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7597881d-1524-526e-b230-3c5fd74446c4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d7cceef-95e2-5d81-bff3-eee3e580a312', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"wf_integrating_viewpoints_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_06 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fbc6b5-631c-541c-8dd1-d4d5d11f3a57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"lx_integrated_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_06 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eac8f4e7-d86c-5c14-87e7-81c146c82f58', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94705003-4e43-5aba-a10f-9e0f63344491', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eac8f4e7-d86c-5c14-87e7-81c146c82f58', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"wf_integrated_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_proposals_01 -> audio/generated/de-DE/lexical/3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('195bcbc9-4bc5-5dc4-87de-31670e5b1d26', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_proposals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28dc8256fcc9450a22fea31ee4cf144fc765a76a723b7c751aab58572cf5a36b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f36796d-3443-54d6-8d98-d96b14446da5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('195bcbc9-4bc5-5dc4-87de-31670e5b1d26', 1), '28dc8256fcc9450a22fea31ee4cf144fc765a76a723b7c751aab58572cf5a36b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032.mp3', 1384, '2026-09-13 09:18:15.463292', '652d6211bdff9ff8ede026096048b16d607988bb50f2edac797bdddd70474234', 'validated', '{"audio_key":"3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032","entity_key":"lx_change_proposals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"652d6211bdff9ff8ede026096048b16d607988bb50f2edac797bdddd70474234","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_proposals_01 -> audio/generated/de-DE/lexical/3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b0e59d6-730b-5d8e-b357-2a929fd67c40', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_proposals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28dc8256fcc9450a22fea31ee4cf144fc765a76a723b7c751aab58572cf5a36b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd73d6df-090f-5a94-a76f-b9f80caa2f4e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b0e59d6-730b-5d8e-b357-2a929fd67c40', 1), '28dc8256fcc9450a22fea31ee4cf144fc765a76a723b7c751aab58572cf5a36b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032.mp3', 1384, '2026-09-13 09:18:15.463292', '652d6211bdff9ff8ede026096048b16d607988bb50f2edac797bdddd70474234', 'validated', '{"audio_key":"3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032","entity_key":"wf_change_proposals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"652d6211bdff9ff8ede026096048b16d607988bb50f2edac797bdddd70474234","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3303a8eb63628af985aff4ebac541f4b61453ae4d33914a682aa3a42b0ca3032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_proposals_04 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_proposals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6d22948-ca34-5e9d-9061-626046cf5837', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"lx_change_proposals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_proposals_04 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('793c89ca-0a61-5836-86bd-e3070ee6f078', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_proposals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e31091f1-7168-5daf-a1cb-9c0092adacad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('793c89ca-0a61-5836-86bd-e3070ee6f078', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"wf_change_proposals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_proposals_06 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_proposals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('219efc04-7f40-5cd6-872b-2958d68d7b60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"lx_change_proposals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_proposals_06 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a84b51ac-f5f3-5f92-94ab-ff480470b12d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_proposals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a9e4d9b-92bc-5c68-802c-87699d169808', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a84b51ac-f5f3-5f92-94ab-ff480470b12d', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"wf_change_proposals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_guidance_02 -> audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c7ff0b9-f569-53ea-8a29-110cf8d5f324', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_guidance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bb5a12b-7cb1-54f5-b951-b943d21489e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c7ff0b9-f569-53ea-8a29-110cf8d5f324', 1), '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3', 862, '2026-09-13 07:35:33.695351', '6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c', 'validated', '{"audio_key":"599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab","entity_key":"lx_process_guidance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_guidance_02 -> audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e935bd38-50b2-5453-a721-7d4aec01f213', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_guidance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37ef5a2f-264c-50d1-a5f9-ef1887cd0eea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e935bd38-50b2-5453-a721-7d4aec01f213', 1), '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3', 862, '2026-09-13 07:35:33.695351', '6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c', 'validated', '{"audio_key":"599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab","entity_key":"wf_process_guidance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrating_viewpoints_02 -> audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a76daa2c-ed1f-5a3f-8736-4f4ec0981c55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrating_viewpoints_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('076e87b4-e8a8-5f0e-bc68-094a2af5aea2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a76daa2c-ed1f-5a3f-8736-4f4ec0981c55', 1), 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3', 1332, '2026-09-13 09:18:15.699715', '50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce', 'validated', '{"audio_key":"7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa","entity_key":"lx_integrating_viewpoints_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrating_viewpoints_02 -> audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c5ba76f7-f8ee-5b61-aabe-1d4bd54f6dd8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrating_viewpoints_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37af912a-0b92-5b5c-a67e-d4f2e3d60f91', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c5ba76f7-f8ee-5b61-aabe-1d4bd54f6dd8', 1), 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3', 1332, '2026-09-13 09:18:15.699715', '50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce', 'validated', '{"audio_key":"7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa","entity_key":"wf_integrating_viewpoints_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_04 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_integrated_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_04 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ac107ef-621d-5c9b-a04e-cb3eb3dfa0a9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a0b1c77-8527-5d64-a4d2-7292b0f6f065', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ac107ef-621d-5c9b-a04e-cb3eb3dfa0a9', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_integrated_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_guidance_03 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_guidance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_process_guidance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_guidance_03 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48f31891-0dfd-5b94-90d4-a964fd0684ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_guidance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cf8c19a-13f9-5fa8-ad6f-00a5f9ff623f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48f31891-0dfd-5b94-90d4-a964fd0684ed', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_process_guidance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_proposals_03 -> audio/generated/de-DE/lexical/81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('61189951-70e8-504f-9c58-25cbb6f2a6f4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_proposals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b40fe74f51bde1a77fb45c2a3e6e76cbe04c60d2ab1cb36b3b4e9f9655cd4060'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ccc90f2-8eb3-5839-a253-86213b292c81', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('61189951-70e8-504f-9c58-25cbb6f2a6f4', 1), 'b40fe74f51bde1a77fb45c2a3e6e76cbe04c60d2ab1cb36b3b4e9f9655cd4060',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea.mp3', 1097, '2026-09-13 09:18:16.406254', '0f6940ff241e233c635f6a86f118831c4ef680e54aad3c3e1edf0c1326b05410', 'validated', '{"audio_key":"81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea","entity_key":"lx_change_proposals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f6940ff241e233c635f6a86f118831c4ef680e54aad3c3e1edf0c1326b05410","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_proposals_03 -> audio/generated/de-DE/lexical/81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0aa388e4-427b-5a1c-9e69-bfe8a2a0c335', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_proposals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b40fe74f51bde1a77fb45c2a3e6e76cbe04c60d2ab1cb36b3b4e9f9655cd4060'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5246889c-5b25-56a4-83d7-261eedd0da38', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0aa388e4-427b-5a1c-9e69-bfe8a2a0c335', 1), 'b40fe74f51bde1a77fb45c2a3e6e76cbe04c60d2ab1cb36b3b4e9f9655cd4060',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea.mp3', 1097, '2026-09-13 09:18:16.406254', '0f6940ff241e233c635f6a86f118831c4ef680e54aad3c3e1edf0c1326b05410', 'validated', '{"audio_key":"81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea","entity_key":"wf_change_proposals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f6940ff241e233c635f6a86f118831c4ef680e54aad3c3e1edf0c1326b05410","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/81ec85c79b30bbf0df0d4621efd9a144d0a0be21eaf8e8fc0aa423f4a730d3ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrating_viewpoints_04 -> audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c6d1d36-f008-5629-8e02-22366c17bb41', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrating_viewpoints_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2ec41ce-67df-5a7e-941f-e82fed8237cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c6d1d36-f008-5629-8e02-22366c17bb41', 1), '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3', 1280, '2026-09-13 07:53:21.174400', 'd71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a', 'validated', '{"audio_key":"826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c","entity_key":"lx_integrating_viewpoints_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrating_viewpoints_04 -> audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b70ea64-88f0-5893-9827-b1327fde05ef', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrating_viewpoints_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bd627ae-5d44-5748-aaef-3c1d48a4c082', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b70ea64-88f0-5893-9827-b1327fde05ef', 1), '50697066e3ea595bcb4b4fc260be58bdd4fe2fd83b734ec9a97d2e82f4bfe859',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3', 1280, '2026-09-13 07:53:21.174400', 'd71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a', 'validated', '{"audio_key":"826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c","entity_key":"wf_integrating_viewpoints_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d71e658acacb0075edb87abebfebb951183b2bab7e2f2153a2eda64ea6a5c72a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/826b61bf08dd559756dae1ebb3468abec5106a993671fddff3300ff9c7eb4f9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_decision_writing_03 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_decision_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_formal_decision_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_decision_writing_03 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae48f0a0-61b8-5e50-b7bb-b6b622021e82', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_decision_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1466967-8fc9-5130-be0b-4c676bfc38ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae48f0a0-61b8-5e50-b7bb-b6b622021e82', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_formal_decision_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_02 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_integrated_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_02 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('19ece898-4172-520b-99de-cc8f42c45b5c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b10bcf38-fcbf-5165-9e97-c6b39752742a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('19ece898-4172-520b-99de-cc8f42c45b5c', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_integrated_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_05 -> audio/generated/de-DE/lexical/8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e6d159b8-63b4-5b37-b624-a2e940dbd942', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb623f549f7518abee920e762e5b48eb157a9c738265551cca5ce4ba01e341b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18d0610e-5868-580c-8ddd-170e2cfc207d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e6d159b8-63b4-5b37-b624-a2e940dbd942', 1), 'cb623f549f7518abee920e762e5b48eb157a9c738265551cca5ce4ba01e341b2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0.mp3', 1071, '2026-09-13 09:18:16.639171', 'b6eaeda514268003231a0d59fb21b1c253bb53a61517bab0de8f440037913d1a', 'validated', '{"audio_key":"8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0","entity_key":"lx_integrated_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6eaeda514268003231a0d59fb21b1c253bb53a61517bab0de8f440037913d1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_05 -> audio/generated/de-DE/lexical/8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('57815196-ae0d-5abe-b736-0ba30fbdc2cd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb623f549f7518abee920e762e5b48eb157a9c738265551cca5ce4ba01e341b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e279b6d8-f2ed-5d1a-8ab6-90f5ec1c55ef', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('57815196-ae0d-5abe-b736-0ba30fbdc2cd', 1), 'cb623f549f7518abee920e762e5b48eb157a9c738265551cca5ce4ba01e341b2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0.mp3', 1071, '2026-09-13 09:18:16.639171', 'b6eaeda514268003231a0d59fb21b1c253bb53a61517bab0de8f440037913d1a', 'validated', '{"audio_key":"8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0","entity_key":"wf_integrated_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6eaeda514268003231a0d59fb21b1c253bb53a61517bab0de8f440037913d1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f59cdb789623fde6d231aabfcecdeb3f8e62ba5459f5c57a3cecb5ed56448a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_decision_writing_04 -> audio/generated/de-DE/lexical/a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb2a8d5c-2820-5e50-a4e6-38372fef45ff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_decision_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c865b8fe45e77415c2bf97eb89e0a7bb008ef5885710b20fb8e20bc55f98834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8302787c-e775-5556-a931-2fdc00f09207', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb2a8d5c-2820-5e50-a4e6-38372fef45ff', 1), '0c865b8fe45e77415c2bf97eb89e0a7bb008ef5885710b20fb8e20bc55f98834',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2.mp3', 1253, '2026-09-13 09:18:17.399303', 'b8d01a4136b4ed6907ed4672b102a1193e513193c3d50e716c10793d6a5d7e04', 'validated', '{"audio_key":"a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2","entity_key":"lx_formal_decision_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8d01a4136b4ed6907ed4672b102a1193e513193c3d50e716c10793d6a5d7e04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_decision_writing_04 -> audio/generated/de-DE/lexical/a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c897fa2-520a-53f7-92af-ec9e15711fc1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_decision_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c865b8fe45e77415c2bf97eb89e0a7bb008ef5885710b20fb8e20bc55f98834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61b0d699-60cf-5258-a179-b11748454efa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c897fa2-520a-53f7-92af-ec9e15711fc1', 1), '0c865b8fe45e77415c2bf97eb89e0a7bb008ef5885710b20fb8e20bc55f98834',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2.mp3', 1253, '2026-09-13 09:18:17.399303', 'b8d01a4136b4ed6907ed4672b102a1193e513193c3d50e716c10793d6a5d7e04', 'validated', '{"audio_key":"a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2","entity_key":"wf_formal_decision_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8d01a4136b4ed6907ed4672b102a1193e513193c3d50e716c10793d6a5d7e04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a62ca8480111fce549c898523061ac6b2f8892072d30d0a3e8f9d670936657b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_guidance_04 -> audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b78d4dde-a70c-52a8-b3ee-ef44321ff3cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_guidance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32476ffe-c8c1-5cc7-a9d2-1ec1ac039d37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b78d4dde-a70c-52a8-b3ee-ef44321ff3cf', 1), '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3', 1071, '2026-09-13 08:48:03.745620', '684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78', 'validated', '{"audio_key":"b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471","entity_key":"lx_process_guidance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_guidance_04 -> audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('051874b6-988a-5165-a19b-976f26080d9b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_guidance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ed17b36-22e7-5065-a4c5-e1f0ac0350eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('051874b6-988a-5165-a19b-976f26080d9b', 1), '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3', 1071, '2026-09-13 08:48:03.745620', '684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78', 'validated', '{"audio_key":"b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471","entity_key":"wf_process_guidance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrating_viewpoints_01 -> audio/generated/de-DE/lexical/c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8dc2389-8022-540e-aff8-39140f5a8000', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrating_viewpoints_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55a010b72c9dfc972c4e92926d97bdd1f228d9e3f8d23b534df1d6b7f720dcea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6489049-9033-5e8f-b11e-d18e7cd3e900', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8dc2389-8022-540e-aff8-39140f5a8000', 1), '55a010b72c9dfc972c4e92926d97bdd1f228d9e3f8d23b534df1d6b7f720dcea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6.mp3', 1097, '2026-09-13 09:18:17.590181', '6e94b36002a004c627c92c3456fa63ce2b3d05d96bebdb48c1f70a39beed184b', 'validated', '{"audio_key":"c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6","entity_key":"lx_integrating_viewpoints_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e94b36002a004c627c92c3456fa63ce2b3d05d96bebdb48c1f70a39beed184b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrating_viewpoints_01 -> audio/generated/de-DE/lexical/c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fd3a5dfc-6524-5727-9047-5eefd0607558', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrating_viewpoints_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55a010b72c9dfc972c4e92926d97bdd1f228d9e3f8d23b534df1d6b7f720dcea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c7bda17-6e92-5058-b00f-dfad5fae7079', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fd3a5dfc-6524-5727-9047-5eefd0607558', 1), '55a010b72c9dfc972c4e92926d97bdd1f228d9e3f8d23b534df1d6b7f720dcea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6.mp3', 1097, '2026-09-13 09:18:17.590181', '6e94b36002a004c627c92c3456fa63ce2b3d05d96bebdb48c1f70a39beed184b', 'validated', '{"audio_key":"c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6","entity_key":"wf_integrating_viewpoints_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e94b36002a004c627c92c3456fa63ce2b3d05d96bebdb48c1f70a39beed184b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c537bb0a66e4fd8d84f4e632364021a2dec390b9a6c5151818c62bbc763cd0a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_guidance_01 -> audio/generated/de-DE/lexical/c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b8b9a1f6-9481-5044-98a6-0e1dab1451a3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_guidance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fe440fa4dbe876ce7b5c2e24b5ce8715e0d53dab9b0e8dc26026c7615432960'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6936664b-8a94-5585-9fed-cd5a7a190fb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b8b9a1f6-9481-5044-98a6-0e1dab1451a3', 1), '9fe440fa4dbe876ce7b5c2e24b5ce8715e0d53dab9b0e8dc26026c7615432960',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c.mp3', 862, '2026-09-13 09:18:18.322683', '0ea334ba87867bf47178c12e0f1252f397fc73e52cd5da780e2dd349087485ed', 'validated', '{"audio_key":"c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c","entity_key":"lx_process_guidance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ea334ba87867bf47178c12e0f1252f397fc73e52cd5da780e2dd349087485ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_guidance_01 -> audio/generated/de-DE/lexical/c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f19f74f5-f1b3-5b0f-a7ab-92ec31a47856', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_guidance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fe440fa4dbe876ce7b5c2e24b5ce8715e0d53dab9b0e8dc26026c7615432960'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e8fc308-72a6-5d3f-83e5-8de57042b31a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f19f74f5-f1b3-5b0f-a7ab-92ec31a47856', 1), '9fe440fa4dbe876ce7b5c2e24b5ce8715e0d53dab9b0e8dc26026c7615432960',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c.mp3', 862, '2026-09-13 09:18:18.322683', '0ea334ba87867bf47178c12e0f1252f397fc73e52cd5da780e2dd349087485ed', 'validated', '{"audio_key":"c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c","entity_key":"wf_process_guidance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ea334ba87867bf47178c12e0f1252f397fc73e52cd5da780e2dd349087485ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7f117509c74290f8801e641d984887ad2c3c3b068f9653ac70372c1f4797c4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_01 -> audio/generated/de-DE/lexical/d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b42740d1-11a0-5bb5-a47d-16fb376f13d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6427fcae15485dcb2d10f9c80b0fdd9ff2d0da9273b11b105544e46c2f6b598c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14206ae1-cc00-5790-8c91-3e7969221951', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b42740d1-11a0-5bb5-a47d-16fb376f13d1', 1), '6427fcae15485dcb2d10f9c80b0fdd9ff2d0da9273b11b105544e46c2f6b598c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf.mp3', 1280, '2026-09-13 09:18:18.582000', 'e6530cdc1793dd4fbd3aa21559ecd9fc253331913ae98e83e9f5d8f1b15143b5', 'validated', '{"audio_key":"d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf","entity_key":"lx_integrated_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6530cdc1793dd4fbd3aa21559ecd9fc253331913ae98e83e9f5d8f1b15143b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_01 -> audio/generated/de-DE/lexical/d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a08785f0-8585-5e55-9149-51e521892f9b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6427fcae15485dcb2d10f9c80b0fdd9ff2d0da9273b11b105544e46c2f6b598c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acaa2d3c-c46b-5c9e-951d-6251227c4c36', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a08785f0-8585-5e55-9149-51e521892f9b', 1), '6427fcae15485dcb2d10f9c80b0fdd9ff2d0da9273b11b105544e46c2f6b598c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf.mp3', 1280, '2026-09-13 09:18:18.582000', 'e6530cdc1793dd4fbd3aa21559ecd9fc253331913ae98e83e9f5d8f1b15143b5', 'validated', '{"audio_key":"d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf","entity_key":"wf_integrated_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6530cdc1793dd4fbd3aa21559ecd9fc253331913ae98e83e9f5d8f1b15143b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d28572bcca3400465ed51a6c8a7833f49daced497234138261d0fad49cfceadf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_guidance_06 -> audio/generated/de-DE/lexical/db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f9e1655e-daf5-5635-b1f1-e16ee3b8f22f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_guidance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee00122f08180d421396b6d378db96562ed56abf72df24605b09b96ab74ecf61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0874b27-b4a9-5fbc-bc93-0f2902a1f11d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f9e1655e-daf5-5635-b1f1-e16ee3b8f22f', 1), 'ee00122f08180d421396b6d378db96562ed56abf72df24605b09b96ab74ecf61',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f.mp3', 1149, '2026-09-13 09:18:19.280208', '2dce0fae99cf2247f1bf58c05e616e970ee785f884cc628d326525674fd864a5', 'validated', '{"audio_key":"db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f","entity_key":"lx_process_guidance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2dce0fae99cf2247f1bf58c05e616e970ee785f884cc628d326525674fd864a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_guidance_06 -> audio/generated/de-DE/lexical/db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('05d8916b-7698-5da0-adc1-b76629c46961', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_guidance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee00122f08180d421396b6d378db96562ed56abf72df24605b09b96ab74ecf61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ab1a5e7-1e58-5699-9a96-78b7136ad928', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('05d8916b-7698-5da0-adc1-b76629c46961', 1), 'ee00122f08180d421396b6d378db96562ed56abf72df24605b09b96ab74ecf61',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f.mp3', 1149, '2026-09-13 09:18:19.280208', '2dce0fae99cf2247f1bf58c05e616e970ee785f884cc628d326525674fd864a5', 'validated', '{"audio_key":"db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f","entity_key":"wf_process_guidance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2dce0fae99cf2247f1bf58c05e616e970ee785f884cc628d326525674fd864a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/db74637247102beebaa99846162f5cca4b3592f7c893d04936f2a6cd8acc628f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_decision_writing_05 -> audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('29b5b5ad-62dd-5b48-abbe-597898dadf00', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_decision_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b70f6b4-1de6-54d4-80ae-3225c21ec35e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('29b5b5ad-62dd-5b48-abbe-597898dadf00', 1), '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3', 1201, '2026-09-13 07:53:30.496260', 'dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596', 'validated', '{"audio_key":"e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113","entity_key":"lx_formal_decision_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_decision_writing_05 -> audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3882eeeb-ab4a-57a7-bf32-6202e7de1ae7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_decision_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c3f52f-86cc-5e8c-b24c-afd72611b10c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3882eeeb-ab4a-57a7-bf32-6202e7de1ae7', 1), '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3', 1201, '2026-09-13 07:53:30.496260', 'dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596', 'validated', '{"audio_key":"e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113","entity_key":"wf_formal_decision_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_proposals_02 -> audio/generated/de-DE/lexical/e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1d9a893-a9e8-5778-826e-c1805f9e110c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_proposals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ec1f7d220abf4d83f129ef1ac3ba378a1590abf46200bc5ae2ffb01457e4eba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e6cea1c-1b71-5f29-9194-56a1447e8a87', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1d9a893-a9e8-5778-826e-c1805f9e110c', 1), '8ec1f7d220abf4d83f129ef1ac3ba378a1590abf46200bc5ae2ffb01457e4eba',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371.mp3', 966, '2026-09-13 09:18:19.516293', '9557af241e339543a71f03dfcc902cfba1b9dd5d667ec2789c1ed1e2554c24da', 'validated', '{"audio_key":"e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371","entity_key":"lx_change_proposals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9557af241e339543a71f03dfcc902cfba1b9dd5d667ec2789c1ed1e2554c24da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_proposals_02 -> audio/generated/de-DE/lexical/e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47637c50-bb87-5e1c-936f-2cc9037c189f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_proposals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ec1f7d220abf4d83f129ef1ac3ba378a1590abf46200bc5ae2ffb01457e4eba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4bd935d-ffb4-59b3-a6e5-d7fb598859fd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47637c50-bb87-5e1c-936f-2cc9037c189f', 1), '8ec1f7d220abf4d83f129ef1ac3ba378a1590abf46200bc5ae2ffb01457e4eba',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371.mp3', 966, '2026-09-13 09:18:19.516293', '9557af241e339543a71f03dfcc902cfba1b9dd5d667ec2789c1ed1e2554c24da', 'validated', '{"audio_key":"e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371","entity_key":"wf_change_proposals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9557af241e339543a71f03dfcc902cfba1b9dd5d667ec2789c1ed1e2554c24da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e6d60f1011bd103d263d336cbc28ba173e8cbb793c054964706b1a280d2ab371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_decision_writing_01 -> audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('30ccf5b8-8cb0-5d6d-8ae6-200fc08d2086', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_decision_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c275d3bd-bb50-54c4-98f0-6cd5d631e3ab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('30ccf5b8-8cb0-5d6d-8ae6-200fc08d2086', 1), '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3', 1280, '2026-09-13 08:48:06.802057', 'ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f', 'validated', '{"audio_key":"eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6","entity_key":"lx_formal_decision_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_decision_writing_01 -> audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('163284d1-8fcd-549f-905a-14252f396ac7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_decision_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ab0071f-31e8-588e-8ccc-47b37f40a7ca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('163284d1-8fcd-549f-905a-14252f396ac7', 1), '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3', 1280, '2026-09-13 08:48:06.802057', 'ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f', 'validated', '{"audio_key":"eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6","entity_key":"wf_formal_decision_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_process_guidance_05 -> audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d2606831-c97a-5632-a6a0-21f1c9bf2eac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_process_guidance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36ad821a-467d-548e-95d8-e4bf8bd4bbca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d2606831-c97a-5632-a6a0-21f1c9bf2eac', 1), '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3', 1071, '2026-09-13 07:35:42.345465', 'e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd', 'validated', '{"audio_key":"eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719","entity_key":"lx_process_guidance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_process_guidance_05 -> audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('332b51eb-4e49-560e-8624-3be1790b905b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_process_guidance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd3e50e6-de19-5b43-b01c-00b9dc741105', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('332b51eb-4e49-560e-8624-3be1790b905b', 1), '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3', 1071, '2026-09-13 07:35:42.345465', 'e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd', 'validated', '{"audio_key":"eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719","entity_key":"wf_process_guidance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_proposals_05 -> audio/generated/de-DE/lexical/ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1326d79e-1d24-55c1-bbd3-050649c64dbf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_proposals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '941c5b73422d547c0d68a9ea5b12238086e411a8943a446893adc0a00da297f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af15648f-5cfe-56fb-aa28-18e93b825092', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1326d79e-1d24-55c1-bbd3-050649c64dbf', 1), '941c5b73422d547c0d68a9ea5b12238086e411a8943a446893adc0a00da297f3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122.mp3', 1253, '2026-09-13 09:18:20.226686', 'fddc96a2ff1cd1d3a7a99b47bcbf85e7750a6256bbf6bb987d710374eb9ae3f3', 'validated', '{"audio_key":"ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122","entity_key":"lx_change_proposals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fddc96a2ff1cd1d3a7a99b47bcbf85e7750a6256bbf6bb987d710374eb9ae3f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_proposals_05 -> audio/generated/de-DE/lexical/ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7ffd6288-611c-5fa2-84c3-b60b75d10130', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_proposals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '941c5b73422d547c0d68a9ea5b12238086e411a8943a446893adc0a00da297f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7ebd545-0f2c-55cc-94d1-f161a7fe1ca3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7ffd6288-611c-5fa2-84c3-b60b75d10130', 1), '941c5b73422d547c0d68a9ea5b12238086e411a8943a446893adc0a00da297f3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122.mp3', 1253, '2026-09-13 09:18:20.226686', 'fddc96a2ff1cd1d3a7a99b47bcbf85e7750a6256bbf6bb987d710374eb9ae3f3', 'validated', '{"audio_key":"ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122","entity_key":"wf_change_proposals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fddc96a2ff1cd1d3a7a99b47bcbf85e7750a6256bbf6bb987d710374eb9ae3f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec594f3aa677fccce8a5887ef81dd0e640a521d82f9c25c02cd55c50d8fd9122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrating_viewpoints_03 -> audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3dd5b5f2-7ff2-5d6d-acb9-e5427d5f1725', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrating_viewpoints_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a5c4f17-37c2-542d-89bb-2dfe30520f4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3dd5b5f2-7ff2-5d6d-acb9-e5427d5f1725', 1), '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3', 1018, '2026-09-13 08:32:39.289623', 'd1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3', 'validated', '{"audio_key":"f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc","entity_key":"lx_integrating_viewpoints_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrating_viewpoints_03 -> audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('26c9018a-7ab8-57f9-9c26-4883529ec4cc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrating_viewpoints_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e43e64a-783c-56c6-9dce-45503a237f7f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('26c9018a-7ab8-57f9-9c26-4883529ec4cc', 1), '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3', 1018, '2026-09-13 08:32:39.289623', 'd1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3', 'validated', '{"audio_key":"f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc","entity_key":"wf_integrating_viewpoints_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_decision_writing_02 -> audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc02d11b-6b35-5279-89de-7eb1329af8df', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_decision_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0affef6-c64c-5d10-84f2-77cabebb6edc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc02d11b-6b35-5279-89de-7eb1329af8df', 1), '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3', 1097, '2026-09-13 08:16:47.938442', 'f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1', 'validated', '{"audio_key":"f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db","entity_key":"lx_formal_decision_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_decision_writing_02 -> audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39b2a79c-e781-53a0-9bec-7aff50ae7785', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_decision_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e145aee0-a455-5eaf-b6ee-b856f03c2396', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39b2a79c-e781-53a0-9bec-7aff50ae7785', 1), '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3', 1097, '2026-09-13 08:16:47.938442', 'f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1', 'validated', '{"audio_key":"f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db","entity_key":"wf_formal_decision_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_03 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db2cdb75-09db-594a-83cb-75e71187a4fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"lx_integrated_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_03 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fca91cb3-7f6b-59cd-97fa-29a851be6e0b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fde7a7a-84aa-5e97-a50e-45a441d2236a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fca91cb3-7f6b-59cd-97fa-29a851be6e0b', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"wf_integrated_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrating_viewpoints_03 -> audio/generated/de-DE/utterances/00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('63eddb9e-d2fb-5047-9fc1-80b814fcdfb1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrating_viewpoints_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa7d1d0f6fb0faf0f8043fa3167bfe666b4f4c6630a5869e075d9d57079ba5b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37a8d31b-4ae9-5706-b2f0-fcdb0d767933', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('63eddb9e-d2fb-5047-9fc1-80b814fcdfb1', 1), 'aa7d1d0f6fb0faf0f8043fa3167bfe666b4f4c6630a5869e075d9d57079ba5b5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207.mp3', 4597, '2026-09-13 09:18:20.859707', 'aca4a7ff2365faf2a5ba4d4b22107f37448c288681652d7801bf41f6d71c8f85', 'validated', '{"audio_key":"00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207","entity_key":"u_integrating_viewpoints_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aca4a7ff2365faf2a5ba4d4b22107f37448c288681652d7801bf41f6d71c8f85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrating_viewpoints_02_listen -> audio/generated/de-DE/utterances/00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2565a948-8b5c-5e6f-bec8-2e6a449bced9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrating_viewpoints_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa7d1d0f6fb0faf0f8043fa3167bfe666b4f4c6630a5869e075d9d57079ba5b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e111e775-d226-5c49-a66b-0c1d15e5f963', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2565a948-8b5c-5e6f-bec8-2e6a449bced9', 1), 'aa7d1d0f6fb0faf0f8043fa3167bfe666b4f4c6630a5869e075d9d57079ba5b5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207.mp3', 4597, '2026-09-13 09:18:20.859707', 'aca4a7ff2365faf2a5ba4d4b22107f37448c288681652d7801bf41f6d71c8f85', 'validated', '{"audio_key":"00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207","entity_key":"ex_integrating_viewpoints_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aca4a7ff2365faf2a5ba4d4b22107f37448c288681652d7801bf41f6d71c8f85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/00cb2aba94525130f8760b33273a113c5a167e487ff492bbdfbdb7f314908207.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrating_viewpoints_06 -> audio/generated/de-DE/utterances/0f71383a6cb766850785e25865538b3631e2d9703ad5154674a0138d5ec8b46d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d043062-1643-5a75-b047-cc8901d7f022', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrating_viewpoints_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '580db42f387be52dbe842d68f23c17d9fc4bdd96072580899dfc506767a1c2c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ffd9734-f867-574d-a324-144fc29a7f54', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d043062-1643-5a75-b047-cc8901d7f022', 1), '580db42f387be52dbe842d68f23c17d9fc4bdd96072580899dfc506767a1c2c8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0f71383a6cb766850785e25865538b3631e2d9703ad5154674a0138d5ec8b46d.mp3', 6765, '2026-09-13 09:18:21.880265', 'b96ec8a0c46619384377b39bf03925ab038632f29e3c874c9a26b47b2f212cc2', 'validated', '{"audio_key":"0f71383a6cb766850785e25865538b3631e2d9703ad5154674a0138d5ec8b46d","entity_key":"u_integrating_viewpoints_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b96ec8a0c46619384377b39bf03925ab038632f29e3c874c9a26b47b2f212cc2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0f71383a6cb766850785e25865538b3631e2d9703ad5154674a0138d5ec8b46d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_proposals_01 -> audio/generated/de-DE/utterances/0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('965a7d0d-5f82-54bb-b76d-0e2403890293', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_proposals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dafa6be531fa1a144d55a36759622b07edabdd1634919d76ebce702559efb46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cea51ee-881a-5a7d-9aff-bb1eb69dff21', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('965a7d0d-5f82-54bb-b76d-0e2403890293', 1), '1dafa6be531fa1a144d55a36759622b07edabdd1634919d76ebce702559efb46',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a.mp3', 5799, '2026-09-13 09:18:22.305527', 'e8573a6f4e8670387c7c4fcc476e6d24fc5820e03551460f8ece15a693ffa523', 'validated', '{"audio_key":"0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a","entity_key":"u_change_proposals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8573a6f4e8670387c7c4fcc476e6d24fc5820e03551460f8ece15a693ffa523","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_change_proposals_01_listen -> audio/generated/de-DE/utterances/0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('de19c651-4daf-5db5-876a-0d7e39f756a0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_change_proposals_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dafa6be531fa1a144d55a36759622b07edabdd1634919d76ebce702559efb46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('369fee6f-f28e-5244-920a-aedd637287c0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('de19c651-4daf-5db5-876a-0d7e39f756a0', 1), '1dafa6be531fa1a144d55a36759622b07edabdd1634919d76ebce702559efb46',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a.mp3', 5799, '2026-09-13 09:18:22.305527', 'e8573a6f4e8670387c7c4fcc476e6d24fc5820e03551460f8ece15a693ffa523', 'validated', '{"audio_key":"0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a","entity_key":"ex_change_proposals_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8573a6f4e8670387c7c4fcc476e6d24fc5820e03551460f8ece15a693ffa523","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0ff0ebf282e3075b61262053d2fbdf24e7d65effa4bef10d99160c276685f76a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_guidance_05 -> audio/generated/de-DE/utterances/16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('43533a28-c310-5d14-869b-2f06384565eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_guidance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e435060732b9c127cb243b0817dc09a63694679ad6ef6ad6fe8d9e9c5bd33123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05cb4049-c012-5355-aacf-1ed077feb8d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('43533a28-c310-5d14-869b-2f06384565eb', 1), 'e435060732b9c127cb243b0817dc09a63694679ad6ef6ad6fe8d9e9c5bd33123',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5.mp3', 5198, '2026-09-13 09:18:23.298032', 'e6a0eab04d0b65e60782f5bc2d6c8ee5e00252b5831c068a21de6da2872e2d8e', 'validated', '{"audio_key":"16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5","entity_key":"u_process_guidance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6a0eab04d0b65e60782f5bc2d6c8ee5e00252b5831c068a21de6da2872e2d8e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_process_guidance_03_listen -> audio/generated/de-DE/utterances/16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7fc10138-2372-5e9e-b8b2-1a6eec69ea21', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_process_guidance_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e435060732b9c127cb243b0817dc09a63694679ad6ef6ad6fe8d9e9c5bd33123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c9f59d5-00e3-517e-9ba8-d66b9b1f3afa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7fc10138-2372-5e9e-b8b2-1a6eec69ea21', 1), 'e435060732b9c127cb243b0817dc09a63694679ad6ef6ad6fe8d9e9c5bd33123',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5.mp3', 5198, '2026-09-13 09:18:23.298032', 'e6a0eab04d0b65e60782f5bc2d6c8ee5e00252b5831c068a21de6da2872e2d8e', 'validated', '{"audio_key":"16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5","entity_key":"ex_process_guidance_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6a0eab04d0b65e60782f5bc2d6c8ee5e00252b5831c068a21de6da2872e2d8e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/16b53045a6a28d731ee005c0bf381321f0183d34ce1c7708bfa76a8d6ccf58b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_04 -> audio/generated/de-DE/utterances/24895e6045b2746886b33ad8a92479ca949c903f8de13e761b2434fae193d987.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d00273df-0599-5b0c-ba2a-ac4056498a31', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a4dbf0a43db73e0b514e9536e81ead0e070c5234ee612df191cda5f6537d481'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93e0b9c6-8111-5380-8e9e-57fc61570d65', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d00273df-0599-5b0c-ba2a-ac4056498a31', 1), '2a4dbf0a43db73e0b514e9536e81ead0e070c5234ee612df191cda5f6537d481',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/24895e6045b2746886b33ad8a92479ca949c903f8de13e761b2434fae193d987.mp3', 6713, '2026-09-13 09:18:23.916064', '0f8dafd621abac0a74b289344a14e9d2c116cb025225fd6e2e4946db42a71f93', 'validated', '{"audio_key":"24895e6045b2746886b33ad8a92479ca949c903f8de13e761b2434fae193d987","entity_key":"u_integrated_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f8dafd621abac0a74b289344a14e9d2c116cb025225fd6e2e4946db42a71f93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/24895e6045b2746886b33ad8a92479ca949c903f8de13e761b2434fae193d987.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_06 -> audio/generated/de-DE/utterances/2d6e353fc95e4cdae654a4ed3dda5376b49e8645eb61e7a908281eb79ac06c84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6bb2ad2b-eb97-538a-8ef5-133c42610c49', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9111d5ffaebee279babb9dc265dd97d21bb67ebfd808630e6cf4863453144e8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e1ba98a-ced0-507b-a624-e39dc181b9d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6bb2ad2b-eb97-538a-8ef5-133c42610c49', 1), '9111d5ffaebee279babb9dc265dd97d21bb67ebfd808630e6cf4863453144e8a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2d6e353fc95e4cdae654a4ed3dda5376b49e8645eb61e7a908281eb79ac06c84.mp3', 8672, '2026-09-13 09:18:25.208780', '1d0123267ca5128c2009908ded6f3f8caeba5f7a54bd49ad3976587a69a65017', 'validated', '{"audio_key":"2d6e353fc95e4cdae654a4ed3dda5376b49e8645eb61e7a908281eb79ac06c84","entity_key":"u_integrated_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d0123267ca5128c2009908ded6f3f8caeba5f7a54bd49ad3976587a69a65017","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2d6e353fc95e4cdae654a4ed3dda5376b49e8645eb61e7a908281eb79ac06c84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_decision_writing_04 -> audio/generated/de-DE/utterances/2d729c7e0595f6719c48297cc9fe2738a5dedbf56529fafc28d7ae0143ee4ac1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('02932113-67d4-54ce-8c2e-ea76eb2a3c0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_decision_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1463a9a0866481a70cd30f6ddc45327e52f2deb26532b6fc483fcccbce65c788'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1dcc71f-d8dd-545c-8021-bf1f51a997a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('02932113-67d4-54ce-8c2e-ea76eb2a3c0d', 1), '1463a9a0866481a70cd30f6ddc45327e52f2deb26532b6fc483fcccbce65c788',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2d729c7e0595f6719c48297cc9fe2738a5dedbf56529fafc28d7ae0143ee4ac1.mp3', 7653, '2026-09-13 09:18:25.737155', '726d79c9e0fc69a4ee293b960acdd2a2b41202b46a8f10e6e228d79ebec7e0bb', 'validated', '{"audio_key":"2d729c7e0595f6719c48297cc9fe2738a5dedbf56529fafc28d7ae0143ee4ac1","entity_key":"u_formal_decision_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"726d79c9e0fc69a4ee293b960acdd2a2b41202b46a8f10e6e228d79ebec7e0bb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2d729c7e0595f6719c48297cc9fe2738a5dedbf56529fafc28d7ae0143ee4ac1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_guidance_03 -> audio/generated/de-DE/utterances/2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('45977d1a-03fa-5781-8def-7c1efd017822', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_guidance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4be24a1d21910a51859e619c55e28c99c07cb5a581636e57f7a749d7da3bf8b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecfdd6e8-4a23-57d9-86ac-7368b2215976', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('45977d1a-03fa-5781-8def-7c1efd017822', 1), '4be24a1d21910a51859e619c55e28c99c07cb5a581636e57f7a749d7da3bf8b3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25.mp3', 5041, '2026-09-13 09:18:26.677859', '5e068b82962df2ff384706d575a36e3c141c6051fdff972c27690ef837fde2e7', 'validated', '{"audio_key":"2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25","entity_key":"u_process_guidance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e068b82962df2ff384706d575a36e3c141c6051fdff972c27690ef837fde2e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_process_guidance_02_listen -> audio/generated/de-DE/utterances/2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dc5c9657-cc84-5eff-9ecc-d1d6a3e85cf1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_process_guidance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4be24a1d21910a51859e619c55e28c99c07cb5a581636e57f7a749d7da3bf8b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87f18e2a-d7de-5079-9a82-5cc5c435ff4e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dc5c9657-cc84-5eff-9ecc-d1d6a3e85cf1', 1), '4be24a1d21910a51859e619c55e28c99c07cb5a581636e57f7a749d7da3bf8b3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25.mp3', 5041, '2026-09-13 09:18:26.677859', '5e068b82962df2ff384706d575a36e3c141c6051fdff972c27690ef837fde2e7', 'validated', '{"audio_key":"2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25","entity_key":"ex_process_guidance_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e068b82962df2ff384706d575a36e3c141c6051fdff972c27690ef837fde2e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e4cf613a1e46319dcb6f163cb846fd1310fb0aaa9b2a894945abedd94488a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_decision_writing_03 -> audio/generated/de-DE/utterances/39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('36086e1e-99c1-580a-84a0-4c7086404458', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_decision_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f0430539f7f836acfe5b084c3c9f61b55b5067dba8e5c9123850ea3b976b29f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fece48c-282e-5453-800b-2cbc1919f47b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('36086e1e-99c1-580a-84a0-4c7086404458', 1), '7f0430539f7f836acfe5b084c3c9f61b55b5067dba8e5c9123850ea3b976b29f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1.mp3', 4780, '2026-09-13 09:18:27.118568', '5fcaf7767522c5bb4c711aaebe50f350bfd368a8224aeb8983bf83e9bbdcb6cc', 'validated', '{"audio_key":"39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1","entity_key":"u_formal_decision_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fcaf7767522c5bb4c711aaebe50f350bfd368a8224aeb8983bf83e9bbdcb6cc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_decision_writing_02_listen -> audio/generated/de-DE/utterances/39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4d5c19bc-b798-5c7e-9688-17428e564f49', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_decision_writing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f0430539f7f836acfe5b084c3c9f61b55b5067dba8e5c9123850ea3b976b29f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5de4b79-6fe3-56a6-a49a-df5674e65fe6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4d5c19bc-b798-5c7e-9688-17428e564f49', 1), '7f0430539f7f836acfe5b084c3c9f61b55b5067dba8e5c9123850ea3b976b29f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1.mp3', 4780, '2026-09-13 09:18:27.118568', '5fcaf7767522c5bb4c711aaebe50f350bfd368a8224aeb8983bf83e9bbdcb6cc', 'validated', '{"audio_key":"39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1","entity_key":"ex_formal_decision_writing_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fcaf7767522c5bb4c711aaebe50f350bfd368a8224aeb8983bf83e9bbdcb6cc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/39bfe42f3d8ff516442aa7acc9e02765bc45dfa8608ea522ad6da5dca011d7d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_guidance_06 -> audio/generated/de-DE/utterances/3c81b7ef8928ccd75ca187aa58660303395534dcc4d40f723d0dedb26fc619a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cb46ee35-0113-5c55-9c7c-6d855d905ce4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_guidance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01f17275ca140ce6e56bdf7e54ca1fd60361182b4739a8c8cfb4cdc9d2fa1da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e74c2ac-d030-59f1-94fb-ec06f618f4cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cb46ee35-0113-5c55-9c7c-6d855d905ce4', 1), '01f17275ca140ce6e56bdf7e54ca1fd60361182b4739a8c8cfb4cdc9d2fa1da3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3c81b7ef8928ccd75ca187aa58660303395534dcc4d40f723d0dedb26fc619a1.mp3', 6347, '2026-09-13 09:18:28.484141', 'fbc086f60a98070d84b18d74a0ef3ded1b96cdfb78fcf71ffc09679d130c783d', 'validated', '{"audio_key":"3c81b7ef8928ccd75ca187aa58660303395534dcc4d40f723d0dedb26fc619a1","entity_key":"u_process_guidance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbc086f60a98070d84b18d74a0ef3ded1b96cdfb78fcf71ffc09679d130c783d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3c81b7ef8928ccd75ca187aa58660303395534dcc4d40f723d0dedb26fc619a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_proposals_06 -> audio/generated/de-DE/utterances/4a46e3178dc61d36937d57ccf9a1cf0f1d3a6cd829f168b4240cc211303ffd0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5dcd2372-cb9d-5b50-bc42-0ff40edaf269', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_proposals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edfb744f85c12d889198af5ba24269ba69d8b9be12f36378804e422884ca128f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da618b1e-5348-50ad-bdae-8b5eba17761a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5dcd2372-cb9d-5b50-bc42-0ff40edaf269', 1), 'edfb744f85c12d889198af5ba24269ba69d8b9be12f36378804e422884ca128f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a46e3178dc61d36937d57ccf9a1cf0f1d3a6cd829f168b4240cc211303ffd0f.mp3', 6948, '2026-09-13 09:18:28.763171', 'cfb404e27abb278c734306b1489acb9693deb2164f7952518c6257048cb243ee', 'validated', '{"audio_key":"4a46e3178dc61d36937d57ccf9a1cf0f1d3a6cd829f168b4240cc211303ffd0f","entity_key":"u_change_proposals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cfb404e27abb278c734306b1489acb9693deb2164f7952518c6257048cb243ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a46e3178dc61d36937d57ccf9a1cf0f1d3a6cd829f168b4240cc211303ffd0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_decision_writing_01 -> audio/generated/de-DE/utterances/5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bdb33acd-9759-52f3-a345-fc55ca642113', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_decision_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc531159bb563a3d3f2ca64b12087b6754c4156b501dccb152331a00ac1eeaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3e09fe9-9632-5296-b548-900d0d89a845', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bdb33acd-9759-52f3-a345-fc55ca642113', 1), 'dcc531159bb563a3d3f2ca64b12087b6754c4156b501dccb152331a00ac1eeaa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f.mp3', 4858, '2026-09-13 09:18:29.867216', '9ef02ad703b919fa2295a6014c495a864e0985493238565cfa874ea57c0856fb', 'validated', '{"audio_key":"5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f","entity_key":"u_formal_decision_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ef02ad703b919fa2295a6014c495a864e0985493238565cfa874ea57c0856fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_decision_writing_01_listen -> audio/generated/de-DE/utterances/5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68b31392-c145-5a85-bdc0-cfe012a5421b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_decision_writing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc531159bb563a3d3f2ca64b12087b6754c4156b501dccb152331a00ac1eeaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('956955a8-dffc-5e71-95a6-bb89915d2345', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68b31392-c145-5a85-bdc0-cfe012a5421b', 1), 'dcc531159bb563a3d3f2ca64b12087b6754c4156b501dccb152331a00ac1eeaa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f.mp3', 4858, '2026-09-13 09:18:29.867216', '9ef02ad703b919fa2295a6014c495a864e0985493238565cfa874ea57c0856fb', 'validated', '{"audio_key":"5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f","entity_key":"ex_formal_decision_writing_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ef02ad703b919fa2295a6014c495a864e0985493238565cfa874ea57c0856fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5ea10a619f9b33eeb55737456fe67f5157d75a3070644746cfa7cae66e76013f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_decision_writing_02 -> audio/generated/de-DE/utterances/62d7d1ac28d414fab3dbfb79596d1caee43320c9a688ae452dc71fe7e7bb5513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('794a4581-6f95-5d21-af9d-2052459c5b2a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_decision_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd48bd96e4e7b5d5f2b1da451fb86d4414c1090fea293e5e5bad4218fa1d47050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('177eed51-3f4c-5b62-b111-389b2af906ff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('794a4581-6f95-5d21-af9d-2052459c5b2a', 1), 'd48bd96e4e7b5d5f2b1da451fb86d4414c1090fea293e5e5bad4218fa1d47050',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62d7d1ac28d414fab3dbfb79596d1caee43320c9a688ae452dc71fe7e7bb5513.mp3', 5433, '2026-09-13 09:18:30.183056', 'f19ff1fcdf9b2d98fa5b3edcafc347bb819eface020f67de52f8073fa6a90599', 'validated', '{"audio_key":"62d7d1ac28d414fab3dbfb79596d1caee43320c9a688ae452dc71fe7e7bb5513","entity_key":"u_formal_decision_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f19ff1fcdf9b2d98fa5b3edcafc347bb819eface020f67de52f8073fa6a90599","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62d7d1ac28d414fab3dbfb79596d1caee43320c9a688ae452dc71fe7e7bb5513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_guidance_04 -> audio/generated/de-DE/utterances/681fbfa4f3545adcdc4547c59538939e34cd708608dcebd8f91f57d932c650eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('598cce75-c66f-5568-b036-e6c0ea1e5931', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_guidance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e4550bc7f8e54e2cfae4011bc2e1c1eaf6d9a22dffe5737dbe5ed685ef6847e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cedb4e0-a33a-5f20-955f-d4c5bb19b34c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('598cce75-c66f-5568-b036-e6c0ea1e5931', 1), '4e4550bc7f8e54e2cfae4011bc2e1c1eaf6d9a22dffe5737dbe5ed685ef6847e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/681fbfa4f3545adcdc4547c59538939e34cd708608dcebd8f91f57d932c650eb.mp3', 5146, '2026-09-13 09:18:31.282806', '16dfc3178bf39d5adcaa6f7f3639e531c366a3ddfc763332bc4d7a865ddc0ef0', 'validated', '{"audio_key":"681fbfa4f3545adcdc4547c59538939e34cd708608dcebd8f91f57d932c650eb","entity_key":"u_process_guidance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16dfc3178bf39d5adcaa6f7f3639e531c366a3ddfc763332bc4d7a865ddc0ef0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/681fbfa4f3545adcdc4547c59538939e34cd708608dcebd8f91f57d932c650eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_guidance_01 -> audio/generated/de-DE/utterances/68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c76c5e46-adc0-51bb-8877-ab60d2b0bf64', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_guidance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b11795b2cfa0ca2fcbd6b66faa79479cd9cf6430cc9211afd98de9ce7c9e0d83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('992fedcc-2cae-5403-8cfd-cd833d5fc25e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c76c5e46-adc0-51bb-8877-ab60d2b0bf64', 1), 'b11795b2cfa0ca2fcbd6b66faa79479cd9cf6430cc9211afd98de9ce7c9e0d83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531.mp3', 4780, '2026-09-13 09:18:31.644171', '2ba703885f71e07d4bd7dad17ab113c5ca1ed4c1483c14f30ef22cf6234aa5fd', 'validated', '{"audio_key":"68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531","entity_key":"u_process_guidance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ba703885f71e07d4bd7dad17ab113c5ca1ed4c1483c14f30ef22cf6234aa5fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_process_guidance_01_listen -> audio/generated/de-DE/utterances/68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ad240535-9b43-5d1e-af99-376807b85eb8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_process_guidance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b11795b2cfa0ca2fcbd6b66faa79479cd9cf6430cc9211afd98de9ce7c9e0d83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ae8fbb6-d34e-56b4-97e6-8e2bd98a05aa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ad240535-9b43-5d1e-af99-376807b85eb8', 1), 'b11795b2cfa0ca2fcbd6b66faa79479cd9cf6430cc9211afd98de9ce7c9e0d83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531.mp3', 4780, '2026-09-13 09:18:31.644171', '2ba703885f71e07d4bd7dad17ab113c5ca1ed4c1483c14f30ef22cf6234aa5fd', 'validated', '{"audio_key":"68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531","entity_key":"ex_process_guidance_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ba703885f71e07d4bd7dad17ab113c5ca1ed4c1483c14f30ef22cf6234aa5fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/68c83154a996964a52248673e721586226ad014052186600cdcda7a7a5791531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_02 -> audio/generated/de-DE/utterances/706510e220121203c5e26a83894da67842513d666a28debef5cacdbce4ef6be5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2cd0aaba-3011-5a87-b156-3ea096b81dd8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3766bab79f4f233f0076c7f9cce4c748775891123e7f3035ef552f60518d241c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cbe9faa-103f-5341-985c-ea75b2d6f75b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2cd0aaba-3011-5a87-b156-3ea096b81dd8', 1), '3766bab79f4f233f0076c7f9cce4c748775891123e7f3035ef552f60518d241c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/706510e220121203c5e26a83894da67842513d666a28debef5cacdbce4ef6be5.mp3', 6530, '2026-09-13 09:18:32.890892', '33f64c9fdfb55b6595a2a16ef6ee7f740b2961f6ff524e9cb00722b8509e4322', 'validated', '{"audio_key":"706510e220121203c5e26a83894da67842513d666a28debef5cacdbce4ef6be5","entity_key":"u_integrated_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33f64c9fdfb55b6595a2a16ef6ee7f740b2961f6ff524e9cb00722b8509e4322","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/706510e220121203c5e26a83894da67842513d666a28debef5cacdbce4ef6be5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrating_viewpoints_04 -> audio/generated/de-DE/utterances/841bf062244deefeb486b94543689435a0f43f612ded39f50e013ecda9f4f737.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aa0d28c6-11d5-571a-9b0d-c50f450d351f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrating_viewpoints_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8931b6aaddc0ac03faa07691e03382a089e5ffd7faa2f4503b4accf96a4eb4ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b9625cd-d724-5c2b-b9e7-77d28bacd437', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aa0d28c6-11d5-571a-9b0d-c50f450d351f', 1), '8931b6aaddc0ac03faa07691e03382a089e5ffd7faa2f4503b4accf96a4eb4ab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/841bf062244deefeb486b94543689435a0f43f612ded39f50e013ecda9f4f737.mp3', 4911, '2026-09-13 09:18:33.033502', '025340ae1f324c48a5a34546203320c165b7c06060497b4c9656d2be2a05452d', 'validated', '{"audio_key":"841bf062244deefeb486b94543689435a0f43f612ded39f50e013ecda9f4f737","entity_key":"u_integrating_viewpoints_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"025340ae1f324c48a5a34546203320c165b7c06060497b4c9656d2be2a05452d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/841bf062244deefeb486b94543689435a0f43f612ded39f50e013ecda9f4f737.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_01 -> audio/generated/de-DE/utterances/8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9afe373b-b9db-5262-962c-509337a03f89', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96fd97d5a1368e59fd0bbe019e4c90f5701b993aecf6a8fadb65bebb6bf8696d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8677a87-e308-54d3-ae4e-f6f9f9d3ae5a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9afe373b-b9db-5262-962c-509337a03f89', 1), '96fd97d5a1368e59fd0bbe019e4c90f5701b993aecf6a8fadb65bebb6bf8696d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab.mp3', 6922, '2026-09-13 09:18:34.524406', '20d34e0fa73e66e644ef21b0e5eed24717c9364e8fa5d707f165a45d7b8b39b4', 'validated', '{"audio_key":"8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab","entity_key":"u_integrated_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20d34e0fa73e66e644ef21b0e5eed24717c9364e8fa5d707f165a45d7b8b39b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_capstone_01_listen -> audio/generated/de-DE/utterances/8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('25ca1b5d-d306-5405-88c9-b502bfaa53fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96fd97d5a1368e59fd0bbe019e4c90f5701b993aecf6a8fadb65bebb6bf8696d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('661b175b-7db6-5a72-91a5-3aa2e37ab1ba', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('25ca1b5d-d306-5405-88c9-b502bfaa53fc', 1), '96fd97d5a1368e59fd0bbe019e4c90f5701b993aecf6a8fadb65bebb6bf8696d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab.mp3', 6922, '2026-09-13 09:18:34.524406', '20d34e0fa73e66e644ef21b0e5eed24717c9364e8fa5d707f165a45d7b8b39b4', 'validated', '{"audio_key":"8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab","entity_key":"ex_integrated_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20d34e0fa73e66e644ef21b0e5eed24717c9364e8fa5d707f165a45d7b8b39b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d9017d01bc1074f754ac45daac18397556a117c422a758ab007d706aadec1ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_proposals_05 -> audio/generated/de-DE/utterances/90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3512ed1-d624-5dda-9522-f2a975ad3ee5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_proposals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '702d8385925f87fe22e781a0c769ba5315168625ec66af8a6741b6be901574c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17e39bda-9953-54c6-92f1-b2a7d52224ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3512ed1-d624-5dda-9522-f2a975ad3ee5', 1), '702d8385925f87fe22e781a0c769ba5315168625ec66af8a6741b6be901574c3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be.mp3', 5433, '2026-09-13 09:18:34.475664', 'eebaf1eae7d108f0a9dcd7691c2b11eabd1c8ad36f1850d4512ba52122afc0f9', 'validated', '{"audio_key":"90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be","entity_key":"u_change_proposals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eebaf1eae7d108f0a9dcd7691c2b11eabd1c8ad36f1850d4512ba52122afc0f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_change_proposals_03_listen -> audio/generated/de-DE/utterances/90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c247833e-b25a-522d-9982-092bef27e3f0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_change_proposals_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '702d8385925f87fe22e781a0c769ba5315168625ec66af8a6741b6be901574c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('391e9335-ea6e-56b2-b071-429caed38219', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c247833e-b25a-522d-9982-092bef27e3f0', 1), '702d8385925f87fe22e781a0c769ba5315168625ec66af8a6741b6be901574c3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be.mp3', 5433, '2026-09-13 09:18:34.475664', 'eebaf1eae7d108f0a9dcd7691c2b11eabd1c8ad36f1850d4512ba52122afc0f9', 'validated', '{"audio_key":"90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be","entity_key":"ex_change_proposals_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eebaf1eae7d108f0a9dcd7691c2b11eabd1c8ad36f1850d4512ba52122afc0f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90ef37cc2e240a83f9778831beca858cd075a8cc65fa3ff69e65e948e002a9be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrating_viewpoints_01 -> audio/generated/de-DE/utterances/94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('75926e34-5258-5ce0-b700-c6268dd255a1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrating_viewpoints_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afddebc106b497f84ac602a894938aa1721cce154a8b1d012804de46d91dd434'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd1d3af0-1c35-528f-8a87-2e716bf6172f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('75926e34-5258-5ce0-b700-c6268dd255a1', 1), 'afddebc106b497f84ac602a894938aa1721cce154a8b1d012804de46d91dd434',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c.mp3', 5328, '2026-09-13 09:18:35.833716', '6a5e29cfe519dc84518d6ff8ebe3d2d6eb735d8696d194b8268ccc7c3516dc68', 'validated', '{"audio_key":"94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c","entity_key":"u_integrating_viewpoints_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a5e29cfe519dc84518d6ff8ebe3d2d6eb735d8696d194b8268ccc7c3516dc68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrating_viewpoints_01_listen -> audio/generated/de-DE/utterances/94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b4bb5bfc-052b-5b39-8206-6e42eeb034f5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrating_viewpoints_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afddebc106b497f84ac602a894938aa1721cce154a8b1d012804de46d91dd434'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd895db6-11bf-512c-8c46-c3d88e5d5235', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b4bb5bfc-052b-5b39-8206-6e42eeb034f5', 1), 'afddebc106b497f84ac602a894938aa1721cce154a8b1d012804de46d91dd434',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c.mp3', 5328, '2026-09-13 09:18:35.833716', '6a5e29cfe519dc84518d6ff8ebe3d2d6eb735d8696d194b8268ccc7c3516dc68', 'validated', '{"audio_key":"94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c","entity_key":"ex_integrating_viewpoints_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a5e29cfe519dc84518d6ff8ebe3d2d6eb735d8696d194b8268ccc7c3516dc68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/94130c82624062edb61e1170078308a8cbfaa1f397220645598408bf4ccbd34c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_proposals_04 -> audio/generated/de-DE/utterances/9e81d904da1081f5cbfd906a52810ed96cd7ab852967f45f1cf3495e963a0048.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7317b9f5-f69d-5c6d-a39b-582355ec8713', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_proposals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '862b6e959d36b57ca4386a6740d9c085a6d92263ad9fe79298c1e0ae20698115'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f6cfcb8-cba5-5c0f-9389-87935b2c7082', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7317b9f5-f69d-5c6d-a39b-582355ec8713', 1), '862b6e959d36b57ca4386a6740d9c085a6d92263ad9fe79298c1e0ae20698115',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9e81d904da1081f5cbfd906a52810ed96cd7ab852967f45f1cf3495e963a0048.mp3', 4780, '2026-09-13 09:18:35.875606', '90c0b1c435b633b550bbd2829d2ec65f21b4c8821c4651ef70e36d92fe5e1b6e', 'validated', '{"audio_key":"9e81d904da1081f5cbfd906a52810ed96cd7ab852967f45f1cf3495e963a0048","entity_key":"u_change_proposals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90c0b1c435b633b550bbd2829d2ec65f21b4c8821c4651ef70e36d92fe5e1b6e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9e81d904da1081f5cbfd906a52810ed96cd7ab852967f45f1cf3495e963a0048.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_proposals_02 -> audio/generated/de-DE/utterances/a33cc1c0bbee2908c722dcba1ca322b5273d37022b4999fa52d71a201bb9ecd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f92ac6ce-5965-512b-b2bb-b495c1864be9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_proposals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35521ab6e7d0ba9f4f3ead2eb97a84a27a060907c3141969805e3bcf5e1cba89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92a0966f-674d-5db5-8dfa-a17caa2c6e91', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f92ac6ce-5965-512b-b2bb-b495c1864be9', 1), '35521ab6e7d0ba9f4f3ead2eb97a84a27a060907c3141969805e3bcf5e1cba89',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a33cc1c0bbee2908c722dcba1ca322b5273d37022b4999fa52d71a201bb9ecd9.mp3', 5851, '2026-09-13 09:18:37.355822', '14675343a5229e53e0bdf23f30edfbb98899415804b7102a47c994400943978f', 'validated', '{"audio_key":"a33cc1c0bbee2908c722dcba1ca322b5273d37022b4999fa52d71a201bb9ecd9","entity_key":"u_change_proposals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14675343a5229e53e0bdf23f30edfbb98899415804b7102a47c994400943978f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a33cc1c0bbee2908c722dcba1ca322b5273d37022b4999fa52d71a201bb9ecd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_proposals_03 -> audio/generated/de-DE/utterances/a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d26bbb8f-51e7-5d9a-bbb8-b33cbccdf95f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_proposals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65dd8ca87671f19301c5d7efdaee4e37006a3563546afaac6ed86a6450419ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed598e5a-bdef-5d9f-a324-e516bcad0017', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d26bbb8f-51e7-5d9a-bbb8-b33cbccdf95f', 1), 'b65dd8ca87671f19301c5d7efdaee4e37006a3563546afaac6ed86a6450419ad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c.mp3', 5381, '2026-09-13 09:18:37.282029', '866c67c7cb467c405cbb06b6e4c359ac4eb02ed9274de0f1becee4157ee1cff6', 'validated', '{"audio_key":"a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c","entity_key":"u_change_proposals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"866c67c7cb467c405cbb06b6e4c359ac4eb02ed9274de0f1becee4157ee1cff6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_change_proposals_02_listen -> audio/generated/de-DE/utterances/a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dbb44130-11a0-5f4b-994e-beb28e0487a9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_change_proposals_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65dd8ca87671f19301c5d7efdaee4e37006a3563546afaac6ed86a6450419ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef6f2f21-751a-56dd-b124-5c7b6fa80181', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dbb44130-11a0-5f4b-994e-beb28e0487a9', 1), 'b65dd8ca87671f19301c5d7efdaee4e37006a3563546afaac6ed86a6450419ad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c.mp3', 5381, '2026-09-13 09:18:37.282029', '866c67c7cb467c405cbb06b6e4c359ac4eb02ed9274de0f1becee4157ee1cff6', 'validated', '{"audio_key":"a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c","entity_key":"ex_change_proposals_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"866c67c7cb467c405cbb06b6e4c359ac4eb02ed9274de0f1becee4157ee1cff6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5877bd9aa94042a988edf2c2806f18528332305b2be0d82bef449fbe71dd06c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_05 -> audio/generated/de-DE/utterances/a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('05ce9135-abeb-5be6-93ba-ee198d2bddaa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60a340571d3aa851b21504c56f41200ebd999b75dd86eccb901bb638b70afe4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b554bf4-632e-5c0a-8b77-a281a3ec86fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('05ce9135-abeb-5be6-93ba-ee198d2bddaa', 1), '60a340571d3aa851b21504c56f41200ebd999b75dd86eccb901bb638b70afe4f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81.mp3', 6295, '2026-09-13 09:18:38.904279', '84016440ed372b59a232a1c9f9267638a5bee0fe7bb1ce1c9cd316515a11c265', 'validated', '{"audio_key":"a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81","entity_key":"u_integrated_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84016440ed372b59a232a1c9f9267638a5bee0fe7bb1ce1c9cd316515a11c265","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_capstone_03_listen -> audio/generated/de-DE/utterances/a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('38240f8e-6535-5bf5-b274-3a52cf210929', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60a340571d3aa851b21504c56f41200ebd999b75dd86eccb901bb638b70afe4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('170510ca-5f33-54f1-94e6-cc9b781949d7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('38240f8e-6535-5bf5-b274-3a52cf210929', 1), '60a340571d3aa851b21504c56f41200ebd999b75dd86eccb901bb638b70afe4f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81.mp3', 6295, '2026-09-13 09:18:38.904279', '84016440ed372b59a232a1c9f9267638a5bee0fe7bb1ce1c9cd316515a11c265', 'validated', '{"audio_key":"a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81","entity_key":"ex_integrated_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84016440ed372b59a232a1c9f9267638a5bee0fe7bb1ce1c9cd316515a11c265","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a6f27ecfa8a96368fc014d28881eaa6bb54c5716e22e081af59dc3a2294d3a81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrating_viewpoints_05 -> audio/generated/de-DE/utterances/bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3a867cbc-44c3-5a2c-ab7a-2c0cdb1099de', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrating_viewpoints_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40b06ba55c98482f44cec90e2edfd502af55eb78852fc19a549721b31a0faa74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fcac779-1efb-51e1-ac84-bf2fde485de7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3a867cbc-44c3-5a2c-ab7a-2c0cdb1099de', 1), '40b06ba55c98482f44cec90e2edfd502af55eb78852fc19a549721b31a0faa74',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674.mp3', 6086, '2026-09-13 09:18:38.881761', 'fdfd191727f60293fccf2a7c4b034336405be21d21f7dfb97ec2b6a0c4f8022b', 'validated', '{"audio_key":"bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674","entity_key":"u_integrating_viewpoints_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdfd191727f60293fccf2a7c4b034336405be21d21f7dfb97ec2b6a0c4f8022b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrating_viewpoints_03_listen -> audio/generated/de-DE/utterances/bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b7b2b1d9-02f4-5066-a527-f5761ee1e1d7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrating_viewpoints_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40b06ba55c98482f44cec90e2edfd502af55eb78852fc19a549721b31a0faa74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('079adc20-1ea8-5823-ae12-58214c075934', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b7b2b1d9-02f4-5066-a527-f5761ee1e1d7', 1), '40b06ba55c98482f44cec90e2edfd502af55eb78852fc19a549721b31a0faa74',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674.mp3', 6086, '2026-09-13 09:18:38.881761', 'fdfd191727f60293fccf2a7c4b034336405be21d21f7dfb97ec2b6a0c4f8022b', 'validated', '{"audio_key":"bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674","entity_key":"ex_integrating_viewpoints_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdfd191727f60293fccf2a7c4b034336405be21d21f7dfb97ec2b6a0c4f8022b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bbe8cfc80762b2a27fb713bf73feda36229b3f5cfb7975ac22107e7a7c241674.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_decision_writing_06 -> audio/generated/de-DE/utterances/d0db87aac649d017cdc5b419d3860561419d3d3d5c38bd19170919d65375f82b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d32f5e3c-03eb-5cd7-8c16-e3bea85f74e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_decision_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e7fd189f35370a97b3f1ff686909084db5271e0b4f21237afaf9936a1937ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33e8527e-8f37-5945-a7b3-2a08b0a9f196', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d32f5e3c-03eb-5cd7-8c16-e3bea85f74e2', 1), '89e7fd189f35370a97b3f1ff686909084db5271e0b4f21237afaf9936a1937ce',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d0db87aac649d017cdc5b419d3860561419d3d3d5c38bd19170919d65375f82b.mp3', 5381, '2026-09-13 09:18:40.308690', '52cf809ccc50de8edaa09f0eb40f3f8ee154c6eddb88b1261e517996c39dd850', 'validated', '{"audio_key":"d0db87aac649d017cdc5b419d3860561419d3d3d5c38bd19170919d65375f82b","entity_key":"u_formal_decision_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52cf809ccc50de8edaa09f0eb40f3f8ee154c6eddb88b1261e517996c39dd850","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d0db87aac649d017cdc5b419d3860561419d3d3d5c38bd19170919d65375f82b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_decision_writing_05 -> audio/generated/de-DE/utterances/d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3abe4a0d-464b-5574-9398-95ea90feaff9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_decision_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b5c35b5566495ad775095eb443ae10fd4e8b5ff4697a4399f8ead9e2177bd0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3127d36f-c1dd-5be0-be8e-9639dd7ba5d8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3abe4a0d-464b-5574-9398-95ea90feaff9', 1), '2b5c35b5566495ad775095eb443ae10fd4e8b5ff4697a4399f8ead9e2177bd0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655.mp3', 5198, '2026-09-13 09:18:40.340961', 'fb5d0126e0cef002b70e30a52f09b56c3aad22e4a02cad3c25cb5c0a1dc6399c', 'validated', '{"audio_key":"d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655","entity_key":"u_formal_decision_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb5d0126e0cef002b70e30a52f09b56c3aad22e4a02cad3c25cb5c0a1dc6399c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_decision_writing_03_listen -> audio/generated/de-DE/utterances/d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5204906d-26c7-517f-9500-b703bfbdf154', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_decision_writing_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b5c35b5566495ad775095eb443ae10fd4e8b5ff4697a4399f8ead9e2177bd0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac4e7b3e-a3e7-5ad5-bc62-45b62c945283', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5204906d-26c7-517f-9500-b703bfbdf154', 1), '2b5c35b5566495ad775095eb443ae10fd4e8b5ff4697a4399f8ead9e2177bd0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655.mp3', 5198, '2026-09-13 09:18:40.340961', 'fb5d0126e0cef002b70e30a52f09b56c3aad22e4a02cad3c25cb5c0a1dc6399c', 'validated', '{"audio_key":"d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655","entity_key":"ex_formal_decision_writing_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb5d0126e0cef002b70e30a52f09b56c3aad22e4a02cad3c25cb5c0a1dc6399c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d455c607ee45fda4cd85872e33f29b914ff7db96527a53141d323d68dada3655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrating_viewpoints_02 -> audio/generated/de-DE/utterances/d5f3c0f543fff84b5f368bce465cc3552ff968792c489a6332b223bd7aa4fd1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3a5c02d3-4b9a-5ac6-ada7-c61ae5dd0375', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrating_viewpoints_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1fbac262c21629cc345455ecb725474873a16168a476adff05eec0c2e56cbad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99dac826-25cb-5aef-a26f-2038fddcac6d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3a5c02d3-4b9a-5ac6-ada7-c61ae5dd0375', 1), 'c1fbac262c21629cc345455ecb725474873a16168a476adff05eec0c2e56cbad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d5f3c0f543fff84b5f368bce465cc3552ff968792c489a6332b223bd7aa4fd1d.mp3', 5015, '2026-09-13 09:18:41.710172', 'ca33f083a2ba7da8ad197c112a84ff8a8a7fa0e85cac67b0b7f9aa9916cc4105', 'validated', '{"audio_key":"d5f3c0f543fff84b5f368bce465cc3552ff968792c489a6332b223bd7aa4fd1d","entity_key":"u_integrating_viewpoints_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca33f083a2ba7da8ad197c112a84ff8a8a7fa0e85cac67b0b7f9aa9916cc4105","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d5f3c0f543fff84b5f368bce465cc3552ff968792c489a6332b223bd7aa4fd1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_03 -> audio/generated/de-DE/utterances/e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d6934827-c33c-5c9a-b3b5-0f7f67aae043', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4f802cf42978b70feac3b5569e4aa8bc14d8ca3c567b479c6ad12fcacf9799f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3caa3ac0-4f79-57f9-98c0-18edfa0a2e8c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d6934827-c33c-5c9a-b3b5-0f7f67aae043', 1), 'e4f802cf42978b70feac3b5569e4aa8bc14d8ca3c567b479c6ad12fcacf9799f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8.mp3', 5982, '2026-09-13 09:18:41.827237', '41d51d5c63b4a7286b6a8ac2bb3a67583e45df8da406841a1d90f4eb93c72ebf', 'validated', '{"audio_key":"e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8","entity_key":"u_integrated_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41d51d5c63b4a7286b6a8ac2bb3a67583e45df8da406841a1d90f4eb93c72ebf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_capstone_02_listen -> audio/generated/de-DE/utterances/e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('537c555f-e656-5819-aa54-c861da31617c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4f802cf42978b70feac3b5569e4aa8bc14d8ca3c567b479c6ad12fcacf9799f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3091afba-f573-5991-92ae-6a9a34be869d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('537c555f-e656-5819-aa54-c861da31617c', 1), 'e4f802cf42978b70feac3b5569e4aa8bc14d8ca3c567b479c6ad12fcacf9799f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8.mp3', 5982, '2026-09-13 09:18:41.827237', '41d51d5c63b4a7286b6a8ac2bb3a67583e45df8da406841a1d90f4eb93c72ebf', 'validated', '{"audio_key":"e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8","entity_key":"ex_integrated_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41d51d5c63b4a7286b6a8ac2bb3a67583e45df8da406841a1d90f4eb93c72ebf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e487489ad1673197d4ac97d5d101e1e19f807567b9f14210fa9e402ba3ea15c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_process_guidance_02 -> audio/generated/de-DE/utterances/f111af295f2aa7f083a8ed15149214719492fd6966ef56ecb156a64f16283561.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5b0eaf87-8615-5e73-831e-7b7d0e615aff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_process_guidance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ae1a7eb6976bc73b6835a8edb43b900e550be9ad8907d367ba2c41bdf6a0c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b87c379a-278a-5cd6-8e53-71eef43e5a98', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5b0eaf87-8615-5e73-831e-7b7d0e615aff', 1), '5ae1a7eb6976bc73b6835a8edb43b900e550be9ad8907d367ba2c41bdf6a0c69',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f111af295f2aa7f083a8ed15149214719492fd6966ef56ecb156a64f16283561.mp3', 4022, '2026-09-13 09:18:42.952524', '225d6454bf7a67df90759b9196e25d2e5a37672a986c59fbc11a87228612dc38', 'validated', '{"audio_key":"f111af295f2aa7f083a8ed15149214719492fd6966ef56ecb156a64f16283561","entity_key":"u_process_guidance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"225d6454bf7a67df90759b9196e25d2e5a37672a986c59fbc11a87228612dc38","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f111af295f2aa7f083a8ed15149214719492fd6966ef56ecb156a64f16283561.mp3"}'
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

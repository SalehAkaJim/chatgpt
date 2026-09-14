-- Generated audio link import for de-DE Pre-A1
-- Source manifest: audio/manifests/de/Pre-A1.json
-- Generated rows: 394
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_letter_names_01:4 -> audio/generated/de-DE/dialogues/006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2aebe5b-8e27-5015-92a1-565b72ce594d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc36e3e7-9679-5432-a956-a738e9146e23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2aebe5b-8e27-5015-92a1-565b72ce594d', 1), 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17.mp3', 835, '2026-09-14 13:30:27.465116', '2b1c703c4a32db348c05b85dcc232e3e66a2b75e6482c6232b914290b1cf36b8', 'validated', '{"audio_key":"006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17","entity_key":"d_letter_names_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2b1c703c4a32db348c05b85dcc232e3e66a2b75e6482c6232b914290b1cf36b8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:1 -> audio/generated/de-DE/dialogues/0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f9b3bc2-2e27-5658-87ca-a8e12ec755b5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b71ba810509465f2b34b383718ca755e1fa3bad4fa5a128fe6bea7c88639a662'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7314d3e-b9a2-53e2-a900-6dc320e519e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f9b3bc2-2e27-5658-87ca-a8e12ec755b5', 1), 'b71ba810509465f2b34b383718ca755e1fa3bad4fa5a128fe6bea7c88639a662',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0.mp3', 1201, '2026-09-14 13:30:28.839092', '07de0753788d6b19822a92236b70eee4d8e716890fb63953dd31b3c80cc80003', 'validated', '{"audio_key":"0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0","entity_key":"d_first_objects_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07de0753788d6b19822a92236b70eee4d8e716890fb63953dd31b3c80cc80003","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:1 -> audio/generated/de-DE/dialogues/008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a74def01-58e6-5111-b4ed-02130c2add80', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2197b7f72d4f0404f25cec8b4fd71393e401c1bb9e0d50c6caba898a24443537'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28d03d02-cb56-597c-813d-2776088c8ed8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a74def01-58e6-5111-b4ed-02130c2add80', 1), '2197b7f72d4f0404f25cec8b4fd71393e401c1bb9e0d50c6caba898a24443537',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd.mp3', 1436, '2026-09-14 13:30:29.940060', 'a37efc68ad9f86cd017910db2a1d52179c043731342b7550f95139dd4fa14bc8', 'validated', '{"audio_key":"008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd","entity_key":"d_first_sounds_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a37efc68ad9f86cd017910db2a1d52179c043731342b7550f95139dd4fa14bc8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_origin_age:6 -> audio/generated/de-DE/dialogues/03739090f0e7aa229b058982c9220938a27d79bd015d10e79ae1657c7ec4e8b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92a475c2-7702-5e7d-af75-7aa847374b78', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_origin_age:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '887872e399c0b1cf633d00a13c0ce08466a4ec666d2c3ace581500de6e4c1f8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4483986f-9a81-5e00-aa4d-5babd1298d9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92a475c2-7702-5e7d-af75-7aa847374b78', 1), '887872e399c0b1cf633d00a13c0ce08466a4ec666d2c3ace581500de6e4c1f8e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/03739090f0e7aa229b058982c9220938a27d79bd015d10e79ae1657c7ec4e8b4.mp3', 1671, '2026-09-14 13:30:31.192443', 'bfb4a2b18cd3e79bac1930110e6ac5fb3981f13ec40dae01155fb225fb406afe', 'validated', '{"audio_key":"03739090f0e7aa229b058982c9220938a27d79bd015d10e79ae1657c7ec4e8b4","entity_key":"d_de_de-about-me_origin_age:6","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bfb4a2b18cd3e79bac1930110e6ac5fb3981f13ec40dae01155fb225fb406afe","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/03739090f0e7aa229b058982c9220938a27d79bd015d10e79ae1657c7ec4e8b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:2 -> audio/generated/de-DE/dialogues/07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2805541-3e1d-5537-8cb8-ee15d444d94b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b46e03e4-59b5-537c-8da0-b4797ff61a36', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2805541-3e1d-5537-8cb8-ee15d444d94b', 1), '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859.mp3', 679, '2026-09-14 13:30:32.111093', '7506af15c851b5b151be93924bd86a876f2cf83364d317699da927288cdc489c', 'validated', '{"audio_key":"07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859","entity_key":"d_first_objects_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7506af15c851b5b151be93924bd86a876f2cf83364d317699da927288cdc489c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_meaning_help:3 -> audio/generated/de-DE/dialogues/09725f3f67fbfc96f58d7024a8a38713441b01600c57801bb1f5cf7944629c0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca1b495e-5808-53bf-bd26-159708386f7e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_meaning_help:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9eb4b98155d108972c42a9f46cc4d42142a69ab49d4cb18d9fece9c398db28d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8c3c668-998f-55a9-b499-30ed8979c3eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca1b495e-5808-53bf-bd26-159708386f7e', 1), '9eb4b98155d108972c42a9f46cc4d42142a69ab49d4cb18d9fece9c398db28d2',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09725f3f67fbfc96f58d7024a8a38713441b01600c57801bb1f5cf7944629c0c.mp3', 914, '2026-09-14 13:30:34.303657', 'e03082b32328ae4e6049b2a41abec6b08caad30a985e70d74a9333b30e957288', 'validated', '{"audio_key":"09725f3f67fbfc96f58d7024a8a38713441b01600c57801bb1f5cf7944629c0c","entity_key":"d_de_meaning_help:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e03082b32328ae4e6049b2a41abec6b08caad30a985e70d74a9333b30e957288","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/09725f3f67fbfc96f58d7024a8a38713441b01600c57801bb1f5cf7944629c0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:3 -> audio/generated/de-DE/dialogues/09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c16cce6f-3f9f-5d0a-997a-9d1b0cfc847f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e77f9eaf5d3c859532c6c6f155e3dbd4cfdbba2dfbe75fb40076aa08b689afc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19b6316e-7f31-56a5-8ac9-28dda774d2b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c16cce6f-3f9f-5d0a-997a-9d1b0cfc847f', 1), 'e77f9eaf5d3c859532c6c6f155e3dbd4cfdbba2dfbe75fb40076aa08b689afc4',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506.mp3', 862, '2026-09-14 13:30:35.294756', 'd27e90c5f7628a8b7e73a69cb18958867188964af3e6fa76965948e5dc98e9a5', 'validated', '{"audio_key":"09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506","entity_key":"d_alphabet_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d27e90c5f7628a8b7e73a69cb18958867188964af3e6fa76965948e5dc98e9a5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_intro:2 -> audio/generated/de-DE/dialogues/0b466e64a2741e2fb705f859b4856a2fe76df879a7e786ec971b9f4a1af161b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eaef9fb3-6269-5ebc-98c6-02940e9d204d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_intro:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21b573bc-9d01-5e2c-b50a-6d2048afd81b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eaef9fb3-6269-5ebc-98c6-02940e9d204d', 1), '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0b466e64a2741e2fb705f859b4856a2fe76df879a7e786ec971b9f4a1af161b8.mp3', 966, '2026-09-14 13:30:36.385785', 'e3aecbb160e44c91ad3889e84e345a1c6ef97bfdc5f5105fbc4e9f09449f8f99', 'validated', '{"audio_key":"0b466e64a2741e2fb705f859b4856a2fe76df879a7e786ec971b9f4a1af161b8","entity_key":"d_de_ready_intro:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"e3aecbb160e44c91ad3889e84e345a1c6ef97bfdc5f5105fbc4e9f09449f8f99","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0b466e64a2741e2fb705f859b4856a2fe76df879a7e786ec971b9f4a1af161b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_02:3 -> audio/generated/de-DE/dialogues/0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('842c82a6-1567-5261-8ffe-70d0e52174f7', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfdf0a404dc52c9265cbee35f96299f70936d08c158d04a5a1280a23a7d3eba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15f6b0ac-691d-5fe7-9df5-3eba1c7ef2d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('842c82a6-1567-5261-8ffe-70d0e52174f7', 1), 'abfdf0a404dc52c9265cbee35f96299f70936d08c158d04a5a1280a23a7d3eba',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b.mp3', 862, '2026-09-14 13:30:37.562686', 'e2a23821107f779b1d29432df11cb7c05799cc20d245253888f9f317073340b9', 'validated', '{"audio_key":"0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b","entity_key":"d_letter_names_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e2a23821107f779b1d29432df11cb7c05799cc20d245253888f9f317073340b9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_repair:3 -> audio/generated/de-DE/dialogues/10b3d27ddf3264a44cdbdddc082b8c65f678167ac26426328b23bad187f9d24e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45b2d6cb-09f6-5027-aecf-5b33e5c4dc34', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_repair:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ba884afe1d5a52d19bc85ec00409ea772dd791b23efe0ecd174916b50682931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fbd4349-2be9-5ca0-85ff-17989f000469', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45b2d6cb-09f6-5027-aecf-5b33e5c4dc34', 1), '1ba884afe1d5a52d19bc85ec00409ea772dd791b23efe0ecd174916b50682931',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/10b3d27ddf3264a44cdbdddc082b8c65f678167ac26426328b23bad187f9d24e.mp3', 1149, '2026-09-14 13:30:38.554629', '09bfc9acae33703b4805f412529c867d79fd19546576a796e9fc69bff8588e38', 'validated', '{"audio_key":"10b3d27ddf3264a44cdbdddc082b8c65f678167ac26426328b23bad187f9d24e","entity_key":"d_de_ready_repair:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"09bfc9acae33703b4805f412529c867d79fd19546576a796e9fc69bff8588e38","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/10b3d27ddf3264a44cdbdddc082b8c65f678167ac26426328b23bad187f9d24e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_02:4 -> audio/generated/de-DE/dialogues/146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d12be0b1-a0a4-54de-9405-f2e99dd7dbc7', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46d474ef199712bc4154d5edbc324afe40b9943fb8121ec7899fea88f42d603a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f4abfe6-a388-51e0-99c9-59c80d19a90f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d12be0b1-a0a4-54de-9405-f2e99dd7dbc7', 1), '46d474ef199712bc4154d5edbc324afe40b9943fb8121ec7899fea88f42d603a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba.mp3', 600, '2026-09-14 13:30:39.545097', '8a8638e3f55ba033e0fddfee8bf3becff6cdde6720cca21773979bda4f09791a', 'validated', '{"audio_key":"146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba","entity_key":"d_letter_names_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8a8638e3f55ba033e0fddfee8bf3becff6cdde6720cca21773979bda4f09791a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_meet:5 -> audio/generated/de-DE/dialogues/15790ff5e468c45d1dad79408e309ece17e3da8d4f1509ce8c9e842f64733bb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bd21b34-aa0c-5c53-8b17-55119be7d85f', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_meet:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5c0368e-3b10-5d61-a8fe-9e7ebde55e3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bd21b34-aa0c-5c53-8b17-55119be7d85f', 1), 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/15790ff5e468c45d1dad79408e309ece17e3da8d4f1509ce8c9e842f64733bb8.mp3', 1018, '2026-09-14 13:30:40.570857', 'c0a3853d52781acf968fa5b451ca86521655161eb9f1bfbcbcb612f0fb9d9810', 'validated', '{"audio_key":"15790ff5e468c45d1dad79408e309ece17e3da8d4f1509ce8c9e842f64733bb8","entity_key":"d_de_de-real-world-gate_meet:5","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0a3853d52781acf968fa5b451ca86521655161eb9f1bfbcbcb612f0fb9d9810","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/15790ff5e468c45d1dad79408e309ece17e3da8d4f1509ce8c9e842f64733bb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_repair:6 -> audio/generated/de-DE/dialogues/18a2d32cc164aa0b8d940c7b13c0b73a39a7e734048415b1c8e517712eafa8f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4cef33b0-2ee6-51d2-a1a8-57eba56198bd', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_repair:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c49a17706c9fbd9a0b43648eae8d282a02ff4dd696402f75420f40105e34d9f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81020f10-895a-5b0a-a7ee-b827b4918137', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4cef33b0-2ee6-51d2-a1a8-57eba56198bd', 1), 'c49a17706c9fbd9a0b43648eae8d282a02ff4dd696402f75420f40105e34d9f4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/18a2d32cc164aa0b8d940c7b13c0b73a39a7e734048415b1c8e517712eafa8f2.mp3', 914, '2026-09-14 13:30:41.541045', 'aeb441ff285d62b01cf3b869a342ee861175b509c058605c821b66ba6555936f', 'validated', '{"audio_key":"18a2d32cc164aa0b8d940c7b13c0b73a39a7e734048415b1c8e517712eafa8f2","entity_key":"d_de_ready_repair:6","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aeb441ff285d62b01cf3b869a342ee861175b509c058605c821b66ba6555936f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/18a2d32cc164aa0b8d940c7b13c0b73a39a7e734048415b1c8e517712eafa8f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:1 -> audio/generated/de-DE/dialogues/1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a444b3f-850e-52f1-9346-19695a01dc17', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb1e4e31-1d51-54f9-83f6-fe80cba75de1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a444b3f-850e-52f1-9346-19695a01dc17', 1), 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3.mp3', 1201, '2026-09-14 13:30:42.552859', '5a4e6673aff7a69ff3e98daf2650aff7e630542fd607f8227733af5592f067c0', 'validated', '{"audio_key":"1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3","entity_key":"d_survival_words_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5a4e6673aff7a69ff3e98daf2650aff7e630542fd607f8227733af5592f067c0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:2 -> audio/generated/de-DE/dialogues/1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('138e3455-3919-5bfd-bd81-7c67e40d4cc2', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e77f9eaf5d3c859532c6c6f155e3dbd4cfdbba2dfbe75fb40076aa08b689afc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fa5ef82-bf44-5ebc-8b92-cc4cd837a32d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('138e3455-3919-5bfd-bd81-7c67e40d4cc2', 1), 'e77f9eaf5d3c859532c6c6f155e3dbd4cfdbba2dfbe75fb40076aa08b689afc4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d.mp3', 835, '2026-09-14 13:30:43.490367', '3174dec2712c565ca372ffd0d6f24c5345e544086f05cdf07a56c96a4ef62e08', 'validated', '{"audio_key":"1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d","entity_key":"d_first_objects_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3174dec2712c565ca372ffd0d6f24c5345e544086f05cdf07a56c96a4ef62e08","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_01:2 -> audio/generated/de-DE/dialogues/1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8db4bc53-d642-5398-8c58-c44fbec31301', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7837135726b93ef1fa1743a98810fee6ebe214c5abafe05727b1880ce77eb7cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cdb3524-5012-58fc-9bdc-8fc64fb3335d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8db4bc53-d642-5398-8c58-c44fbec31301', 1), '7837135726b93ef1fa1743a98810fee6ebe214c5abafe05727b1880ce77eb7cb',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d.mp3', 914, '2026-09-14 13:30:44.465337', 'bcd5d2a4a88935c81648de8b90bfb1666d427154f0921bf38cccc58a8878d43b', 'validated', '{"audio_key":"1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d","entity_key":"d_letter_names_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bcd5d2a4a88935c81648de8b90bfb1666d427154f0921bf38cccc58a8878d43b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_intro:3 -> audio/generated/de-DE/dialogues/1e0ebb6c588ae3c6fa7ae119f7dfc9796841937c00ae9330093c602e2f351a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e115874-015e-5b80-8528-71d2753e2209', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_intro:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42caa523-b61a-53f6-adc8-d6f1b563aeb3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e115874-015e-5b80-8528-71d2753e2209', 1), '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1e0ebb6c588ae3c6fa7ae119f7dfc9796841937c00ae9330093c602e2f351a7e.mp3', 1201, '2026-09-14 13:30:45.528266', '3d599b0d957ffd9eaa63a3037e6d7ba7f5d6cb887d8fccd44071c427f7342eae', 'validated', '{"audio_key":"1e0ebb6c588ae3c6fa7ae119f7dfc9796841937c00ae9330093c602e2f351a7e","entity_key":"d_de_ready_intro:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d599b0d957ffd9eaa63a3037e6d7ba7f5d6cb887d8fccd44071c427f7342eae","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1e0ebb6c588ae3c6fa7ae119f7dfc9796841937c00ae9330093c602e2f351a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:3 -> audio/generated/de-DE/dialogues/221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35d45524-976a-540b-99f3-ba55220169ff', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5edbf6d3756a96671d054367dcce186eddf35d2a97481131f7a9068367d3b87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60e8efde-dc09-5ba0-831e-3dc022a075e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35d45524-976a-540b-99f3-ba55220169ff', 1), 'f5edbf6d3756a96671d054367dcce186eddf35d2a97481131f7a9068367d3b87',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a.mp3', 1149, '2026-09-14 13:30:46.581735', 'ab305964f9e7864ab35d60e9aa5e31d948a62f8a57fbb40b3dbad693e9ed9c60', 'validated', '{"audio_key":"221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a","entity_key":"d_my_name_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ab305964f9e7864ab35d60e9aa5e31d948a62f8a57fbb40b3dbad693e9ed9c60","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_meet:4 -> audio/generated/de-DE/dialogues/224a8d468798f8074782a0fc69bab5679c111552d10f6a0328e8c9c6c53d9a49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3a65bca-1d9a-506c-a7c5-f1db19c87e94', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_meet:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9e95880-001d-55b9-b9f1-998e25f1458a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3a65bca-1d9a-506c-a7c5-f1db19c87e94', 1), 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/224a8d468798f8074782a0fc69bab5679c111552d10f6a0328e8c9c6c53d9a49.mp3', 1332, '2026-09-14 13:30:47.685523', '0de84cdb8836f2f787663c029839d71f5e712caedb9affb7ab60a4411c65b93f', 'validated', '{"audio_key":"224a8d468798f8074782a0fc69bab5679c111552d10f6a0328e8c9c6c53d9a49","entity_key":"d_de_de-real-world-gate_meet:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0de84cdb8836f2f787663c029839d71f5e712caedb9affb7ab60a4411c65b93f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/224a8d468798f8074782a0fc69bab5679c111552d10f6a0328e8c9c6c53d9a49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:4 -> audio/generated/de-DE/dialogues/224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d66ab58-9488-5a60-a08c-cbc8a69c64b0', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec12cf9a-d660-55ea-a8e5-51f93a1c7584', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d66ab58-9488-5a60-a08c-cbc8a69c64b0', 1), '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade.mp3', 1253, '2026-09-14 13:30:48.736052', '0216b8dfdf27fd7a249b0e9514e90304dbcd25585d7aa1b7ffdf00a804bd631f', 'validated', '{"audio_key":"224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade","entity_key":"d_first_conversation_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0216b8dfdf27fd7a249b0e9514e90304dbcd25585d7aa1b7ffdf00a804bd631f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:4 -> audio/generated/de-DE/dialogues/2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a384ca57-e3dd-5bce-8319-e62a58a70a4b', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82f6a8c47d4b6b588ba60dafe5b3e5dbac08d5863bf91a4ced86e4833ec4300b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69e7208f-72e0-5fe7-a979-e850c5e4d4d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a384ca57-e3dd-5bce-8319-e62a58a70a4b', 1), '82f6a8c47d4b6b588ba60dafe5b3e5dbac08d5863bf91a4ced86e4833ec4300b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b.mp3', 731, '2026-09-14 13:30:49.927063', 'e15ef9ab9672322c0f26759fad7bb8fc651f74a47c4238ac0fc375f70df39741', 'validated', '{"audio_key":"2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b","entity_key":"d_first_objects_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e15ef9ab9672322c0f26759fad7bb8fc651f74a47c4238ac0fc375f70df39741","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_01:1 -> audio/generated/de-DE/dialogues/2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ffff93a0-88e7-5477-8497-d5717b885509', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c56b698451e438016c8956340d9a4952a9abfcb0049f39190011dae63a62c24b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61ac7147-4bfc-5acd-ae01-ee8a8ecbd7f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ffff93a0-88e7-5477-8497-d5717b885509', 1), 'c56b698451e438016c8956340d9a4952a9abfcb0049f39190011dae63a62c24b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1.mp3', 1488, '2026-09-14 13:30:51.084635', '6ef7d2e11df5a73c27c538c463764c301611e68479a0231c3dab8d3f0cd47b01', 'validated', '{"audio_key":"2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1","entity_key":"d_letter_names_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6ef7d2e11df5a73c27c538c463764c301611e68479a0231c3dab8d3f0cd47b01","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_01:4 -> audio/generated/de-DE/dialogues/272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c20cf50f-c002-5f92-9ba0-db1027fe8994', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a41b066fcdc62c0d089d0936410c401e15d786e66eeaebfc74a2a605e37cbaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf3da86e-1eff-50b1-81ea-7936803829c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c20cf50f-c002-5f92-9ba0-db1027fe8994', 1), '0a41b066fcdc62c0d089d0936410c401e15d786e66eeaebfc74a2a605e37cbaf',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113.mp3', 914, '2026-09-14 13:30:52.080575', 'd9848517050594f2f3e3f5031fed621385625ef06f8077c13c49b87d9308d378', 'validated', '{"audio_key":"272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113","entity_key":"d_classroom_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d9848517050594f2f3e3f5031fed621385625ef06f8077c13c49b87d9308d378","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_01:3 -> audio/generated/de-DE/dialogues/2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46310c93-cd12-5231-bcb8-791713a58101', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da56d85a-b14e-5338-99e6-f28faf4dcb55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46310c93-cd12-5231-bcb8-791713a58101', 1), '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03.mp3', 835, '2026-09-14 13:30:53.025378', '72a8bcaa46732581ed1269a4dd6bc262eab8a2c809d9c9f16ae82b35982ca4be', 'validated', '{"audio_key":"2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03","entity_key":"d_letter_names_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"72a8bcaa46732581ed1269a4dd6bc262eab8a2c809d9c9f16ae82b35982ca4be","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_01:1 -> audio/generated/de-DE/dialogues/2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f14a9e6-c801-54fc-9de7-a4f2e61aeeec', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2975cf9c-921c-5a2d-9635-250ca5989851', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f14a9e6-c801-54fc-9de7-a4f2e61aeeec', 1), 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12.mp3', 1567, '2026-09-14 13:30:54.106202', '32cde1b9e2c16e2133db7d9f978dc5b05cc73d54baafcfc7ad2d4b8146f30bce', 'validated', '{"audio_key":"2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12","entity_key":"d_classroom_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"32cde1b9e2c16e2133db7d9f978dc5b05cc73d54baafcfc7ad2d4b8146f30bce","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_price_day:1 -> audio/generated/de-DE/dialogues/36da675e8f30999c486a2f2f53ec6d0e226f5f016bd33a60d65f6775edf7db6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7778d599-cbbd-5cee-9e7e-3fe4869a1a43', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_price_day:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2381e95cb700622bc0fcb6df1955fd8164ff241e843a42e5d151e96aeffe37fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b2cd67f-76dd-5c06-af8b-1119e79068f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7778d599-cbbd-5cee-9e7e-3fe4869a1a43', 1), '2381e95cb700622bc0fcb6df1955fd8164ff241e843a42e5d151e96aeffe37fb',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36da675e8f30999c486a2f2f53ec6d0e226f5f016bd33a60d65f6775edf7db6d.mp3', 1488, '2026-09-14 13:30:55.105515', '98c76817fa915af1eb1cb91f8a6d8b092b5741b83395e608b2ae9136534a1a8d', 'validated', '{"audio_key":"36da675e8f30999c486a2f2f53ec6d0e226f5f016bd33a60d65f6775edf7db6d","entity_key":"d_de_de-real-life-numbers_price_day:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"98c76817fa915af1eb1cb91f8a6d8b092b5741b83395e608b2ae9136534a1a8d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/36da675e8f30999c486a2f2f53ec6d0e226f5f016bd33a60d65f6775edf7db6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:1 -> audio/generated/de-DE/dialogues/36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38c1fe1d-332f-5ebf-b33b-cc6a52e62276', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c23d5815f5812c22e4fa59b5653aea0635da9ef219b72ed5d5d502121fe2dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ff511a1-9380-5370-903c-8020dc63e564', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38c1fe1d-332f-5ebf-b33b-cc6a52e62276', 1), '3c23d5815f5812c22e4fa59b5653aea0635da9ef219b72ed5d5d502121fe2dc8',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4.mp3', 1488, '2026-09-14 13:30:56.363327', 'a61b4daf798bf714a0ee7fbda42f41ea71e6dc8bdbad5fe0a334f8eab5b73e33', 'validated', '{"audio_key":"36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4","entity_key":"d_first_conversation_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a61b4daf798bf714a0ee7fbda42f41ea71e6dc8bdbad5fe0a334f8eab5b73e33","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_01:3 -> audio/generated/de-DE/dialogues/3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('730dbcbc-cc69-54a5-96d9-78fc6ee1b3d4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c3dcfe2aa7d1bcb671c308d440d7341268290ab37a923d59654a2cd9144eadd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70377f78-bf5e-5fd9-aa4a-53b5090000c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('730dbcbc-cc69-54a5-96d9-78fc6ee1b3d4', 1), '8c3dcfe2aa7d1bcb671c308d440d7341268290ab37a923d59654a2cd9144eadd',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7.mp3', 1018, '2026-09-14 13:30:57.489311', 'dd673bf6e2672c52490b66af5d8d4242cecf8f20db6596ba3167bddb87116759', 'validated', '{"audio_key":"3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7","entity_key":"d_classroom_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dd673bf6e2672c52490b66af5d8d4242cecf8f20db6596ba3167bddb87116759","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:4 -> audio/generated/de-DE/dialogues/3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3878ebe-d131-532d-8e69-921b5d17b73b', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc58b910de5ac23c48c8fcb0d934fcaee356c04b6c3555aeeba9f62fdbd5900f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba0a560a-aec9-50bd-b315-40b90a567de3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3878ebe-d131-532d-8e69-921b5d17b73b', 1), 'dc58b910de5ac23c48c8fcb0d934fcaee356c04b6c3555aeeba9f62fdbd5900f',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce.mp3', 914, '2026-09-14 13:30:58.916478', '85c272f1f24e31874c69b7d4c06edf14ac7bdb6e1219946006537fad7de320e2', 'validated', '{"audio_key":"3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce","entity_key":"d_first_sounds_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"85c272f1f24e31874c69b7d4c06edf14ac7bdb6e1219946006537fad7de320e2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_origin_age:5 -> audio/generated/de-DE/dialogues/3dbf9d80880dbb0e1bd23ec1ffeb827acae369743cd26863e5377bd775510b73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b603e45-8c58-58a9-b7f8-a10491f637f2', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_origin_age:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4000ddf9f15272ec95c7de7400f566e3e8457a174571f491a1c2ee3bfb501fb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04ec4f70-4ba7-524f-ad0c-135b9727e31a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b603e45-8c58-58a9-b7f8-a10491f637f2', 1), '4000ddf9f15272ec95c7de7400f566e3e8457a174571f491a1c2ee3bfb501fb6',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3dbf9d80880dbb0e1bd23ec1ffeb827acae369743cd26863e5377bd775510b73.mp3', 1201, '2026-09-14 13:30:59.923907', '7db209143fc179fb3e0b8bd611b9f3e67b06edd574c6db649c95e311f3d09dba', 'validated', '{"audio_key":"3dbf9d80880dbb0e1bd23ec1ffeb827acae369743cd26863e5377bd775510b73","entity_key":"d_de_de-about-me_origin_age:5","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7db209143fc179fb3e0b8bd611b9f3e67b06edd574c6db649c95e311f3d09dba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3dbf9d80880dbb0e1bd23ec1ffeb827acae369743cd26863e5377bd775510b73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_02:2 -> audio/generated/de-DE/dialogues/3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6915398d-c09c-5b6e-bea6-2ff90bad6428', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a55dbaa51933842c5d941e4a87e1db94d61d06e1e517ab03e5901f70416a275c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eedd0bad-725f-54bf-99b4-a55a57b5c7c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6915398d-c09c-5b6e-bea6-2ff90bad6428', 1), 'a55dbaa51933842c5d941e4a87e1db94d61d06e1e517ab03e5901f70416a275c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8.mp3', 679, '2026-09-14 13:31:00.814062', '658c4f5d39270930a6b8b641d3a162bbbe4986204ef5d9caa9286d04f32ab6b5', 'validated', '{"audio_key":"3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8","entity_key":"d_classroom_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"658c4f5d39270930a6b8b641d3a162bbbe4986204ef5d9caa9286d04f32ab6b5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:2 -> audio/generated/de-DE/dialogues/3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b173cfca-81ea-5bb1-acba-9f2768b9d3f7', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31ced1de41ecdd4a27e533f8f70f3c137c613b7614dcc98273ea29c704c84b3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc6e394e-c411-5737-b10a-e7283884a87e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b173cfca-81ea-5bb1-acba-9f2768b9d3f7', 1), '31ced1de41ecdd4a27e533f8f70f3c137c613b7614dcc98273ea29c704c84b3a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451.mp3', 1567, '2026-09-14 13:31:01.879960', '0c68f101ba3ee28ad8b451bb9013791643d64bdbee8e3a7146419fa4183cb5c3', 'validated', '{"audio_key":"3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451","entity_key":"d_numbers_0_10_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0c68f101ba3ee28ad8b451bb9013791643d64bdbee8e3a7146419fa4183cb5c3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:1 -> audio/generated/de-DE/dialogues/3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e06e67b-4ea8-508f-a279-13c54ee9c8ff', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '717380564b4b354e03c13c23ed3a6333cc8ad98b07fd853b424165a138d6e9cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f39c1481-0360-53f7-aa8f-b66c892aedcd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e06e67b-4ea8-508f-a279-13c54ee9c8ff', 1), '717380564b4b354e03c13c23ed3a6333cc8ad98b07fd853b424165a138d6e9cc',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d.mp3', 1071, '2026-09-14 13:31:02.909938', 'bcc05661e6a0e0c3dcb695e4746f7b7a9ee7c12928bebcb35b45034479725d96', 'validated', '{"audio_key":"3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d","entity_key":"d_alphabet_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bcc05661e6a0e0c3dcb695e4746f7b7a9ee7c12928bebcb35b45034479725d96","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:3 -> audio/generated/de-DE/dialogues/3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35f08226-679a-5c4b-b938-4f0d1eb4e41d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ed7d1d995fafefcf2faaa456fea0746c7ac639d695f18e97031e8dab221a0ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61e20d1f-a614-5161-a29d-a76453a0b701', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35f08226-679a-5c4b-b938-4f0d1eb4e41d', 1), '5ed7d1d995fafefcf2faaa456fea0746c7ac639d695f18e97031e8dab221a0ea',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2.mp3', 1201, '2026-09-14 13:31:03.975342', '4cccd668cee313eae70e4ca0e4a547077d4632636859e46ac910a31099e00feb', 'validated', '{"audio_key":"3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2","entity_key":"d_numbers_0_10_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4cccd668cee313eae70e4ca0e4a547077d4632636859e46ac910a31099e00feb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:3 -> audio/generated/de-DE/dialogues/3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28e15c67-fd8b-5d8a-b54e-2d871d3331ac', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1d516fec76cf45a5884bfae289fdfd2a910225b70559a923cdf4ee9806ca261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71fad5cb-e47f-5589-8406-4c4122bf590f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28e15c67-fd8b-5d8a-b54e-2d871d3331ac', 1), 'a1d516fec76cf45a5884bfae289fdfd2a910225b70559a923cdf4ee9806ca261',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b.mp3', 1332, '2026-09-14 13:31:05.002604', '2a17dcfb7ce1124a32312281914178a806853e5e8e2732330780290cf1563233', 'validated', '{"audio_key":"3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b","entity_key":"d_first_objects_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2a17dcfb7ce1124a32312281914178a806853e5e8e2732330780290cf1563233","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_phone:3 -> audio/generated/de-DE/dialogues/4101cd64ce491118e4e53a6bfd04fcec00eaf648c0c80e71a117be2da15efbe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d60a96a9-28b1-5410-870e-1bd6a16d357e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_phone:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99b1e727-6b4c-5d18-b4ed-e4dc83570011', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d60a96a9-28b1-5410-870e-1bd6a16d357e', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4101cd64ce491118e4e53a6bfd04fcec00eaf648c0c80e71a117be2da15efbe6.mp3', 1436, '2026-09-14 13:31:06.038095', 'd78a13074e0b30261e0a2b51f6e3c16d3c6b4692ff634e25955ad07da9ad4180', 'validated', '{"audio_key":"4101cd64ce491118e4e53a6bfd04fcec00eaf648c0c80e71a117be2da15efbe6","entity_key":"d_de_de-real-life-numbers_phone:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d78a13074e0b30261e0a2b51f6e3c16d3c6b4692ff634e25955ad07da9ad4180","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4101cd64ce491118e4e53a6bfd04fcec00eaf648c0c80e71a117be2da15efbe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_repair:1 -> audio/generated/de-DE/dialogues/44b1f96deddd8c7452df19c7a20dcfe175cb346abad695db07d84fb0863f75e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1833538e-6bb2-5756-b2bc-1afd51256adb', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_repair:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c97675919c5415fb4c7f4eb1aaaffe4beca754987f6ed65ea7425727718b841e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c009b7e-9dac-5e70-b527-cee12aab28e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1833538e-6bb2-5756-b2bc-1afd51256adb', 1), 'c97675919c5415fb4c7f4eb1aaaffe4beca754987f6ed65ea7425727718b841e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/44b1f96deddd8c7452df19c7a20dcfe175cb346abad695db07d84fb0863f75e0.mp3', 1436, '2026-09-14 13:31:07.041528', 'bcd4577a0e51d3ec753385e883bf88cf15c6afbe411d1833683c753b5e62ff76', 'validated', '{"audio_key":"44b1f96deddd8c7452df19c7a20dcfe175cb346abad695db07d84fb0863f75e0","entity_key":"d_de_ready_repair:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bcd4577a0e51d3ec753385e883bf88cf15c6afbe411d1833683c753b5e62ff76","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/44b1f96deddd8c7452df19c7a20dcfe175cb346abad695db07d84fb0863f75e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:1 -> audio/generated/de-DE/dialogues/4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d3c0549-1a3b-55ab-81aa-64b8ee4ae778', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37fb0c1f957c14e26455789ff8dbab298b80ca619a6abbdf3a2bff9d19b2f3ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7ac6e56-0a6a-5d6b-87a9-8cc9d8c15338', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d3c0549-1a3b-55ab-81aa-64b8ee4ae778', 1), '37fb0c1f957c14e26455789ff8dbab298b80ca619a6abbdf3a2bff9d19b2f3ab',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22.mp3', 1567, '2026-09-14 13:31:08.069929', 'c72661a3e37d018857ee970425e8b81f2ece6e9d4b1cefff8aa43c908a0927da', 'validated', '{"audio_key":"4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22","entity_key":"d_first_conversation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c72661a3e37d018857ee970425e8b81f2ece6e9d4b1cefff8aa43c908a0927da","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:2 -> audio/generated/de-DE/dialogues/4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2408973f-ad8d-55cd-bce5-5d15c1c90da6', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a41b066fcdc62c0d089d0936410c401e15d786e66eeaebfc74a2a605e37cbaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34cb8f41-ad35-5fd1-911a-87d6eac3d825', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2408973f-ad8d-55cd-bce5-5d15c1c90da6', 1), '0a41b066fcdc62c0d089d0936410c401e15d786e66eeaebfc74a2a605e37cbaf',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e.mp3', 1097, '2026-09-14 13:31:09.047673', 'b69b8647070fc138ac03f41f684264e95540dbbdef9379924c7279babbf64c13', 'validated', '{"audio_key":"4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e","entity_key":"d_survival_words_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b69b8647070fc138ac03f41f684264e95540dbbdef9379924c7279babbf64c13","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:4 -> audio/generated/de-DE/dialogues/50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16578cdc-b91c-52df-baad-3164c4bb08ee', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35f8c26b9ff3242586c5d52c6ce7bd9607b8b340b504787a1afd0cb74721dbf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a404025-554b-5598-940e-95fb788bc86f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16578cdc-b91c-52df-baad-3164c4bb08ee', 1), '35f8c26b9ff3242586c5d52c6ce7bd9607b8b340b504787a1afd0cb74721dbf9',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a.mp3', 1097, '2026-09-14 13:31:10.073010', '625613cac8a840b2d780d5fa7a05abb6d48dde9cd1930c866bb0b8b028b8abcb', 'validated', '{"audio_key":"50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a","entity_key":"d_alphabet_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"625613cac8a840b2d780d5fa7a05abb6d48dde9cd1930c866bb0b8b028b8abcb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:2 -> audio/generated/de-DE/dialogues/5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5722aa98-b3b5-5ead-87ed-5f05cf75c800', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8049d4665b66abef7e1e5d5614aad81f585d9edad0391f890d340773a73c9938'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b799a734-98f0-5c6c-89f5-ba3d12972c21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5722aa98-b3b5-5ead-87ed-5f05cf75c800', 1), '8049d4665b66abef7e1e5d5614aad81f585d9edad0391f890d340773a73c9938',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3.mp3', 1253, '2026-09-14 13:31:11.033408', 'f1984d42450643eb0b16f12f15633677fdea733785c93b5c38caf87b5ad8f2e2', 'validated', '{"audio_key":"5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3","entity_key":"d_alphabet_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f1984d42450643eb0b16f12f15633677fdea733785c93b5c38caf87b5ad8f2e2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_phone:1 -> audio/generated/de-DE/dialogues/5571e9d5829baf8a2abfa8eb1a2f40946ece67345afaeb9d835866cfa23484a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b02c4e48-0086-578f-ab11-447b7fa9071a', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_phone:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98058d2c2947148adfbb22a3ab5e5d58a03ecb740b36c738afb23339fa2b3e8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ce4a6ce-966f-511c-9068-7b791bc86dbb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b02c4e48-0086-578f-ab11-447b7fa9071a', 1), '98058d2c2947148adfbb22a3ab5e5d58a03ecb740b36c738afb23339fa2b3e8d',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5571e9d5829baf8a2abfa8eb1a2f40946ece67345afaeb9d835866cfa23484a2.mp3', 1671, '2026-09-14 13:31:12.062445', 'ee6e5b14299b851c73752ba7c71d1b64964b6974f419637944f1d6c3ef090622', 'validated', '{"audio_key":"5571e9d5829baf8a2abfa8eb1a2f40946ece67345afaeb9d835866cfa23484a2","entity_key":"d_de_de-real-life-numbers_phone:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ee6e5b14299b851c73752ba7c71d1b64964b6974f419637944f1d6c3ef090622","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5571e9d5829baf8a2abfa8eb1a2f40946ece67345afaeb9d835866cfa23484a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:1 -> audio/generated/de-DE/dialogues/560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e604c945-5095-5513-a35e-29738a778f6c', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31bdc5cc-bcdd-56f6-81a5-1e513162e96e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e604c945-5095-5513-a35e-29738a778f6c', 1), '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7.mp3', 1018, '2026-09-14 13:31:13.057107', '1a4277c7dc18fd5b79a7a4fed8a3e06c8b094edfbd34bafbda3749ca312656d4', 'validated', '{"audio_key":"560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7","entity_key":"d_my_name_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1a4277c7dc18fd5b79a7a4fed8a3e06c8b094edfbd34bafbda3749ca312656d4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:1 -> audio/generated/de-DE/dialogues/5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4303eb17-cad3-52ec-9b50-c279458ff7cb', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bcad5aefa5ad86431bbaa09adb0595496927bdc323dd914030d82f6b05f501'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c68e88d-7f72-5dac-87de-b39ef9b92de7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4303eb17-cad3-52ec-9b50-c279458ff7cb', 1), 'b1bcad5aefa5ad86431bbaa09adb0595496927bdc323dd914030d82f6b05f501',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635.mp3', 1436, '2026-09-14 13:31:14.132224', '7ee4c039ad378fe193250eef43892360c6799e27e6680088665266d1dcae3855', 'validated', '{"audio_key":"5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635","entity_key":"d_numbers_0_10_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7ee4c039ad378fe193250eef43892360c6799e27e6680088665266d1dcae3855","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:2 -> audio/generated/de-DE/dialogues/5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dceca160-933f-562a-ae23-5b35b616e287', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad515e90592a2bb78718165e01707a1a1f0db99be40b787c3bb4994bf348dafa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d7e8f21-f464-5390-b09f-fed1bddfeb4f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dceca160-933f-562a-ae23-5b35b616e287', 1), 'ad515e90592a2bb78718165e01707a1a1f0db99be40b787c3bb4994bf348dafa',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857.mp3', 1332, '2026-09-14 13:31:15.121419', 'e68f0ed7eba0f17c27efb8e0beacbdc2f9d5bc773b9bc7ab588f92a27ae5aa2d', 'validated', '{"audio_key":"5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857","entity_key":"d_first_conversation_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"e68f0ed7eba0f17c27efb8e0beacbdc2f9d5bc773b9bc7ab588f92a27ae5aa2d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_meet:3 -> audio/generated/de-DE/dialogues/5e08f0204a837b6b9ee8778bf0cab5d314a2b5fc1dd70ce08363a902372fb6d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be694292-d2f5-5702-80b0-9601ca850e1d', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_meet:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f22e95182a83d53e548ff495c5093369b0f69262a12e0f41469065b9a923e22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a381038a-a167-53e2-85e8-a57dc9f3d72d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be694292-d2f5-5702-80b0-9601ca850e1d', 1), '3f22e95182a83d53e548ff495c5093369b0f69262a12e0f41469065b9a923e22',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5e08f0204a837b6b9ee8778bf0cab5d314a2b5fc1dd70ce08363a902372fb6d3.mp3', 1201, '2026-09-14 13:31:16.100210', '63eabdf4f8ce3eb23c59b8ee242be1ad6cbb2f1acb102adbe09ff0c7be084c52', 'validated', '{"audio_key":"5e08f0204a837b6b9ee8778bf0cab5d314a2b5fc1dd70ce08363a902372fb6d3","entity_key":"d_de_de-real-world-gate_meet:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63eabdf4f8ce3eb23c59b8ee242be1ad6cbb2f1acb102adbe09ff0c7be084c52","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5e08f0204a837b6b9ee8778bf0cab5d314a2b5fc1dd70ce08363a902372fb6d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_public_task:1 -> audio/generated/de-DE/dialogues/605cec5e5eb0e4d03c81031099a8ec9752624c75a482b3b22d40578947ba55c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b704aeb2-f450-5103-9d61-16db94ed0dc4', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_public_task:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98058d2c2947148adfbb22a3ab5e5d58a03ecb740b36c738afb23339fa2b3e8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea7a63d0-7a10-5415-8bbc-192f997a0b92', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b704aeb2-f450-5103-9d61-16db94ed0dc4', 1), '98058d2c2947148adfbb22a3ab5e5d58a03ecb740b36c738afb23339fa2b3e8d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/605cec5e5eb0e4d03c81031099a8ec9752624c75a482b3b22d40578947ba55c4.mp3', 1619, '2026-09-14 13:31:17.157470', '972e13d551880e7ad0c95b3540a3f8e71a31f2144abde8d459f8db0ab14a74a7', 'validated', '{"audio_key":"605cec5e5eb0e4d03c81031099a8ec9752624c75a482b3b22d40578947ba55c4","entity_key":"d_de_de-real-world-gate_public_task:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"972e13d551880e7ad0c95b3540a3f8e71a31f2144abde8d459f8db0ab14a74a7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/605cec5e5eb0e4d03c81031099a8ec9752624c75a482b3b22d40578947ba55c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_02:1 -> audio/generated/de-DE/dialogues/633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0fb97d0-51a0-597f-a936-580b958316a3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0f7102050e3f7b7048131aca3d71915df4cf63bf76db206051c7522227971fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9423022a-89b5-5daf-b0c5-2278011c5ab0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0fb97d0-51a0-597f-a936-580b958316a3', 1), 'b0f7102050e3f7b7048131aca3d71915df4cf63bf76db206051c7522227971fa',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86.mp3', 1280, '2026-09-14 13:31:18.164522', '2a7ce370de8f7c5bfebb50f011ca0bbe55b0d5ae2d0f01ca2af0b5be8b9f3de8', 'validated', '{"audio_key":"633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86","entity_key":"d_letter_names_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2a7ce370de8f7c5bfebb50f011ca0bbe55b0d5ae2d0f01ca2af0b5be8b9f3de8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:1 -> audio/generated/de-DE/dialogues/63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7565a41f-bfc8-5eb2-b75b-855307259c66', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '029dea3345e9e3b144c90e835239ba4dc17f91d5886146a1641050baa4ca74b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9da1f533-207f-50f8-aa73-88065522a2bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7565a41f-bfc8-5eb2-b75b-855307259c66', 1), '029dea3345e9e3b144c90e835239ba4dc17f91d5886146a1641050baa4ca74b0',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522.mp3', 1436, '2026-09-14 13:31:19.529082', '1ce56fa9d5c3b1b7bd0048f0c298ad8658187044bf87e793a12ac223bcba43e5', 'validated', '{"audio_key":"63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522","entity_key":"d_numbers_0_10_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1ce56fa9d5c3b1b7bd0048f0c298ad8658187044bf87e793a12ac223bcba43e5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:4 -> audio/generated/de-DE/dialogues/646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d49ba5c4-e53f-5ed9-892a-ddd2bf635f7a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e673c752-8282-54b9-ba82-a29f05045002', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d49ba5c4-e53f-5ed9-892a-ddd2bf635f7a', 1), 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a.mp3', 783, '2026-09-14 13:31:20.490666', 'a83ec2e9e2e3090c415fb0d161a85482a65b637cbe92a44fba1c1837ccc01e8b', 'validated', '{"audio_key":"646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a","entity_key":"d_alphabet_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a83ec2e9e2e3090c415fb0d161a85482a65b637cbe92a44fba1c1837ccc01e8b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_meaning_help:2 -> audio/generated/de-DE/dialogues/6515f5288cd73d6ec051081c65ef0063d40ea07b92dc82d1f9b9d435e20952bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b12a72b-5738-528b-9e92-ce8987ef07a4', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_meaning_help:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e705aa84-bce7-5adb-8c2d-a56ffc06cea1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b12a72b-5738-528b-9e92-ce8987ef07a4', 1), '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6515f5288cd73d6ec051081c65ef0063d40ea07b92dc82d1f9b9d435e20952bf.mp3', 966, '2026-09-14 13:31:21.501898', '6a95549292658716e79e3c2fd7cb1b1bed2afd5e82734fc407f58657291d2702', 'validated', '{"audio_key":"6515f5288cd73d6ec051081c65ef0063d40ea07b92dc82d1f9b9d435e20952bf","entity_key":"d_de_meaning_help:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6a95549292658716e79e3c2fd7cb1b1bed2afd5e82734fc407f58657291d2702","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6515f5288cd73d6ec051081c65ef0063d40ea07b92dc82d1f9b9d435e20952bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_phone:2 -> audio/generated/de-DE/dialogues/657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3d89c50-df1b-5df6-85a4-94171f692ce8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_phone:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6af18db6-e6c3-5850-b65f-d1de9028e07c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3d89c50-df1b-5df6-85a4-94171f692ce8', 1), '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1.mp3', 2951, '2026-09-14 13:31:22.675140', '5f3334ae296a358ac64906e1cbb774fb30d4c9894b85100182ccc85de47dab34', 'validated', '{"audio_key":"657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1","entity_key":"d_de_de-real-life-numbers_phone:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5f3334ae296a358ac64906e1cbb774fb30d4c9894b85100182ccc85de47dab34","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_phone:4 -> audio/generated/de-DE/dialogues/657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b473ccb-afc3-5eb8-8830-e17115e2d182', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_phone:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2ba719d-e562-56ef-80f4-fd9a104053e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b473ccb-afc3-5eb8-8830-e17115e2d182', 1), '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1.mp3', 2951, '2026-09-14 13:31:22.675140', '5f3334ae296a358ac64906e1cbb774fb30d4c9894b85100182ccc85de47dab34', 'validated', '{"audio_key":"657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1","entity_key":"d_de_de-real-life-numbers_phone:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5f3334ae296a358ac64906e1cbb774fb30d4c9894b85100182ccc85de47dab34","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/657b81099685ff46e4afb7f6409e09d6983821498a6f6d234c545b83748dedb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:4 -> audio/generated/de-DE/dialogues/6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb0cf94c-d79b-5a0a-b7dd-0c679950e151', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239cbfd104b3b58e4b03913d78805daec4b67840d2964045e0024989c83a18a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8eb4993-8168-5962-86e9-cfedbd8f4db1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb0cf94c-d79b-5a0a-b7dd-0c679950e151', 1), '239cbfd104b3b58e4b03913d78805daec4b67840d2964045e0024989c83a18a2',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2.mp3', 835, '2026-09-14 13:31:23.634004', '54c0281ada220b8e84685ddb9f94647bcfbf83271f9ef3a1364d03dc1cd4cc09', 'validated', '{"audio_key":"6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2","entity_key":"d_survival_words_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"54c0281ada220b8e84685ddb9f94647bcfbf83271f9ef3a1364d03dc1cd4cc09","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:4 -> audio/generated/de-DE/dialogues/69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f6aebc5-183f-5b27-adb6-12b55297b67c', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74cbdcdb-f0fa-58d5-a5a1-bbdd685be10b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f6aebc5-183f-5b27-adb6-12b55297b67c', 1), 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc.mp3', 1018, '2026-09-14 13:31:24.581133', 'f3195915d4542c5f4d1386aa02b4ba750efbb8598fc147230068bc8819887ac4', 'validated', '{"audio_key":"69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc","entity_key":"d_first_greetings_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f3195915d4542c5f4d1386aa02b4ba750efbb8598fc147230068bc8819887ac4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_repair:2 -> audio/generated/de-DE/dialogues/6f4a8fa561abaedec9b0e98e7e0cf8cb63c43c98c226521e34de81e10ccc2d2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fd375c2-9f84-573d-beee-51350e6061a4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_repair:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31ff8153-5270-538a-ac8b-58a92f3c1e93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fd375c2-9f84-573d-beee-51350e6061a4', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6f4a8fa561abaedec9b0e98e7e0cf8cb63c43c98c226521e34de81e10ccc2d2c.mp3', 1149, '2026-09-14 13:31:25.585286', '1a89ad0c831e7a4efcfadd03a976829ba5c938449fc56eb83602ca3d06dcd4fe', 'validated', '{"audio_key":"6f4a8fa561abaedec9b0e98e7e0cf8cb63c43c98c226521e34de81e10ccc2d2c","entity_key":"d_de_ready_repair:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1a89ad0c831e7a4efcfadd03a976829ba5c938449fc56eb83602ca3d06dcd4fe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6f4a8fa561abaedec9b0e98e7e0cf8cb63c43c98c226521e34de81e10ccc2d2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_price_day:4 -> audio/generated/de-DE/dialogues/750ac30ddc3284196f26165ccd3978e41b7f751a9f2bb3ee37d52bac5fc31154.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d1c40fb-043a-5264-9674-046fa3a78b3c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_price_day:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '436a4f7e551efadd9dc21acdc2abacdd3a87f3dca38416c18c3ffb45b902751c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f7713cf-9b62-53b7-8bee-2885e90c02d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d1c40fb-043a-5264-9674-046fa3a78b3c', 1), '436a4f7e551efadd9dc21acdc2abacdd3a87f3dca38416c18c3ffb45b902751c',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/750ac30ddc3284196f26165ccd3978e41b7f751a9f2bb3ee37d52bac5fc31154.mp3', 1071, '2026-09-14 13:31:26.620649', 'eeb234ff3bc1363585c17239089e8bd20f33c743e757ea880c1a2c319f463d42', 'validated', '{"audio_key":"750ac30ddc3284196f26165ccd3978e41b7f751a9f2bb3ee37d52bac5fc31154","entity_key":"d_de_de-real-life-numbers_price_day:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"eeb234ff3bc1363585c17239089e8bd20f33c743e757ea880c1a2c319f463d42","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/750ac30ddc3284196f26165ccd3978e41b7f751a9f2bb3ee37d52bac5fc31154.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:4 -> audio/generated/de-DE/dialogues/7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0b0dc56-83f6-5e4f-b11e-33078a26d5f8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6afc1c3963c13e4f27f5411b4f6c331e80e23e715ff9e9b9227b42c643321200'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92a91e73-ca1c-5b59-a22c-80848ef5bbd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0b0dc56-83f6-5e4f-b11e-33078a26d5f8', 1), '6afc1c3963c13e4f27f5411b4f6c331e80e23e715ff9e9b9227b42c643321200',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342.mp3', 862, '2026-09-14 13:31:27.633835', '3f8a572a3433ca738c1e4107df3e92cf0a8abd85a772af27418600ea73f8446e', 'validated', '{"audio_key":"7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342","entity_key":"d_my_name_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3f8a572a3433ca738c1e4107df3e92cf0a8abd85a772af27418600ea73f8446e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_feeling_family:4 -> audio/generated/de-DE/dialogues/79899f323c274e302395f1c270e24a07b06ab2285447ef7e4cfd2daa435c7d75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02ac238e-66a0-55d6-af1f-437fec885c04', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_feeling_family:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbe009ad-a770-5011-b4ec-f4de6dbdba1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02ac238e-66a0-55d6-af1f-437fec885c04', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/79899f323c274e302395f1c270e24a07b06ab2285447ef7e4cfd2daa435c7d75.mp3', 1149, '2026-09-14 13:31:28.593947', '47531861efca544be8f01564c39b15908922b7cbf785047655f7d720caa545cb', 'validated', '{"audio_key":"79899f323c274e302395f1c270e24a07b06ab2285447ef7e4cfd2daa435c7d75","entity_key":"d_de_de-about-me_feeling_family:4","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47531861efca544be8f01564c39b15908922b7cbf785047655f7d720caa545cb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/79899f323c274e302395f1c270e24a07b06ab2285447ef7e4cfd2daa435c7d75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:3 -> audio/generated/de-DE/dialogues/7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d52df1e-aeb6-5de8-9306-755f6b3634ce', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd02400815672fb467d9aa5293a6c11aa7d96ad126fe0657f1010f347726f7ca5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46b9c680-a8f4-5312-b8bf-31f5ba32b4cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d52df1e-aeb6-5de8-9306-755f6b3634ce', 1), 'd02400815672fb467d9aa5293a6c11aa7d96ad126fe0657f1010f347726f7ca5',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d.mp3', 966, '2026-09-14 13:31:29.653111', '7a9cd96f2bce35218e9e818f4c62b8c25281822f2a00b09c0059d5008f0b30fc', 'validated', '{"audio_key":"7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d","entity_key":"d_numbers_0_10_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7a9cd96f2bce35218e9e818f4c62b8c25281822f2a00b09c0059d5008f0b30fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:4 -> audio/generated/de-DE/dialogues/7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8340ff2-b3e4-5a69-99ca-da9f58c805e0', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6afc1c3963c13e4f27f5411b4f6c331e80e23e715ff9e9b9227b42c643321200'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bc06208-b91b-550f-a5ae-d760ae26761d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8340ff2-b3e4-5a69-99ca-da9f58c805e0', 1), '6afc1c3963c13e4f27f5411b4f6c331e80e23e715ff9e9b9227b42c643321200',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9.mp3', 1018, '2026-09-14 13:31:30.588539', '93b8fe01794f7a0e743a3a39b6f39dd3d7d358d7442b6c31dc20688242eb4448', 'validated', '{"audio_key":"7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9","entity_key":"d_first_conversation_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"93b8fe01794f7a0e743a3a39b6f39dd3d7d358d7442b6c31dc20688242eb4448","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_origin_age:2 -> audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f910bf9-c306-51b9-99f0-94021e69e458', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_origin_age:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd433b7d-00ff-5b1b-a532-e09a4d1851e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f910bf9-c306-51b9-99f0-94021e69e458', 1), '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3', 731, '2026-09-14 13:31:31.556403', '379e37f0d0db2bfb40f76697b780c0496cd8a8d05027ea886136f9966c0dbda2', 'validated', '{"audio_key":"7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294","entity_key":"d_de_de-about-me_origin_age:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"379e37f0d0db2bfb40f76697b780c0496cd8a8d05027ea886136f9966c0dbda2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:2 -> audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2db4f847-fd81-555a-bba4-a88f05265de6', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('371d6d9e-0151-580f-9505-eb76be1f7329', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2db4f847-fd81-555a-bba4-a88f05265de6', 1), '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3', 731, '2026-09-14 13:31:31.556403', '379e37f0d0db2bfb40f76697b780c0496cd8a8d05027ea886136f9966c0dbda2', 'validated', '{"audio_key":"7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294","entity_key":"d_first_greetings_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"379e37f0d0db2bfb40f76697b780c0496cd8a8d05027ea886136f9966c0dbda2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_form:3 -> audio/generated/de-DE/dialogues/7fc308392c3682cf2e29a2c9432d80a9bbe5a9ed90967963457d6121ad3a356e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5da19b36-c812-5729-9779-1ce66f47eb0a', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_form:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1597a7b67dd371ae51742304ca7adc5d71323e9e83ce057717e97ad0b18dc337'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75e2ed82-3708-51ff-b6de-cd2d11daaafb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5da19b36-c812-5729-9779-1ce66f47eb0a', 1), '1597a7b67dd371ae51742304ca7adc5d71323e9e83ce057717e97ad0b18dc337',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7fc308392c3682cf2e29a2c9432d80a9bbe5a9ed90967963457d6121ad3a356e.mp3', 731, '2026-09-14 13:31:32.481436', 'fedcc3a1a64ca2e062e3968b9bbeff51012113e374b9efae78328540e58de516', 'validated', '{"audio_key":"7fc308392c3682cf2e29a2c9432d80a9bbe5a9ed90967963457d6121ad3a356e","entity_key":"d_de_de-forms-signs_form:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fedcc3a1a64ca2e062e3968b9bbeff51012113e374b9efae78328540e58de516","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7fc308392c3682cf2e29a2c9432d80a9bbe5a9ed90967963457d6121ad3a356e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_meaning_help:4 -> audio/generated/de-DE/dialogues/80393272ce62dff7298df0e1c4bed2c995ec69ce8ae05326cb2b4cc5eee40ad2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a443f1cb-0e1b-57ef-b23f-0a81baf79d29', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_meaning_help:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61eb55e7-4743-54f6-8927-a5bd6d78b309', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a443f1cb-0e1b-57ef-b23f-0a81baf79d29', 1), '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/80393272ce62dff7298df0e1c4bed2c995ec69ce8ae05326cb2b4cc5eee40ad2.mp3', 1280, '2026-09-14 13:31:33.542771', '30543f81daadda789062c7a6a61543b13b9e8a7234f132bf9daa3d645191e879', 'validated', '{"audio_key":"80393272ce62dff7298df0e1c4bed2c995ec69ce8ae05326cb2b4cc5eee40ad2","entity_key":"d_de_meaning_help:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"30543f81daadda789062c7a6a61543b13b9e8a7234f132bf9daa3d645191e879","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/80393272ce62dff7298df0e1c4bed2c995ec69ce8ae05326cb2b4cc5eee40ad2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_meaning_help:6 -> audio/generated/de-DE/dialogues/809e35ea394d5f004f8f0b5865babe0deaca576ba437607dab704bc55a5efd12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06b5bd39-5632-5a01-89ea-821475b31f71', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_meaning_help:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56919c742a6c2087f5b8c6f9e604d6e65a7af013335d8252d8389b8cdffbe00c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('425e0f03-eca6-5b18-b553-88a8ae2af440', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06b5bd39-5632-5a01-89ea-821475b31f71', 1), '56919c742a6c2087f5b8c6f9e604d6e65a7af013335d8252d8389b8cdffbe00c',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/809e35ea394d5f004f8f0b5865babe0deaca576ba437607dab704bc55a5efd12.mp3', 1488, '2026-09-14 13:31:34.584530', '5e3793d4861190541b6071c7d4419464f2bd776a8270d1df7a5d37eb7d2de1ce', 'validated', '{"audio_key":"809e35ea394d5f004f8f0b5865babe0deaca576ba437607dab704bc55a5efd12","entity_key":"d_de_meaning_help:6","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5e3793d4861190541b6071c7d4419464f2bd776a8270d1df7a5d37eb7d2de1ce","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/809e35ea394d5f004f8f0b5865babe0deaca576ba437607dab704bc55a5efd12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:4 -> audio/generated/de-DE/dialogues/82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a8cab77-9c48-526f-91a1-97ac1a27c0d1', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7f2bb64-cfc8-5dbe-8022-f0a527ff07d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a8cab77-9c48-526f-91a1-97ac1a27c0d1', 1), '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b.mp3', 1332, '2026-09-14 13:31:35.584108', 'cf380080fabfe00bbd4d5c9092cc7cc27754a4635b537edc6b3b2e81342483cd', 'validated', '{"audio_key":"82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b","entity_key":"d_first_greetings_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"cf380080fabfe00bbd4d5c9092cc7cc27754a4635b537edc6b3b2e81342483cd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:2 -> audio/generated/de-DE/dialogues/842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f2d119b0-8c45-58d4-89e9-f78c82c0cbef', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b29cc4db58dcb56c4555e244fbbc8bdcdd95ce6c5b34cbfd71ca99809729469'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02212cd3-46e7-5e24-9f8b-3174a8eb3348', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f2d119b0-8c45-58d4-89e9-f78c82c0cbef', 1), '2b29cc4db58dcb56c4555e244fbbc8bdcdd95ce6c5b34cbfd71ca99809729469',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919.mp3', 783, '2026-09-14 13:31:36.515309', '069c82113c55daad2c14d41e5366ae436991948b21bf1535e8838ed6d688a258', 'validated', '{"audio_key":"842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919","entity_key":"d_alphabet_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"069c82113c55daad2c14d41e5366ae436991948b21bf1535e8838ed6d688a258","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:3 -> audio/generated/de-DE/dialogues/84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('78bb43b3-1511-5fcb-9728-370dd58d419a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb91d2ea-9df1-5f35-a416-3e672d113354', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('78bb43b3-1511-5fcb-9728-370dd58d419a', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7.mp3', 966, '2026-09-14 13:31:37.503455', '3f88bd7e71afc564db6bf60e9921698d5f9131828ad2423a54e1be3822c5ff83', 'validated', '{"audio_key":"84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7","entity_key":"d_first_conversation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3f88bd7e71afc564db6bf60e9921698d5f9131828ad2423a54e1be3822c5ff83","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:3 -> audio/generated/de-DE/dialogues/875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70f3d5c4-c28f-51d3-9a2c-109c4d44e996', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78354d2d-686b-5ca9-9459-8167786d252f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70f3d5c4-c28f-51d3-9a2c-109c4d44e996', 1), 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95.mp3', 783, '2026-09-14 13:31:38.452039', 'a3ea66dc51343370b2285253b8dfd3ba76d42f57b957968deccca810f4525318', 'validated', '{"audio_key":"875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95","entity_key":"d_survival_words_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a3ea66dc51343370b2285253b8dfd3ba76d42f57b957968deccca810f4525318","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_sign:3 -> audio/generated/de-DE/dialogues/8861c3407d721a192f7fce33170bb623f9e2dda90ae62cccbc90929a1da92f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8988ecae-597c-5898-a419-16985c91daeb', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_sign:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea7b7431-0b43-5146-89f1-cc87d03e1567', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8988ecae-597c-5898-a419-16985c91daeb', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8861c3407d721a192f7fce33170bb623f9e2dda90ae62cccbc90929a1da92f3e.mp3', 1253, '2026-09-14 13:31:39.430076', '9d1433a18ab2453b5178b2f9c369862655ac7b446ae33e90c5a657104d90d58e', 'validated', '{"audio_key":"8861c3407d721a192f7fce33170bb623f9e2dda90ae62cccbc90929a1da92f3e","entity_key":"d_de_de-forms-signs_sign:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9d1433a18ab2453b5178b2f9c369862655ac7b446ae33e90c5a657104d90d58e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8861c3407d721a192f7fce33170bb623f9e2dda90ae62cccbc90929a1da92f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_02:4 -> audio/generated/de-DE/dialogues/8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('41675f99-d995-5121-b230-80d6b43158fb', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d416a091-e504-54d0-9fff-b9851cfd9a8a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('41675f99-d995-5121-b230-80d6b43158fb', 1), 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1.mp3', 862, '2026-09-14 13:31:40.372756', '56159ac3905ee8464f3314ecfdad184183213e85329ee7af58e30d44b415855e', 'validated', '{"audio_key":"8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1","entity_key":"d_classroom_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"56159ac3905ee8464f3314ecfdad184183213e85329ee7af58e30d44b415855e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_origin_age:3 -> audio/generated/de-DE/dialogues/89d5054bb788471fbe9368af3bacf95c862d2197568adb3e9901719ececac1eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('884c9b60-2c4d-558a-999d-602301d3520d', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_origin_age:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f22e95182a83d53e548ff495c5093369b0f69262a12e0f41469065b9a923e22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('697ab1f1-9565-5c7d-a1e6-6aa04134af89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('884c9b60-2c4d-558a-999d-602301d3520d', 1), '3f22e95182a83d53e548ff495c5093369b0f69262a12e0f41469065b9a923e22',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89d5054bb788471fbe9368af3bacf95c862d2197568adb3e9901719ececac1eb.mp3', 1149, '2026-09-14 13:31:41.384477', 'c5402f6c38a47fbb2444d0693215e4ccd9274b1f20dd7335b3608d5ec7ce1059', 'validated', '{"audio_key":"89d5054bb788471fbe9368af3bacf95c862d2197568adb3e9901719ececac1eb","entity_key":"d_de_de-about-me_origin_age:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c5402f6c38a47fbb2444d0693215e4ccd9274b1f20dd7335b3608d5ec7ce1059","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/89d5054bb788471fbe9368af3bacf95c862d2197568adb3e9901719ececac1eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:1 -> audio/generated/de-DE/dialogues/8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c262b6c-b549-56f9-aa96-50beb674acc5', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f804e98e-8822-5d3e-9b34-7b8ef36dd018', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c262b6c-b549-56f9-aa96-50beb674acc5', 1), '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744.mp3', 1253, '2026-09-14 13:31:42.455905', 'f8e9bebc810b840c2a0a815911609ef4c44535de0033a400047643b79382b1a5', 'validated', '{"audio_key":"8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744","entity_key":"d_survival_words_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f8e9bebc810b840c2a0a815911609ef4c44535de0033a400047643b79382b1a5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_form:4 -> audio/generated/de-DE/dialogues/8a4bcef6a0e7d6cbfb2c972f3c57e17d04c19a637b72342eab384c43351494a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9a66190-1a60-5710-a1a0-7f9f6d1378e6', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_form:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff155049-2cfe-55f6-898c-6005eac1d0ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9a66190-1a60-5710-a1a0-7f9f6d1378e6', 1), 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8a4bcef6a0e7d6cbfb2c972f3c57e17d04c19a637b72342eab384c43351494a9.mp3', 1384, '2026-09-14 13:31:43.460917', '666c1dc00370ec1acec733dc8ceff61dce727b6f13de9cc4b13cbf2268f3f182', 'validated', '{"audio_key":"8a4bcef6a0e7d6cbfb2c972f3c57e17d04c19a637b72342eab384c43351494a9","entity_key":"d_de_de-forms-signs_form:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"666c1dc00370ec1acec733dc8ceff61dce727b6f13de9cc4b13cbf2268f3f182","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8a4bcef6a0e7d6cbfb2c972f3c57e17d04c19a637b72342eab384c43351494a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_public_task:3 -> audio/generated/de-DE/dialogues/8c3300cdb4d1b550f57467371d4aba47e9b5807f576356e102c13ecc8566cc59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19ab6911-2476-538c-a052-bba248e212a0', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_public_task:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2381e95cb700622bc0fcb6df1955fd8164ff241e843a42e5d151e96aeffe37fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9892f19-4083-54c1-b350-db5bad6d82fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19ab6911-2476-538c-a052-bba248e212a0', 1), '2381e95cb700622bc0fcb6df1955fd8164ff241e843a42e5d151e96aeffe37fb',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c3300cdb4d1b550f57467371d4aba47e9b5807f576356e102c13ecc8566cc59.mp3', 1384, '2026-09-14 13:31:44.429077', '6aa809681b8c638600092e5c30abeba3505721345a363443d79810c7670f1eb6', 'validated', '{"audio_key":"8c3300cdb4d1b550f57467371d4aba47e9b5807f576356e102c13ecc8566cc59","entity_key":"d_de_de-real-world-gate_public_task:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6aa809681b8c638600092e5c30abeba3505721345a363443d79810c7670f1eb6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8c3300cdb4d1b550f57467371d4aba47e9b5807f576356e102c13ecc8566cc59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:2 -> audio/generated/de-DE/dialogues/8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa59fc40-0f46-5354-8de5-18e3ef7b7e5d', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1c9c121045b070368a505d5815e39333a8fe52ff5aaa81cfec59ebb91eaac06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8295a5ee-ce5b-5acb-9609-7c44d4094d96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa59fc40-0f46-5354-8de5-18e3ef7b7e5d', 1), 'd1c9c121045b070368a505d5815e39333a8fe52ff5aaa81cfec59ebb91eaac06',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce.mp3', 783, '2026-09-14 13:31:45.359847', '76c6ee088c1ec319a8c9f8f9bdadd4ba3c4ea03025948cb59119a0784e02bcaf', 'validated', '{"audio_key":"8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce","entity_key":"d_first_sounds_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"76c6ee088c1ec319a8c9f8f9bdadd4ba3c4ea03025948cb59119a0784e02bcaf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_price_day:3 -> audio/generated/de-DE/dialogues/8e0ed24b28a7cc07e6519a32295942fc3aa30064c34b00c36cafa9f432a73222.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('451f46e7-191d-59bf-9e53-08589bf00219', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_price_day:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b703fc6aeb9cf65c556f61df949d8f3af54f81e29a866c67eed96db79d473416'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8acbd144-d351-5aec-a9b6-719c47b300c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('451f46e7-191d-59bf-9e53-08589bf00219', 1), 'b703fc6aeb9cf65c556f61df949d8f3af54f81e29a866c67eed96db79d473416',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8e0ed24b28a7cc07e6519a32295942fc3aa30064c34b00c36cafa9f432a73222.mp3', 966, '2026-09-14 13:31:46.390765', '6f80ab5fef861a2a0df2a2f4f3a6806f8b308b522cb0d99d4849531915b09607', 'validated', '{"audio_key":"8e0ed24b28a7cc07e6519a32295942fc3aa30064c34b00c36cafa9f432a73222","entity_key":"d_de_de-real-life-numbers_price_day:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6f80ab5fef861a2a0df2a2f4f3a6806f8b308b522cb0d99d4849531915b09607","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8e0ed24b28a7cc07e6519a32295942fc3aa30064c34b00c36cafa9f432a73222.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:2 -> audio/generated/de-DE/dialogues/904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cf6391c-fbb4-5a2e-8bf1-795d08ccc6bc', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a755703971ab41597c904b5d31066a395a9ef9f5d5e522c9ca3174b8c8841d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4114a5f-e11b-580f-9719-ea90b7340cbd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cf6391c-fbb4-5a2e-8bf1-795d08ccc6bc', 1), '0a755703971ab41597c904b5d31066a395a9ef9f5d5e522c9ca3174b8c8841d1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7.mp3', 1436, '2026-09-14 13:31:47.555286', 'c81e27bb38d4cb3c4d842a65a7edc642a72381196322b281848ca53be1e0b619', 'validated', '{"audio_key":"904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7","entity_key":"d_first_conversation_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c81e27bb38d4cb3c4d842a65a7edc642a72381196322b281848ca53be1e0b619","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_02:3 -> audio/generated/de-DE/dialogues/920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f95d4738-45c1-5242-a646-daa0926ea050', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a974cd0-5f25-5230-b1cf-6f98df5a4b62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f95d4738-45c1-5242-a646-daa0926ea050', 1), '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2.mp3', 1018, '2026-09-14 13:31:48.533597', '885dfb5bcf9424fe3dbd16c97ef27b56f14935807ac769786b470959b52d98f3', 'validated', '{"audio_key":"920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2","entity_key":"d_classroom_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"885dfb5bcf9424fe3dbd16c97ef27b56f14935807ac769786b470959b52d98f3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:4 -> audio/generated/de-DE/dialogues/94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28fd1d3b-e27c-5e85-b0f6-7c6f2170851d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d259a07b5c9e786c63ae40a7cf23b5e3fcda58cf408bc3d135029a1b3ace07f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ac4ec84-6475-5eec-bd32-e8c55c65ebe8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28fd1d3b-e27c-5e85-b0f6-7c6f2170851d', 1), '6d259a07b5c9e786c63ae40a7cf23b5e3fcda58cf408bc3d135029a1b3ace07f',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b.mp3', 966, '2026-09-14 13:31:49.512048', '2d2a3a97682a2a774632aa11aeb84e1e5526c224f354ab3701fa43a48896cc33', 'validated', '{"audio_key":"94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b","entity_key":"d_my_name_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2d2a3a97682a2a774632aa11aeb84e1e5526c224f354ab3701fa43a48896cc33","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_public_task:6 -> audio/generated/de-DE/dialogues/952c10a4cbae31c890258588668e59c41db602498be50e06034e90cb0057c229.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0dbc5245-37c4-5d91-a932-38712fc04c74', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_public_task:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebdb3e47-2233-5631-a2e4-c776ef769caf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0dbc5245-37c4-5d91-a932-38712fc04c74', 1), '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/952c10a4cbae31c890258588668e59c41db602498be50e06034e90cb0057c229.mp3', 783, '2026-09-14 13:31:50.457168', '300b83f312a13147c2b11eddb967d463340a02e6f57b53d6d0eada65609df8ff', 'validated', '{"audio_key":"952c10a4cbae31c890258588668e59c41db602498be50e06034e90cb0057c229","entity_key":"d_de_de-real-world-gate_public_task:6","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"300b83f312a13147c2b11eddb967d463340a02e6f57b53d6d0eada65609df8ff","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/952c10a4cbae31c890258588668e59c41db602498be50e06034e90cb0057c229.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_meet:1 -> audio/generated/de-DE/dialogues/99ae1ecc1a80f41a80d972ff2909970f107de9b9a007ce86380e41177117db33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a2be808-d0e5-5206-8c47-fb482eff39ee', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_meet:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('578ad02b-72d0-5c12-8ebc-feeb393f71aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a2be808-d0e5-5206-8c47-fb482eff39ee', 1), '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99ae1ecc1a80f41a80d972ff2909970f107de9b9a007ce86380e41177117db33.mp3', 1201, '2026-09-14 13:31:51.455792', '331ad41db063b4fd13c038b507e38a4a755f7fcb222acb07861af5cb521b03b0', 'validated', '{"audio_key":"99ae1ecc1a80f41a80d972ff2909970f107de9b9a007ce86380e41177117db33","entity_key":"d_de_de-real-world-gate_meet:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"331ad41db063b4fd13c038b507e38a4a755f7fcb222acb07861af5cb521b03b0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/99ae1ecc1a80f41a80d972ff2909970f107de9b9a007ce86380e41177117db33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_repair:4 -> audio/generated/de-DE/dialogues/9a2e1ff7b1a3310c6ecdb8469df42647b284bfc53c1376db958b89b93a4a2aec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61559bd0-2a0e-51b4-83cb-c47851744c73', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_repair:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94aaa29c-2c4f-56fd-ab8c-91168cd8cf11', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61559bd0-2a0e-51b4-83cb-c47851744c73', 1), '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9a2e1ff7b1a3310c6ecdb8469df42647b284bfc53c1376db958b89b93a4a2aec.mp3', 1253, '2026-09-14 13:31:52.503502', '682b355771016804bd883b175085e32f77fb6944f7c91715a1dc2ae0eb2615ed', 'validated', '{"audio_key":"9a2e1ff7b1a3310c6ecdb8469df42647b284bfc53c1376db958b89b93a4a2aec","entity_key":"d_de_ready_repair:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"682b355771016804bd883b175085e32f77fb6944f7c91715a1dc2ae0eb2615ed","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9a2e1ff7b1a3310c6ecdb8469df42647b284bfc53c1376db958b89b93a4a2aec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_meet:6 -> audio/generated/de-DE/dialogues/9b0f373a95077c7ab43da38cd4d0a6aa253f29b4b2fda5505927232239f09409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2de4bcd-72b2-522d-8905-2cd1c6ae9eda', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_meet:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da8cc1f0-722f-509f-b6b8-9334397fecc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2de4bcd-72b2-522d-8905-2cd1c6ae9eda', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9b0f373a95077c7ab43da38cd4d0a6aa253f29b4b2fda5505927232239f09409.mp3', 1071, '2026-09-14 13:31:53.464565', 'ca5e54d33849c75b0ca675301c6ee64a300f507456b3d581d88ce605dd8ab4ce', 'validated', '{"audio_key":"9b0f373a95077c7ab43da38cd4d0a6aa253f29b4b2fda5505927232239f09409","entity_key":"d_de_de-real-world-gate_meet:6","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ca5e54d33849c75b0ca675301c6ee64a300f507456b3d581d88ce605dd8ab4ce","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9b0f373a95077c7ab43da38cd4d0a6aa253f29b4b2fda5505927232239f09409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_repair:5 -> audio/generated/de-DE/dialogues/9e8d3546ba8ae2fbf1c1b32c2be3e15880a2e68088dfef8e417a34e2b7f29b1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0a996ed-8d3c-5fb6-87e2-507fde97202a', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_repair:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84505c98fcae80aecc20323fc9cf85763951bb0b00285c9b1021cd31b78ba905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a159f0d5-e59f-59ff-b0e5-cc6187db0fe7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0a996ed-8d3c-5fb6-87e2-507fde97202a', 1), '84505c98fcae80aecc20323fc9cf85763951bb0b00285c9b1021cd31b78ba905',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e8d3546ba8ae2fbf1c1b32c2be3e15880a2e68088dfef8e417a34e2b7f29b1f.mp3', 1567, '2026-09-14 13:31:54.450757', '7e067d511fefa442b145a13e1828284462bba859b2116a4f7051a08439ca8876', 'validated', '{"audio_key":"9e8d3546ba8ae2fbf1c1b32c2be3e15880a2e68088dfef8e417a34e2b7f29b1f","entity_key":"d_de_ready_repair:5","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7e067d511fefa442b145a13e1828284462bba859b2116a4f7051a08439ca8876","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9e8d3546ba8ae2fbf1c1b32c2be3e15880a2e68088dfef8e417a34e2b7f29b1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_public_task:2 -> audio/generated/de-DE/dialogues/9f07529751d32f6ea8fcfa410879e326dc56c03d5afd07310a5b96fce299609c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d14e689b-9e86-5065-aedd-35ed26b46d86', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_public_task:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9326f04b-0e8e-5ce4-9417-18625def71fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d14e689b-9e86-5065-aedd-35ed26b46d86', 1), '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9f07529751d32f6ea8fcfa410879e326dc56c03d5afd07310a5b96fce299609c.mp3', 3291, '2026-09-14 13:31:55.646582', '434994ff099bdaab575cba4f526531dfa13678256245cb8b9e80a06d256dda09', 'validated', '{"audio_key":"9f07529751d32f6ea8fcfa410879e326dc56c03d5afd07310a5b96fce299609c","entity_key":"d_de_de-real-world-gate_public_task:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"434994ff099bdaab575cba4f526531dfa13678256245cb8b9e80a06d256dda09","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/9f07529751d32f6ea8fcfa410879e326dc56c03d5afd07310a5b96fce299609c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:3 -> audio/generated/de-DE/dialogues/a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('403c6ee5-50fe-53d1-bd5d-baf6ef327183', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69af01fb533c580b7335c127b978fbd886c0fadd97f055e319f8ee4a2e989812'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a84d9ed-6004-565a-ba41-d9b408b6cf91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('403c6ee5-50fe-53d1-bd5d-baf6ef327183', 1), '69af01fb533c580b7335c127b978fbd886c0fadd97f055e319f8ee4a2e989812',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8.mp3', 1201, '2026-09-14 13:31:56.701349', '7d8a07007c72d91d343762ecaf37cc362174d5776b8cafc6348b1292950e8e45', 'validated', '{"audio_key":"a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8","entity_key":"d_first_objects_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d8a07007c72d91d343762ecaf37cc362174d5776b8cafc6348b1292950e8e45","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_intro:1 -> audio/generated/de-DE/dialogues/a21614af719a69f41d9fc3ebb47deafc82bd8134ae6486a11ae75afe9beb487f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73d7ef28-0c79-5d24-b9f6-4d11f70d8bfa', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_intro:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4524024558d0724f0930c3cab3c11233d443360b2bc33a991a96855b2aeac4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4d12eb3-592e-55ed-8efc-4024b27c0bb0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73d7ef28-0c79-5d24-b9f6-4d11f70d8bfa', 1), 'c4524024558d0724f0930c3cab3c11233d443360b2bc33a991a96855b2aeac4f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a21614af719a69f41d9fc3ebb47deafc82bd8134ae6486a11ae75afe9beb487f.mp3', 1619, '2026-09-14 13:31:57.847354', '64d26960ee792e968cef584d867ad9e524a0b49fdba932f9929da2e7c126f039', 'validated', '{"audio_key":"a21614af719a69f41d9fc3ebb47deafc82bd8134ae6486a11ae75afe9beb487f","entity_key":"d_de_ready_intro:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64d26960ee792e968cef584d867ad9e524a0b49fdba932f9929da2e7c126f039","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a21614af719a69f41d9fc3ebb47deafc82bd8134ae6486a11ae75afe9beb487f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_feeling_family:3 -> audio/generated/de-DE/dialogues/a3672d0f4c3dc7f9216753995f2d1c32287dbc07743d6a18f40712e0a9d66779.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8398acb2-910a-5bfb-b40e-72ba8cabaf4f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_feeling_family:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65bc85219e012f1c54d16a6dbb8c747eda688ab0cf643bc693f10feb0d8a1fed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9382b5bf-cfc2-5e59-8c10-52643f38ad1b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8398acb2-910a-5bfb-b40e-72ba8cabaf4f', 1), '65bc85219e012f1c54d16a6dbb8c747eda688ab0cf643bc693f10feb0d8a1fed',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a3672d0f4c3dc7f9216753995f2d1c32287dbc07743d6a18f40712e0a9d66779.mp3', 1515, '2026-09-14 13:31:58.976491', '077944b23be65d263af84ea81ef4422c64dab5d16f4e53e2a8cc852ba443881c', 'validated', '{"audio_key":"a3672d0f4c3dc7f9216753995f2d1c32287dbc07743d6a18f40712e0a9d66779","entity_key":"d_de_de-about-me_feeling_family:3","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"077944b23be65d263af84ea81ef4422c64dab5d16f4e53e2a8cc852ba443881c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a3672d0f4c3dc7f9216753995f2d1c32287dbc07743d6a18f40712e0a9d66779.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_meet:2 -> audio/generated/de-DE/dialogues/a6a00db8577211b343f86b8a5d7104d122e30b78876a3700851f35df2f990cf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19391d1b-5b1e-5b6d-8699-ea9e673c5a30', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_meet:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3105310008bb10a0bd0f01adf3bef616fc078bd1e0da62dec93b746f011668'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0afad50c-f24b-5c17-9202-6fe08df6db6f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19391d1b-5b1e-5b6d-8699-ea9e673c5a30', 1), '9d3105310008bb10a0bd0f01adf3bef616fc078bd1e0da62dec93b746f011668',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a6a00db8577211b343f86b8a5d7104d122e30b78876a3700851f35df2f990cf1.mp3', 1253, '2026-09-14 13:31:59.975250', '2685da87dbaab854d3d2a90cdb3591f180cde9b8e902f84ac1e044739c1e8f31', 'validated', '{"audio_key":"a6a00db8577211b343f86b8a5d7104d122e30b78876a3700851f35df2f990cf1","entity_key":"d_de_de-real-world-gate_meet:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2685da87dbaab854d3d2a90cdb3591f180cde9b8e902f84ac1e044739c1e8f31","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a6a00db8577211b343f86b8a5d7104d122e30b78876a3700851f35df2f990cf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-life-numbers_price_day:2 -> audio/generated/de-DE/dialogues/a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf12ace8-bd72-5a2e-b834-032512ab5a98', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-life-numbers_price_day:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1175ce5f-9eaf-53a6-a9e9-c17c3fd5787a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf12ace8-bd72-5a2e-b834-032512ab5a98', 1), '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749.mp3', 1071, '2026-09-14 13:32:00.978197', 'a5a4a92542e45db56d10dc8005ccd685d24e442f89158366655dcda73d5dc231', 'validated', '{"audio_key":"a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749","entity_key":"d_de_de-real-life-numbers_price_day:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a5a4a92542e45db56d10dc8005ccd685d24e442f89158366655dcda73d5dc231","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_public_task:4 -> audio/generated/de-DE/dialogues/a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a881b5c-df30-5f4d-8410-ff2aef7a06f9', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_public_task:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3482dfcd-5066-5267-a80b-184e08a07674', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a881b5c-df30-5f4d-8410-ff2aef7a06f9', 1), '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749.mp3', 1071, '2026-09-14 13:32:00.978197', 'a5a4a92542e45db56d10dc8005ccd685d24e442f89158366655dcda73d5dc231', 'validated', '{"audio_key":"a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749","entity_key":"d_de_de-real-world-gate_public_task:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a5a4a92542e45db56d10dc8005ccd685d24e442f89158366655dcda73d5dc231","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a82862582616830996eb9e1d19c3198bcc8cb6c2fb2b6553320f20dd7c825749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:3 -> audio/generated/de-DE/dialogues/a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd12b92b-ec6d-5545-a87b-508d650b8160', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee98f81b-a632-5dfe-95b8-e9f6661299eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd12b92b-ec6d-5545-a87b-508d650b8160', 1), 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288.mp3', 1149, '2026-09-14 13:32:01.981581', '6fcbeace0e3b63c8e2e44f0fec05038aac988a341c7c34d3e608ffd4f2b099b0', 'validated', '{"audio_key":"a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288","entity_key":"d_first_greetings_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6fcbeace0e3b63c8e2e44f0fec05038aac988a341c7c34d3e608ffd4f2b099b0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_02:1 -> audio/generated/de-DE/dialogues/a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55e686bd-e270-5694-a5a5-d0c03debd74d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('042e16cc-3618-57bc-a22f-de0b04357087', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55e686bd-e270-5694-a5a5-d0c03debd74d', 1), '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0.mp3', 1253, '2026-09-14 13:32:02.974672', '9eed1a47b2044494216ddf04f76d080abeff39fa2c7198792d656f98a81665d7', 'validated', '{"audio_key":"a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0","entity_key":"d_classroom_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9eed1a47b2044494216ddf04f76d080abeff39fa2c7198792d656f98a81665d7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_origin_age:1 -> audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da9653b0-6586-5a23-a6db-b0d6f3b08946', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_origin_age:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('444c57b5-31f3-5139-b51e-4a446c5ad38b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da9653b0-6586-5a23-a6db-b0d6f3b08946', 1), '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3', 783, '2026-09-14 13:32:03.978831', 'c1f25ce7707520c96097eac7b091dc3e16dc5f24fc5f849f3231413432bb00a8', 'validated', '{"audio_key":"afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7","entity_key":"d_de_de-about-me_origin_age:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1f25ce7707520c96097eac7b091dc3e16dc5f24fc5f849f3231413432bb00a8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:1 -> audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f719915-021b-53f6-a03e-5e7c16a47b54', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b04349c7-2d45-513a-8377-828d9bd060db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f719915-021b-53f6-a03e-5e7c16a47b54', 1), '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3', 783, '2026-09-14 13:32:03.978831', 'c1f25ce7707520c96097eac7b091dc3e16dc5f24fc5f849f3231413432bb00a8', 'validated', '{"audio_key":"afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7","entity_key":"d_first_greetings_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1f25ce7707520c96097eac7b091dc3e16dc5f24fc5f849f3231413432bb00a8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:2 -> audio/generated/de-DE/dialogues/b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fdcac6fe-ba29-5756-8514-cf5610490d27', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6c50528f1eca43bb20a4c90a6de1096f86201eab22e80ba27f29d40e6ba0a3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4d4f593-3ea1-5fc7-8d12-140aa4f36396', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fdcac6fe-ba29-5756-8514-cf5610490d27', 1), 'c6c50528f1eca43bb20a4c90a6de1096f86201eab22e80ba27f29d40e6ba0a3e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f.mp3', 1384, '2026-09-14 13:32:05.139576', 'eb10a1d4b391f9ecc441df4ddd00c5f800328dadb618b0bbc9ea820b858f64fc', 'validated', '{"audio_key":"b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f","entity_key":"d_my_name_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eb10a1d4b391f9ecc441df4ddd00c5f800328dadb618b0bbc9ea820b858f64fc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_feeling_family:2 -> audio/generated/de-DE/dialogues/b2c051cd38a69f66f99b0aba1806076fb2979a802a5443ddec84d1db80568eb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8cdf3f5c-968f-58e8-ac24-1419625fab0c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_feeling_family:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('342e055a-1b3d-5812-ba61-63d6a37da216', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8cdf3f5c-968f-58e8-ac24-1419625fab0c', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b2c051cd38a69f66f99b0aba1806076fb2979a802a5443ddec84d1db80568eb0.mp3', 1018, '2026-09-14 13:32:06.142206', '9ec59e78dd591b102a545fd6e358da23663f1ad8bbea83fa118866d0ebc0c339', 'validated', '{"audio_key":"b2c051cd38a69f66f99b0aba1806076fb2979a802a5443ddec84d1db80568eb0","entity_key":"d_de_de-about-me_feeling_family:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9ec59e78dd591b102a545fd6e358da23663f1ad8bbea83fa118866d0ebc0c339","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b2c051cd38a69f66f99b0aba1806076fb2979a802a5443ddec84d1db80568eb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:3 -> audio/generated/de-DE/dialogues/b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7e9a87b0-3f8b-5d28-b93a-3a78d44145c5', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7fed873be7b85be3e6f9ae6fee2c1a47333cce7c4f12914a97388cb78213a6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22c044f5-e4d3-59d6-9124-e7a15e863a12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7e9a87b0-3f8b-5d28-b93a-3a78d44145c5', 1), 'c7fed873be7b85be3e6f9ae6fee2c1a47333cce7c4f12914a97388cb78213a6e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e.mp3', 1384, '2026-09-14 13:32:07.188488', 'ecb399d50c6bff7f27716982ebb8bcf81d5602fa4fbb6358099d4afc2a4b7cde', 'validated', '{"audio_key":"b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e","entity_key":"d_first_sounds_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ecb399d50c6bff7f27716982ebb8bcf81d5602fa4fbb6358099d4afc2a4b7cde","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_meaning_help:5 -> audio/generated/de-DE/dialogues/b6538f40ea6ae51df9df0c0098346e6bd48568054c1033957d3e8e7e5be3dda0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2eb87810-0a16-5ef7-8428-3ca0b889ccdc', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_meaning_help:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d508052e81b6167c885c351be2f8acab77f5661fd14c58775a55d63ebd34fb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a9abcc8-9703-5016-9de0-dee156912d8c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2eb87810-0a16-5ef7-8428-3ca0b889ccdc', 1), '2d508052e81b6167c885c351be2f8acab77f5661fd14c58775a55d63ebd34fb4',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b6538f40ea6ae51df9df0c0098346e6bd48568054c1033957d3e8e7e5be3dda0.mp3', 1488, '2026-09-14 13:32:08.195066', '0ccfb829721ea862eeb4ecafb01708f554970480a4ebdda00b89b7c443173ddb', 'validated', '{"audio_key":"b6538f40ea6ae51df9df0c0098346e6bd48568054c1033957d3e8e7e5be3dda0","entity_key":"d_de_meaning_help:5","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0ccfb829721ea862eeb4ecafb01708f554970480a4ebdda00b89b7c443173ddb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b6538f40ea6ae51df9df0c0098346e6bd48568054c1033957d3e8e7e5be3dda0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:1 -> audio/generated/de-DE/dialogues/b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('196b3d86-6828-52dd-9976-9e95f62ed3c0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fde8b2ae21366e178c654139af6f243999ae4bc71f98cb86efec7661ba1a86da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06ad6eb4-6499-50da-8090-58eb9a5ab88a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('196b3d86-6828-52dd-9976-9e95f62ed3c0', 1), 'fde8b2ae21366e178c654139af6f243999ae4bc71f98cb86efec7661ba1a86da',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357.mp3', 1071, '2026-09-14 13:32:09.171552', '954424e8610d95cc54527a135761364cab8a6ed4d28e9991bc2cd7b86a723506', 'validated', '{"audio_key":"b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357","entity_key":"d_alphabet_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"954424e8610d95cc54527a135761364cab8a6ed4d28e9991bc2cd7b86a723506","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:1 -> audio/generated/de-DE/dialogues/ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7d3259a-bb92-51b2-bced-18f1d00d460d', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f4baa795fc2a57829c97b5fcd92a6967d41dd7dc1bb29741c11dfe88dfd8ec2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd513b14-9357-5a10-9fd1-edfe651f5412', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7d3259a-bb92-51b2-bced-18f1d00d460d', 1), '6f4baa795fc2a57829c97b5fcd92a6967d41dd7dc1bb29741c11dfe88dfd8ec2',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb.mp3', 1750, '2026-09-14 13:32:10.192407', '70370b806c55071b50d5f4bff32bbbc6ecff23ea775fc68fba57302e3145de3f', 'validated', '{"audio_key":"ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb","entity_key":"d_my_name_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"70370b806c55071b50d5f4bff32bbbc6ecff23ea775fc68fba57302e3145de3f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:3 -> audio/generated/de-DE/dialogues/ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd8afb96-041e-5156-b0ae-10d99c297895', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3c2a328-65b3-5d39-a0a4-a8db0021bab3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd8afb96-041e-5156-b0ae-10d99c297895', 1), 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357.mp3', 1280, '2026-09-14 13:32:11.188774', 'd104751411eb294afc280be489e15f634e433ca85553b2327625f589025c9984', 'validated', '{"audio_key":"ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357","entity_key":"d_survival_words_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d104751411eb294afc280be489e15f634e433ca85553b2327625f589025c9984","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:2 -> audio/generated/de-DE/dialogues/baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d7cfb0d2-f57e-5d84-8811-16ff1c2fd7ff', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e198c6e332f2708ba583aa61555577978ce18a748cf147ea501976e5e7f50fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddf32b6c-b96f-59a4-bdeb-e4682276ddcd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d7cfb0d2-f57e-5d84-8811-16ff1c2fd7ff', 1), '1e198c6e332f2708ba583aa61555577978ce18a748cf147ea501976e5e7f50fc',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3.mp3', 1018, '2026-09-14 13:32:12.175069', '9cf7053eccc74a9fcb2519f8db4ff24940d91ea61691e846456c7bdc51c28a06', 'validated', '{"audio_key":"baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3","entity_key":"d_numbers_0_10_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"9cf7053eccc74a9fcb2519f8db4ff24940d91ea61691e846456c7bdc51c28a06","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:1 -> audio/generated/de-DE/dialogues/bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a074f2f9-f430-57d2-80bb-e36def64a5f1', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43f692229732b4a5323689d6dc018a4acb578ca6d48152b78ceb88250d3323fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e79ded28-19ce-5d1d-a894-4989ddd1f945', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a074f2f9-f430-57d2-80bb-e36def64a5f1', 1), '43f692229732b4a5323689d6dc018a4acb578ca6d48152b78ceb88250d3323fa',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e.mp3', 966, '2026-09-14 13:32:13.141307', '5853e289e081c9902fa86e0b3ac95b8f12d98e89d33a1761440c76a454739c6d', 'validated', '{"audio_key":"bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e","entity_key":"d_first_greetings_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5853e289e081c9902fa86e0b3ac95b8f12d98e89d33a1761440c76a454739c6d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-real-world-gate_public_task:5 -> audio/generated/de-DE/dialogues/c1ef217f36ab6683f71c35ef8fb6cf1a40d48a4a6834063cc9523ed8a91ea5fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b07d734c-5945-5a60-af92-d9fe722ecbbf', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-real-world-gate_public_task:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76da97bd643208feab9c49a86fc706f348d1706cb6318641b66c493a8065ecda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13c2e4f1-b8a3-5e20-86de-71473c4f29a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b07d734c-5945-5a60-af92-d9fe722ecbbf', 1), '76da97bd643208feab9c49a86fc706f348d1706cb6318641b66c493a8065ecda',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c1ef217f36ab6683f71c35ef8fb6cf1a40d48a4a6834063cc9523ed8a91ea5fb.mp3', 1280, '2026-09-14 13:32:14.134887', '299ba91a25de8bd35a860cd1390b7554ad650ebefb18167cbd61e313edc48b75', 'validated', '{"audio_key":"c1ef217f36ab6683f71c35ef8fb6cf1a40d48a4a6834063cc9523ed8a91ea5fb","entity_key":"d_de_de-real-world-gate_public_task:5","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"299ba91a25de8bd35a860cd1390b7554ad650ebefb18167cbd61e313edc48b75","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c1ef217f36ab6683f71c35ef8fb6cf1a40d48a4a6834063cc9523ed8a91ea5fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:2 -> audio/generated/de-DE/dialogues/c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('13516b04-4794-5585-8b64-4f13502d18d1', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f305763e67c4b4000892f083ea1ddf3ec05e68bda2efc6a15725c2db3c1b214'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba2876db-91d4-556b-8ec9-bcbf2cfd97b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('13516b04-4794-5585-8b64-4f13502d18d1', 1), '8f305763e67c4b4000892f083ea1ddf3ec05e68bda2efc6a15725c2db3c1b214',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b.mp3', 1567, '2026-09-14 13:32:15.210967', '9e45e19580a4fca1bd12f7b98a15f8e3bd23974df8d0e24af13b9c66c19663af', 'validated', '{"audio_key":"c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b","entity_key":"d_my_name_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9e45e19580a4fca1bd12f7b98a15f8e3bd23974df8d0e24af13b9c66c19663af","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_origin_age:4 -> audio/generated/de-DE/dialogues/c69a60c5e13e37526d40bade1b1462e2f4d49a802d65325c23a8fc9bfb498117.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23c0e7ee-cceb-5561-b7d3-152c563df153', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_origin_age:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b2ca636-e0c9-5a49-8f6f-605640444c66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23c0e7ee-cceb-5561-b7d3-152c563df153', 1), 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c69a60c5e13e37526d40bade1b1462e2f4d49a802d65325c23a8fc9bfb498117.mp3', 1567, '2026-09-14 13:32:16.262574', '7040d433a5a0b7109ab29cbb164d1dd175dd7987acba6a1b409a606c1ae43802', 'validated', '{"audio_key":"c69a60c5e13e37526d40bade1b1462e2f4d49a802d65325c23a8fc9bfb498117","entity_key":"d_de_de-about-me_origin_age:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7040d433a5a0b7109ab29cbb164d1dd175dd7987acba6a1b409a606c1ae43802","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c69a60c5e13e37526d40bade1b1462e2f4d49a802d65325c23a8fc9bfb498117.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_meaning_help:1 -> audio/generated/de-DE/dialogues/d193c7aecc6ce18a4b93a2bfab8f9f67ded592e5ff425524ba27edb602ceef3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c354c576-3053-531d-92c3-6725647d7e2b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_meaning_help:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b71ba810509465f2b34b383718ca755e1fa3bad4fa5a128fe6bea7c88639a662'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fca9c81-e0a3-5edc-92fe-ccc0e058b975', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c354c576-3053-531d-92c3-6725647d7e2b', 1), 'b71ba810509465f2b34b383718ca755e1fa3bad4fa5a128fe6bea7c88639a662',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d193c7aecc6ce18a4b93a2bfab8f9f67ded592e5ff425524ba27edb602ceef3b.mp3', 1253, '2026-09-14 13:32:17.242870', '41d7f33170bdb3581240202bc495a8b2a571b7992e1f89f289d9537bf5cfef15', 'validated', '{"audio_key":"d193c7aecc6ce18a4b93a2bfab8f9f67ded592e5ff425524ba27edb602ceef3b","entity_key":"d_de_meaning_help:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"41d7f33170bdb3581240202bc495a8b2a571b7992e1f89f289d9537bf5cfef15","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d193c7aecc6ce18a4b93a2bfab8f9f67ded592e5ff425524ba27edb602ceef3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:2 -> audio/generated/de-DE/dialogues/d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ece1ca9-e565-5e46-9e15-4c53541ab553', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '256779c7553b59f22aace3d570ada6718be8e20ccadbb2b2f3efff0b7bf69dfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa953714-61f5-50fc-a347-19f0c1d21ab9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ece1ca9-e565-5e46-9e15-4c53541ab553', 1), '256779c7553b59f22aace3d570ada6718be8e20ccadbb2b2f3efff0b7bf69dfc',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0.mp3', 731, '2026-09-14 13:32:18.252876', '7ffee00a0ac245fa95e1926407e7966a4552371f614fe4efd4ef7b3f939d74a1', 'validated', '{"audio_key":"d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0","entity_key":"d_survival_words_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7ffee00a0ac245fa95e1926407e7966a4552371f614fe4efd4ef7b3f939d74a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_sign:2 -> audio/generated/de-DE/dialogues/d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c60a6635-ecfe-5e4d-8240-7a96aaebb584', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_sign:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('179bac97-3643-5346-9e59-93e31602c800', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c60a6635-ecfe-5e4d-8240-7a96aaebb584', 1), '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd.mp3', 862, '2026-09-14 13:32:19.450454', 'd184afb9fa16f095c95b20bf0ace34eafc4fbc8e61db58aa92de5e6a11b85cba', 'validated', '{"audio_key":"d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd","entity_key":"d_de_de-forms-signs_sign:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d184afb9fa16f095c95b20bf0ace34eafc4fbc8e61db58aa92de5e6a11b85cba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_sign:4 -> audio/generated/de-DE/dialogues/d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63aed4d9-a62d-5383-a3c0-f33b432afb97', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_sign:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a583d337-06c8-51b6-a01d-d31852c457c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63aed4d9-a62d-5383-a3c0-f33b432afb97', 1), '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd.mp3', 862, '2026-09-14 13:32:19.450454', 'd184afb9fa16f095c95b20bf0ace34eafc4fbc8e61db58aa92de5e6a11b85cba', 'validated', '{"audio_key":"d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd","entity_key":"d_de_de-forms-signs_sign:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d184afb9fa16f095c95b20bf0ace34eafc4fbc8e61db58aa92de5e6a11b85cba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d72e815dc48aa3efe05af96f4f331d91a35037ad20db1000918c1277ce4c96dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:2 -> audio/generated/de-DE/dialogues/d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('708b0119-fff5-5f8b-93c4-affc4ce0b752', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43f692229732b4a5323689d6dc018a4acb578ca6d48152b78ceb88250d3323fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d30a96b8-f26f-5c9d-8971-9a4557083d1c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('708b0119-fff5-5f8b-93c4-affc4ce0b752', 1), '43f692229732b4a5323689d6dc018a4acb578ca6d48152b78ceb88250d3323fa',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e.mp3', 966, '2026-09-14 13:32:20.435599', '6850f91f10bd02f73febcf477aefeb86bbea3ee0cc52d54a2ebba769e23d8719', 'validated', '{"audio_key":"d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e","entity_key":"d_first_greetings_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6850f91f10bd02f73febcf477aefeb86bbea3ee0cc52d54a2ebba769e23d8719","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_letter_names_02:2 -> audio/generated/de-DE/dialogues/d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eafd5fa4-bffe-5327-8b47-359b36081054', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_letter_names_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9d99ca459b0b4da22bf33b97dbcc3822b33f9041ba6d063c524b4f7b725f815'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d855fb38-176c-5742-ac6b-0518f37d5fd7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eafd5fa4-bffe-5327-8b47-359b36081054', 1), 'b9d99ca459b0b4da22bf33b97dbcc3822b33f9041ba6d063c524b4f7b725f815',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa.mp3', 862, '2026-09-14 13:32:21.406502', 'f509d86e006aae93e2504ada48e1d8f57ebf5f5e46b45d5d54ca9b9c47244d82', 'validated', '{"audio_key":"d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa","entity_key":"d_letter_names_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f509d86e006aae93e2504ada48e1d8f57ebf5f5e46b45d5d54ca9b9c47244d82","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:3 -> audio/generated/de-DE/dialogues/db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85e1b4e0-ab80-5499-8ef5-e1b0e5b176ec', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5854c887d19bd674a5357c830fbfd6ed36135b46c0ab1e632a92ac252634185a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f9dfa09-6080-51cd-bbeb-81197211e404', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85e1b4e0-ab80-5499-8ef5-e1b0e5b176ec', 1), '5854c887d19bd674a5357c830fbfd6ed36135b46c0ab1e632a92ac252634185a',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807.mp3', 1071, '2026-09-14 13:32:22.353787', '2014bf1f7922b29e9abe4bc6e9e8d6f14435d2d0b8aad37a9ed273db207fd39f', 'validated', '{"audio_key":"db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807","entity_key":"d_first_conversation_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2014bf1f7922b29e9abe4bc6e9e8d6f14435d2d0b8aad37a9ed273db207fd39f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_ready_intro:4 -> audio/generated/de-DE/dialogues/dcc784cc76abf9378fa2903c48982de359e1bd22f9f42a498b1187bebb62d4ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b146863-d1b8-5420-8549-6957f1c47de1', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_ready_intro:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0716801bdcc17e49fef795d260df211a46fbe4abfca8a8e41d823aee22c31d82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3a7639a-7c96-5abd-a092-a673efd11eda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b146863-d1b8-5420-8549-6957f1c47de1', 1), '0716801bdcc17e49fef795d260df211a46fbe4abfca8a8e41d823aee22c31d82',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dcc784cc76abf9378fa2903c48982de359e1bd22f9f42a498b1187bebb62d4ba.mp3', 1332, '2026-09-14 13:32:23.322879', '0e89f8d848f530cf5b6064703e50912731f82c7f96bab34aeb4823051991e9cf', 'validated', '{"audio_key":"dcc784cc76abf9378fa2903c48982de359e1bd22f9f42a498b1187bebb62d4ba","entity_key":"d_de_ready_intro:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0e89f8d848f530cf5b6064703e50912731f82c7f96bab34aeb4823051991e9cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dcc784cc76abf9378fa2903c48982de359e1bd22f9f42a498b1187bebb62d4ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_form:2 -> audio/generated/de-DE/dialogues/e110e015af54153082e922b4e1e228d5fa0e23ec05e8cd93cd85c30f12193eef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('484ec665-3940-5fa2-9303-e61af916c1c3', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_form:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3105310008bb10a0bd0f01adf3bef616fc078bd1e0da62dec93b746f011668'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76610b8d-7060-53d3-8fb1-10be6fd2e4e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('484ec665-3940-5fa2-9303-e61af916c1c3', 1), '9d3105310008bb10a0bd0f01adf3bef616fc078bd1e0da62dec93b746f011668',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e110e015af54153082e922b4e1e228d5fa0e23ec05e8cd93cd85c30f12193eef.mp3', 1253, '2026-09-14 13:32:24.272599', 'e0bd2723f49911fe9b34378755dec5edba0dd34169d8bea89143d450da80f82b', 'validated', '{"audio_key":"e110e015af54153082e922b4e1e228d5fa0e23ec05e8cd93cd85c30f12193eef","entity_key":"d_de_de-forms-signs_form:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"e0bd2723f49911fe9b34378755dec5edba0dd34169d8bea89143d450da80f82b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e110e015af54153082e922b4e1e228d5fa0e23ec05e8cd93cd85c30f12193eef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:3 -> audio/generated/de-DE/dialogues/e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54fecede-6424-532a-871c-d5cdc1fb6cc8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc644fa0-95dd-5a1d-9f48-b61e54c5f9d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54fecede-6424-532a-871c-d5cdc1fb6cc8', 1), 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089.mp3', 966, '2026-09-14 13:32:25.236438', '7d804b6e96dae2201a29a8c73e40b88558ef7ba7070a59c31b5e1a5485bef894', 'validated', '{"audio_key":"e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089","entity_key":"d_first_greetings_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d804b6e96dae2201a29a8c73e40b88558ef7ba7070a59c31b5e1a5485bef894","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:1 -> audio/generated/de-DE/dialogues/e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cccd6699-8fa4-5f66-8a2c-efd34ca4c006', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094c7a8f589c1b71c580fb72314997be14535f11f5ce42e81a0120b26d37bf3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4962064d-4a6a-56ec-8b67-60cb77204a1b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cccd6699-8fa4-5f66-8a2c-efd34ca4c006', 1), '094c7a8f589c1b71c580fb72314997be14535f11f5ce42e81a0120b26d37bf3a',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca.mp3', 1567, '2026-09-14 13:32:26.506293', '176ea4bd9f6b4d621b2ede668556887b4b93e39480227b196e3623317d482b10', 'validated', '{"audio_key":"e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca","entity_key":"d_first_objects_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"176ea4bd9f6b4d621b2ede668556887b4b93e39480227b196e3623317d482b10","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:3 -> audio/generated/de-DE/dialogues/e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51322125-47bb-5f6c-ac02-2a919339a0eb', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76dfd3087d2acadc05d52380afd7759b98041dca6391192f69f9ec4f9d522738'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66f5a9c8-2721-5ecc-9207-98cf26796ffd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51322125-47bb-5f6c-ac02-2a919339a0eb', 1), '76dfd3087d2acadc05d52380afd7759b98041dca6391192f69f9ec4f9d522738',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103.mp3', 1071, '2026-09-14 13:32:27.494716', '6f46633aa187e036b45f80223e8db62dd6ea85e6b96dfe60ba22071846d31686', 'validated', '{"audio_key":"e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103","entity_key":"d_alphabet_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6f46633aa187e036b45f80223e8db62dd6ea85e6b96dfe60ba22071846d31686","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:2 -> audio/generated/de-DE/dialogues/e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e25a8374-71e1-5b80-94d7-c283b083be70', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6f1814cc4e6e36f24b83e48ca385beb4dff1f88df34433d8406ac5a62267d96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15425836-3a49-51d8-b02e-c206198af73d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e25a8374-71e1-5b80-94d7-c283b083be70', 1), 'c6f1814cc4e6e36f24b83e48ca385beb4dff1f88df34433d8406ac5a62267d96',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7.mp3', 1018, '2026-09-14 13:32:28.509485', '4e459b713d787d69d2e58e26af91770fb23f3a2fd62501c005b93efc99f61ee5', 'validated', '{"audio_key":"e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7","entity_key":"d_first_sounds_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e459b713d787d69d2e58e26af91770fb23f3a2fd62501c005b93efc99f61ee5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:3 -> audio/generated/de-DE/dialogues/eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf3ea6b0-492b-5870-9b94-219051070cde', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4e3de3e-1f30-5f01-8167-b246b8c608fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf3ea6b0-492b-5870-9b94-219051070cde', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d.mp3', 1018, '2026-09-14 13:32:29.538364', '8554454a0f236c77944def06a75cc0876f48ca0d130bcf10505ac2aee12def58', 'validated', '{"audio_key":"eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d","entity_key":"d_my_name_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8554454a0f236c77944def06a75cc0876f48ca0d130bcf10505ac2aee12def58","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:3 -> audio/generated/de-DE/dialogues/ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cba05a1b-4271-52af-ae48-c52696a9b039', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '400a03f0bdce7fdabd7508d811545fccc2985d6dde9878427e5227536292e2f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e7061b2-a072-5827-92eb-edd4b0df7722', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cba05a1b-4271-52af-ae48-c52696a9b039', 1), '400a03f0bdce7fdabd7508d811545fccc2985d6dde9878427e5227536292e2f1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838.mp3', 1384, '2026-09-14 13:32:30.534111', 'c81addb4fb6fb09c994dc4472320c9d173affffde880337de164d60f7573471a', 'validated', '{"audio_key":"ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838","entity_key":"d_first_sounds_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c81addb4fb6fb09c994dc4472320c9d173affffde880337de164d60f7573471a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:4 -> audio/generated/de-DE/dialogues/eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a4f6c03-d7a3-5ead-bda1-ab7d198b299f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d7d7679-0e40-54ec-8004-9994e72fd273', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a4f6c03-d7a3-5ead-bda1-ab7d198b299f', 1), '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc.mp3', 731, '2026-09-14 13:32:31.464007', '5ef6f598c4c64678505a2469cbff93fc16c9e200e2caee4070afa44290f3aa44', 'validated', '{"audio_key":"eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc","entity_key":"d_survival_words_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5ef6f598c4c64678505a2469cbff93fc16c9e200e2caee4070afa44290f3aa44","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-about-me_feeling_family:1 -> audio/generated/de-DE/dialogues/ed43e591e46cc8dc7b0061e6c79985dd697d1d8b3b82f010a5754417a28944af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df3b4987-d544-510a-b9b4-93a02a0bf5ba', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-about-me_feeling_family:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95999f9f-fadf-59f5-ae60-c226b874bcb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df3b4987-d544-510a-b9b4-93a02a0bf5ba', 1), 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed43e591e46cc8dc7b0061e6c79985dd697d1d8b3b82f010a5754417a28944af.mp3', 966, '2026-09-14 13:32:32.427787', '9037b7d7f42dcaa68d0cf9c5c22a96df7df74111bc3fa2549785437e6fb70b42', 'validated', '{"audio_key":"ed43e591e46cc8dc7b0061e6c79985dd697d1d8b3b82f010a5754417a28944af","entity_key":"d_de_de-about-me_feeling_family:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9037b7d7f42dcaa68d0cf9c5c22a96df7df74111bc3fa2549785437e6fb70b42","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ed43e591e46cc8dc7b0061e6c79985dd697d1d8b3b82f010a5754417a28944af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:4 -> audio/generated/de-DE/dialogues/ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42402863-843b-5591-8935-4ab9009bbd56', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df364adf6ebdbd27c9d8fb45abc697bad8f2a38edc08106ef6ebfd84812007a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ee714d2-b511-563c-8e0f-59b4ebcda803', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42402863-843b-5591-8935-4ab9009bbd56', 1), 'df364adf6ebdbd27c9d8fb45abc697bad8f2a38edc08106ef6ebfd84812007a8',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493.mp3', 1018, '2026-09-14 13:32:33.390721', '5731ae6d6e4bf8b90383c0818ca53682e5ef8ec789fa6b8a3d891636736bd991', 'validated', '{"audio_key":"ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493","entity_key":"d_first_sounds_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5731ae6d6e4bf8b90383c0818ca53682e5ef8ec789fa6b8a3d891636736bd991","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_classroom_01:2 -> audio/generated/de-DE/dialogues/f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61d44288-54a4-5105-9478-91ad4368e8c5', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_classroom_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ac16843bf8bd55b1e425b9905b18f97a7f0225782843102b91c82fdf321ab12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69367318-1c5a-5cd8-af68-13698c4d85b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61d44288-54a4-5105-9478-91ad4368e8c5', 1), '7ac16843bf8bd55b1e425b9905b18f97a7f0225782843102b91c82fdf321ab12',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969.mp3', 1018, '2026-09-14 13:32:34.359769', '4ff3cce9a11dd4faf7698bfc8ab61526100b0920730eadd736c48b656553a3a5', 'validated', '{"audio_key":"f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969","entity_key":"d_classroom_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4ff3cce9a11dd4faf7698bfc8ab61526100b0920730eadd736c48b656553a3a5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_form:1 -> audio/generated/de-DE/dialogues/f0aca4cc4a0141fb986c79f7c461eb832d2380be04d3246b0ad86e6d5ff5e13e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4bf1c06-9d0c-5c8c-957a-5c8c4e99f02f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_form:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd32f7ea4b09f568fe7e60ecad909742368619e55701d7cb9fd7a3bcbbfd5a5e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3cb304b-1440-5c01-9f80-df330066fcd9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4bf1c06-9d0c-5c8c-957a-5c8c4e99f02f', 1), 'd32f7ea4b09f568fe7e60ecad909742368619e55701d7cb9fd7a3bcbbfd5a5e5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0aca4cc4a0141fb986c79f7c461eb832d2380be04d3246b0ad86e6d5ff5e13e.mp3', 600, '2026-09-14 13:32:35.282730', '3234c363e1b5f5b14a4632279d047f5147db8c16d4827f65489837b67ae4c90f', 'validated', '{"audio_key":"f0aca4cc4a0141fb986c79f7c461eb832d2380be04d3246b0ad86e6d5ff5e13e","entity_key":"d_de_de-forms-signs_form:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3234c363e1b5f5b14a4632279d047f5147db8c16d4827f65489837b67ae4c90f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f0aca4cc4a0141fb986c79f7c461eb832d2380be04d3246b0ad86e6d5ff5e13e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:1 -> audio/generated/de-DE/dialogues/f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('07e642f6-46df-5cfc-aba2-3dd58106fe69', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfebdab492ecf8a1b8d38ad05d851933827a3e92da15eb2b9d3c47aa7b9e2348'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cddcba86-390f-5b74-b2fe-bb4a88db2fc5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('07e642f6-46df-5cfc-aba2-3dd58106fe69', 1), 'dfebdab492ecf8a1b8d38ad05d851933827a3e92da15eb2b9d3c47aa7b9e2348',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370.mp3', 1018, '2026-09-14 13:32:36.212277', '30245e7f1d3a53134c7552b2c6e744eff7b7be4492996cd592cb3339c15063a9', 'validated', '{"audio_key":"f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370","entity_key":"d_first_sounds_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"30245e7f1d3a53134c7552b2c6e744eff7b7be4492996cd592cb3339c15063a9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:4 -> audio/generated/de-DE/dialogues/f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8eb5d1e2-035f-5c04-87d9-013b5da2988b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '866a8f8b19448baff5877bb6a4d664cbc8ade15607dfec2888eb76a3748a1069'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b72761a2-8698-58bc-9d42-0cf4e9bb35a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8eb5d1e2-035f-5c04-87d9-013b5da2988b', 1), '866a8f8b19448baff5877bb6a4d664cbc8ade15607dfec2888eb76a3748a1069',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3.mp3', 1280, '2026-09-14 13:32:37.184839', '43815afec8498854df385adc8befb9954c06945ac3e50104e6a72edad6406fde', 'validated', '{"audio_key":"f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3","entity_key":"d_numbers_0_10_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"43815afec8498854df385adc8befb9954c06945ac3e50104e6a72edad6406fde","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:4 -> audio/generated/de-DE/dialogues/fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('367a0a52-2b31-524a-a3f2-5a351c953ce3', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b74645b1e04b3108f3660f30e94271bdffaefb86e7f9fe560a573bc0e195fe65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05c71dba-8efb-5482-8227-4b322c618c63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('367a0a52-2b31-524a-a3f2-5a351c953ce3', 1), 'b74645b1e04b3108f3660f30e94271bdffaefb86e7f9fe560a573bc0e195fe65',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a.mp3', 1071, '2026-09-14 13:32:38.140715', 'eb8d2caf2b2ba24eec51710a15dd72f799a804703bddb4c3ea4551f12f3bf8a3', 'validated', '{"audio_key":"fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a","entity_key":"d_first_objects_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"eb8d2caf2b2ba24eec51710a15dd72f799a804703bddb4c3ea4551f12f3bf8a3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:4 -> audio/generated/de-DE/dialogues/fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c83b565a-5283-58c4-bceb-9dcd2b734125', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7604a77a23043b4ce5d765842067f9a24c67e790930f0b7ba4f2762c50b253a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a96259f-9011-5e51-bef5-8b12a12ec0f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c83b565a-5283-58c4-bceb-9dcd2b734125', 1), '7604a77a23043b4ce5d765842067f9a24c67e790930f0b7ba4f2762c50b253a5',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48.mp3', 914, '2026-09-14 13:32:39.078778', '2e488a6b7f819e35618fccec81ce51c68dd8104f16d8a31c13b1e6730e860aab', 'validated', '{"audio_key":"fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48","entity_key":"d_numbers_0_10_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2e488a6b7f819e35618fccec81ce51c68dd8104f16d8a31c13b1e6730e860aab","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_de_de-forms-signs_sign:1 -> audio/generated/de-DE/dialogues/ffd09f2c6946421d2e9622084d05a661774c5da4c589d3912338c8b73032e6ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67a4823a-629e-5d4b-805a-08c5ea6788e2', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_de_de-forms-signs_sign:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76da97bd643208feab9c49a86fc706f348d1706cb6318641b66c493a8065ecda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58ffc555-8d31-50a1-9cbe-27d0e8908afa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67a4823a-629e-5d4b-805a-08c5ea6788e2', 1), '76da97bd643208feab9c49a86fc706f348d1706cb6318641b66c493a8065ecda',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ffd09f2c6946421d2e9622084d05a661774c5da4c589d3912338c8b73032e6ab.mp3', 1332, '2026-09-14 13:32:40.112472', 'f67e4aceeeef4f9ad5c29da09243e564258996f0b40b1658f5bc368d1e9f4e4b', 'validated', '{"audio_key":"ffd09f2c6946421d2e9622084d05a661774c5da4c589d3912338c8b73032e6ab","entity_key":"d_de_de-forms-signs_sign:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f67e4aceeeef4f9ad5c29da09243e564258996f0b40b1658f5bc368d1e9f4e4b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ffd09f2c6946421d2e9622084d05a661774c5da4c589d3912338c8b73032e6ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_02 -> audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f582987-11ac-5f6b-9469-61894a934ee8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f939dc09-9f2d-5793-bb92-feb44b6434dd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f582987-11ac-5f6b-9469-61894a934ee8', 1), 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3', 966, '2026-09-14 13:32:41.066331', 'd565d59e872675812b0dc0195d59e49324513788dd2f63d79cf1e583b2c29eb9', 'validated', '{"audio_key":"04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140","entity_key":"lx_survival_words_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d565d59e872675812b0dc0195d59e49324513788dd2f63d79cf1e583b2c29eb9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_02 -> audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('78e123bb-d459-5c91-b2a9-2cd03172141f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83caab06-c594-5b5b-b66c-d57ada19f964', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('78e123bb-d459-5c91-b2a9-2cd03172141f', 1), 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3', 966, '2026-09-14 13:32:41.066331', 'd565d59e872675812b0dc0195d59e49324513788dd2f63d79cf1e583b2c29eb9', 'validated', '{"audio_key":"04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140","entity_key":"wf_survival_words_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d565d59e872675812b0dc0195d59e49324513788dd2f63d79cf1e583b2c29eb9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_04 -> audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2ef695e8-e5d8-5e5e-b636-a93ea5a55df1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '354bc956b8a4b6bb6d047bb65ad26beae32115577ac211a210f023853f992fa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dc80dd8-345f-59d9-8f5f-9071178b7e9a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2ef695e8-e5d8-5e5e-b636-a93ea5a55df1', 1), '354bc956b8a4b6bb6d047bb65ad26beae32115577ac211a210f023853f992fa4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3', 914, '2026-09-14 13:32:42.046944', '724a50dff39310c0de419bdd9db51000528760493ee0faaa5c06c350aa6cd6ae', 'validated', '{"audio_key":"0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58","entity_key":"lx_first_objects_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"724a50dff39310c0de419bdd9db51000528760493ee0faaa5c06c350aa6cd6ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_04 -> audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf69d09a-66a3-5fb0-b26c-2b1153b644f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '354bc956b8a4b6bb6d047bb65ad26beae32115577ac211a210f023853f992fa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3e575c7-91e6-50be-8dba-a2694e02cfa3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf69d09a-66a3-5fb0-b26c-2b1153b644f9', 1), '354bc956b8a4b6bb6d047bb65ad26beae32115577ac211a210f023853f992fa4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3', 914, '2026-09-14 13:32:42.046944', '724a50dff39310c0de419bdd9db51000528760493ee0faaa5c06c350aa6cd6ae', 'validated', '{"audio_key":"0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58","entity_key":"wf_first_objects_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"724a50dff39310c0de419bdd9db51000528760493ee0faaa5c06c350aa6cd6ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_05 -> audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2b0cc1ab-0a8d-5d1c-8b72-5984fccb7475', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('540c9d0d-d9eb-5edb-839d-7c5e7350b60a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2b0cc1ab-0a8d-5d1c-8b72-5984fccb7475', 1), '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3', 1201, '2026-09-14 13:32:43.043048', '6b61f0a0c31faebb756abe7206ec3e200ed2f9ecd5e8d2fcd5041aef0c939757', 'validated', '{"audio_key":"0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018","entity_key":"lx_survival_words_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b61f0a0c31faebb756abe7206ec3e200ed2f9ecd5e8d2fcd5041aef0c939757","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_05 -> audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d398386-ae6f-5d7a-9aec-4a70cf8a353e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d51129d5-16bc-5b30-95e7-27d66c5705db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d398386-ae6f-5d7a-9aec-4a70cf8a353e', 1), '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3', 1201, '2026-09-14 13:32:43.043048', '6b61f0a0c31faebb756abe7206ec3e200ed2f9ecd5e8d2fcd5041aef0c939757', 'validated', '{"audio_key":"0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018","entity_key":"wf_survival_words_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b61f0a0c31faebb756abe7206ec3e200ed2f9ecd5e8d2fcd5041aef0c939757","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_03 -> audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de3d51b9-216b-50b4-b972-9a75ccc9e888', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae04312b91230acc75758bd35f9494d969718c47d62d16993902e01a83abd6f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2c8838b-7de8-5d8f-9ab4-3b41f898c21d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de3d51b9-216b-50b4-b972-9a75ccc9e888', 1), 'ae04312b91230acc75758bd35f9494d969718c47d62d16993902e01a83abd6f8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3', 835, '2026-09-14 13:32:44.052081', '9815e718cae157c079d3b22b8135feae1c658a29f9104b1c67bcfe0ea76c18c4', 'validated', '{"audio_key":"0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6","entity_key":"lx_first_greetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9815e718cae157c079d3b22b8135feae1c658a29f9104b1c67bcfe0ea76c18c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_03 -> audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ddad4ede-d18e-51ab-b548-9381c447b26c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae04312b91230acc75758bd35f9494d969718c47d62d16993902e01a83abd6f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f20b5cb3-ea02-50da-985b-e539c3ff108a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ddad4ede-d18e-51ab-b548-9381c447b26c', 1), 'ae04312b91230acc75758bd35f9494d969718c47d62d16993902e01a83abd6f8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3', 835, '2026-09-14 13:32:44.052081', '9815e718cae157c079d3b22b8135feae1c658a29f9104b1c67bcfe0ea76c18c4', 'validated', '{"audio_key":"0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6","entity_key":"wf_first_greetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9815e718cae157c079d3b22b8135feae1c658a29f9104b1c67bcfe0ea76c18c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_05 -> audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('183b55df-1a60-59ed-a653-c69e12c8107b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ff34660-4cd2-5ba8-ba83-0c79ba74e532', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('183b55df-1a60-59ed-a653-c69e12c8107b', 1), '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3', 1201, '2026-09-14 13:32:45.016676', '6ceab9c68761a10d1e654bd04dbd96d2b77e662ca97741b3571293d54fb578c9', 'validated', '{"audio_key":"0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2","entity_key":"lx_first_greetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ceab9c68761a10d1e654bd04dbd96d2b77e662ca97741b3571293d54fb578c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_05 -> audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('373af3a9-fa26-578f-b88f-2453ade6de22', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e70e1cc-9603-522b-878a-7dbef85192fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('373af3a9-fa26-578f-b88f-2453ade6de22', 1), '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3', 1201, '2026-09-14 13:32:45.016676', '6ceab9c68761a10d1e654bd04dbd96d2b77e662ca97741b3571293d54fb578c9', 'validated', '{"audio_key":"0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2","entity_key":"wf_first_greetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ceab9c68761a10d1e654bd04dbd96d2b77e662ca97741b3571293d54fb578c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_06 -> audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e2814d0e-d2c7-5768-a015-937240a790ba', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9936ae9-821d-5880-85d4-cc3f28e86b66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e2814d0e-d2c7-5768-a015-937240a790ba', 1), 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3', 1071, '2026-09-14 13:32:46.040504', '173b935058f1b4640e33a38bf854a5280bc7017724137337e5e282206d28f718', 'validated', '{"audio_key":"0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940","entity_key":"lx_survival_words_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"173b935058f1b4640e33a38bf854a5280bc7017724137337e5e282206d28f718","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_06 -> audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abbc8bf9-b25a-5977-bac1-56131c038c36', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('008200e0-1e52-5dfa-96df-03fff5a548b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abbc8bf9-b25a-5977-bac1-56131c038c36', 1), 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3', 1071, '2026-09-14 13:32:46.040504', '173b935058f1b4640e33a38bf854a5280bc7017724137337e5e282206d28f718', 'validated', '{"audio_key":"0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940","entity_key":"wf_survival_words_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"173b935058f1b4640e33a38bf854a5280bc7017724137337e5e282206d28f718","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_classroom_03 -> audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddff459c-6ae2-5508-a77a-c782daa9977b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_classroom_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb12b978-c94c-5f8f-9a0e-fbb4651cae95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddff459c-6ae2-5508-a77a-c782daa9977b', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3', 1384, '2026-09-14 13:32:47.069287', '8283205e673799e876b7b22703fabe37a3d1f6c47d03f4ae1e26fb4d2cc017db', 'validated', '{"audio_key":"1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376","entity_key":"lx_classroom_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8283205e673799e876b7b22703fabe37a3d1f6c47d03f4ae1e26fb4d2cc017db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_classroom_03 -> audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27340be5-44d2-5456-b2cd-e6ff612355de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_classroom_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('005cd9f0-247f-504e-a8ac-a46e0285fbe6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27340be5-44d2-5456-b2cd-e6ff612355de', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3', 1384, '2026-09-14 13:32:47.069287', '8283205e673799e876b7b22703fabe37a3d1f6c47d03f4ae1e26fb4d2cc017db', 'validated', '{"audio_key":"1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376","entity_key":"wf_classroom_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8283205e673799e876b7b22703fabe37a3d1f6c47d03f4ae1e26fb4d2cc017db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_01 -> audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('05c9cbc1-6c90-588a-a82b-f94bac8f9913', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645644f67714effe70feb39f650b7a1502a2e236a90af96aa37b78135dc2d90b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('018e175e-8b68-53c3-b23d-2ae59b4c89eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('05c9cbc1-6c90-588a-a82b-f94bac8f9913', 1), '645644f67714effe70feb39f650b7a1502a2e236a90af96aa37b78135dc2d90b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3', 1567, '2026-09-14 13:32:48.078138', '8ce193857e7b3968097c7c5590b9c95f2aac62dbf97b10ac821ae685552d2d0f', 'validated', '{"audio_key":"1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641","entity_key":"lx_first_conversation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8ce193857e7b3968097c7c5590b9c95f2aac62dbf97b10ac821ae685552d2d0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_01 -> audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a6dcbab-a0a2-57a9-af56-0042ee835106', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645644f67714effe70feb39f650b7a1502a2e236a90af96aa37b78135dc2d90b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb6a7cb7-59a7-5aec-af72-4da28f129f14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a6dcbab-a0a2-57a9-af56-0042ee835106', 1), '645644f67714effe70feb39f650b7a1502a2e236a90af96aa37b78135dc2d90b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3', 1567, '2026-09-14 13:32:48.078138', '8ce193857e7b3968097c7c5590b9c95f2aac62dbf97b10ac821ae685552d2d0f', 'validated', '{"audio_key":"1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641","entity_key":"wf_first_conversation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8ce193857e7b3968097c7c5590b9c95f2aac62dbf97b10ac821ae685552d2d0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_01 -> audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6621548b-c4fc-522d-b273-d329111f54b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04fe1a4321039f5afee0325afbdaa88e02531b485b183415968b94a383d24744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b57feee-9dfb-552b-b8d6-ef6e1822501c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6621548b-c4fc-522d-b273-d329111f54b8', 1), '04fe1a4321039f5afee0325afbdaa88e02531b485b183415968b94a383d24744',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3', 966, '2026-09-14 13:32:49.065013', '8779e5dbb144e1fb25ede412a9bd33e907a7848b961a331f700a6184466a3ea0', 'validated', '{"audio_key":"1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0","entity_key":"lx_first_objects_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8779e5dbb144e1fb25ede412a9bd33e907a7848b961a331f700a6184466a3ea0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_01 -> audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ba80504-6f05-53ed-a3c3-469de2079c48', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04fe1a4321039f5afee0325afbdaa88e02531b485b183415968b94a383d24744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d19b0d3d-20ff-5071-8a2b-5c3ecf1434a1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ba80504-6f05-53ed-a3c3-469de2079c48', 1), '04fe1a4321039f5afee0325afbdaa88e02531b485b183415968b94a383d24744',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3', 966, '2026-09-14 13:32:49.065013', '8779e5dbb144e1fb25ede412a9bd33e907a7848b961a331f700a6184466a3ea0', 'validated', '{"audio_key":"1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0","entity_key":"wf_first_objects_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8779e5dbb144e1fb25ede412a9bd33e907a7848b961a331f700a6184466a3ea0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_06 -> audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d544844-a1a5-5bff-b700-94d58beb77a4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e16ac309-95de-59e8-8203-009661998b4e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d544844-a1a5-5bff-b700-94d58beb77a4', 1), 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3', 679, '2026-09-14 13:32:49.995241', '6182e738d4a4e4770c5c96985ad645a95f11b40e5605ee5b6ab97e87c77d771b', 'validated', '{"audio_key":"2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e","entity_key":"lx_alphabet_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6182e738d4a4e4770c5c96985ad645a95f11b40e5605ee5b6ab97e87c77d771b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_06 -> audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('248f8756-cf3e-50ac-bd49-b790aac96d41', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a833434d-4c2d-5c0d-9156-a483aeefbc4a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('248f8756-cf3e-50ac-bd49-b790aac96d41', 1), 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3', 679, '2026-09-14 13:32:49.995241', '6182e738d4a4e4770c5c96985ad645a95f11b40e5605ee5b6ab97e87c77d771b', 'validated', '{"audio_key":"2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e","entity_key":"wf_alphabet_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6182e738d4a4e4770c5c96985ad645a95f11b40e5605ee5b6ab97e87c77d771b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_03 -> audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f017597d-7719-5434-817f-5b22ded0e500', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac315441-5201-5280-ada0-58d6c3b9194a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f017597d-7719-5434-817f-5b22ded0e500', 1), 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3', 914, '2026-09-14 13:32:51.051492', 'cb34a02038e28fc12bc0dbdd9546583a4544670cf1e8f0fb37cb9016299d4beb', 'validated', '{"audio_key":"27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff","entity_key":"lx_first_sounds_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb34a02038e28fc12bc0dbdd9546583a4544670cf1e8f0fb37cb9016299d4beb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_03 -> audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('74a3e4d0-2b19-53b0-aa98-9c94c1022d5b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76966436-03cb-57f9-8ac5-16d3715cb93d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('74a3e4d0-2b19-53b0-aa98-9c94c1022d5b', 1), 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3', 914, '2026-09-14 13:32:51.051492', 'cb34a02038e28fc12bc0dbdd9546583a4544670cf1e8f0fb37cb9016299d4beb', 'validated', '{"audio_key":"27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff","entity_key":"wf_first_sounds_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb34a02038e28fc12bc0dbdd9546583a4544670cf1e8f0fb37cb9016299d4beb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_04 -> audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9f0564b-a9b2-5e1a-b577-15eb3fd08319', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b748a919ad3e0a2ce7499df93f42e4a9babab9c7f28fff798b66b53466b4bc7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b98f73aa-eca1-514a-9de6-9b111363df90', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9f0564b-a9b2-5e1a-b577-15eb3fd08319', 1), 'b748a919ad3e0a2ce7499df93f42e4a9babab9c7f28fff798b66b53466b4bc7e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3', 1071, '2026-09-14 13:32:52.038502', '641bfac7916355ea5b94b69ea2ea13fb908ca40ef45ec4d8d33a5550a6412e8c', 'validated', '{"audio_key":"2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b","entity_key":"lx_first_sounds_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"641bfac7916355ea5b94b69ea2ea13fb908ca40ef45ec4d8d33a5550a6412e8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_04 -> audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8086cbd5-b36e-529d-bd90-eeead05f7c50', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b748a919ad3e0a2ce7499df93f42e4a9babab9c7f28fff798b66b53466b4bc7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ac19d0e-b2cf-573c-9979-8c3ea307c640', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8086cbd5-b36e-529d-bd90-eeead05f7c50', 1), 'b748a919ad3e0a2ce7499df93f42e4a9babab9c7f28fff798b66b53466b4bc7e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3', 1071, '2026-09-14 13:32:52.038502', '641bfac7916355ea5b94b69ea2ea13fb908ca40ef45ec4d8d33a5550a6412e8c', 'validated', '{"audio_key":"2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b","entity_key":"wf_first_sounds_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"641bfac7916355ea5b94b69ea2ea13fb908ca40ef45ec4d8d33a5550a6412e8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_06 -> audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c033e5f2-bd3b-5f2c-9ee4-72ae0558e2ec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e80649a6418b6c24fccb199dab7cb5bd6ec37593ea0285d52d717fcc7aee5fb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de2a572f-6d1c-5e62-bb66-6cf17b5fc6f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c033e5f2-bd3b-5f2c-9ee4-72ae0558e2ec', 1), 'e80649a6418b6c24fccb199dab7cb5bd6ec37593ea0285d52d717fcc7aee5fb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3', 966, '2026-09-14 13:32:52.999819', '59ae5a92bf83ab28e3a77b5c9cf177d848c76981001d4c89fd631c3f19ea1c04', 'validated', '{"audio_key":"2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab","entity_key":"lx_first_objects_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59ae5a92bf83ab28e3a77b5c9cf177d848c76981001d4c89fd631c3f19ea1c04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_06 -> audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9692e07c-3b15-5e0d-bcb3-0c2bc35bbe54', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e80649a6418b6c24fccb199dab7cb5bd6ec37593ea0285d52d717fcc7aee5fb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9612c36-224d-5258-ad13-c9d938131b52', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9692e07c-3b15-5e0d-bcb3-0c2bc35bbe54', 1), 'e80649a6418b6c24fccb199dab7cb5bd6ec37593ea0285d52d717fcc7aee5fb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3', 966, '2026-09-14 13:32:52.999819', '59ae5a92bf83ab28e3a77b5c9cf177d848c76981001d4c89fd631c3f19ea1c04', 'validated', '{"audio_key":"2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab","entity_key":"wf_first_objects_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59ae5a92bf83ab28e3a77b5c9cf177d848c76981001d4c89fd631c3f19ea1c04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_01 -> audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36ff5791-8baa-505a-ab78-25cefde591ac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a8e5cfa8fa3e2682a19b1de32bcad9a37d310d6a9e6ac51516479e444b96856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f9ff9c9-11fa-50e7-a737-3e9b1ac170c4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36ff5791-8baa-505a-ab78-25cefde591ac', 1), '7a8e5cfa8fa3e2682a19b1de32bcad9a37d310d6a9e6ac51516479e444b96856',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3', 1253, '2026-09-14 13:32:53.974802', '2505ace4b00caa4769a353647076b26ac24f94d232161f3f83f954446ff998f2', 'validated', '{"audio_key":"2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21","entity_key":"lx_my_name_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2505ace4b00caa4769a353647076b26ac24f94d232161f3f83f954446ff998f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_01 -> audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('81685e10-9d8a-50b4-a931-7c049336cf84', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a8e5cfa8fa3e2682a19b1de32bcad9a37d310d6a9e6ac51516479e444b96856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9ef0001-16ec-58f3-93b3-24f62b140450', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('81685e10-9d8a-50b4-a931-7c049336cf84', 1), '7a8e5cfa8fa3e2682a19b1de32bcad9a37d310d6a9e6ac51516479e444b96856',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3', 1253, '2026-09-14 13:32:53.974802', '2505ace4b00caa4769a353647076b26ac24f94d232161f3f83f954446ff998f2', 'validated', '{"audio_key":"2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21","entity_key":"wf_my_name_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2505ace4b00caa4769a353647076b26ac24f94d232161f3f83f954446ff998f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_02 -> audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cdd68276-d548-5473-99de-d78faa6e275e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ef0df42-c47b-5c2f-a78c-0dc899b050f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cdd68276-d548-5473-99de-d78faa6e275e', 1), '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3', 1071, '2026-09-14 13:32:54.964050', 'd82012180befd5e3ca8c30fbb243581a2d9a99819908bf6ea7d1fbfe265459ec', 'validated', '{"audio_key":"3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc","entity_key":"lx_my_name_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d82012180befd5e3ca8c30fbb243581a2d9a99819908bf6ea7d1fbfe265459ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_02 -> audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('094ba07c-fab7-5441-b0c4-cea942a6a11e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb8f05b5-e361-58e8-ab7e-1357090abc3a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('094ba07c-fab7-5441-b0c4-cea942a6a11e', 1), '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3', 1071, '2026-09-14 13:32:54.964050', 'd82012180befd5e3ca8c30fbb243581a2d9a99819908bf6ea7d1fbfe265459ec', 'validated', '{"audio_key":"3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc","entity_key":"wf_my_name_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d82012180befd5e3ca8c30fbb243581a2d9a99819908bf6ea7d1fbfe265459ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_02 -> audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0bcf7581-7297-59eb-b948-553810ccd80d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('978ebd53-5280-575b-94c4-c275ded1b611', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0bcf7581-7297-59eb-b948-553810ccd80d', 1), 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3', 835, '2026-09-14 13:32:55.902030', '963a7413391bc4c2c56b1732999ef87ed872e92ac3b36fb3c827d226a06dc879', 'validated', '{"audio_key":"3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54","entity_key":"lx_alphabet_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"963a7413391bc4c2c56b1732999ef87ed872e92ac3b36fb3c827d226a06dc879","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_02 -> audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('677e1ced-8dbc-540e-ae76-5eb1696fedb2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe538452-c513-53f3-8bc6-ddd59b647b01', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('677e1ced-8dbc-540e-ae76-5eb1696fedb2', 1), 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3', 835, '2026-09-14 13:32:55.902030', '963a7413391bc4c2c56b1732999ef87ed872e92ac3b36fb3c827d226a06dc879', 'validated', '{"audio_key":"3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54","entity_key":"wf_alphabet_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"963a7413391bc4c2c56b1732999ef87ed872e92ac3b36fb3c827d226a06dc879","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_01 -> audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aef18530-80cb-57ef-9030-de59bfd87573', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '753692ec36adb4c794c973945eb2a99c1649703ea6f76bf259abb4fb838e013e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aed8ba6-8c79-5261-9346-728109252200', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aef18530-80cb-57ef-9030-de59bfd87573', 1), '753692ec36adb4c794c973945eb2a99c1649703ea6f76bf259abb4fb838e013e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3', 1018, '2026-09-14 13:32:56.849649', '4f67a291700c40bfa7352110ab2f51ec7c882b9f2e9f85b566c026371bae7ada', 'validated', '{"audio_key":"41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4","entity_key":"lx_first_greetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f67a291700c40bfa7352110ab2f51ec7c882b9f2e9f85b566c026371bae7ada","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_01 -> audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ece39389-606d-5859-81fa-32bee4a51197', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '753692ec36adb4c794c973945eb2a99c1649703ea6f76bf259abb4fb838e013e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bbcc311-82a7-5126-ad92-8630e763be57', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ece39389-606d-5859-81fa-32bee4a51197', 1), '753692ec36adb4c794c973945eb2a99c1649703ea6f76bf259abb4fb838e013e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3', 1018, '2026-09-14 13:32:56.849649', '4f67a291700c40bfa7352110ab2f51ec7c882b9f2e9f85b566c026371bae7ada', 'validated', '{"audio_key":"41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4","entity_key":"wf_first_greetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f67a291700c40bfa7352110ab2f51ec7c882b9f2e9f85b566c026371bae7ada","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_classroom_02 -> audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc073162-143f-5879-9423-94d105d4ba6e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_classroom_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5a7aee0-aaa5-5b99-acf0-d1d784faa720', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc073162-143f-5879-9423-94d105d4ba6e', 1), 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3', 966, '2026-09-14 13:32:57.809770', '8e51e21f7158de6be76c9cfbc3bf17850cc1a8d45162a27022effc95e6ec68f8', 'validated', '{"audio_key":"41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e","entity_key":"lx_classroom_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e51e21f7158de6be76c9cfbc3bf17850cc1a8d45162a27022effc95e6ec68f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_classroom_02 -> audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('53508748-b1b3-5a24-b573-9c040e79448d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_classroom_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6458723d-50d3-525c-814a-b4271988ec4a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('53508748-b1b3-5a24-b573-9c040e79448d', 1), 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3', 966, '2026-09-14 13:32:57.809770', '8e51e21f7158de6be76c9cfbc3bf17850cc1a8d45162a27022effc95e6ec68f8', 'validated', '{"audio_key":"41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e","entity_key":"wf_classroom_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e51e21f7158de6be76c9cfbc3bf17850cc1a8d45162a27022effc95e6ec68f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_06 -> audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f5c8d71-b24c-5e71-9df3-ebb08f3ef646', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bde0cc1d-8df9-59c0-96ad-60e19af9e09f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f5c8d71-b24c-5e71-9df3-ebb08f3ef646', 1), '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3', 1384, '2026-09-14 13:32:58.837843', '75ec9747382ab9a9888cedd2417acea984e8f29006599e6072e547ab03bcb556', 'validated', '{"audio_key":"5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a","entity_key":"lx_first_conversation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75ec9747382ab9a9888cedd2417acea984e8f29006599e6072e547ab03bcb556","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_06 -> audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('deb7e226-6715-5a0d-b972-0a27d3f085de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52b5a429-5090-5c51-b903-306085d0dde0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('deb7e226-6715-5a0d-b972-0a27d3f085de', 1), '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3', 1384, '2026-09-14 13:32:58.837843', '75ec9747382ab9a9888cedd2417acea984e8f29006599e6072e547ab03bcb556', 'validated', '{"audio_key":"5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a","entity_key":"wf_first_conversation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75ec9747382ab9a9888cedd2417acea984e8f29006599e6072e547ab03bcb556","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_letter_names_04 -> audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8d3f354-f6a0-52d8-a3e8-ee9f6fa382b4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_letter_names_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '633f99b3aee08b2f6e7042f0c69879b01394d051d718cf90b91c349c80841079'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a588ed8-2160-50be-bf7a-2fbc555dc235', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8d3f354-f6a0-52d8-a3e8-ee9f6fa382b4', 1), '633f99b3aee08b2f6e7042f0c69879b01394d051d718cf90b91c349c80841079',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3', 1097, '2026-09-14 13:32:59.913387', 'f74f30c3143582705be9dc1ea316a4c0ac215bb02e9173ae448a675e2d8c83fd', 'validated', '{"audio_key":"590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81","entity_key":"lx_letter_names_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f74f30c3143582705be9dc1ea316a4c0ac215bb02e9173ae448a675e2d8c83fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_letter_names_04 -> audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a4a01d1a-87a7-5014-bd87-ae85add3cb90', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_letter_names_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '633f99b3aee08b2f6e7042f0c69879b01394d051d718cf90b91c349c80841079'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c839a6ef-e70f-5edc-bbe5-96209b834153', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a4a01d1a-87a7-5014-bd87-ae85add3cb90', 1), '633f99b3aee08b2f6e7042f0c69879b01394d051d718cf90b91c349c80841079',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3', 1097, '2026-09-14 13:32:59.913387', 'f74f30c3143582705be9dc1ea316a4c0ac215bb02e9173ae448a675e2d8c83fd', 'validated', '{"audio_key":"590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81","entity_key":"wf_letter_names_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f74f30c3143582705be9dc1ea316a4c0ac215bb02e9173ae448a675e2d8c83fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_letter_names_01 -> audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a81f92d-3d3a-52e4-98f7-33651b1e763f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_letter_names_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa76f52e5e6ad5db658a809cf3c1a306cf769745ff6313dd12581c3112a30f53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c7a43c3-f570-5ff6-9d5f-c4a001081ee9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a81f92d-3d3a-52e4-98f7-33651b1e763f', 1), 'fa76f52e5e6ad5db658a809cf3c1a306cf769745ff6313dd12581c3112a30f53',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3', 1280, '2026-09-14 13:33:00.973797', 'eaeb1f7402da053925d19a413d20616efa90fb526c150cdaf96344c8277ed134', 'validated', '{"audio_key":"59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0","entity_key":"lx_letter_names_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eaeb1f7402da053925d19a413d20616efa90fb526c150cdaf96344c8277ed134","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_letter_names_01 -> audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('08964955-1549-549d-8078-6027fae8cd25', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_letter_names_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa76f52e5e6ad5db658a809cf3c1a306cf769745ff6313dd12581c3112a30f53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19ad77be-6694-5a47-b2c1-685a69300841', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('08964955-1549-549d-8078-6027fae8cd25', 1), 'fa76f52e5e6ad5db658a809cf3c1a306cf769745ff6313dd12581c3112a30f53',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3', 1280, '2026-09-14 13:33:00.973797', 'eaeb1f7402da053925d19a413d20616efa90fb526c150cdaf96344c8277ed134', 'validated', '{"audio_key":"59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0","entity_key":"wf_letter_names_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eaeb1f7402da053925d19a413d20616efa90fb526c150cdaf96344c8277ed134","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_04 -> audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('502d086a-739e-54df-8e59-5173543b9409', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e34b0b1f43105b4fedfe803403ba3c0052495b284acca186443bfffb94323e7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e92c735-ace4-52f0-94f6-ebda23fddfc6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('502d086a-739e-54df-8e59-5173543b9409', 1), 'e34b0b1f43105b4fedfe803403ba3c0052495b284acca186443bfffb94323e7f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3', 914, '2026-09-14 13:33:01.954364', 'bcc056deefa6d853d923ed747c4e1c8610ef7eee43f4770ae0a36f2183aed051', 'validated', '{"audio_key":"5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f","entity_key":"lx_first_conversation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcc056deefa6d853d923ed747c4e1c8610ef7eee43f4770ae0a36f2183aed051","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_04 -> audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fe0581a7-2ba1-5577-8723-cc830bf08647', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e34b0b1f43105b4fedfe803403ba3c0052495b284acca186443bfffb94323e7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fa1b6fb-a9e9-5c95-aea6-4eaa0a6931e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fe0581a7-2ba1-5577-8723-cc830bf08647', 1), 'e34b0b1f43105b4fedfe803403ba3c0052495b284acca186443bfffb94323e7f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3', 914, '2026-09-14 13:33:01.954364', 'bcc056deefa6d853d923ed747c4e1c8610ef7eee43f4770ae0a36f2183aed051', 'validated', '{"audio_key":"5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f","entity_key":"wf_first_conversation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcc056deefa6d853d923ed747c4e1c8610ef7eee43f4770ae0a36f2183aed051","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_classroom_06 -> audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('09889007-1a55-5d29-9c77-5d307f87e3a9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_classroom_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a82f0222-ef33-59f5-a1ad-2e3807a1e2b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('09889007-1a55-5d29-9c77-5d307f87e3a9', 1), '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3', 1018, '2026-09-14 13:33:02.922172', '79e09e7fd9b5afdc8d099076f3700410a629c67f7cc68265b0490e0e8c47d2be', 'validated', '{"audio_key":"602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c","entity_key":"lx_classroom_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79e09e7fd9b5afdc8d099076f3700410a629c67f7cc68265b0490e0e8c47d2be","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_classroom_06 -> audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b72a3461-bb62-59ca-824a-211528184c7f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_classroom_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c60bc106-46b5-5070-a9a7-94931ca0dea0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b72a3461-bb62-59ca-824a-211528184c7f', 1), '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3', 1018, '2026-09-14 13:33:02.922172', '79e09e7fd9b5afdc8d099076f3700410a629c67f7cc68265b0490e0e8c47d2be', 'validated', '{"audio_key":"602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c","entity_key":"wf_classroom_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79e09e7fd9b5afdc8d099076f3700410a629c67f7cc68265b0490e0e8c47d2be","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_03 -> audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bbbd21bc-3f5e-5c11-93bd-f8f7b429a25c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20ae1fb1-89f2-5ecf-8338-3323b312b15a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bbbd21bc-3f5e-5c11-93bd-f8f7b429a25c', 1), 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3', 1097, '2026-09-14 13:33:03.923757', '289d1b07c77973eea79cd81b9b2436f8ee488057dd9761131173d14bdb443b3b', 'validated', '{"audio_key":"60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe","entity_key":"lx_survival_words_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"289d1b07c77973eea79cd81b9b2436f8ee488057dd9761131173d14bdb443b3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_03 -> audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f1e26850-6884-56c9-b8bf-1af0b725f793', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7844d93-2969-504c-aab5-be767c02c8a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f1e26850-6884-56c9-b8bf-1af0b725f793', 1), 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3', 1097, '2026-09-14 13:33:03.923757', '289d1b07c77973eea79cd81b9b2436f8ee488057dd9761131173d14bdb443b3b', 'validated', '{"audio_key":"60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe","entity_key":"wf_survival_words_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"289d1b07c77973eea79cd81b9b2436f8ee488057dd9761131173d14bdb443b3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_02 -> audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bbbd577d-7b7d-5a4f-864d-1037533c0349', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f54bfbed-d4d8-5085-9355-d3eb2a71238c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bbbd577d-7b7d-5a4f-864d-1037533c0349', 1), 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3', 1097, '2026-09-14 13:33:05.214684', 'd44ed851c8492812a34c5de2bc0289d877d3aa1f44f5df5ea65d343267e8b661', 'validated', '{"audio_key":"6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7","entity_key":"lx_first_conversation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d44ed851c8492812a34c5de2bc0289d877d3aa1f44f5df5ea65d343267e8b661","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_02 -> audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('053bd0a4-515b-5e98-8b6d-7237a2654639', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f567a3dc-73ac-5de4-9cb0-e81e562c3733', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('053bd0a4-515b-5e98-8b6d-7237a2654639', 1), 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3', 1097, '2026-09-14 13:33:05.214684', 'd44ed851c8492812a34c5de2bc0289d877d3aa1f44f5df5ea65d343267e8b661', 'validated', '{"audio_key":"6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7","entity_key":"wf_first_conversation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d44ed851c8492812a34c5de2bc0289d877d3aa1f44f5df5ea65d343267e8b661","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_05 -> audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2feaacaa-0f7d-5287-babc-149a29f24d05', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df8c3c71-6dc3-56b6-8f63-06303a72356b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2feaacaa-0f7d-5287-babc-149a29f24d05', 1), 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3', 1515, '2026-09-14 13:33:06.210175', '1f56b1c19f13d534d9bcf8371eff6c85a022e1b1e5c158431e9f17db6a1815cf', 'validated', '{"audio_key":"64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e","entity_key":"lx_my_name_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f56b1c19f13d534d9bcf8371eff6c85a022e1b1e5c158431e9f17db6a1815cf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_05 -> audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('845dd010-06e2-5a2e-9359-db6e88b4bd55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d78a32-027a-53ca-9444-d3c500d01e58', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('845dd010-06e2-5a2e-9359-db6e88b4bd55', 1), 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3', 1515, '2026-09-14 13:33:06.210175', '1f56b1c19f13d534d9bcf8371eff6c85a022e1b1e5c158431e9f17db6a1815cf', 'validated', '{"audio_key":"64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e","entity_key":"wf_my_name_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f56b1c19f13d534d9bcf8371eff6c85a022e1b1e5c158431e9f17db6a1815cf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_letter_names_03 -> audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ba716bc-ff02-5977-83a2-3f73758f0986', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_letter_names_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '249943aca04ba0e5945dc75b97dfb1a904eb1bd2396f1a66f92c3e7b83a66863'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c50dcf5a-3975-5e32-be59-5a26dfe2ce73', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ba716bc-ff02-5977-83a2-3f73758f0986', 1), '249943aca04ba0e5945dc75b97dfb1a904eb1bd2396f1a66f92c3e7b83a66863',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3', 862, '2026-09-14 13:33:07.163540', '230a371f351835ace464466985d49f225a734b248a230891977e6d5109dfe5e4', 'validated', '{"audio_key":"7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292","entity_key":"lx_letter_names_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"230a371f351835ace464466985d49f225a734b248a230891977e6d5109dfe5e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_letter_names_03 -> audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('42867321-05f8-5803-a654-00c6d7b04c3f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_letter_names_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '249943aca04ba0e5945dc75b97dfb1a904eb1bd2396f1a66f92c3e7b83a66863'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b78f0b4d-9321-598f-b9fa-6738ce89d845', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('42867321-05f8-5803-a654-00c6d7b04c3f', 1), '249943aca04ba0e5945dc75b97dfb1a904eb1bd2396f1a66f92c3e7b83a66863',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3', 862, '2026-09-14 13:33:07.163540', '230a371f351835ace464466985d49f225a734b248a230891977e6d5109dfe5e4', 'validated', '{"audio_key":"7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292","entity_key":"wf_letter_names_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"230a371f351835ace464466985d49f225a734b248a230891977e6d5109dfe5e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_02 -> audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8eab5cff-7839-5012-99db-bbd2dc38fe48', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01cbf732-b25b-5b8f-bb6f-7e7f5912f601', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8eab5cff-7839-5012-99db-bbd2dc38fe48', 1), '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3', 1018, '2026-09-14 13:33:08.135403', 'fb497897c131eb36ca488dd8998165dc386f1e358fc54a1366e2191432d5bdc4', 'validated', '{"audio_key":"765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d","entity_key":"lx_first_objects_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb497897c131eb36ca488dd8998165dc386f1e358fc54a1366e2191432d5bdc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_02 -> audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2948b7e6-d802-5525-973c-72627ed051aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfbf3265-b5e9-594c-b20e-7add30dc1e6f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2948b7e6-d802-5525-973c-72627ed051aa', 1), '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3', 1018, '2026-09-14 13:33:08.135403', 'fb497897c131eb36ca488dd8998165dc386f1e358fc54a1366e2191432d5bdc4', 'validated', '{"audio_key":"765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d","entity_key":"wf_first_objects_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb497897c131eb36ca488dd8998165dc386f1e358fc54a1366e2191432d5bdc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_04 -> audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e2fe0df-728d-5b78-b415-3eb11342ca33', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fafa366bebf80e883e808319f93a3879366c0ea3f45a86126f29383f8c52ea71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc06c395-0a06-5da2-9e78-b26eeee94af3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e2fe0df-728d-5b78-b415-3eb11342ca33', 1), 'fafa366bebf80e883e808319f93a3879366c0ea3f45a86126f29383f8c52ea71',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3', 862, '2026-09-14 13:33:09.095259', '2ae20a7f28a982c62ca07351b7a9ee0eed27bc1d21fcbda5f156ad3cfc4d6fe1', 'validated', '{"audio_key":"7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65","entity_key":"lx_my_name_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ae20a7f28a982c62ca07351b7a9ee0eed27bc1d21fcbda5f156ad3cfc4d6fe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_04 -> audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91239f8d-8d0b-5670-90ea-65030f2a81cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fafa366bebf80e883e808319f93a3879366c0ea3f45a86126f29383f8c52ea71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9619687-9eda-5748-9bbe-80e547713adf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91239f8d-8d0b-5670-90ea-65030f2a81cf', 1), 'fafa366bebf80e883e808319f93a3879366c0ea3f45a86126f29383f8c52ea71',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3', 862, '2026-09-14 13:33:09.095259', '2ae20a7f28a982c62ca07351b7a9ee0eed27bc1d21fcbda5f156ad3cfc4d6fe1', 'validated', '{"audio_key":"7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65","entity_key":"wf_my_name_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ae20a7f28a982c62ca07351b7a9ee0eed27bc1d21fcbda5f156ad3cfc4d6fe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_04 -> audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a031e1a-2816-5f46-9d60-39f6748b24bf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ead2a3007a3d9029677898599e500b001bf93f7daf176e93a92bfe3f6da374ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6642ac2f-2c25-5c17-abac-7c63b2ef69dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a031e1a-2816-5f46-9d60-39f6748b24bf', 1), 'ead2a3007a3d9029677898599e500b001bf93f7daf176e93a92bfe3f6da374ca',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3', 862, '2026-09-14 13:33:10.046795', '1fbf4d27525dd9bf10fa240b4943f2e50657ecd899fc76f71c4f3059d7883019', 'validated', '{"audio_key":"85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9","entity_key":"lx_survival_words_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fbf4d27525dd9bf10fa240b4943f2e50657ecd899fc76f71c4f3059d7883019","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_04 -> audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a908d38-5c05-5303-aa58-e07ccff83804', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ead2a3007a3d9029677898599e500b001bf93f7daf176e93a92bfe3f6da374ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9454e84e-6143-5244-a88e-26d197088491', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a908d38-5c05-5303-aa58-e07ccff83804', 1), 'ead2a3007a3d9029677898599e500b001bf93f7daf176e93a92bfe3f6da374ca',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3', 862, '2026-09-14 13:33:10.046795', '1fbf4d27525dd9bf10fa240b4943f2e50657ecd899fc76f71c4f3059d7883019', 'validated', '{"audio_key":"85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9","entity_key":"wf_survival_words_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fbf4d27525dd9bf10fa240b4943f2e50657ecd899fc76f71c4f3059d7883019","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_letter_names_05 -> audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5645cc23-5595-513a-a87e-969031978657', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_letter_names_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('831c828e-7e15-50b5-8a3d-16ab40fdc382', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5645cc23-5595-513a-a87e-969031978657', 1), '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3', 1097, '2026-09-14 13:33:11.033518', '8dd7562f66e41565cc41cb280b58229aa75146bfa2d224faf988e53c122f0aeb', 'validated', '{"audio_key":"8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38","entity_key":"lx_letter_names_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8dd7562f66e41565cc41cb280b58229aa75146bfa2d224faf988e53c122f0aeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_letter_names_05 -> audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0c462f1-e8a6-577c-bd8d-6a5624de5a9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_letter_names_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18ee10e0-e08c-52f1-9b34-e9b8e21a7124', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0c462f1-e8a6-577c-bd8d-6a5624de5a9e', 1), '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3', 1097, '2026-09-14 13:33:11.033518', '8dd7562f66e41565cc41cb280b58229aa75146bfa2d224faf988e53c122f0aeb', 'validated', '{"audio_key":"8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38","entity_key":"wf_letter_names_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8dd7562f66e41565cc41cb280b58229aa75146bfa2d224faf988e53c122f0aeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_05 -> audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a31d682-2c43-5a52-8293-809291da7355', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cff8a95c840c89adb7b2cdbfc63d228355d76ec79cab441a86568ae4a0ef76d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fa15c5a-d87d-50a0-a760-9c1b5ab101b3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a31d682-2c43-5a52-8293-809291da7355', 1), '1cff8a95c840c89adb7b2cdbfc63d228355d76ec79cab441a86568ae4a0ef76d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3', 1018, '2026-09-14 13:33:12.011517', 'c211207e2cfad3f91e590d42cb849e42114b057aa8c1aa4f77bb5cb36e7a72f6', 'validated', '{"audio_key":"8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3","entity_key":"lx_first_objects_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c211207e2cfad3f91e590d42cb849e42114b057aa8c1aa4f77bb5cb36e7a72f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_05 -> audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d28b5421-decb-54ee-a849-e7fc6b5b9d64', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cff8a95c840c89adb7b2cdbfc63d228355d76ec79cab441a86568ae4a0ef76d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fb3ed25-4dc0-5391-8eaf-2627f478c457', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d28b5421-decb-54ee-a849-e7fc6b5b9d64', 1), '1cff8a95c840c89adb7b2cdbfc63d228355d76ec79cab441a86568ae4a0ef76d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3', 1018, '2026-09-14 13:33:12.011517', 'c211207e2cfad3f91e590d42cb849e42114b057aa8c1aa4f77bb5cb36e7a72f6', 'validated', '{"audio_key":"8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3","entity_key":"wf_first_objects_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c211207e2cfad3f91e590d42cb849e42114b057aa8c1aa4f77bb5cb36e7a72f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_02 -> audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('942a9131-197d-5125-8b6a-7f6cd0b35372', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8aecf524-29ec-532d-98e1-fcdb25fcd118', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('942a9131-197d-5125-8b6a-7f6cd0b35372', 1), '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3', 914, '2026-09-14 13:33:13.035654', '8d3750ec933de95eb1eb17c09c7c45b7b21c98bcba8f8a76da86c5a1da1a77aa', 'validated', '{"audio_key":"90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2","entity_key":"lx_first_sounds_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3750ec933de95eb1eb17c09c7c45b7b21c98bcba8f8a76da86c5a1da1a77aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_02 -> audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b3fcf72-c3a3-5d61-b92a-f8a27506a10a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b9211c5-abe9-5fe4-b3e4-f425d66de76d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b3fcf72-c3a3-5d61-b92a-f8a27506a10a', 1), '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3', 914, '2026-09-14 13:33:13.035654', '8d3750ec933de95eb1eb17c09c7c45b7b21c98bcba8f8a76da86c5a1da1a77aa', 'validated', '{"audio_key":"90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2","entity_key":"wf_first_sounds_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3750ec933de95eb1eb17c09c7c45b7b21c98bcba8f8a76da86c5a1da1a77aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_03 -> audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1b865abf-3a75-5220-ab6f-fcd57f41b7fd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a439a993322c6bc5c8f198a5756c32525cb62362b5ce3eda1d22f0daf149258e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77b88f8d-605e-578f-8764-70aed4ccfcff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1b865abf-3a75-5220-ab6f-fcd57f41b7fd', 1), 'a439a993322c6bc5c8f198a5756c32525cb62362b5ce3eda1d22f0daf149258e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3', 1280, '2026-09-14 13:33:14.226764', '333feae97b3d745361a852020e0c596aadaab61b2ae343aaf9e62ac9fa39689f', 'validated', '{"audio_key":"9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa","entity_key":"lx_my_name_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"333feae97b3d745361a852020e0c596aadaab61b2ae343aaf9e62ac9fa39689f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_03 -> audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d319dc95-3659-5614-ab85-c2b2331e604a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a439a993322c6bc5c8f198a5756c32525cb62362b5ce3eda1d22f0daf149258e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a63947c-bfe6-55c1-900a-d71137cd761f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d319dc95-3659-5614-ab85-c2b2331e604a', 1), 'a439a993322c6bc5c8f198a5756c32525cb62362b5ce3eda1d22f0daf149258e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3', 1280, '2026-09-14 13:33:14.226764', '333feae97b3d745361a852020e0c596aadaab61b2ae343aaf9e62ac9fa39689f', 'validated', '{"audio_key":"9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa","entity_key":"wf_my_name_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"333feae97b3d745361a852020e0c596aadaab61b2ae343aaf9e62ac9fa39689f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_06 -> audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5b167bc3-b46a-5faf-ab67-9a688efad99f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cb7cb37-b46e-5763-908d-ad0350a75014', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5b167bc3-b46a-5faf-ab67-9a688efad99f', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3', 914, '2026-09-14 13:33:15.202166', '9f31b7402be60f844b8402441c73fb97dfc608ef29d1a7aaea43d731ea6815ae', 'validated', '{"audio_key":"955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9","entity_key":"lx_numbers_0_10_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f31b7402be60f844b8402441c73fb97dfc608ef29d1a7aaea43d731ea6815ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_06 -> audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45fbe057-d095-5471-af13-72bd68ecbaa0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('307f312b-5c66-50e2-a829-1f31e7953ebc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45fbe057-d095-5471-af13-72bd68ecbaa0', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3', 914, '2026-09-14 13:33:15.202166', '9f31b7402be60f844b8402441c73fb97dfc608ef29d1a7aaea43d731ea6815ae', 'validated', '{"audio_key":"955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9","entity_key":"wf_numbers_0_10_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f31b7402be60f844b8402441c73fb97dfc608ef29d1a7aaea43d731ea6815ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_03 -> audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0def660a-3fd0-5173-8efb-f52d0c368137', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9f11dda-9cb9-5770-a264-fec9c8343b3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0def660a-3fd0-5173-8efb-f52d0c368137', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3', 1201, '2026-09-14 13:33:16.200700', '84b341f8e4e4d2cb63dbe6f7a20ccf4e6b764fd89382f01a39800a0346f4d098', 'validated', '{"audio_key":"9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e","entity_key":"lx_first_conversation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84b341f8e4e4d2cb63dbe6f7a20ccf4e6b764fd89382f01a39800a0346f4d098","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_03 -> audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('785d7164-f254-56be-b2ea-123a6536ad1d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f9dfce9-13d2-5c6a-9d16-1b4181ae42ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('785d7164-f254-56be-b2ea-123a6536ad1d', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3', 1201, '2026-09-14 13:33:16.200700', '84b341f8e4e4d2cb63dbe6f7a20ccf4e6b764fd89382f01a39800a0346f4d098', 'validated', '{"audio_key":"9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e","entity_key":"wf_first_conversation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84b341f8e4e4d2cb63dbe6f7a20ccf4e6b764fd89382f01a39800a0346f4d098","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_06 -> audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('94375a04-c518-5747-a29f-29074eb5f931', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d41dba1c-8d79-5e0b-983f-172af53f0f9d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('94375a04-c518-5747-a29f-29074eb5f931', 1), 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3', 1097, '2026-09-14 13:33:17.164075', '96276dea671d794d4ae0218e2e78e14fe98b4ae4aa4c94887b5e075824f445cb', 'validated', '{"audio_key":"a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45","entity_key":"lx_first_greetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96276dea671d794d4ae0218e2e78e14fe98b4ae4aa4c94887b5e075824f445cb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_06 -> audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('73d2449c-e1ea-5cad-9851-f572029648b1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5bdd4d4-13ba-5037-8b68-4ac71abdd853', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('73d2449c-e1ea-5cad-9851-f572029648b1', 1), 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3', 1097, '2026-09-14 13:33:17.164075', '96276dea671d794d4ae0218e2e78e14fe98b4ae4aa4c94887b5e075824f445cb', 'validated', '{"audio_key":"a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45","entity_key":"wf_first_greetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96276dea671d794d4ae0218e2e78e14fe98b4ae4aa4c94887b5e075824f445cb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_01 -> audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d88b87e-3b6f-5f5e-a077-1750f33805b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2827ebf-dc2e-5e20-9f02-acb47fbf4b92', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d88b87e-3b6f-5f5e-a077-1750f33805b7', 1), '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3', 1071, '2026-09-14 13:33:18.137653', '663b667d5527cfc619b2fe9538dee8b659faab963e64e66dc15010d37ffbe8d9', 'validated', '{"audio_key":"a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597","entity_key":"lx_numbers_0_10_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"663b667d5527cfc619b2fe9538dee8b659faab963e64e66dc15010d37ffbe8d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_01 -> audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cca8e011-cf6c-5eb6-9f52-005d3f05a581', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a14c8d7-1ce7-5b6e-94fe-33f423f7ac3e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cca8e011-cf6c-5eb6-9f52-005d3f05a581', 1), '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3', 1071, '2026-09-14 13:33:18.137653', '663b667d5527cfc619b2fe9538dee8b659faab963e64e66dc15010d37ffbe8d9', 'validated', '{"audio_key":"a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597","entity_key":"wf_numbers_0_10_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"663b667d5527cfc619b2fe9538dee8b659faab963e64e66dc15010d37ffbe8d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_classroom_05 -> audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1e51b85-80a2-570d-ac7a-1fbc3641c608', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_classroom_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1ad2620-57b0-5444-b403-c1f97a876391', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1e51b85-80a2-570d-ac7a-1fbc3641c608', 1), 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3', 1515, '2026-09-14 13:33:19.155590', '24699213f45fc53eaeb8f7b1b30099ef70022e3d4423741c9a6210f60d378537', 'validated', '{"audio_key":"a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092","entity_key":"lx_classroom_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24699213f45fc53eaeb8f7b1b30099ef70022e3d4423741c9a6210f60d378537","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_classroom_05 -> audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('01f4660f-13fc-5a72-a613-46a94b18af6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_classroom_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ef973d1-e49d-5914-8730-f7d23cc05d1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('01f4660f-13fc-5a72-a613-46a94b18af6d', 1), 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3', 1515, '2026-09-14 13:33:19.155590', '24699213f45fc53eaeb8f7b1b30099ef70022e3d4423741c9a6210f60d378537', 'validated', '{"audio_key":"a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092","entity_key":"wf_classroom_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24699213f45fc53eaeb8f7b1b30099ef70022e3d4423741c9a6210f60d378537","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_01 -> audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e752d577-8cee-50fa-970f-029c211b1a53', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5050f41029c87e2436a43b5d82675241b6e1f57ad00749f7c03eddeeb97946eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ed3c530-b552-5a57-9fe1-9bb8bc26962c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e752d577-8cee-50fa-970f-029c211b1a53', 1), '5050f41029c87e2436a43b5d82675241b6e1f57ad00749f7c03eddeeb97946eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3', 966, '2026-09-14 13:33:20.116294', '5e7105e6a03868501fd42b718b6443fbc6587adea7344045e3eeb2d2d13851cd', 'validated', '{"audio_key":"a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa","entity_key":"lx_first_sounds_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e7105e6a03868501fd42b718b6443fbc6587adea7344045e3eeb2d2d13851cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_01 -> audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ec75252-6c70-5361-bc9f-3196ce7cab3e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5050f41029c87e2436a43b5d82675241b6e1f57ad00749f7c03eddeeb97946eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de2b2ed4-cf5d-5735-87dd-0eb7918d0dc0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ec75252-6c70-5361-bc9f-3196ce7cab3e', 1), '5050f41029c87e2436a43b5d82675241b6e1f57ad00749f7c03eddeeb97946eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3', 966, '2026-09-14 13:33:20.116294', '5e7105e6a03868501fd42b718b6443fbc6587adea7344045e3eeb2d2d13851cd', 'validated', '{"audio_key":"a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa","entity_key":"wf_first_sounds_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e7105e6a03868501fd42b718b6443fbc6587adea7344045e3eeb2d2d13851cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_classroom_04 -> audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('883366c7-2b43-5de8-8d75-592c5e1cbd82', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_classroom_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fa7b548-0c4a-5a41-b338-43e075abfedf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('883366c7-2b43-5de8-8d75-592c5e1cbd82', 1), '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3', 1332, '2026-09-14 13:33:21.119634', 'dc02947370ba7cc30e200f98e865efb253fe5d4a4991389564dc32be42a27fad', 'validated', '{"audio_key":"ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba","entity_key":"lx_classroom_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc02947370ba7cc30e200f98e865efb253fe5d4a4991389564dc32be42a27fad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_classroom_04 -> audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ef7b08fc-7020-5e93-9433-975fe2230b98', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_classroom_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2764cade-7c51-5535-a21e-39237ce25885', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ef7b08fc-7020-5e93-9433-975fe2230b98', 1), '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3', 1332, '2026-09-14 13:33:21.119634', 'dc02947370ba7cc30e200f98e865efb253fe5d4a4991389564dc32be42a27fad', 'validated', '{"audio_key":"ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba","entity_key":"wf_classroom_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc02947370ba7cc30e200f98e865efb253fe5d4a4991389564dc32be42a27fad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_classroom_01 -> audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5bac2a3f-3e32-50bd-bbea-e0a61ccd84d7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_classroom_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a48ee3eb8603502e959a6bd4c67e7d45fcb63136261db721a6d2a4afa12daa5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8970bfde-1d5a-5fcd-9776-ef6544d752c4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5bac2a3f-3e32-50bd-bbea-e0a61ccd84d7', 1), '0a48ee3eb8603502e959a6bd4c67e7d45fcb63136261db721a6d2a4afa12daa5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3', 966, '2026-09-14 13:33:22.131124', '418a596f2fe858779e363f884f2fee43d51d92f77944f4fba52d2ebd47314af7', 'validated', '{"audio_key":"ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b","entity_key":"lx_classroom_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"418a596f2fe858779e363f884f2fee43d51d92f77944f4fba52d2ebd47314af7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_classroom_01 -> audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a41859f-a591-57c9-9e46-233a56e9a7b4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_classroom_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a48ee3eb8603502e959a6bd4c67e7d45fcb63136261db721a6d2a4afa12daa5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64f3425c-895b-50ec-a189-ba2e2ea56358', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a41859f-a591-57c9-9e46-233a56e9a7b4', 1), '0a48ee3eb8603502e959a6bd4c67e7d45fcb63136261db721a6d2a4afa12daa5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3', 966, '2026-09-14 13:33:22.131124', '418a596f2fe858779e363f884f2fee43d51d92f77944f4fba52d2ebd47314af7', 'validated', '{"audio_key":"ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b","entity_key":"wf_classroom_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"418a596f2fe858779e363f884f2fee43d51d92f77944f4fba52d2ebd47314af7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_03 -> audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('19ff1087-9e6c-5bc8-aeca-fe9608c5a8b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53f8e1a2ac391fb506c44df8e0083770a492307673a85b28b67df81d69cdc136'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f2c3769-a895-5b3b-b082-349998df44c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('19ff1087-9e6c-5bc8-aeca-fe9608c5a8b8', 1), '53f8e1a2ac391fb506c44df8e0083770a492307673a85b28b67df81d69cdc136',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3', 1149, '2026-09-14 13:33:23.121671', '122098f87ada77ff3b7db6a3423c1d290d978023177cc93c6aaecb90190fbf9e', 'validated', '{"audio_key":"afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab","entity_key":"lx_first_objects_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"122098f87ada77ff3b7db6a3423c1d290d978023177cc93c6aaecb90190fbf9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_03 -> audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('927ab87f-f2e0-5271-8a3b-f8e755acf296', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53f8e1a2ac391fb506c44df8e0083770a492307673a85b28b67df81d69cdc136'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5935813d-17c2-5ee9-b39f-6cae64ca001a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('927ab87f-f2e0-5271-8a3b-f8e755acf296', 1), '53f8e1a2ac391fb506c44df8e0083770a492307673a85b28b67df81d69cdc136',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3', 1149, '2026-09-14 13:33:23.121671', '122098f87ada77ff3b7db6a3423c1d290d978023177cc93c6aaecb90190fbf9e', 'validated', '{"audio_key":"afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab","entity_key":"wf_first_objects_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"122098f87ada77ff3b7db6a3423c1d290d978023177cc93c6aaecb90190fbf9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_05 -> audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e346b271-d1cd-5b58-81ee-832585b2f52d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d094c1ce-ba06-5337-a34e-393458e97ba6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e346b271-d1cd-5b58-81ee-832585b2f52d', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 966, '2026-09-14 13:33:24.120366', 'bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"lx_first_sounds_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_05 -> audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('af7d2f66-18ce-5a4c-b51f-847f8c8edeb1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a73edce-b545-5f63-b336-598a63d52d72', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('af7d2f66-18ce-5a4c-b51f-847f8c8edeb1', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 966, '2026-09-14 13:33:24.120366', 'bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"wf_first_sounds_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_03 -> audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e346b271-d1cd-5b58-81ee-832585b2f52d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d094c1ce-ba06-5337-a34e-393458e97ba6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e346b271-d1cd-5b58-81ee-832585b2f52d', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 966, '2026-09-14 13:33:24.120366', 'bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"lx_numbers_0_10_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_03 -> audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae655455-7096-5940-9c46-d5dc57afdce9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca31feeb-5179-5071-8184-7c9f536d0689', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae655455-7096-5940-9c46-d5dc57afdce9', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 966, '2026-09-14 13:33:24.120366', 'bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"wf_numbers_0_10_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbcbc1b2feeed03cc9072055ca9ae979ff8ccda58bce843ea9b31a21c2054ebf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_02 -> audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('893843e1-8ea0-5c7c-a713-c451933c161e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fd8f8b8-574e-5be7-896f-32b55d739af9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('893843e1-8ea0-5c7c-a713-c451933c161e', 1), 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3', 1149, '2026-09-14 13:33:25.166632', '6aa3c760cb0a2e200de4fab355d2884a60b510ce679d5cf86ffba3e805d2c743', 'validated', '{"audio_key":"b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7","entity_key":"lx_first_greetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6aa3c760cb0a2e200de4fab355d2884a60b510ce679d5cf86ffba3e805d2c743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_02 -> audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a15f7322-0d88-57fd-990f-3529b78cfa57', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2cdaf4c-3e30-5873-8090-cad49f7858c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a15f7322-0d88-57fd-990f-3529b78cfa57', 1), 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3', 1149, '2026-09-14 13:33:25.166632', '6aa3c760cb0a2e200de4fab355d2884a60b510ce679d5cf86ffba3e805d2c743', 'validated', '{"audio_key":"b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7","entity_key":"wf_first_greetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6aa3c760cb0a2e200de4fab355d2884a60b510ce679d5cf86ffba3e805d2c743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_04 -> audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('635d9f15-af88-54d8-8888-dd43e3dbb270', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb5cabd4-6ad4-5652-8f1b-6e5a0ce24fea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('635d9f15-af88-54d8-8888-dd43e3dbb270', 1), '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3', 1097, '2026-09-14 13:33:26.145248', 'f7edb0b7aed8b527626f6b234774fee7c86f9c66da5950254cd35db8e01bde28', 'validated', '{"audio_key":"bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574","entity_key":"lx_first_greetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f7edb0b7aed8b527626f6b234774fee7c86f9c66da5950254cd35db8e01bde28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_04 -> audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4673aca1-76ae-5fb8-a6df-ead32f6d9590', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6849e89c-61c7-5443-b63f-e5d1b8ef041b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4673aca1-76ae-5fb8-a6df-ead32f6d9590', 1), '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3', 1097, '2026-09-14 13:33:26.145248', 'f7edb0b7aed8b527626f6b234774fee7c86f9c66da5950254cd35db8e01bde28', 'validated', '{"audio_key":"bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574","entity_key":"wf_first_greetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f7edb0b7aed8b527626f6b234774fee7c86f9c66da5950254cd35db8e01bde28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_05 -> audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6f41042f-d3a7-58e4-ac64-91ea106bdf24', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e27ff22-072b-5814-9086-4e3c7d95f326', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6f41042f-d3a7-58e4-ac64-91ea106bdf24', 1), '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3', 679, '2026-09-14 13:33:27.071892', 'd7d8cc4b0a2591d6b2a9cdb83e7f553f9c486ea004c86398bb86baed7140f882', 'validated', '{"audio_key":"c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32","entity_key":"lx_alphabet_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7d8cc4b0a2591d6b2a9cdb83e7f553f9c486ea004c86398bb86baed7140f882","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_05 -> audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('02a92bf9-a483-5963-8487-952f0fc141fe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0978e328-3575-54e0-9b6f-ebc5b299efed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('02a92bf9-a483-5963-8487-952f0fc141fe', 1), '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3', 679, '2026-09-14 13:33:27.071892', 'd7d8cc4b0a2591d6b2a9cdb83e7f553f9c486ea004c86398bb86baed7140f882', 'validated', '{"audio_key":"c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32","entity_key":"wf_alphabet_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7d8cc4b0a2591d6b2a9cdb83e7f553f9c486ea004c86398bb86baed7140f882","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_05 -> audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d75e60c-10cd-51b9-9dc1-81e15fccd11c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89ab7b64-5af1-59ec-b9e7-e18724b2a94b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d75e60c-10cd-51b9-9dc1-81e15fccd11c', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1071, '2026-09-14 13:33:28.064119', '6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"lx_first_conversation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_05 -> audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f0dbd71-f5f3-56b3-9606-fbaedf70a1f4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8313cd52-083c-59fe-b24a-6a1bf1d4e46d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f0dbd71-f5f3-56b3-9606-fbaedf70a1f4', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1071, '2026-09-14 13:33:28.064119', '6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"wf_first_conversation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_06 -> audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d75e60c-10cd-51b9-9dc1-81e15fccd11c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89ab7b64-5af1-59ec-b9e7-e18724b2a94b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d75e60c-10cd-51b9-9dc1-81e15fccd11c', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1071, '2026-09-14 13:33:28.064119', '6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"lx_my_name_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_06 -> audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('699676a4-ca87-581f-a70c-4f89b4f64ab2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6688c8dd-3c24-52b5-98c7-c82eaad3259f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('699676a4-ca87-581f-a70c-4f89b4f64ab2', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1071, '2026-09-14 13:33:28.064119', '6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"wf_my_name_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dbca8c2c99ca43244f8dfa8cc7ccd52de62e7b8f659af492dd2bf1644acc4b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_03 -> audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3b6c9ed-fc3c-593c-8633-f1458daa727e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a49c4058-d832-5623-85bb-a6e9203c7dbe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3b6c9ed-fc3c-593c-8633-f1458daa727e', 1), '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3', 783, '2026-09-14 13:33:28.988522', 'e04764e39473f8ba7615a2b3c92fe2411840ca86e243d4ca135567f5ad4675a2', 'validated', '{"audio_key":"cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174","entity_key":"lx_alphabet_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e04764e39473f8ba7615a2b3c92fe2411840ca86e243d4ca135567f5ad4675a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_03 -> audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7886bef0-e0d8-5e08-9615-2dd6c28a8d2e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1023c0e3-7ad6-58f1-a5cf-342a19988c77', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7886bef0-e0d8-5e08-9615-2dd6c28a8d2e', 1), '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3', 783, '2026-09-14 13:33:28.988522', 'e04764e39473f8ba7615a2b3c92fe2411840ca86e243d4ca135567f5ad4675a2', 'validated', '{"audio_key":"cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174","entity_key":"wf_alphabet_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e04764e39473f8ba7615a2b3c92fe2411840ca86e243d4ca135567f5ad4675a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_04 -> audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('51ab5525-32b7-5141-9544-6c4f14facb63', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b349914-ba33-532c-8673-54ca1bc85361', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('51ab5525-32b7-5141-9544-6c4f14facb63', 1), '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3', 731, '2026-09-14 13:33:29.930616', '50dea39dbb2678a50fa84dd668be383ca43fc37698f89d771669a4ea71cbb63c', 'validated', '{"audio_key":"dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30","entity_key":"lx_alphabet_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50dea39dbb2678a50fa84dd668be383ca43fc37698f89d771669a4ea71cbb63c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_04 -> audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('449486d4-70ea-5719-88a7-aa7a9f2ed678', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede34c35-f9e6-5d16-b8af-fc7a9289307f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('449486d4-70ea-5719-88a7-aa7a9f2ed678', 1), '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3', 731, '2026-09-14 13:33:29.930616', '50dea39dbb2678a50fa84dd668be383ca43fc37698f89d771669a4ea71cbb63c', 'validated', '{"audio_key":"dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30","entity_key":"wf_alphabet_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50dea39dbb2678a50fa84dd668be383ca43fc37698f89d771669a4ea71cbb63c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_02 -> audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f7ab1fb5-74dd-576d-b9a4-b677a6eeeec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfd6b995588ec54ce16871bc82a7ac86dd43a2c22309ea68e479a50043683937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0450b53c-165d-5c8e-bd90-1eb7fd0700fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f7ab1fb5-74dd-576d-b9a4-b677a6eeeec2', 1), 'bfd6b995588ec54ce16871bc82a7ac86dd43a2c22309ea68e479a50043683937',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3', 914, '2026-09-14 13:33:30.959604', '681cf1ed3e0d9165c1fd66d5db6ad949a4468eb7b3fcbadf8113d480a45ba958', 'validated', '{"audio_key":"df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac","entity_key":"lx_numbers_0_10_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"681cf1ed3e0d9165c1fd66d5db6ad949a4468eb7b3fcbadf8113d480a45ba958","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_02 -> audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2f3b5f7d-8555-5351-ac2f-71aafc3926cc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfd6b995588ec54ce16871bc82a7ac86dd43a2c22309ea68e479a50043683937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83b8079c-087c-56dc-a1dd-c0669a1c980d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2f3b5f7d-8555-5351-ac2f-71aafc3926cc', 1), 'bfd6b995588ec54ce16871bc82a7ac86dd43a2c22309ea68e479a50043683937',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3', 914, '2026-09-14 13:33:30.959604', '681cf1ed3e0d9165c1fd66d5db6ad949a4468eb7b3fcbadf8113d480a45ba958', 'validated', '{"audio_key":"df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac","entity_key":"wf_numbers_0_10_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"681cf1ed3e0d9165c1fd66d5db6ad949a4468eb7b3fcbadf8113d480a45ba958","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_04 -> audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e3caa42-7fca-5b08-90e1-5916e8ef8475', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b70e2d592dd17196b7940574ee89f31c354435338179245457ad54064ba7f77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('463f108d-bed0-5c41-8b2d-618a8b5e3c2d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e3caa42-7fca-5b08-90e1-5916e8ef8475', 1), '6b70e2d592dd17196b7940574ee89f31c354435338179245457ad54064ba7f77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3', 835, '2026-09-14 13:33:31.954256', '1336b152ac9cd2a2e4647463c4621f79a00def6da9ff202f4238a9e2a9bd34cb', 'validated', '{"audio_key":"e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a","entity_key":"lx_numbers_0_10_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1336b152ac9cd2a2e4647463c4621f79a00def6da9ff202f4238a9e2a9bd34cb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_04 -> audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('903a6951-5142-55cc-a8b1-60323e92b7c1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b70e2d592dd17196b7940574ee89f31c354435338179245457ad54064ba7f77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f427f968-f712-5761-bbb8-6b0d1820554c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('903a6951-5142-55cc-a8b1-60323e92b7c1', 1), '6b70e2d592dd17196b7940574ee89f31c354435338179245457ad54064ba7f77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3', 835, '2026-09-14 13:33:31.954256', '1336b152ac9cd2a2e4647463c4621f79a00def6da9ff202f4238a9e2a9bd34cb', 'validated', '{"audio_key":"e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a","entity_key":"wf_numbers_0_10_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1336b152ac9cd2a2e4647463c4621f79a00def6da9ff202f4238a9e2a9bd34cb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_letter_names_02 -> audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b6361fe3-58d7-5cc9-aa6b-844eb987669a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_letter_names_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3eee2632773a7f55face776196a661a6375359edcb2bea56d640b08f95ac7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ec88a78-0db4-568e-875d-e171a7f18db1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b6361fe3-58d7-5cc9-aa6b-844eb987669a', 1), 'ec3eee2632773a7f55face776196a661a6375359edcb2bea56d640b08f95ac7f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3', 1018, '2026-09-14 13:33:32.903693', '0d699e6419a35cd99aa041bc60945aada2c5173791e2210bcb9ddaebbc87eb04', 'validated', '{"audio_key":"ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d","entity_key":"lx_letter_names_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d699e6419a35cd99aa041bc60945aada2c5173791e2210bcb9ddaebbc87eb04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_letter_names_02 -> audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff0aca44-a786-5f1d-96e7-13f33984260d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_letter_names_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3eee2632773a7f55face776196a661a6375359edcb2bea56d640b08f95ac7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd538d2a-2136-582a-8ec9-f2ca877d3d0d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff0aca44-a786-5f1d-96e7-13f33984260d', 1), 'ec3eee2632773a7f55face776196a661a6375359edcb2bea56d640b08f95ac7f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3', 1018, '2026-09-14 13:33:32.903693', '0d699e6419a35cd99aa041bc60945aada2c5173791e2210bcb9ddaebbc87eb04', 'validated', '{"audio_key":"ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d","entity_key":"wf_letter_names_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d699e6419a35cd99aa041bc60945aada2c5173791e2210bcb9ddaebbc87eb04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_01 -> audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1b757420-1d32-55da-9c1d-3ed64d5dca12', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ecaba17-2157-5802-b9b5-6e3366717a2a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1b757420-1d32-55da-9c1d-3ed64d5dca12', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3', 783, '2026-09-14 13:33:33.893126', '1cddcb612ee4e2d900bbb7089add4d0177b3d91298cffdd7d2e579486276cc61', 'validated', '{"audio_key":"f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff","entity_key":"lx_alphabet_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cddcb612ee4e2d900bbb7089add4d0177b3d91298cffdd7d2e579486276cc61","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_01 -> audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8392d459-5bde-569d-a077-bbd4c1494b3b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45de52ec-2ac1-517a-8912-d95a315a7210', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8392d459-5bde-569d-a077-bbd4c1494b3b', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3', 783, '2026-09-14 13:33:33.893126', '1cddcb612ee4e2d900bbb7089add4d0177b3d91298cffdd7d2e579486276cc61', 'validated', '{"audio_key":"f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff","entity_key":"wf_alphabet_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cddcb612ee4e2d900bbb7089add4d0177b3d91298cffdd7d2e579486276cc61","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_letter_names_06 -> audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b645685d-6877-5227-9c34-97eb9f44a7d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_letter_names_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d549e2b-3545-59a7-a613-74feba1886e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b645685d-6877-5227-9c34-97eb9f44a7d1', 1), 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3', 1149, '2026-09-14 13:33:34.986423', '4135bbcfa795934cd0298953a13655b07535e3acd73057954c59d2250e271421', 'validated', '{"audio_key":"f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0","entity_key":"lx_letter_names_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4135bbcfa795934cd0298953a13655b07535e3acd73057954c59d2250e271421","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_letter_names_06 -> audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('40bc3d1f-9352-5a19-9b15-0c357956d464', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_letter_names_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa7a484b-93ef-5851-8aef-9ef1ef904da1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('40bc3d1f-9352-5a19-9b15-0c357956d464', 1), 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3', 1149, '2026-09-14 13:33:34.986423', '4135bbcfa795934cd0298953a13655b07535e3acd73057954c59d2250e271421', 'validated', '{"audio_key":"f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0","entity_key":"wf_letter_names_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4135bbcfa795934cd0298953a13655b07535e3acd73057954c59d2250e271421","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_01 -> audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c990da4-16fe-5b5d-98fc-e3760fbe96be', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('929e96a6-b56c-51e3-a7f1-6172d8103d10', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c990da4-16fe-5b5d-98fc-e3760fbe96be', 1), '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3', 862, '2026-09-14 13:33:35.976656', '418a59bc9f92138c3f5327636205eeba2bbce65a00f5a3fb5e0437cf5a1508ab', 'validated', '{"audio_key":"fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0","entity_key":"lx_survival_words_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"418a59bc9f92138c3f5327636205eeba2bbce65a00f5a3fb5e0437cf5a1508ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_01 -> audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('543c93c0-605f-5414-bc9c-e8cda7b67226', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('509ea977-444b-5917-94dc-18b5b536e3ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('543c93c0-605f-5414-bc9c-e8cda7b67226', 1), '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3', 862, '2026-09-14 13:33:35.976656', '418a59bc9f92138c3f5327636205eeba2bbce65a00f5a3fb5e0437cf5a1508ab', 'validated', '{"audio_key":"fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0","entity_key":"wf_survival_words_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"418a59bc9f92138c3f5327636205eeba2bbce65a00f5a3fb5e0437cf5a1508ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_05 -> audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('551d69e1-c4a6-543c-a69d-e25084399656', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13711edd-fe80-52b0-b261-8f20ebbe1848', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('551d69e1-c4a6-543c-a69d-e25084399656', 1), 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3', 862, '2026-09-14 13:33:36.967100', '24c12c5dab5d16c0a6f114f21c233dfbc45f1d661dc97459793f7588c6a64bc7', 'validated', '{"audio_key":"fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2","entity_key":"lx_numbers_0_10_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24c12c5dab5d16c0a6f114f21c233dfbc45f1d661dc97459793f7588c6a64bc7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_05 -> audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('58e21f6f-6283-560b-a712-e0b633cbaee8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c3c097c-d74b-5e1e-a539-c6c4929a032e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('58e21f6f-6283-560b-a712-e0b633cbaee8', 1), 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3', 862, '2026-09-14 13:33:36.967100', '24c12c5dab5d16c0a6f114f21c233dfbc45f1d661dc97459793f7588c6a64bc7', 'validated', '{"audio_key":"fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2","entity_key":"wf_numbers_0_10_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24c12c5dab5d16c0a6f114f21c233dfbc45f1d661dc97459793f7588c6a64bc7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_06 -> audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4cbb332c-f5fa-543b-9578-15e0b04f2416', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d704dd8-e052-5d7d-a3ec-902ad314b0a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4cbb332c-f5fa-543b-9578-15e0b04f2416', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3', 1097, '2026-09-14 13:33:37.922341', '88ae7e4ad2e8ad40faac86cd86e12151ab235c03782c26959b703b2795dd4b7b', 'validated', '{"audio_key":"fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3","entity_key":"lx_first_sounds_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88ae7e4ad2e8ad40faac86cd86e12151ab235c03782c26959b703b2795dd4b7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_06 -> audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9b26c4f-0412-52db-90d7-f197f34a926b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15dec825-a5d1-5943-833b-d05f604f8c64', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9b26c4f-0412-52db-90d7-f197f34a926b', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3', 1097, '2026-09-14 13:33:37.922341', '88ae7e4ad2e8ad40faac86cd86e12151ab235c03782c26959b703b2795dd4b7b', 'validated', '{"audio_key":"fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3","entity_key":"wf_first_sounds_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88ae7e4ad2e8ad40faac86cd86e12151ab235c03782c26959b703b2795dd4b7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_letter_names_03 -> audio/generated/de-DE/utterances/035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1f2d00ca-feda-5654-be83-01375c84089c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_letter_names_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '249943aca04ba0e5945dc75b97dfb1a904eb1bd2396f1a66f92c3e7b83a66863'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1e04c1c-904c-56e0-b30c-93d17fa500b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1f2d00ca-feda-5654-be83-01375c84089c', 1), '249943aca04ba0e5945dc75b97dfb1a904eb1bd2396f1a66f92c3e7b83a66863',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba.mp3', 1018, '2026-09-14 13:33:38.946029', '6ab070c8bfed141e11316f5c3fdc361ae3db4685c58368b809ab116d89b5da46', 'validated', '{"audio_key":"035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba","entity_key":"u_letter_names_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ab070c8bfed141e11316f5c3fdc361ae3db4685c58368b809ab116d89b5da46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_letter_names_01 -> audio/generated/de-DE/utterances/05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('be015dbe-ee10-58c8-be7a-7cfba6f4d973', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_letter_names_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa76f52e5e6ad5db658a809cf3c1a306cf769745ff6313dd12581c3112a30f53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ec3d83e-bd3a-5754-a7f7-5c4e8433d2e1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('be015dbe-ee10-58c8-be7a-7cfba6f4d973', 1), 'fa76f52e5e6ad5db658a809cf3c1a306cf769745ff6313dd12581c3112a30f53',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6.mp3', 1097, '2026-09-14 13:33:39.893922', 'dd6eeeef4729589d0691aa82f0a4044ee5b2e9e657c3a3730eb61723a895bdc8', 'validated', '{"audio_key":"05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6","entity_key":"u_letter_names_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd6eeeef4729589d0691aa82f0a4044ee5b2e9e657c3a3730eb61723a895bdc8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_04 -> audio/generated/de-DE/utterances/0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b1331575-df56-5794-984e-ca87d0ed91ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ead2a3007a3d9029677898599e500b001bf93f7daf176e93a92bfe3f6da374ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0278627-e5c1-5d6a-9c63-c56cf8139df5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b1331575-df56-5794-984e-ca87d0ed91ce', 1), 'ead2a3007a3d9029677898599e500b001bf93f7daf176e93a92bfe3f6da374ca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0.mp3', 1018, '2026-09-14 13:33:40.887909', '2998ad29a417d0f21ce6ae2d80eea53e0c1d1dab8617e2b0d6274bc37b63956f', 'validated', '{"audio_key":"0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0","entity_key":"u_survival_words_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2998ad29a417d0f21ce6ae2d80eea53e0c1d1dab8617e2b0d6274bc37b63956f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_01 -> audio/generated/de-DE/utterances/0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('848e442c-5749-52f6-8b08-24f749e2b375', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7054db9-d3ab-5ade-bc3f-7e8d57a33292', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('848e442c-5749-52f6-8b08-24f749e2b375', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523.mp3', 783, '2026-09-14 13:33:41.852116', '4e6d3d7446f91fb2d440c1b38dcd81b0302f6fe72bdfabfc57b70d283b076cd7', 'validated', '{"audio_key":"0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523","entity_key":"u_alphabet_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e6d3d7446f91fb2d440c1b38dcd81b0302f6fe72bdfabfc57b70d283b076cd7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_classroom_03 -> audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fdfec117-933b-5395-92f8-b148225c49e4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_classroom_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1bd7180-cfa1-51c8-8b0e-e86fd1c31972', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fdfec117-933b-5395-92f8-b148225c49e4', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3', 1488, '2026-09-14 13:33:42.934795', '8a59b75004d66dac34daa57b5a1467a0923c073989ea7276a8fc07941cd18655', 'validated', '{"audio_key":"0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc","entity_key":"u_classroom_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a59b75004d66dac34daa57b5a1467a0923c073989ea7276a8fc07941cd18655","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_ready_gate:example:1 -> audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('3120e331-9825-59b9-99a0-15bcff94668a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_ready_gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3969719-971a-55c9-8231-6b5b6fa30ada', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('3120e331-9825-59b9-99a0-15bcff94668a', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3', 1488, '2026-09-14 13:33:42.934795', '8a59b75004d66dac34daa57b5a1467a0923c073989ea7276a8fc07941cd18655', 'validated', '{"audio_key":"0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc","entity_key":"g_de_ready_gate:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a59b75004d66dac34daa57b5a1467a0923c073989ea7276a8fc07941cd18655","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-real-world-gate:example:2 -> audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('afd310d4-433e-5925-ab27-c7747503b2f0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-real-world-gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c12a1eb7-c3ae-53c6-8eec-721cda0c9e4a', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('afd310d4-433e-5925-ab27-c7747503b2f0', 1), '00ce4057749e17d331310c133d47ace93b17e7e8d529d65bda60d44d1617ede0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3', 1488, '2026-09-14 13:33:42.934795', '8a59b75004d66dac34daa57b5a1467a0923c073989ea7276a8fc07941cd18655', 'validated', '{"audio_key":"0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc","entity_key":"g_de_de-real-world-gate:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a59b75004d66dac34daa57b5a1467a0923c073989ea7276a8fc07941cd18655","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_05 -> audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('039d86b6-ab7f-5e72-bcd8-9881bb7c3447', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed9f2b1d-4868-53e9-a16e-02f5991084a5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('039d86b6-ab7f-5e72-bcd8-9881bb7c3447', 1), '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3', 1253, '2026-09-14 13:33:43.929200', '98cb85f74be2403d9512a6c454039e8b60426cbe14474b7eb22ee13f29809e78', 'validated', '{"audio_key":"0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd","entity_key":"u_survival_words_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98cb85f74be2403d9512a6c454039e8b60426cbe14474b7eb22ee13f29809e78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_01_listen -> audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4eb5b6f5-5dbb-57c8-b1ef-b18284b8965c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd94a436-9a67-58e4-84d5-25cea5705d26', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4eb5b6f5-5dbb-57c8-b1ef-b18284b8965c', 1), '1326941d2edcb1195fac0265f5d109c2f912b52d8783324188a0c46a1d58c457',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3', 1253, '2026-09-14 13:33:43.929200', '98cb85f74be2403d9512a6c454039e8b60426cbe14474b7eb22ee13f29809e78', 'validated', '{"audio_key":"0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd","entity_key":"e_survival_words_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98cb85f74be2403d9512a6c454039e8b60426cbe14474b7eb22ee13f29809e78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-forms-signs_exit_q -> audio/generated/de-DE/utterances/0f746d058c027e9bb7cb594edd9707f39e8fa2bc9bee4e3d7088b1c48f25624e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('23f84f94-0d5f-5055-8f0f-305bcd4b36b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-forms-signs_exit_q')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76da97bd643208feab9c49a86fc706f348d1706cb6318641b66c493a8065ecda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a06487fa-b3e1-54d8-9a14-604af23ce890', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('23f84f94-0d5f-5055-8f0f-305bcd4b36b6', 1), '76da97bd643208feab9c49a86fc706f348d1706cb6318641b66c493a8065ecda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0f746d058c027e9bb7cb594edd9707f39e8fa2bc9bee4e3d7088b1c48f25624e.mp3', 1332, '2026-09-14 13:33:44.937956', '680d0bf1f95f200537c9dddc17288066a94bd48dd55d421a51674a942ce7e3ec', 'validated', '{"audio_key":"0f746d058c027e9bb7cb594edd9707f39e8fa2bc9bee4e3d7088b1c48f25624e","entity_key":"u_de_de-forms-signs_exit_q","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"680d0bf1f95f200537c9dddc17288066a94bd48dd55d421a51674a942ce7e3ec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0f746d058c027e9bb7cb594edd9707f39e8fa2bc9bee4e3d7088b1c48f25624e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_03 -> audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('19c72fbd-1656-5637-99d1-02da33478923', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('726a9619-7677-520d-8e6f-9a88e05cab65', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('19c72fbd-1656-5637-99d1-02da33478923', 1), 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3', 862, '2026-09-14 13:33:45.905524', '2effb1aed5f1dd0d7f6059e7964f69690e773aa0b9036afcd0b85af9fd4254b9', 'validated', '{"audio_key":"14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513","entity_key":"u_first_sounds_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2effb1aed5f1dd0d7f6059e7964f69690e773aa0b9036afcd0b85af9fd4254b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_liebe_sound -> audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2ade8529-e941-5007-b854-bb50dcae13f2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_liebe_sound')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4b61b36-61b5-5520-8404-ce5e9aafc8a6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2ade8529-e941-5007-b854-bb50dcae13f2', 1), 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3', 862, '2026-09-14 13:33:45.905524', '2effb1aed5f1dd0d7f6059e7964f69690e773aa0b9036afcd0b85af9fd4254b9', 'validated', '{"audio_key":"14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513","entity_key":"u_de_liebe_sound","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2effb1aed5f1dd0d7f6059e7964f69690e773aa0b9036afcd0b85af9fd4254b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_ei_ie:example:2 -> audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('e61d16c6-fe8a-56a9-a951-1a371e5579e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_ei_ie:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e290acc-a32c-5f86-bcf0-f39d85b3632b', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('e61d16c6-fe8a-56a9-a951-1a371e5579e3', 1), 'c7bbefd8110f8991d7b2a76dfbcdfdc91d00bcb807e315d50dfe5ee17783c076',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3', 862, '2026-09-14 13:33:45.905524', '2effb1aed5f1dd0d7f6059e7964f69690e773aa0b9036afcd0b85af9fd4254b9', 'validated', '{"audio_key":"14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513","entity_key":"g_de_ei_ie:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2effb1aed5f1dd0d7f6059e7964f69690e773aa0b9036afcd0b85af9fd4254b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_wie_bitte -> audio/generated/de-DE/utterances/164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dc626955-c928-5c31-9884-48f07920dced', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_wie_bitte')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd2601ae-caed-5cb6-8690-557d80ff953e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dc626955-c928-5c31-9884-48f07920dced', 1), '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727.mp3', 1018, '2026-09-14 13:33:46.858747', 'b46da8f1ca09193f8d481d7f0573ebc7577ac142a8ec459afdbf2bd9e9c25f11', 'validated', '{"audio_key":"164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727","entity_key":"u_de_wie_bitte","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b46da8f1ca09193f8d481d7f0573ebc7577ac142a8ec459afdbf2bd9e9c25f11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_wie_bitte_listen -> audio/generated/de-DE/utterances/164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ad288ba2-7af7-5f3a-849c-d5b8c4674987', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_wie_bitte_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee67f282-42d0-5814-b84b-dc99411f234c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ad288ba2-7af7-5f3a-849c-d5b8c4674987', 1), '073435d05fbcd32e30531fcc0553e6906945d4dcd7089ad7222244efbc84fb91',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727.mp3', 1018, '2026-09-14 13:33:46.858747', 'b46da8f1ca09193f8d481d7f0573ebc7577ac142a8ec459afdbf2bd9e9c25f11', 'validated', '{"audio_key":"164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727","entity_key":"ex_de_wie_bitte_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b46da8f1ca09193f8d481d7f0573ebc7577ac142a8ec459afdbf2bd9e9c25f11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/164590b3852879d99ba249f1d3d7be7e5be98bddcc11439fc3f75aaa24298727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_05 -> audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54c221a5-ec0b-50d6-a551-02bb84eca32e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89beccc7-e265-59e5-ac56-4cb008ebb770', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54c221a5-ec0b-50d6-a551-02bb84eca32e', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3', 966, '2026-09-14 13:33:47.855455', '605728f88d41b7bbaae0861ae91e2c5458282e44276a6526995e171f9bcc5b89', 'validated', '{"audio_key":"197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b","entity_key":"u_first_sounds_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"605728f88d41b7bbaae0861ae91e2c5458282e44276a6526995e171f9bcc5b89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_01_listen -> audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('06cde2e7-ac28-5ee7-9803-3991cff62457', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac59d1e6-20e7-5077-88c8-62683f47607b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('06cde2e7-ac28-5ee7-9803-3991cff62457', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3', 966, '2026-09-14 13:33:47.855455', '605728f88d41b7bbaae0861ae91e2c5458282e44276a6526995e171f9bcc5b89', 'validated', '{"audio_key":"197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b","entity_key":"e_first_sounds_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"605728f88d41b7bbaae0861ae91e2c5458282e44276a6526995e171f9bcc5b89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_03 -> audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('916be128-c5eb-5bda-b862-90d2dc1d520e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68062830-2bb0-588f-9db5-4d3159200aad', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('916be128-c5eb-5bda-b862-90d2dc1d520e', 1), '9dbe3cfc5af797f3516eb7c92f37fe507b83c13017aa9ddb57b9afe25a75a3a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3', 966, '2026-09-14 13:33:47.855455', '605728f88d41b7bbaae0861ae91e2c5458282e44276a6526995e171f9bcc5b89', 'validated', '{"audio_key":"197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b","entity_key":"u_numbers_0_10_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"605728f88d41b7bbaae0861ae91e2c5458282e44276a6526995e171f9bcc5b89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_03 -> audio/generated/de-DE/utterances/1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6eb4be8c-80c7-513f-b3e3-c5bebf1139bc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e680dfa-c64c-58cd-ad7a-ed29920205c4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6eb4be8c-80c7-513f-b3e3-c5bebf1139bc', 1), 'fa79803ac56eefc7c7c641d72b0c3b8f348de37e1ac98a8d3cae3c903ee58189',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25.mp3', 1097, '2026-09-14 13:33:48.859076', '0cd060a1d68691be9eb31aee3f5a13c6ddebd65ba6276ab2157fcc64fb50c8a0', 'validated', '{"audio_key":"1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25","entity_key":"u_survival_words_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cd060a1d68691be9eb31aee3f5a13c6ddebd65ba6276ab2157fcc64fb50c8a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_classroom_05 -> audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba31a0b1-93aa-5306-8988-2e2da6dba119', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_classroom_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('583a5ad0-3a14-5d55-8a68-32a3fa96dee5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba31a0b1-93aa-5306-8988-2e2da6dba119', 1), 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3', 1332, '2026-09-14 13:33:49.846662', 'f2296d225665d4b229aa321b69f70d0d3f41bdce452f922c9ac0ee2d0985f767', 'validated', '{"audio_key":"1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f","entity_key":"u_classroom_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2296d225665d4b229aa321b69f70d0d3f41bdce452f922c9ac0ee2d0985f767","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_classroom_01_listen -> audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d96740d7-0d0c-560a-8745-53c52cfde638', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_classroom_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b75293f-077c-5335-8df9-a74181184c14', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d96740d7-0d0c-560a-8745-53c52cfde638', 1), 'd4c55d7e4e0c3e0c1b321e8d4b38842801fa2159e6671ea7b318133d273acf1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3', 1332, '2026-09-14 13:33:49.846662', 'f2296d225665d4b229aa321b69f70d0d3f41bdce452f922c9ac0ee2d0985f767', 'validated', '{"audio_key":"1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f","entity_key":"e_classroom_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2296d225665d4b229aa321b69f70d0d3f41bdce452f922c9ac0ee2d0985f767","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_day -> audio/generated/de-DE/utterances/21e70d4028dc4d3cd1f07e8e9d340c86039ab7b9cc1f5195982965ad90a41d5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53b566e1-2092-5390-87b9-020429a5a82c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_day')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b703fc6aeb9cf65c556f61df949d8f3af54f81e29a866c67eed96db79d473416'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e5a028c-d9b5-59a1-b6fd-2132af057371', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53b566e1-2092-5390-87b9-020429a5a82c', 1), 'b703fc6aeb9cf65c556f61df949d8f3af54f81e29a866c67eed96db79d473416',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/21e70d4028dc4d3cd1f07e8e9d340c86039ab7b9cc1f5195982965ad90a41d5f.mp3', 1018, '2026-09-14 13:33:50.815228', 'b4f500ffd4077764cee9f566e4c94b4cdca52d381d1c98372494af04a1612971', 'validated', '{"audio_key":"21e70d4028dc4d3cd1f07e8e9d340c86039ab7b9cc1f5195982965ad90a41d5f","entity_key":"u_de_de-real-life-numbers_day","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4f500ffd4077764cee9f566e4c94b4cdca52d381d1c98372494af04a1612971","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/21e70d4028dc4d3cd1f07e8e9d340c86039ab7b9cc1f5195982965ad90a41d5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_04 -> audio/generated/de-DE/utterances/231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5f08c1e-79af-575f-b89b-2873953351ad', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fafa366bebf80e883e808319f93a3879366c0ea3f45a86126f29383f8c52ea71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32037b16-5d4d-5b9f-a6b9-658d42da01d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5f08c1e-79af-575f-b89b-2873953351ad', 1), 'fafa366bebf80e883e808319f93a3879366c0ea3f45a86126f29383f8c52ea71',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266.mp3', 862, '2026-09-14 13:33:51.849948', '2b44f356aff6199ab2586508de32b5add304a75698bc934601b3001b92447ff1', 'validated', '{"audio_key":"231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266","entity_key":"u_my_name_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b44f356aff6199ab2586508de32b5add304a75698bc934601b3001b92447ff1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_02 -> audio/generated/de-DE/utterances/2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('449360bb-9c23-5d6d-af4d-b3044286d93d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('255b4c6a-96a2-5cfe-b6f4-b35ffbcfed35', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('449360bb-9c23-5d6d-af4d-b3044286d93d', 1), '2753e4860651be83bea82179f42ddb29947635c5ea61b047a06924f8c758f042',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3.mp3', 1097, '2026-09-14 13:33:52.857118', '77fcc3a6b838f58a2bb3f070034083769331f5d9488edc8ed6a84773849bbf04', 'validated', '{"audio_key":"2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3","entity_key":"u_my_name_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77fcc3a6b838f58a2bb3f070034083769331f5d9488edc8ed6a84773849bbf04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_05 -> audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e48059e-2b99-5b2f-939b-745daa71728a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be735625-071f-52d3-8dd2-7f31a29ee249', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e48059e-2b99-5b2f-939b-745daa71728a', 1), 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3', 966, '2026-09-14 13:33:53.807322', 'fbf6567f8da4529e02e156d97b2337153ca882b952b947e32c9061b61a6ed2cc', 'validated', '{"audio_key":"248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721","entity_key":"u_numbers_0_10_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbf6567f8da4529e02e156d97b2337153ca882b952b947e32c9061b61a6ed2cc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_01_listen -> audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('003ce060-03df-531c-acb5-b18d87ee1e93', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8e7d61f-7df9-5846-b09a-baa257071cc4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('003ce060-03df-531c-acb5-b18d87ee1e93', 1), 'd26898598758e7790be4ffa1f10179bf92b7768bf9b909e51c4cfb8d9e699cda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3', 966, '2026-09-14 13:33:53.807322', 'fbf6567f8da4529e02e156d97b2337153ca882b952b947e32c9061b61a6ed2cc', 'validated', '{"audio_key":"248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721","entity_key":"e_numbers_0_10_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbf6567f8da4529e02e156d97b2337153ca882b952b947e32c9061b61a6ed2cc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_06 -> audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c9c41b3c-783a-5dbc-8f11-fd6e449550b4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0a4dcae-a845-5d9d-9baa-aa6a12399260', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c9c41b3c-783a-5dbc-8f11-fd6e449550b4', 1), 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3', 600, '2026-09-14 13:33:54.707401', '50f37a315ce805a4eb6c1f703e3b361bad0bdab482c94cd5d7be0f2556685f4a', 'validated', '{"audio_key":"25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec","entity_key":"u_alphabet_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50f37a315ce805a4eb6c1f703e3b361bad0bdab482c94cd5d7be0f2556685f4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_02_listen -> audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1e9516b7-dea3-529f-95fc-fd443bc3178b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4149832d-42b0-5476-b02b-18025b3dbcb5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1e9516b7-dea3-529f-95fc-fd443bc3178b', 1), 'cd3a7e92a9114307055e4a0583acd6549ec3bb6d7c10ecc6ce11ae3d76b3d7db',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3', 600, '2026-09-14 13:33:54.707401', '50f37a315ce805a4eb6c1f703e3b361bad0bdab482c94cd5d7be0f2556685f4a', 'validated', '{"audio_key":"25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec","entity_key":"e_alphabet_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50f37a315ce805a4eb6c1f703e3b361bad0bdab482c94cd5d7be0f2556685f4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_06 -> audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0a60380-d706-5dc2-8fc6-c6e87b2a11a0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b17aeb3c-bb4b-5927-a319-184e8388185e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0a60380-d706-5dc2-8fc6-c6e87b2a11a0', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1097, '2026-09-14 13:33:55.665941', 'b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"u_first_sounds_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_02_listen -> audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8d1bb978-693e-53ae-8977-403e4c17d1ff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc9dad10-7018-56ca-ab36-c1fe62194136', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8d1bb978-693e-53ae-8977-403e4c17d1ff', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1097, '2026-09-14 13:33:55.665941', 'b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"e_first_sounds_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_wasser -> audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24a4f4af-b07e-559e-860d-d730682dcaaa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_wasser')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bec0acc-36e9-538b-93c2-198b8732c12f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24a4f4af-b07e-559e-860d-d730682dcaaa', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1097, '2026-09-14 13:33:55.665941', 'b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"u_de_wasser","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_wasser_listen -> audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('40911ab0-cf1b-555d-b8e4-c8bbb847bccb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_wasser_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6595dfb0-a2f1-59b4-ac1c-d7146463bb6a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('40911ab0-cf1b-555d-b8e4-c8bbb847bccb', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1097, '2026-09-14 13:33:55.665941', 'b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"ex_de_wasser_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_wvz:example:1 -> audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('13ec0470-2f7e-5298-99d0-407a03fb29e9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_wvz:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acced47e-af16-54f1-a198-6690ca480678', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('13ec0470-2f7e-5298-99d0-407a03fb29e9', 1), 'f942c0f4855b900888eb405e844e519e79c5309d4b204862e0ae535d14f4060c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1097, '2026-09-14 13:33:55.665941', 'b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"g_de_wvz:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0a1906d9f5b6355e5ebd4ad61aabe8208dc1a9260b0ba7f5701184de633a958","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_02 -> audio/generated/de-DE/utterances/27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24c7ab50-a28a-53d6-98a7-a736eb1bba6c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa8e985dfea42293692c17302645c913ac7e679d79051f2488c0494f5522f3e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad53ed92-6786-5ce4-97d9-e56edaed03a4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24c7ab50-a28a-53d6-98a7-a736eb1bba6c', 1), 'fa8e985dfea42293692c17302645c913ac7e679d79051f2488c0494f5522f3e9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299.mp3', 966, '2026-09-14 13:33:56.680065', '51dabc18a62161e8525629e4edcac348cd57d8616c0eab64bde3cd667a1ce421', 'validated', '{"audio_key":"27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299","entity_key":"u_first_objects_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51dabc18a62161e8525629e4edcac348cd57d8616c0eab64bde3cd667a1ce421","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_n15 -> audio/generated/de-DE/utterances/2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f3ce76e-cf49-5734-9e6e-6090a210a9d5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_n15')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86d832a39638f3a823359ab1a125e102e4877d204c72ca089a65159c61d1be54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6086f33f-2fbe-59a4-82af-1bf74a826a64', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f3ce76e-cf49-5734-9e6e-6090a210a9d5', 1), '86d832a39638f3a823359ab1a125e102e4877d204c72ca089a65159c61d1be54',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04.mp3', 1071, '2026-09-14 13:33:57.634154', 'b983cc982f8c957f13c8e94f5264e8077bf6e84a79742beeaa251374a37bfaae', 'validated', '{"audio_key":"2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04","entity_key":"u_de_de-real-life-numbers_n15","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b983cc982f8c957f13c8e94f5264e8077bf6e84a79742beeaa251374a37bfaae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-real-life-numbers_number_listen -> audio/generated/de-DE/utterances/2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ed494e5-0be8-515c-9260-8d905bb55d34', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-real-life-numbers_number_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86d832a39638f3a823359ab1a125e102e4877d204c72ca089a65159c61d1be54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4f3c3c1-84d4-53b3-bfe4-2410ff57c8f9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ed494e5-0be8-515c-9260-8d905bb55d34', 1), '86d832a39638f3a823359ab1a125e102e4877d204c72ca089a65159c61d1be54',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04.mp3', 1071, '2026-09-14 13:33:57.634154', 'b983cc982f8c957f13c8e94f5264e8077bf6e84a79742beeaa251374a37bfaae', 'validated', '{"audio_key":"2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04","entity_key":"ex_de_de-real-life-numbers_number_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b983cc982f8c957f13c8e94f5264e8077bf6e84a79742beeaa251374a37bfaae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2c8a449066313aa2be2e3fe3676588b1a6a6b0649bdbdba2b1a8935fc9b61b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_01 -> audio/generated/de-DE/utterances/31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('51cb166e-fccd-529e-87b9-ade035a4eef6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e36dbf7e2bbb1bb0daa9db7fda31cabe62f5b26b6decd1e0efa5573a6384ce0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('090fa626-0836-5b9f-8627-9b784010c5e2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('51cb166e-fccd-529e-87b9-ade035a4eef6', 1), '6e36dbf7e2bbb1bb0daa9db7fda31cabe62f5b26b6decd1e0efa5573a6384ce0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2.mp3', 1018, '2026-09-14 13:33:58.648700', 'a06c24a0b70909fb345795628054cc6074da0ec4ade5c9516ea087ba48f1a5e7', 'validated', '{"audio_key":"31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2","entity_key":"u_first_objects_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a06c24a0b70909fb345795628054cc6074da0ec4ade5c9516ea087ba48f1a5e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_letter_names_06 -> audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d1991c8f-dfb3-560b-8975-518ba9f9cae1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_letter_names_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d235958-1a0b-5d1b-8718-6d5f2baa87df', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d1991c8f-dfb3-560b-8975-518ba9f9cae1', 1), 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3', 1071, '2026-09-14 13:33:59.635836', '1cc7c0388409eb898b4504e65ad9de2a04c97555acfddd910283f71be5a8e047', 'validated', '{"audio_key":"339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed","entity_key":"u_letter_names_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cc7c0388409eb898b4504e65ad9de2a04c97555acfddd910283f71be5a8e047","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_letter_names_02_listen -> audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a12c9c10-0d16-5694-b311-8187d62e447f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_letter_names_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81f2418b-2c27-5220-b9d9-8390f62feeaa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a12c9c10-0d16-5694-b311-8187d62e447f', 1), 'bd820eb586e56d644f079f782bccb848d72763ca177920810112a4f98d943b76',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3', 1071, '2026-09-14 13:33:59.635836', '1cc7c0388409eb898b4504e65ad9de2a04c97555acfddd910283f71be5a8e047', 'validated', '{"audio_key":"339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed","entity_key":"e_letter_names_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cc7c0388409eb898b4504e65ad9de2a04c97555acfddd910283f71be5a8e047","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_04 -> audio/generated/de-DE/utterances/33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('879b674d-15f0-57d5-a23c-77e293f67838', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e34b0b1f43105b4fedfe803403ba3c0052495b284acca186443bfffb94323e7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dbf1f13-0f53-5d0c-8f52-080d43989c45', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('879b674d-15f0-57d5-a23c-77e293f67838', 1), 'e34b0b1f43105b4fedfe803403ba3c0052495b284acca186443bfffb94323e7f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452.mp3', 914, '2026-09-14 13:34:00.593149', '8ad371807d78643f10e8d9c9d3e7db7ef36a98e6a4b8f3bf11cfe7e41c1081b3', 'validated', '{"audio_key":"33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452","entity_key":"u_first_conversation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8ad371807d78643f10e8d9c9d3e7db7ef36a98e6a4b8f3bf11cfe7e41c1081b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_01 -> audio/generated/de-DE/utterances/3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c4766e0e-7f26-5452-9673-23d73f3c536d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645644f67714effe70feb39f650b7a1502a2e236a90af96aa37b78135dc2d90b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90825a4d-ef80-5c24-91ad-763e40ca157f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c4766e0e-7f26-5452-9673-23d73f3c536d', 1), '645644f67714effe70feb39f650b7a1502a2e236a90af96aa37b78135dc2d90b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4.mp3', 1436, '2026-09-14 13:34:01.598223', '241d21fd440222b3d2e9b505d9b1031fa7fdedea90fc8eea396635cb7cab7238', 'validated', '{"audio_key":"3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4","entity_key":"u_first_conversation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"241d21fd440222b3d2e9b505d9b1031fa7fdedea90fc8eea396635cb7cab7238","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_ich_sound -> audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d299bc6-df69-50fc-aeb1-8bf769d2b4f1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_ich_sound')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84c92d8abf326bdb52f1fc6cd6856c41ae9bc1ef4f6056c2672e3d9d301782e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f355cb09-191c-5a4b-91de-ced590e994c8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d299bc6-df69-50fc-aeb1-8bf769d2b4f1', 1), '84c92d8abf326bdb52f1fc6cd6856c41ae9bc1ef4f6056c2672e3d9d301782e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3', 731, '2026-09-14 13:34:02.516316', '186eec2c325ddd6c9378259fdc4729ef384630f3a76b684ebf44b720d120640e', 'validated', '{"audio_key":"34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c","entity_key":"u_de_ich_sound","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"186eec2c325ddd6c9378259fdc4729ef384630f3a76b684ebf44b720d120640e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_ch_listen -> audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1baae841-e94c-5ebc-b0f0-f96a105ade6b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_ch_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84c92d8abf326bdb52f1fc6cd6856c41ae9bc1ef4f6056c2672e3d9d301782e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c14cebe2-d938-579d-a6d0-ddd2199e48ec', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1baae841-e94c-5ebc-b0f0-f96a105ade6b', 1), '84c92d8abf326bdb52f1fc6cd6856c41ae9bc1ef4f6056c2672e3d9d301782e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3', 731, '2026-09-14 13:34:02.516316', '186eec2c325ddd6c9378259fdc4729ef384630f3a76b684ebf44b720d120640e', 'validated', '{"audio_key":"34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c","entity_key":"ex_de_ch_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"186eec2c325ddd6c9378259fdc4729ef384630f3a76b684ebf44b720d120640e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_ch_two_sounds:example:1 -> audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('21e92604-7103-525d-bd09-0b6ac2e2f15f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_ch_two_sounds:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84c92d8abf326bdb52f1fc6cd6856c41ae9bc1ef4f6056c2672e3d9d301782e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47764c2e-bbda-52aa-b68c-08fd6b6e964d', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('21e92604-7103-525d-bd09-0b6ac2e2f15f', 1), '84c92d8abf326bdb52f1fc6cd6856c41ae9bc1ef4f6056c2672e3d9d301782e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3', 731, '2026-09-14 13:34:02.516316', '186eec2c325ddd6c9378259fdc4729ef384630f3a76b684ebf44b720d120640e', 'validated', '{"audio_key":"34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c","entity_key":"g_de_ch_two_sounds:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"186eec2c325ddd6c9378259fdc4729ef384630f3a76b684ebf44b720d120640e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/34b3242beef0f44c99310bff56ed193f1b2fefbaedeb5751c0a0b37fde34523c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_classroom_04 -> audio/generated/de-DE/utterances/3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5ec2c08a-4715-5491-8fef-27bc1fc041d6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_classroom_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38b3fedd-8117-5a4a-9132-0d2ee720aba3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5ec2c08a-4715-5491-8fef-27bc1fc041d6', 1), '74e7d242a19f7c58a072edac706cfe142ea29e58fbe624778b6e7b581d3d7650',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4.mp3', 1253, '2026-09-14 13:34:03.492213', '49aabff9c8f509e7dafd1cf40ecbd89b0cb2ea930e1ef8a684be0fc83d1ad39b', 'validated', '{"audio_key":"3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4","entity_key":"u_classroom_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49aabff9c8f509e7dafd1cf40ecbd89b0cb2ea930e1ef8a684be0fc83d1ad39b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_05 -> audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('65d3c280-9ccd-5904-81f3-9bf93e6c9482', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4d8ebf5-9f55-52c9-b908-ba9f37ecfcbf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('65d3c280-9ccd-5904-81f3-9bf93e6c9482', 1), '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3', 731, '2026-09-14 13:34:04.429837', 'a3f06292f157004c926c2a9385dfb332cc15dc2dbfe01bcd48e143be209d3d53', 'validated', '{"audio_key":"3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1","entity_key":"u_alphabet_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3f06292f157004c926c2a9385dfb332cc15dc2dbfe01bcd48e143be209d3d53","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_01_listen -> audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3f7c8d19-a603-5a9b-8730-d97f6c218873', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9896720-c978-58a7-b192-0dfc95ff19b1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3f7c8d19-a603-5a9b-8730-d97f6c218873', 1), '913d7314efae6e928bc40f303f3860e56c842124ee6430b1e9d84bec8397e146',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3', 731, '2026-09-14 13:34:04.429837', 'a3f06292f157004c926c2a9385dfb332cc15dc2dbfe01bcd48e143be209d3d53', 'validated', '{"audio_key":"3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1","entity_key":"e_alphabet_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3f06292f157004c926c2a9385dfb332cc15dc2dbfe01bcd48e143be209d3d53","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_date -> audio/generated/de-DE/utterances/3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bacbd488-56d3-5560-b8c6-c38df57aa9c2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_date')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '436a4f7e551efadd9dc21acdc2abacdd3a87f3dca38416c18c3ffb45b902751c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e1d64f7-a784-5f87-92d4-f5624fc30cfe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bacbd488-56d3-5560-b8c6-c38df57aa9c2', 1), '436a4f7e551efadd9dc21acdc2abacdd3a87f3dca38416c18c3ffb45b902751c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f.mp3', 1097, '2026-09-14 13:34:05.404913', '6a2f691d9052a2ade6c3ae4834453040424fbd176ceb50778d6473fe45a11428', 'validated', '{"audio_key":"3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f","entity_key":"u_de_de-real-life-numbers_date","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a2f691d9052a2ade6c3ae4834453040424fbd176ceb50778d6473fe45a11428","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-real-life-numbers:example:3 -> audio/generated/de-DE/utterances/3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0285c191-f355-5b66-8348-3a980a7fcb7d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-real-life-numbers:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '436a4f7e551efadd9dc21acdc2abacdd3a87f3dca38416c18c3ffb45b902751c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bee48e1-6b23-53fc-8d4c-ddbc6bae958b', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0285c191-f355-5b66-8348-3a980a7fcb7d', 1), '436a4f7e551efadd9dc21acdc2abacdd3a87f3dca38416c18c3ffb45b902751c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f.mp3', 1097, '2026-09-14 13:34:05.404913', '6a2f691d9052a2ade6c3ae4834453040424fbd176ceb50778d6473fe45a11428', 'validated', '{"audio_key":"3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f","entity_key":"g_de_de-real-life-numbers:example:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a2f691d9052a2ade6c3ae4834453040424fbd176ceb50778d6473fe45a11428","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3f028a69b71f9df62fa3644e8f212af481357ac2ba58fab97296a966138d778f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_06 -> audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8747528e-cd0c-5a41-88e5-96f27a6d3df6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cc317f3-fdc9-5225-8692-96647207df85', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8747528e-cd0c-5a41-88e5-96f27a6d3df6', 1), 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3', 1071, '2026-09-14 13:34:06.481436', '7979b9501a7603968afef04de47153cee04b82ed53f15de9380dccb5a4d45c4e', 'validated', '{"audio_key":"3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c","entity_key":"u_first_greetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7979b9501a7603968afef04de47153cee04b82ed53f15de9380dccb5a4d45c4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_02_listen -> audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e9f1eec4-4707-5f84-8ea9-d19c46c21be9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2df70abb-49bb-5427-b55b-2fc7a5f5f8b6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e9f1eec4-4707-5f84-8ea9-d19c46c21be9', 1), 'd35a6aa7629ab6b5df1a632a1d2146531c2de48fa90fde5c553c838b8d3e831f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3', 1071, '2026-09-14 13:34:06.481436', '7979b9501a7603968afef04de47153cee04b82ed53f15de9380dccb5a4d45c4e', 'validated', '{"audio_key":"3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c","entity_key":"e_first_greetings_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7979b9501a7603968afef04de47153cee04b82ed53f15de9380dccb5a4d45c4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_01 -> audio/generated/de-DE/utterances/4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c146c315-38be-5d4f-b45e-8dc441dcb90c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75f41476-2fa1-596c-b0b9-1aa3d6170840', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c146c315-38be-5d4f-b45e-8dc441dcb90c', 1), '74234e98afe7498fb5daf1f36ac2d78acc339464f950703b8c019892f982b90b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8.mp3', 966, '2026-09-14 13:34:07.496360', '30f71601524dc6d8d688e4f4e43ca7f5da793658204706cfeee72423fe708149', 'validated', '{"audio_key":"4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8","entity_key":"u_numbers_0_10_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30f71601524dc6d8d688e4f4e43ca7f5da793658204706cfeee72423fe708149","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_06 -> audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b380ff4f-0388-59a8-aa04-f99b766bab68', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d77cf9a-bcf4-5cfa-baf1-3b61f3d988f9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b380ff4f-0388-59a8-aa04-f99b766bab68', 1), '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3', 1332, '2026-09-14 13:34:08.547325', '42f15d0a69d278520c424a1f0b10a863164fa2d363eaa9a991c34c6d8687c57c', 'validated', '{"audio_key":"4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc","entity_key":"u_first_conversation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42f15d0a69d278520c424a1f0b10a863164fa2d363eaa9a991c34c6d8687c57c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_02_listen -> audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4fe5173e-33e5-5d0a-9305-89b229b15ce0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16213c3b-fdd0-5fbd-9f0a-3ba7a0be218d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4fe5173e-33e5-5d0a-9305-89b229b15ce0', 1), '2b3c5528d4223b00412d3cec04dde21882fc7cf950cdaba46dcbb3f09a2a4da3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3', 1332, '2026-09-14 13:34:08.547325', '42f15d0a69d278520c424a1f0b10a863164fa2d363eaa9a991c34c6d8687c57c', 'validated', '{"audio_key":"4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc","entity_key":"e_first_conversation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42f15d0a69d278520c424a1f0b10a863164fa2d363eaa9a991c34c6d8687c57c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_05 -> audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7f227c2d-4a67-56de-948e-7d3739f3a33d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8044cf2ea37398ccb4ad00bf7f6541919f14e737f76192995582736c521ce6fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26b4ddfe-3eaa-5e1e-b74b-431a36bb33ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7f227c2d-4a67-56de-948e-7d3739f3a33d', 1), '8044cf2ea37398ccb4ad00bf7f6541919f14e737f76192995582736c521ce6fc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3', 1149, '2026-09-14 13:34:09.532594', 'f93718c79fc96bc6aed22f6f57cfe1ea6163d69491dc96dd4d46511f2edfe882', 'validated', '{"audio_key":"4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34","entity_key":"u_first_objects_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f93718c79fc96bc6aed22f6f57cfe1ea6163d69491dc96dd4d46511f2edfe882","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_01_listen -> audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7de2adb7-5739-59b9-9e2d-b94828c738dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8044cf2ea37398ccb4ad00bf7f6541919f14e737f76192995582736c521ce6fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a59e159-4315-5093-902b-e74e286761ce', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7de2adb7-5739-59b9-9e2d-b94828c738dc', 1), '8044cf2ea37398ccb4ad00bf7f6541919f14e737f76192995582736c521ce6fc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3', 1149, '2026-09-14 13:34:09.532594', 'f93718c79fc96bc6aed22f6f57cfe1ea6163d69491dc96dd4d46511f2edfe882', 'validated', '{"audio_key":"4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34","entity_key":"e_first_objects_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f93718c79fc96bc6aed22f6f57cfe1ea6163d69491dc96dd4d46511f2edfe882","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_05 -> audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24f999ca-618b-5df4-a3d1-5860e4d126ac', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e19103d-9353-5046-8c09-267633039dcd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24f999ca-618b-5df4-a3d1-5860e4d126ac', 1), 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3', 1384, '2026-09-14 13:34:10.504787', '20907a440961e621cfcbac25bffec560650215c4a7404c9c429202cdba2d0440', 'validated', '{"audio_key":"4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f","entity_key":"u_my_name_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20907a440961e621cfcbac25bffec560650215c4a7404c9c429202cdba2d0440","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_01_listen -> audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9a79e2bb-29dd-5574-a154-67b744f0795b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26ac59dd-bfc4-5081-94d1-a6781ed44172', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9a79e2bb-29dd-5574-a154-67b744f0795b', 1), 'ac17c6011bf027d4b470933fb3f6ae1ef37307279a6ab0cf3c61eb6e424fc509',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3', 1384, '2026-09-14 13:34:10.504787', '20907a440961e621cfcbac25bffec560650215c4a7404c9c429202cdba2d0440', 'validated', '{"audio_key":"4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f","entity_key":"e_my_name_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20907a440961e621cfcbac25bffec560650215c4a7404c9c429202cdba2d0440","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_02 -> audio/generated/de-DE/utterances/4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ed10eeab-71af-5229-b6f2-0f1c4f7a3d0f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfd6b995588ec54ce16871bc82a7ac86dd43a2c22309ea68e479a50043683937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d373683-e238-5f6d-87cb-5a9f3e203477', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ed10eeab-71af-5229-b6f2-0f1c4f7a3d0f', 1), 'bfd6b995588ec54ce16871bc82a7ac86dd43a2c22309ea68e479a50043683937',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8.mp3', 835, '2026-09-14 13:34:11.437699', '0ce78ffa0de2f3874b54e548557ca0f4d8abe29a5c8568775ba6c7cceb68d0ff', 'validated', '{"audio_key":"4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8","entity_key":"u_numbers_0_10_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ce78ffa0de2f3874b54e548557ca0f4d8abe29a5c8568775ba6c7cceb68d0ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_05 -> audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('33a3e154-0ea5-5173-bb5c-364c8ac1bec8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a8c5206-08d1-51de-8f81-6ca84dd68a80', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('33a3e154-0ea5-5173-bb5c-364c8ac1bec8', 1), '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3', 1253, '2026-09-14 13:34:12.402774', 'da32ab038023c992b698ec1081f7c9654ec1cec01d5a56c8ff67e546d79586fb', 'validated', '{"audio_key":"4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd","entity_key":"u_first_greetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da32ab038023c992b698ec1081f7c9654ec1cec01d5a56c8ff67e546d79586fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_01_listen -> audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f8333ac3-871e-56c1-88fc-7155c8966693', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76ea5d72-aa46-57cc-918e-3a8bb5db218c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f8333ac3-871e-56c1-88fc-7155c8966693', 1), '00d9b37dae9964f9c6b631c8f9330e8b6177109bbfba9faf7f7537cd074d574c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3', 1253, '2026-09-14 13:34:12.402774', 'da32ab038023c992b698ec1081f7c9654ec1cec01d5a56c8ff67e546d79586fb', 'validated', '{"audio_key":"4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd","entity_key":"e_first_greetings_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da32ab038023c992b698ec1081f7c9654ec1cec01d5a56c8ff67e546d79586fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_01 -> audio/generated/de-DE/utterances/51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55d02bf2-ab39-5416-a649-712640519260', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5050f41029c87e2436a43b5d82675241b6e1f57ad00749f7c03eddeeb97946eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f13f854-0c89-5b33-9023-9b43395bc563', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55d02bf2-ab39-5416-a649-712640519260', 1), '5050f41029c87e2436a43b5d82675241b6e1f57ad00749f7c03eddeeb97946eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05.mp3', 914, '2026-09-14 13:34:13.345583', '5aef2b5594e4f61f9be9f433f401fc22bf528bd0158c5627d6a640925e1acc8a', 'validated', '{"audio_key":"51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05","entity_key":"u_first_sounds_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5aef2b5594e4f61f9be9f433f401fc22bf528bd0158c5627d6a640925e1acc8a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-forms-signs_field_listen -> audio/generated/de-DE/utterances/52c54da807d5da754ff1b129929d0cf42454e19ec214ec1a49dc891209c53bab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4b56e6b5-7c9b-5c13-bc39-ebfb8e4a5af7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-forms-signs_field_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa6906d76ee94d4e8d05a2424fb89005840522ab6dec0ee8055247424977169e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5ccac98-e1ed-5023-8804-64c6621e529c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4b56e6b5-7c9b-5c13-bc39-ebfb8e4a5af7', 1), 'fa6906d76ee94d4e8d05a2424fb89005840522ab6dec0ee8055247424977169e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/52c54da807d5da754ff1b129929d0cf42454e19ec214ec1a49dc891209c53bab.mp3', 1097, '2026-09-14 13:34:14.323423', 'e4a12ee24f71bc239d145fd9e1ef2f21547298f6a23e3be64f1dd567ba86207d', 'validated', '{"audio_key":"52c54da807d5da754ff1b129929d0cf42454e19ec214ec1a49dc891209c53bab","entity_key":"ex_de_de-forms-signs_field_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4a12ee24f71bc239d145fd9e1ef2f21547298f6a23e3be64f1dd567ba86207d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/52c54da807d5da754ff1b129929d0cf42454e19ec214ec1a49dc891209c53bab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_02 -> audio/generated/de-DE/utterances/542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4a8ae246-eda0-5914-b86c-87ee1b12945a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de1a36f4-21b9-56f3-8d4e-0b3f7bea63d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4a8ae246-eda0-5914-b86c-87ee1b12945a', 1), 'bd23ea6cdb98e4bb5d64da2cc90102ddc6acacb0806ae97aa3f5e03e817f6057',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d.mp3', 862, '2026-09-14 13:34:15.378009', '7dacdb570012a493cd32fc708dbba9231f92e7099f50344000b2f36d8eb7c696', 'validated', '{"audio_key":"542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d","entity_key":"u_first_conversation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dacdb570012a493cd32fc708dbba9231f92e7099f50344000b2f36d8eb7c696","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_n11 -> audio/generated/de-DE/utterances/55988331846b3aea45a944fe4faaffcbe6837ce4c22a2a8cc1d2c39a182f7db1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('75d1a2a1-eb31-511e-9e6f-f4c11b47a94d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_n11')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '780d84b20d7ae7e6292919399348bdbf96025270136198083fc8a4da398b5ca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c061905c-6eb6-5b8f-9197-921475f5bd0a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('75d1a2a1-eb31-511e-9e6f-f4c11b47a94d', 1), '780d84b20d7ae7e6292919399348bdbf96025270136198083fc8a4da398b5ca9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/55988331846b3aea45a944fe4faaffcbe6837ce4c22a2a8cc1d2c39a182f7db1.mp3', 731, '2026-09-14 13:34:16.366359', '0b7aa4514c0dfe78e1d6716f61ce37d66e28bd7afe9d7a1b8ac2be7095865f82', 'validated', '{"audio_key":"55988331846b3aea45a944fe4faaffcbe6837ce4c22a2a8cc1d2c39a182f7db1","entity_key":"u_de_de-real-life-numbers_n11","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b7aa4514c0dfe78e1d6716f61ce37d66e28bd7afe9d7a1b8ac2be7095865f82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/55988331846b3aea45a944fe4faaffcbe6837ce4c22a2a8cc1d2c39a182f7db1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-forms-signs_exit_a -> audio/generated/de-DE/utterances/57d98613acfd7ee8eab363670c7837a6507f08a5508f850b89ab5a777a555a71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3c7d6530-8df8-55e8-9da3-e1c75678171a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-forms-signs_exit_a')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e33d030-258d-57e8-94f8-7fb0cca9801e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3c7d6530-8df8-55e8-9da3-e1c75678171a', 1), '20b6ade469ecc978e77c29807155b4c71d75ba56ac58ff2c4f8887517e65f37d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/57d98613acfd7ee8eab363670c7837a6507f08a5508f850b89ab5a777a555a71.mp3', 731, '2026-09-14 13:34:17.330469', '346790831828ac77986536f69bcf6969ae64ba5f5b7092e5f3bb04a19e36ba14', 'validated', '{"audio_key":"57d98613acfd7ee8eab363670c7837a6507f08a5508f850b89ab5a777a555a71","entity_key":"u_de_de-forms-signs_exit_a","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"346790831828ac77986536f69bcf6969ae64ba5f5b7092e5f3bb04a19e36ba14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/57d98613acfd7ee8eab363670c7837a6507f08a5508f850b89ab5a777a555a71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_classroom_01 -> audio/generated/de-DE/utterances/5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88bfd11f-608e-55bf-8a62-aaee6f95ac0f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_classroom_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a48ee3eb8603502e959a6bd4c67e7d45fcb63136261db721a6d2a4afa12daa5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d0bdca0-11f1-53c9-90d3-488e61390641', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88bfd11f-608e-55bf-8a62-aaee6f95ac0f', 1), '0a48ee3eb8603502e959a6bd4c67e7d45fcb63136261db721a6d2a4afa12daa5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96.mp3', 914, '2026-09-14 13:34:18.301258', '7b1b9fa1f0537070a4cb1da19db1639272ebcd2fceb7780f860fb1c4e8d78e54', 'validated', '{"audio_key":"5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96","entity_key":"u_classroom_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b1b9fa1f0537070a4cb1da19db1639272ebcd2fceb7780f860fb1c4e8d78e54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-about-me_family -> audio/generated/de-DE/utterances/5d8654347ce9968226aff0d646925c6a5f1f158340e0476f0d326c57a94935ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81bb2454-48d4-58a4-a1a6-a34362e5fb39', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-about-me_family')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65bc85219e012f1c54d16a6dbb8c747eda688ab0cf643bc693f10feb0d8a1fed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4ec42c1-4758-5b6d-a028-b8256218efbb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81bb2454-48d4-58a4-a1a6-a34362e5fb39', 1), '65bc85219e012f1c54d16a6dbb8c747eda688ab0cf643bc693f10feb0d8a1fed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5d8654347ce9968226aff0d646925c6a5f1f158340e0476f0d326c57a94935ab.mp3', 1436, '2026-09-14 13:34:19.410126', '6d9c6a45a5367cde23f0fd1aa91cab12df0136bae168fec3fd5d030b0cb03a91', 'validated', '{"audio_key":"5d8654347ce9968226aff0d646925c6a5f1f158340e0476f0d326c57a94935ab","entity_key":"u_de_de-about-me_family","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d9c6a45a5367cde23f0fd1aa91cab12df0136bae168fec3fd5d030b0cb03a91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5d8654347ce9968226aff0d646925c6a5f1f158340e0476f0d326c57a94935ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_muede -> audio/generated/de-DE/utterances/5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5b8ad8e7-457b-5da6-a741-d3a633711352', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_muede')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b7186b5bfe89b064fd53b9dea2574644eb7c40fece1c01335fe4a1e788611e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7494feef-ec42-5820-aaaa-890b69dd2a79', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5b8ad8e7-457b-5da6-a741-d3a633711352', 1), '2b7186b5bfe89b064fd53b9dea2574644eb7c40fece1c01335fe4a1e788611e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757.mp3', 1018, '2026-09-14 13:34:20.351500', '7a23e1990a36ea6ed8eeb75ae178dfe78d8f23112e501a634b0037e638e11322', 'validated', '{"audio_key":"5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757","entity_key":"u_de_muede","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a23e1990a36ea6ed8eeb75ae178dfe78d8f23112e501a634b0037e638e11322","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_umlaut_eszett:example:2 -> audio/generated/de-DE/utterances/5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('736ffb38-c730-5170-977f-5531cb0fa481', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_umlaut_eszett:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b7186b5bfe89b064fd53b9dea2574644eb7c40fece1c01335fe4a1e788611e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7015e5ab-21c3-5d38-8e41-d0c500e48498', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('736ffb38-c730-5170-977f-5531cb0fa481', 1), '2b7186b5bfe89b064fd53b9dea2574644eb7c40fece1c01335fe4a1e788611e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757.mp3', 1018, '2026-09-14 13:34:20.351500', '7a23e1990a36ea6ed8eeb75ae178dfe78d8f23112e501a634b0037e638e11322', 'validated', '{"audio_key":"5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757","entity_key":"g_de_umlaut_eszett:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a23e1990a36ea6ed8eeb75ae178dfe78d8f23112e501a634b0037e638e11322","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e8ac62091be32a7b998bcc0ce53dc74dee0f98a8346fb6350d06c972cc86757.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-forms-signs:example:1 -> audio/generated/de-DE/utterances/61db8d2088715ccac191b69447b66a1fb6a3c896a74b5c21f8715fc70105aff2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('dcf47311-3f49-547a-a134-ed3e31d4a0fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-forms-signs:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e67bbe4bcf3918eeaec839fadd5f145c3ae0edd5796f329dc5d178d12d0abc53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b3a7a61-a1fa-5d9e-9d8c-491d6e6560fb', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('dcf47311-3f49-547a-a134-ed3e31d4a0fc', 1), 'e67bbe4bcf3918eeaec839fadd5f145c3ae0edd5796f329dc5d178d12d0abc53',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/61db8d2088715ccac191b69447b66a1fb6a3c896a74b5c21f8715fc70105aff2.mp3', 1018, '2026-09-14 13:34:21.301686', 'ca125c1f7dc83a8f99f01945a203364ac141d0f6e1c56cef9f67976d1b75ce58', 'validated', '{"audio_key":"61db8d2088715ccac191b69447b66a1fb6a3c896a74b5c21f8715fc70105aff2","entity_key":"g_de_de-forms-signs:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca125c1f7dc83a8f99f01945a203364ac141d0f6e1c56cef9f67976d1b75ce58","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/61db8d2088715ccac191b69447b66a1fb6a3c896a74b5c21f8715fc70105aff2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_classroom_02 -> audio/generated/de-DE/utterances/6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d22e5286-e173-594f-a63a-ca79cb09e54b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_classroom_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('814f85dd-ba98-56cf-a0fc-1bc6b6c5dd7a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d22e5286-e173-594f-a63a-ca79cb09e54b', 1), 'f923f1001c61673323e2504d20c5eb042c74e96cea0f7e14c57a01a95058f633',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4.mp3', 914, '2026-09-14 13:34:22.256934', 'fc7a89f806d26bd8722a1848de3410c83962f888c486c25db735b6f1a50fcdfa', 'validated', '{"audio_key":"6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4","entity_key":"u_classroom_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc7a89f806d26bd8722a1848de3410c83962f888c486c25db735b6f1a50fcdfa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_04 -> audio/generated/de-DE/utterances/712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fb92bcbf-e1fd-5e8b-bb4d-b7d8de5f0bd6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b748a919ad3e0a2ce7499df93f42e4a9babab9c7f28fff798b66b53466b4bc7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cef44d0a-7bdf-5a19-9bbd-672948754b39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fb92bcbf-e1fd-5e8b-bb4d-b7d8de5f0bd6', 1), 'b748a919ad3e0a2ce7499df93f42e4a9babab9c7f28fff798b66b53466b4bc7e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117.mp3', 1097, '2026-09-14 13:34:23.281732', 'ab7b178ff11b562afa04315e29254ec43cccd613cd921789ae1213be79771925', 'validated', '{"audio_key":"712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117","entity_key":"u_first_sounds_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab7b178ff11b562afa04315e29254ec43cccd613cd921789ae1213be79771925","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_06 -> audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24b1e63d-a904-5acd-b39a-040b3befe0ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f581f7e40bd5cd1f1ee1b44a57bb9b7ec310718a3c5f66c99c2665f7322a0d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bbea52c-d847-5e23-9b5a-9242c539efe4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24b1e63d-a904-5acd-b39a-040b3befe0ca', 1), '6f581f7e40bd5cd1f1ee1b44a57bb9b7ec310718a3c5f66c99c2665f7322a0d3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3', 1071, '2026-09-14 13:34:24.254056', 'e680fb55149d91feddf19e3489dd1b738c46220f801e85f8588ef01b1ea61541', 'validated', '{"audio_key":"71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789","entity_key":"u_first_objects_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e680fb55149d91feddf19e3489dd1b738c46220f801e85f8588ef01b1ea61541","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_02_listen -> audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('60c4cb48-a0d5-5d31-b5ee-5f42ee0aad2f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f581f7e40bd5cd1f1ee1b44a57bb9b7ec310718a3c5f66c99c2665f7322a0d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b757bc5b-4933-5e7a-a7da-0701adfb0324', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('60c4cb48-a0d5-5d31-b5ee-5f42ee0aad2f', 1), '6f581f7e40bd5cd1f1ee1b44a57bb9b7ec310718a3c5f66c99c2665f7322a0d3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3', 1071, '2026-09-14 13:34:24.254056', 'e680fb55149d91feddf19e3489dd1b738c46220f801e85f8588ef01b1ea61541', 'validated', '{"audio_key":"71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789","entity_key":"e_first_objects_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e680fb55149d91feddf19e3489dd1b738c46220f801e85f8588ef01b1ea61541","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_03 -> audio/generated/de-DE/utterances/803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ab45c582-0e31-5fb5-bd10-2b808d0e33e1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2519d0d-191e-5614-8356-6df509a65d39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ab45c582-0e31-5fb5-bd10-2b808d0e33e1', 1), '08f271887ce94707da822d5263bae19d5519cb3614e0daedc4c7ce5dab7473f1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b.mp3', 862, '2026-09-14 13:34:25.189967', 'efebbf627ee5de8c2aaa975dd840e4d8fd460a5f05a4a282661a3d611fc97bca', 'validated', '{"audio_key":"803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b","entity_key":"u_alphabet_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efebbf627ee5de8c2aaa975dd840e4d8fd460a5f05a4a282661a3d611fc97bca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_01 -> audio/generated/de-DE/utterances/850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e0109ed2-69f3-5560-8263-fe37e6d4421c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('414d84ec-9ada-538c-a4e6-dafdbf79502b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e0109ed2-69f3-5560-8263-fe37e6d4421c', 1), '357a57fe73d6c63bb1923e970f79a924db3a3609eb9797547784a94ee38fc3df',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e.mp3', 914, '2026-09-14 13:34:26.170033', 'b01a3c3c83e4a42ae40078a3f7bd74f675238a7161fc04a11a014014c0a2d17f', 'validated', '{"audio_key":"850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e","entity_key":"u_first_greetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b01a3c3c83e4a42ae40078a3f7bd74f675238a7161fc04a11a014014c0a2d17f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_was_bedeutet_das -> audio/generated/de-DE/utterances/876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0ae0d80a-41d6-5c52-a9d2-6007a3c6279e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_was_bedeutet_das')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89b90034-d878-5273-a923-0582ab06d383', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0ae0d80a-41d6-5c52-a9d2-6007a3c6279e', 1), '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f.mp3', 1436, '2026-09-14 13:34:27.154875', '1f1e9b1968409480eea59311eff9ec0226e47195009e96efad7b2fb1e3f34044', 'validated', '{"audio_key":"876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f","entity_key":"u_de_was_bedeutet_das","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f1e9b1968409480eea59311eff9ec0226e47195009e96efad7b2fb1e3f34044","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_ready_gate:example:2 -> audio/generated/de-DE/utterances/876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('3120e331-9825-59b9-99a0-15bcff94668a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_ready_gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2588fbd-4f03-51a2-a9b4-385790fb44e6', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('3120e331-9825-59b9-99a0-15bcff94668a', 1), '1990ca0bd26dac277b9481471e58b5bda9260d624d1283d18f9a774ec3c82c4a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f.mp3', 1436, '2026-09-14 13:34:27.154875', '1f1e9b1968409480eea59311eff9ec0226e47195009e96efad7b2fb1e3f34044', 'validated', '{"audio_key":"876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f","entity_key":"g_de_ready_gate:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f1e9b1968409480eea59311eff9ec0226e47195009e96efad7b2fb1e3f34044","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/876b9aca9cc2b856bcfb4eba1085a39ff12ee2242fe23d3f7ad89f65e70e373f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_05 -> audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee38a674-9580-5420-b6ec-697189ef6980', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef31dfb7-144c-586f-b0c8-80a6495f07ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee38a674-9580-5420-b6ec-697189ef6980', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 1018, '2026-09-14 13:34:28.214203', '81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"u_first_conversation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_01_listen -> audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3f606f39-f34c-5ac6-84fa-914f411a41da', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40c2b3b5-61a3-5c19-b30e-09139f0c9192', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3f606f39-f34c-5ac6-84fa-914f411a41da', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 1018, '2026-09-14 13:34:28.214203', '81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"e_first_conversation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_06 -> audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ca022e1b-faa9-57a3-9c8c-82434c71c060', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2383843a-a8ae-5b20-b72b-94f1250970e8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ca022e1b-faa9-57a3-9c8c-82434c71c060', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 1018, '2026-09-14 13:34:28.214203', '81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"u_my_name_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_02_listen -> audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('90fb94ff-fa55-58d6-96e0-ddff7e5c4e0f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('189a10f5-d9e1-5f74-9e21-3e9248c72339', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('90fb94ff-fa55-58d6-96e0-ddff7e5c4e0f', 1), '8bbd4b3c19db08c90c23a5850086ff56ca97de8fba4cca38cdaa5f490b950b7e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 1018, '2026-09-14 13:34:28.214203', '81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"e_my_name_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81e6b399e23de63c96bc3133bbca5af8c66d20a1cfab78521f80a3325fac255f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_vater -> audio/generated/de-DE/utterances/89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3a3ecd2b-d001-525c-a1ad-e05ef8b3a91a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_vater')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '695cc3dcacc2b0f9ad8d259973ab902b2dd090148c0e77fcf38ac4dd07d65dd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c36ca8c-a3ca-5617-b6e1-150e16f7b055', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3a3ecd2b-d001-525c-a1ad-e05ef8b3a91a', 1), '695cc3dcacc2b0f9ad8d259973ab902b2dd090148c0e77fcf38ac4dd07d65dd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87.mp3', 914, '2026-09-14 13:34:29.220781', '5e2a86d1913a6d1215318419acb2302d6adf75bf6985f2fe4e74c60b9a7fd72a', 'validated', '{"audio_key":"89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87","entity_key":"u_de_vater","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e2a86d1913a6d1215318419acb2302d6adf75bf6985f2fe4e74c60b9a7fd72a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_wvz:example:2 -> audio/generated/de-DE/utterances/89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('13ec0470-2f7e-5298-99d0-407a03fb29e9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_wvz:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '695cc3dcacc2b0f9ad8d259973ab902b2dd090148c0e77fcf38ac4dd07d65dd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0240e0b-7ee3-5b6d-aab7-96dffdd0d290', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('13ec0470-2f7e-5298-99d0-407a03fb29e9', 1), '695cc3dcacc2b0f9ad8d259973ab902b2dd090148c0e77fcf38ac4dd07d65dd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87.mp3', 914, '2026-09-14 13:34:29.220781', '5e2a86d1913a6d1215318419acb2302d6adf75bf6985f2fe4e74c60b9a7fd72a', 'validated', '{"audio_key":"89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87","entity_key":"g_de_wvz:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e2a86d1913a6d1215318419acb2302d6adf75bf6985f2fe4e74c60b9a7fd72a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/89aa054ec31618e6a732d220076307fcff0deb6e34c9794c6e0d079a3e587e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_buch_sound -> audio/generated/de-DE/utterances/90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('035fbf04-681b-5294-ac3b-848fe0a05fe2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_buch_sound')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cac87c7-b51b-556e-b904-4249567d6c53', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('035fbf04-681b-5294-ac3b-848fe0a05fe2', 1), '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f.mp3', 835, '2026-09-14 13:34:30.231425', 'a3d7721c29216404c9381cd8bf10b191a0bec4a208f22cdcca3d9752e894edeb', 'validated', '{"audio_key":"90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f","entity_key":"u_de_buch_sound","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3d7721c29216404c9381cd8bf10b191a0bec4a208f22cdcca3d9752e894edeb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_ch_two_sounds:example:2 -> audio/generated/de-DE/utterances/90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('21e92604-7103-525d-bd09-0b6ac2e2f15f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_ch_two_sounds:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a46e6ff-8ef8-56a1-a42e-1bca4f701f43', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('21e92604-7103-525d-bd09-0b6ac2e2f15f', 1), '5f36321c429928f458b772bbf5d63c4e51236c98f80144303c2541e4a3e1a55c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f.mp3', 835, '2026-09-14 13:34:30.231425', 'a3d7721c29216404c9381cd8bf10b191a0bec4a208f22cdcca3d9752e894edeb', 'validated', '{"audio_key":"90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f","entity_key":"g_de_ch_two_sounds:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3d7721c29216404c9381cd8bf10b191a0bec4a208f22cdcca3d9752e894edeb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90790c6a9d1056860607b406b4b1e5dc80e9aa47f11c9e2e887f7412c4edbe8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_01 -> audio/generated/de-DE/utterances/952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0251ee8b-97e8-5baf-8880-ceb963d1924a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a8e5cfa8fa3e2682a19b1de32bcad9a37d310d6a9e6ac51516479e444b96856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9df85876-70f2-523b-8bfb-5f448a69c91a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0251ee8b-97e8-5baf-8880-ceb963d1924a', 1), '7a8e5cfa8fa3e2682a19b1de32bcad9a37d310d6a9e6ac51516479e444b96856',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b.mp3', 1280, '2026-09-14 13:34:31.227428', 'a9b86600b6388f66c6c810509a2eb80742fc3ae39c6f795c61df33582768a7a7', 'validated', '{"audio_key":"952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b","entity_key":"u_my_name_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9b86600b6388f66c6c810509a2eb80742fc3ae39c6f795c61df33582768a7a7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-about-me_about_write:model -> audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7b6dc56c-cc2f-58c8-8f5c-abb4bcd35b7a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-about-me_about_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '728bcd78fab6800310b5c810cd0bc872fef60471a85283af594ff83cc4dbfba9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd2f12fb-7ae3-5daf-99be-67212ba738c2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7b6dc56c-cc2f-58c8-8f5c-abb4bcd35b7a', 1), '728bcd78fab6800310b5c810cd0bc872fef60471a85283af594ff83cc4dbfba9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3', 3422, '2026-09-14 13:34:32.586636', '4678b1fe2ba476daf3b9d4a75e9cfe82407796238774d79f9291fd6895a11937', 'validated', '{"audio_key":"970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816","entity_key":"ex_de_de-about-me_about_write:model","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4678b1fe2ba476daf3b9d4a75e9cfe82407796238774d79f9291fd6895a11937","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-real-world-gate_personal_speaking:model -> audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d4171a6a-a5b1-5abf-a29a-4a6efb09dc04', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-real-world-gate_personal_speaking:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '728bcd78fab6800310b5c810cd0bc872fef60471a85283af594ff83cc4dbfba9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52d81515-cfdb-5dde-808b-67569c373e56', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d4171a6a-a5b1-5abf-a29a-4a6efb09dc04', 1), '728bcd78fab6800310b5c810cd0bc872fef60471a85283af594ff83cc4dbfba9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3', 3422, '2026-09-14 13:34:32.586636', '4678b1fe2ba476daf3b9d4a75e9cfe82407796238774d79f9291fd6895a11937', 'validated', '{"audio_key":"970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816","entity_key":"ex_de_de-real-world-gate_personal_speaking:model","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4678b1fe2ba476daf3b9d4a75e9cfe82407796238774d79f9291fd6895a11937","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-real-world-gate:example:1 -> audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('afd310d4-433e-5925-ab27-c7747503b2f0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-real-world-gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '728bcd78fab6800310b5c810cd0bc872fef60471a85283af594ff83cc4dbfba9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7621068e-fa69-51ea-b4c8-fff21c7a921e', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('afd310d4-433e-5925-ab27-c7747503b2f0', 1), '728bcd78fab6800310b5c810cd0bc872fef60471a85283af594ff83cc4dbfba9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3', 3422, '2026-09-14 13:34:32.586636', '4678b1fe2ba476daf3b9d4a75e9cfe82407796238774d79f9291fd6895a11937', 'validated', '{"audio_key":"970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816","entity_key":"g_de_de-real-world-gate:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4678b1fe2ba476daf3b9d4a75e9cfe82407796238774d79f9291fd6895a11937","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/970670a51a543797b7a7e9dc9bd2cc332f7b396db3a89552660a31c263514816.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_04 -> audio/generated/de-DE/utterances/9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('711b58f3-0beb-5ee4-91c7-e9c659f39554', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8e170bb-8cf2-57bd-a519-d330cde01277', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('711b58f3-0beb-5ee4-91c7-e9c659f39554', 1), '8de0b3c47f112c59745f717a626932264c422a7563954872e237b223af4ad643',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37.mp3', 862, '2026-09-14 13:34:33.556398', 'df14204237e8ba24967f73ba30299a71a9beb3818bdc24239de2f088b7851bee', 'validated', '{"audio_key":"9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37","entity_key":"u_alphabet_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df14204237e8ba24967f73ba30299a71a9beb3818bdc24239de2f088b7851bee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_04 -> audio/generated/de-DE/utterances/a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('afaa5c03-5617-53f9-b941-88ee1813ec84', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b70e2d592dd17196b7940574ee89f31c354435338179245457ad54064ba7f77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4292fbdb-1dd5-56a7-ba5b-6e9def5870b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('afaa5c03-5617-53f9-b941-88ee1813ec84', 1), '6b70e2d592dd17196b7940574ee89f31c354435338179245457ad54064ba7f77',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0.mp3', 835, '2026-09-14 13:34:34.518665', '32ac1f447ee75e27fdf7b1a739fa670853c7edc12590c3d5b7e1145a5c994c61', 'validated', '{"audio_key":"a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0","entity_key":"u_numbers_0_10_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32ac1f447ee75e27fdf7b1a739fa670853c7edc12590c3d5b7e1145a5c994c61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_04 -> audio/generated/de-DE/utterances/af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dab40a4e-5fcd-5da0-834d-e930b33c6f59', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4f2521c-c63d-5ae9-9169-8a7780a1238e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dab40a4e-5fcd-5da0-834d-e930b33c6f59', 1), '85d93305b1151f5f34c70c603b9d01c8354a616717077fb8d8fa0d14f60b25c4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f.mp3', 1253, '2026-09-14 13:34:35.510057', '3cc918d5caf76e63a222d5487887d9d2f7f4dfff7b70b3bcc5631884f26ce835', 'validated', '{"audio_key":"af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f","entity_key":"u_first_greetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3cc918d5caf76e63a222d5487887d9d2f7f4dfff7b70b3bcc5631884f26ce835","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-about-me_origin -> audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('21da6bb0-1841-5493-9d87-0c2247b90300', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-about-me_origin')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6856064-3711-5625-b3a6-fb02070b71ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('21da6bb0-1841-5493-9d87-0c2247b90300', 1), 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3', 1488, '2026-09-14 13:34:36.530285', 'df4b5f5b09032631f6ae0e60cc738f07a52b309664dce083f25bb95923bda66f', 'validated', '{"audio_key":"b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761","entity_key":"u_de_de-about-me_origin","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df4b5f5b09032631f6ae0e60cc738f07a52b309664dce083f25bb95923bda66f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-about-me_origin_listen -> audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4bbe0a24-5c34-506c-9c23-c00a9a2e081f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-about-me_origin_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4d95d0e-23f8-5988-a88c-975aba9a4096', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4bbe0a24-5c34-506c-9c23-c00a9a2e081f', 1), 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3', 1488, '2026-09-14 13:34:36.530285', 'df4b5f5b09032631f6ae0e60cc738f07a52b309664dce083f25bb95923bda66f', 'validated', '{"audio_key":"b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761","entity_key":"ex_de_de-about-me_origin_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df4b5f5b09032631f6ae0e60cc738f07a52b309664dce083f25bb95923bda66f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-about-me:example:1 -> audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('248e8341-8998-5858-ba49-4a430a5224f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-about-me:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('194f6c5b-cb3f-5a74-9c78-ac2942adf1e8', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('248e8341-8998-5858-ba49-4a430a5224f3', 1), 'd825d28755a179c37da77042a57ea58c8c0cc103bc255581e68083d2758e2801',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3', 1488, '2026-09-14 13:34:36.530285', 'df4b5f5b09032631f6ae0e60cc738f07a52b309664dce083f25bb95923bda66f', 'validated', '{"audio_key":"b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761","entity_key":"g_de_de-about-me:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df4b5f5b09032631f6ae0e60cc738f07a52b309664dce083f25bb95923bda66f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b78a08114ac510182f84d676fea278411e9bc5a2768a6d7156281d8c97d5b761.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-forms-signs_name_field -> audio/generated/de-DE/utterances/b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ab664504-ca58-52e6-96d0-0e0040bcf18b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-forms-signs_name_field')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05196639-fcc1-568a-acef-fb2710bc5ae2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ab664504-ca58-52e6-96d0-0e0040bcf18b', 1), 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916.mp3', 1018, '2026-09-14 13:34:37.636084', '880bb8619bffc624e7c57e9266e14099ed1b13d83c5a3bdf6d3cc96fbf412f3a', 'validated', '{"audio_key":"b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916","entity_key":"u_de_de-forms-signs_name_field","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"880bb8619bffc624e7c57e9266e14099ed1b13d83c5a3bdf6d3cc96fbf412f3a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-forms-signs:example:2 -> audio/generated/de-DE/utterances/b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('dcf47311-3f49-547a-a134-ed3e31d4a0fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-forms-signs:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01ea7ff3-da21-574c-8482-ffe96710353e', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('dcf47311-3f49-547a-a134-ed3e31d4a0fc', 1), 'dcd1d5223f73b3a965c07e3ff5dbee3eedcfedb806686a05b9b3868a2c3d6d50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916.mp3', 1018, '2026-09-14 13:34:37.636084', '880bb8619bffc624e7c57e9266e14099ed1b13d83c5a3bdf6d3cc96fbf412f3a', 'validated', '{"audio_key":"b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916","entity_key":"g_de_de-forms-signs:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"880bb8619bffc624e7c57e9266e14099ed1b13d83c5a3bdf6d3cc96fbf412f3a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b7c70bb5c762d353c44fd379baa34c3670ac2de5db9d1ccbdee53e044995a916.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_n20 -> audio/generated/de-DE/utterances/b921605589da98ed1951f153de34eeb0551120cab7dea756a5b3ec6ada266a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b93fc0f-a037-5dc4-ad66-204372592659', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_n20')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd2a56ee1cb695c0678ecbcc9dd040f507a6a5ac1e0f4bdcd45b470e6eb5642c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfc8634d-5305-5973-b160-b10eeb55b0cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b93fc0f-a037-5dc4-ad66-204372592659', 1), 'cd2a56ee1cb695c0678ecbcc9dd040f507a6a5ac1e0f4bdcd45b470e6eb5642c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b921605589da98ed1951f153de34eeb0551120cab7dea756a5b3ec6ada266a5e.mp3', 966, '2026-09-14 13:34:38.596613', 'd7d1ed95d958866365f6a54e1c7f8a7d2ca6d5e857df445729368d19b7421742', 'validated', '{"audio_key":"b921605589da98ed1951f153de34eeb0551120cab7dea756a5b3ec6ada266a5e","entity_key":"u_de_de-real-life-numbers_n20","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7d1ed95d958866365f6a54e1c7f8a7d2ca6d5e857df445729368d19b7421742","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b921605589da98ed1951f153de34eeb0551120cab7dea756a5b3ec6ada266a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_03 -> audio/generated/de-DE/utterances/baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7650511d-c889-5dca-9196-c55df9709a99', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a439a993322c6bc5c8f198a5756c32525cb62362b5ce3eda1d22f0daf149258e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ebb5a09-1a29-501a-9a36-07b1ad73eb06', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7650511d-c889-5dca-9196-c55df9709a99', 1), 'a439a993322c6bc5c8f198a5756c32525cb62362b5ce3eda1d22f0daf149258e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df.mp3', 1201, '2026-09-14 13:34:39.660422', '6952b447648fc194f4d6307b43b92f6cf1477f2ac1dab3bf2194f2be9c302817', 'validated', '{"audio_key":"baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df","entity_key":"u_my_name_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6952b447648fc194f4d6307b43b92f6cf1477f2ac1dab3bf2194f2be9c302817","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_phone -> audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0fc86e7f-94f7-5054-8db4-da1509643df0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_phone')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d82d03d-3865-5f99-9d36-7e249b609957', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0fc86e7f-94f7-5054-8db4-da1509643df0', 1), '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3', 3291, '2026-09-14 13:34:40.877058', '0a61a1389d2edc8515c6a53de97a37e6cc0ef36eb8b812561fc74c59b354f908', 'validated', '{"audio_key":"c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d","entity_key":"u_de_de-real-life-numbers_phone","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a61a1389d2edc8515c6a53de97a37e6cc0ef36eb8b812561fc74c59b354f908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-real-life-numbers:example:1 -> audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0285c191-f355-5b66-8348-3a980a7fcb7d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-real-life-numbers:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e161af3-3dba-5744-b65f-105a0d1b67ed', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0285c191-f355-5b66-8348-3a980a7fcb7d', 1), '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3', 3291, '2026-09-14 13:34:40.877058', '0a61a1389d2edc8515c6a53de97a37e6cc0ef36eb8b812561fc74c59b354f908', 'validated', '{"audio_key":"c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d","entity_key":"g_de_de-real-life-numbers:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a61a1389d2edc8515c6a53de97a37e6cc0ef36eb8b812561fc74c59b354f908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-real-world-gate_phone_listen -> audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0ec23621-8290-5e0d-8331-3b22ce90e7f7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-real-world-gate_phone_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d254c87-3523-5af6-a317-88c25faf2074', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0ec23621-8290-5e0d-8331-3b22ce90e7f7', 1), '7cac4cd8bec658ed59478ef6f5ea0ad7589c102dfc5806fe4fb600ec014a59c1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3', 3291, '2026-09-14 13:34:40.877058', '0a61a1389d2edc8515c6a53de97a37e6cc0ef36eb8b812561fc74c59b354f908', 'validated', '{"audio_key":"c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d","entity_key":"ex_de_de-real-world-gate_phone_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a61a1389d2edc8515c6a53de97a37e6cc0ef36eb8b812561fc74c59b354f908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c03a4ed88350a7780d675cfa0b762d6620901438bd0f735f7a182d27b5b3c59d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-forms-signs_form_write:model -> audio/generated/de-DE/utterances/c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('48db5a6b-b4ec-58a7-951a-95a4a5e6a1dd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-forms-signs_form_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12f642df1d5809ca0ade99e672d596d0b5a30e12b9bcd10c5e03ae9d2ffb5f92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e33fae8d-04fd-55c3-a0ba-17cf6d4db564', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('48db5a6b-b4ec-58a7-951a-95a4a5e6a1dd', 1), '12f642df1d5809ca0ade99e672d596d0b5a30e12b9bcd10c5e03ae9d2ffb5f92',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345.mp3', 8359, '2026-09-14 13:34:42.903148', '8e43a731a6a98b7593957ffe17fc42c23798fdaea8eb5b975a1b4fad400a8379', 'validated', '{"audio_key":"c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345","entity_key":"ex_de_de-forms-signs_form_write:model","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e43a731a6a98b7593957ffe17fc42c23798fdaea8eb5b975a1b4fad400a8379","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_de-real-world-gate_personal_form:model -> audio/generated/de-DE/utterances/c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3b9b2395-0960-5cc2-a333-7eb7c72c63b7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_de-real-world-gate_personal_form:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12f642df1d5809ca0ade99e672d596d0b5a30e12b9bcd10c5e03ae9d2ffb5f92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c9abc96-60e3-5f39-8e5d-8d88327499b9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3b9b2395-0960-5cc2-a333-7eb7c72c63b7', 1), '12f642df1d5809ca0ade99e672d596d0b5a30e12b9bcd10c5e03ae9d2ffb5f92',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345.mp3', 8359, '2026-09-14 13:34:42.903148', '8e43a731a6a98b7593957ffe17fc42c23798fdaea8eb5b975a1b4fad400a8379', 'validated', '{"audio_key":"c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345","entity_key":"ex_de_de-real-world-gate_personal_form:model","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e43a731a6a98b7593957ffe17fc42c23798fdaea8eb5b975a1b4fad400a8379","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c61d2c994a206ce0a744c5b3d58d8aae927f9ab573fb3fb923856e93ca24b345.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_letter_names_05 -> audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('01a3dad3-258d-5d44-a181-39ab998e7d0c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_letter_names_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50edac71-1a6d-5e38-8321-123ce8f547e3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('01a3dad3-258d-5d44-a181-39ab998e7d0c', 1), '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3', 1201, '2026-09-14 13:34:43.873580', 'fa23460bc2bc3ff5fd83978875f5e327a39cda6fdd4593efb235c5c943f49d5b', 'validated', '{"audio_key":"ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598","entity_key":"u_letter_names_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa23460bc2bc3ff5fd83978875f5e327a39cda6fdd4593efb235c5c943f49d5b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_letter_names_01_listen -> audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cd423e1f-ac5c-5d69-af91-207f2cebe956', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_letter_names_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe179f3-3464-5117-b657-f7e202b4f5ce', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cd423e1f-ac5c-5d69-af91-207f2cebe956', 1), '9a2e2293f2de1ad872716d1221c7506583ebcaf5c833981d1f77c819f2e00c1e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3', 1201, '2026-09-14 13:34:43.873580', 'fa23460bc2bc3ff5fd83978875f5e327a39cda6fdd4593efb235c5c943f49d5b', 'validated', '{"audio_key":"ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598","entity_key":"e_letter_names_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa23460bc2bc3ff5fd83978875f5e327a39cda6fdd4593efb235c5c943f49d5b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-about-me_age -> audio/generated/de-DE/utterances/cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f221532b-2fad-5388-9b9a-b9c43f5a74fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-about-me_age')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '887872e399c0b1cf633d00a13c0ce08466a4ec666d2c3ace581500de6e4c1f8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00766b46-0a2f-588c-995d-9d6a218c582f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f221532b-2fad-5388-9b9a-b9c43f5a74fc', 1), '887872e399c0b1cf633d00a13c0ce08466a4ec666d2c3ace581500de6e4c1f8e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad.mp3', 1697, '2026-09-14 13:34:44.921660', '7298210213c228fef93937d46f313af255ccf5cc95595a14b4673571ef063bd5', 'validated', '{"audio_key":"cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad","entity_key":"u_de_de-about-me_age","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7298210213c228fef93937d46f313af255ccf5cc95595a14b4673571ef063bd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-about-me:example:2 -> audio/generated/de-DE/utterances/cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('248e8341-8998-5858-ba49-4a430a5224f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-about-me:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '887872e399c0b1cf633d00a13c0ce08466a4ec666d2c3ace581500de6e4c1f8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a26c86e-9bdf-5b02-ae18-aa77136173e3', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('248e8341-8998-5858-ba49-4a430a5224f3', 1), '887872e399c0b1cf633d00a13c0ce08466a4ec666d2c3ace581500de6e4c1f8e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad.mp3', 1697, '2026-09-14 13:34:44.921660', '7298210213c228fef93937d46f313af255ccf5cc95595a14b4673571ef063bd5', 'validated', '{"audio_key":"cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad","entity_key":"g_de_de-about-me:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7298210213c228fef93937d46f313af255ccf5cc95595a14b4673571ef063bd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd5b1ffe10e0de2a414bc06c0c803307cb64a174a746c0786d07dc0533a335ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_03 -> audio/generated/de-DE/utterances/d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('190a216d-46ab-5e75-aa9a-20915e65e469', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43f692229732b4a5323689d6dc018a4acb578ca6d48152b78ceb88250d3323fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bf53355-452e-5617-acb6-45257ab57b7d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('190a216d-46ab-5e75-aa9a-20915e65e469', 1), '43f692229732b4a5323689d6dc018a4acb578ca6d48152b78ceb88250d3323fa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968.mp3', 862, '2026-09-14 13:34:46.070128', 'd8b881189eac42cf9262de10d2bf26389d303453c30a496e118ca45b24837066', 'validated', '{"audio_key":"d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968","entity_key":"u_first_greetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8b881189eac42cf9262de10d2bf26389d303453c30a496e118ca45b24837066","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-about-me_feeling -> audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ac118dfa-ba6a-523d-9112-d915052d40fe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-about-me_feeling')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fb5a72a-a388-58f4-b5db-9b5be7e09f33', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ac118dfa-ba6a-523d-9112-d915052d40fe', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3', 1149, '2026-09-14 13:34:47.100117', '8d3058315d4f48fc12891395b6f5456dcb4b8f51636ab3f7668447458d3936c4', 'validated', '{"audio_key":"d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24","entity_key":"u_de_de-about-me_feeling","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3058315d4f48fc12891395b6f5456dcb4b8f51636ab3f7668447458d3936c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-about-me:example:3 -> audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('248e8341-8998-5858-ba49-4a430a5224f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-about-me:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ccdee05-7a4c-5bea-aa6f-9ca638f8bcfe', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('248e8341-8998-5858-ba49-4a430a5224f3', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3', 1149, '2026-09-14 13:34:47.100117', '8d3058315d4f48fc12891395b6f5456dcb4b8f51636ab3f7668447458d3936c4', 'validated', '{"audio_key":"d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24","entity_key":"g_de_de-about-me:example:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3058315d4f48fc12891395b6f5456dcb4b8f51636ab3f7668447458d3936c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_03 -> audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('da1c9f64-ed5c-568e-8249-338dbe8fc779', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('887aa14d-30d4-50cb-9962-80d307e367b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('da1c9f64-ed5c-568e-8249-338dbe8fc779', 1), '3a7e225e0e49a58a1562cc97e3de2c7118ff17386d99496a7f766b35a3433911',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3', 1149, '2026-09-14 13:34:47.100117', '8d3058315d4f48fc12891395b6f5456dcb4b8f51636ab3f7668447458d3936c4', 'validated', '{"audio_key":"d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24","entity_key":"u_first_conversation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3058315d4f48fc12891395b6f5456dcb4b8f51636ab3f7668447458d3936c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_01 -> audio/generated/de-DE/utterances/d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f0ead184-aca4-5ee6-93d7-1997df215bd2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c0174f3-5cdd-5150-8094-5ffaacf93fda', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f0ead184-aca4-5ee6-93d7-1997df215bd2', 1), '918c02e9102ce389bd321a9e96e6b253c6b877e7a967d3a4e2c3b076a62a414b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9.mp3', 783, '2026-09-14 13:34:48.080510', '1a9179577ec383924a970810ed57359fa1939759f08e7b94f4209485ee62cd22', 'validated', '{"audio_key":"d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9","entity_key":"u_survival_words_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a9179577ec383924a970810ed57359fa1939759f08e7b94f4209485ee62cd22","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_letter_names_02 -> audio/generated/de-DE/utterances/d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6a00a71f-291a-5ab5-bebf-421d11361784', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_letter_names_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3eee2632773a7f55face776196a661a6375359edcb2bea56d640b08f95ac7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f692c64-c508-53fa-be04-ef4d1aba53cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6a00a71f-291a-5ab5-bebf-421d11361784', 1), 'ec3eee2632773a7f55face776196a661a6375359edcb2bea56d640b08f95ac7f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55.mp3', 1097, '2026-09-14 13:34:49.072164', 'e029bd7057943bdee815109e8e30681d88e7b0827129cd5650602297992abd89', 'validated', '{"audio_key":"d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55","entity_key":"u_letter_names_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e029bd7057943bdee815109e8e30681d88e7b0827129cd5650602297992abd89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_03 -> audio/generated/de-DE/utterances/d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16b01630-58ee-5acf-ae6f-9bdc49a1f2ba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe8b6a51cd2fd569d9685bb12f049f6306d1db799d427d76abe87d06b9eee739'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1958889f-9c66-5998-94c6-b3b5169e6e42', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16b01630-58ee-5acf-ae6f-9bdc49a1f2ba', 1), 'fe8b6a51cd2fd569d9685bb12f049f6306d1db799d427d76abe87d06b9eee739',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7.mp3', 1071, '2026-09-14 13:34:50.192300', 'aa94a2e4c557f960fd6028de6d2562b09d8085dd335f1f20fedbb3f4de3ecd43', 'validated', '{"audio_key":"d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7","entity_key":"u_first_objects_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa94a2e4c557f960fd6028de6d2562b09d8085dd335f1f20fedbb3f4de3ecd43","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_letter_names_04 -> audio/generated/de-DE/utterances/e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d2e14aad-16ec-5f77-9c73-778e1c7b815c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_letter_names_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '633f99b3aee08b2f6e7042f0c69879b01394d051d718cf90b91c349c80841079'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78be5c9f-9872-534c-9d98-3907ef216856', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d2e14aad-16ec-5f77-9c73-778e1c7b815c', 1), '633f99b3aee08b2f6e7042f0c69879b01394d051d718cf90b91c349c80841079',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248.mp3', 862, '2026-09-14 13:34:51.143573', '9883eaed7c356a93732bfba499fba61aa0a2c8e3136e2e9d450a81358e8b57fb', 'validated', '{"audio_key":"e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248","entity_key":"u_letter_names_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9883eaed7c356a93732bfba499fba61aa0a2c8e3136e2e9d450a81358e8b57fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_06 -> audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('48797cb5-d1f9-5f75-b819-d6d6b12eb88f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7842208d-721e-5b4b-b016-3fc5f2be4188', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('48797cb5-d1f9-5f75-b819-d6d6b12eb88f', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 835, '2026-09-14 13:34:52.088327', '4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"u_numbers_0_10_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_02_listen -> audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0580303f-fdd5-5654-ae95-f076cd740d47', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e99dbee5-363a-5809-8dd0-c3c80acaa56c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0580303f-fdd5-5654-ae95-f076cd740d47', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 835, '2026-09-14 13:34:52.088327', '4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"e_numbers_0_10_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_de_ready_listen -> audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('828f0d78-636d-501a-8d2b-230e6b6998b8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_de_ready_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6c1bfde-afe2-55f5-b8db-bd213bc480a8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('828f0d78-636d-501a-8d2b-230e6b6998b8', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 835, '2026-09-14 13:34:52.088327', '4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"ex_de_ready_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_zehn -> audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('23446be5-73bd-57a6-b8bb-5b14646dce5a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_zehn')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a5de533-b933-5a8a-8ca9-50155aa9088f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('23446be5-73bd-57a6-b8bb-5b14646dce5a', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 835, '2026-09-14 13:34:52.088327', '4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"u_de_zehn","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_wvz:example:3 -> audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('13ec0470-2f7e-5298-99d0-407a03fb29e9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_wvz:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92ca81ec-a138-5f5e-86ff-e6707e9dc5f7', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('13ec0470-2f7e-5298-99d0-407a03fb29e9', 1), 'bedd6f98909f0da2622f39ce0312e19bf85886fef4fcbe81aee8a343fc0aa763',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 835, '2026-09-14 13:34:52.088327', '4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"g_de_wvz:example:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a3bcbbcc7e02d47d44762f921a64c4567b1ebd7b53e876cb1a2e3cfad21885a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_classroom_06 -> audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('600da29f-4813-515e-9aa7-7d306e3a5997', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_classroom_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f24dc25e-0e86-5dd2-b286-d5edce53d45a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('600da29f-4813-515e-9aa7-7d306e3a5997', 1), '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3', 1149, '2026-09-14 13:34:53.061897', '14f37a9325c03637872c4e07dc78d69e723c719ae42acd4e570acbb25d176389', 'validated', '{"audio_key":"e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222","entity_key":"u_classroom_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14f37a9325c03637872c4e07dc78d69e723c719ae42acd4e570acbb25d176389","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_classroom_02_listen -> audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cb5b75af-a328-51a0-b085-78ef0c358954', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_classroom_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e37d66b-22b1-5321-81ec-4671688fbd57', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cb5b75af-a328-51a0-b085-78ef0c358954', 1), '3d0688394ab2d1186c239c68e87bf48c5ba1ef77337d0091a476bb2fc8c531d1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3', 1149, '2026-09-14 13:34:53.061897', '14f37a9325c03637872c4e07dc78d69e723c719ae42acd4e570acbb25d176389', 'validated', '{"audio_key":"e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222","entity_key":"e_classroom_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14f37a9325c03637872c4e07dc78d69e723c719ae42acd4e570acbb25d176389","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_strasse -> audio/generated/de-DE/utterances/e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('391f8480-13cc-5f1e-9dbc-33817f10f55f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_strasse')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58a3778c18c41726cd53c2a4c77dcbed8512f962d7e616717abee95ca41d0029'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('450da1ab-a502-5a0d-9132-7b0e2a0a52d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('391f8480-13cc-5f1e-9dbc-33817f10f55f', 1), '58a3778c18c41726cd53c2a4c77dcbed8512f962d7e616717abee95ca41d0029',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2.mp3', 1018, '2026-09-14 13:34:54.060608', '006892dcb1032e26d2bf0c2d087bd1c097c89d29ba98d8839a911b2ca1231e46', 'validated', '{"audio_key":"e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2","entity_key":"u_de_strasse","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"006892dcb1032e26d2bf0c2d087bd1c097c89d29ba98d8839a911b2ca1231e46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_umlaut_eszett:example:3 -> audio/generated/de-DE/utterances/e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('736ffb38-c730-5170-977f-5531cb0fa481', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_umlaut_eszett:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58a3778c18c41726cd53c2a4c77dcbed8512f962d7e616717abee95ca41d0029'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c7b768e-4ce4-5ac6-b94d-178177169b57', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('736ffb38-c730-5170-977f-5531cb0fa481', 1), '58a3778c18c41726cd53c2a4c77dcbed8512f962d7e616717abee95ca41d0029',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2.mp3', 1018, '2026-09-14 13:34:54.060608', '006892dcb1032e26d2bf0c2d087bd1c097c89d29ba98d8839a911b2ca1231e46', 'validated', '{"audio_key":"e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2","entity_key":"g_de_umlaut_eszett:example:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"006892dcb1032e26d2bf0c2d087bd1c097c89d29ba98d8839a911b2ca1231e46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e8a47de43ac4e5007a73724926d7bed4d3bda7a91192a15348a18525dafe33e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_02 -> audio/generated/de-DE/utterances/e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2886c779-e953-5256-a048-6815abc99a89', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52df56a3-f14c-5284-b15c-d213a60842b6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2886c779-e953-5256-a048-6815abc99a89', 1), 'd8fcfdbdd51c12e43bfe500e065983dfb4e7ad7e49c204b94cc00eecf83418e8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109.mp3', 1149, '2026-09-14 13:34:55.115683', 'ad2cc29610c8b645b1aba79d74e14574040baec33a05a0047a0b3b648fb08a00', 'validated', '{"audio_key":"e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109","entity_key":"u_first_greetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad2cc29610c8b645b1aba79d74e14574040baec33a05a0047a0b3b648fb08a00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_02 -> audio/generated/de-DE/utterances/f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd046bfb-b0fd-57ac-9585-8fe1975d3969', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ac5c3d9-8928-52b3-b71a-2244bf74e613', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd046bfb-b0fd-57ac-9585-8fe1975d3969', 1), 'ddca7a753c625a28630381d107632271e4b29f054f863ecd328d94932e27dbbf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe.mp3', 966, '2026-09-14 13:34:56.115530', 'd0ee3688ee18a754d819d692f99e76d87443d9c1f4391848a176f2e15b890642', 'validated', '{"audio_key":"f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe","entity_key":"u_survival_words_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0ee3688ee18a754d819d692f99e76d87443d9c1f4391848a176f2e15b890642","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_02 -> audio/generated/de-DE/utterances/f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('306f9d19-d12e-5615-bf90-f53d0f1fce45', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3f4e174-b4a3-539d-a55c-41d6a032f89d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('306f9d19-d12e-5615-bf90-f53d0f1fce45', 1), 'df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82.mp3', 679, '2026-09-14 13:34:57.030515', '998836bd1dc6346d935fc6c9b8d78b03a7930785d00682d2cc2d3d9c0ea8d105', 'validated', '{"audio_key":"f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82","entity_key":"u_alphabet_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"998836bd1dc6346d935fc6c9b8d78b03a7930785d00682d2cc2d3d9c0ea8d105","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_04 -> audio/generated/de-DE/utterances/f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9329fb2d-60a4-55f6-bbec-82a86191dacc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f801a6958b7136a19b367d2aab2c7123692da76d0e96857cae02505c99e8d48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('067889a9-3e00-572d-bc3d-01a5212d1203', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9329fb2d-60a4-55f6-bbec-82a86191dacc', 1), '4f801a6958b7136a19b367d2aab2c7123692da76d0e96857cae02505c99e8d48',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66.mp3', 966, '2026-09-14 13:34:58.072647', '619e5ab073678060b940551ef4df424b2f19d755080db5fb71bc3ea471595a8c', 'validated', '{"audio_key":"f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66","entity_key":"u_first_objects_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"619e5ab073678060b940551ef4df424b2f19d755080db5fb71bc3ea471595a8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_schoen -> audio/generated/de-DE/utterances/f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d3135ab-d041-5915-ab7f-92147843adfe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_schoen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a028e829b255703ecd9ade6ac712e048486eecfbf49d89994839481c772937d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57be3c09-52ab-5888-a7d0-8759420a1c63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d3135ab-d041-5915-ab7f-92147843adfe', 1), '1a028e829b255703ecd9ade6ac712e048486eecfbf49d89994839481c772937d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa.mp3', 835, '2026-09-14 13:34:59.091891', 'd564cb4a0e1177658adfb653434583f8aaa0627e894613c1149286c9a53850f6', 'validated', '{"audio_key":"f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa","entity_key":"u_de_schoen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d564cb4a0e1177658adfb653434583f8aaa0627e894613c1149286c9a53850f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_umlaut_eszett:example:1 -> audio/generated/de-DE/utterances/f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('736ffb38-c730-5170-977f-5531cb0fa481', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_umlaut_eszett:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a028e829b255703ecd9ade6ac712e048486eecfbf49d89994839481c772937d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43552e64-f002-5bbd-a4fb-e194882ceb1c', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('736ffb38-c730-5170-977f-5531cb0fa481', 1), '1a028e829b255703ecd9ade6ac712e048486eecfbf49d89994839481c772937d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa.mp3', 835, '2026-09-14 13:34:59.091891', 'd564cb4a0e1177658adfb653434583f8aaa0627e894613c1149286c9a53850f6', 'validated', '{"audio_key":"f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa","entity_key":"g_de_umlaut_eszett:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d564cb4a0e1177658adfb653434583f8aaa0627e894613c1149286c9a53850f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f664b715d36013c01eaf780d9df95f6ae4f28e4bb16b382a335ed099890e8eaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_06 -> audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5cd7b7f4-8089-5521-a654-99b02ba1e37c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28411679-30ff-5671-8124-87ea204a5d91', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5cd7b7f4-8089-5521-a654-99b02ba1e37c', 1), 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3', 1018, '2026-09-14 13:35:00.056497', 'bed3ad5ff08d67aa63d5581c74708338fd25b464002c636c6a021c01a95afbb8', 'validated', '{"audio_key":"f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e","entity_key":"u_survival_words_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bed3ad5ff08d67aa63d5581c74708338fd25b464002c636c6a021c01a95afbb8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_02_listen -> audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5905a77c-76fe-5655-97ff-67e4db88340a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac549ac9-a3ef-5531-9cd0-c8e4b54aa024', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5905a77c-76fe-5655-97ff-67e4db88340a', 1), 'a80aad652ef9ec4789adeb22fd8aa6725c955e7a8294507a8e86501d8cc27ddc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3', 1018, '2026-09-14 13:35:00.056497', 'bed3ad5ff08d67aa63d5581c74708338fd25b464002c636c6a021c01a95afbb8', 'validated', '{"audio_key":"f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e","entity_key":"e_survival_words_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bed3ad5ff08d67aa63d5581c74708338fd25b464002c636c6a021c01a95afbb8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_02 -> audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('efed185b-ad49-52cf-a72a-f44c3fc2b6ab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('784ddc01-a95d-57e2-8a42-79625d65c1a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('efed185b-ad49-52cf-a72a-f44c3fc2b6ab', 1), '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3', 835, '2026-09-14 13:35:00.979882', 'e9584d00a99ca02278952cc3907c3a91a422a99d6eb202e03f5fcb793a64fc0c', 'validated', '{"audio_key":"f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892","entity_key":"u_first_sounds_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9584d00a99ca02278952cc3907c3a91a422a99d6eb202e03f5fcb793a64fc0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_mein_sound -> audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e38f3512-2d04-5db6-ac1e-83ae69041e35', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_mein_sound')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a2bbe74-db4a-5a0c-bd4c-7ae1bc24b610', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e38f3512-2d04-5db6-ac1e-83ae69041e35', 1), '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3', 835, '2026-09-14 13:35:00.979882', 'e9584d00a99ca02278952cc3907c3a91a422a99d6eb202e03f5fcb793a64fc0c', 'validated', '{"audio_key":"f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892","entity_key":"u_de_mein_sound","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9584d00a99ca02278952cc3907c3a91a422a99d6eb202e03f5fcb793a64fc0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_ei_ie:example:1 -> audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('e61d16c6-fe8a-56a9-a951-1a371e5579e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_ei_ie:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf9e219d-cfb5-53b8-8af1-6ca67f8bdb00', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('e61d16c6-fe8a-56a9-a951-1a371e5579e3', 1), '25352d33fff0003db2f3df1f4211b8d04eb3e63779d5af061943a0fe05d9f2ee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3', 835, '2026-09-14 13:35:00.979882', 'e9584d00a99ca02278952cc3907c3a91a422a99d6eb202e03f5fcb793a64fc0c', 'validated', '{"audio_key":"f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892","entity_key":"g_de_ei_ie:example:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9584d00a99ca02278952cc3907c3a91a422a99d6eb202e03f5fcb793a64fc0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_de_de-real-life-numbers_price -> audio/generated/de-DE/utterances/fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d16ecd7-2333-5602-b33d-59acad6f7daf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_de_de-real-life-numbers_price')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2daab4ba-9d9a-5a33-a279-baa164f46005', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d16ecd7-2333-5602-b33d-59acad6f7daf', 1), '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2.mp3', 1253, '2026-09-14 13:35:01.964328', '77330e069e95688d118f518be04329b22d49e7d1c665074316683005cf45a574', 'validated', '{"audio_key":"fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2","entity_key":"u_de_de-real-life-numbers_price","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77330e069e95688d118f518be04329b22d49e7d1c665074316683005cf45a574","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_de_de-real-life-numbers:example:2 -> audio/generated/de-DE/utterances/fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0285c191-f355-5b66-8348-3a980a7fcb7d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_de_de-real-life-numbers:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50362e7d-e5ef-56af-bba1-70433c39ee7d', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0285c191-f355-5b66-8348-3a980a7fcb7d', 1), '8dd866966c1dc138c7dbefc21831e148435a4fb22df59939ce657e1789739da2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2.mp3', 1253, '2026-09-14 13:35:01.964328', '77330e069e95688d118f518be04329b22d49e7d1c665074316683005cf45a574', 'validated', '{"audio_key":"fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2","entity_key":"g_de_de-real-life-numbers:example:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77330e069e95688d118f518be04329b22d49e7d1c665074316683005cf45a574","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fce5b079863bb4aa4e83f01b5087677fcc65ec56bacdd00709f8c4e51da44ea2.mp3"}'
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

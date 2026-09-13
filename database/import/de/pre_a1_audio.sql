-- Generated audio link import for de-DE Pre-A1
-- Source manifest: audio/manifests/de/Pre-A1.json
-- Generated rows: 280
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17.mp3', 862, '2026-09-13 04:03:44.345402', 'ea3bb39801ad5d49aafb36db98571283357e158e5ded5dd7f9fe5dcdb1d71391', 'validated', '{"audio_key":"006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17","entity_key":"d_letter_names_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ea3bb39801ad5d49aafb36db98571283357e158e5ded5dd7f9fe5dcdb1d71391","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/006805dd6e2cac9d8081f13c65649835a723d8d14666fec0c194b19c7413ba17.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0.mp3', 1280, '2026-09-13 04:03:46.212517', '0060a1e1d7a9548fad275426115799f99fdf2b680744303a207ae992f985046d', 'validated', '{"audio_key":"0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0","entity_key":"d_first_objects_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0060a1e1d7a9548fad275426115799f99fdf2b680744303a207ae992f985046d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0068db669a1f081d5b922e974d4f26765e7ade8f2de23eea92a542376f301dd0.mp3"}'
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
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd.mp3', 1253, '2026-09-13 04:03:49.996950', '7ddbb2f9015d3955ed84843c30275b8aaee7e19579c66d203a37725082736666', 'validated', '{"audio_key":"008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd","entity_key":"d_first_sounds_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7ddbb2f9015d3955ed84843c30275b8aaee7e19579c66d203a37725082736666","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/008deb7f6d5e37c38f0d7d48dbe030c532ab379b9d647db19f3a908526796ffd.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859.mp3', 679, '2026-09-13 04:03:47.165330', 'c0fdd78b3eb110f5e0b1363d266253e064c54c9c4e6270b522174c2bd4d34295', 'validated', '{"audio_key":"07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859","entity_key":"d_first_objects_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c0fdd78b3eb110f5e0b1363d266253e064c54c9c4e6270b522174c2bd4d34295","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/07c21bffdabe8b0cced9b76eb6e57b97d5e00bfcd36eca2c93cc0e8947a2a859.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506.mp3', 862, '2026-09-13 04:03:48.136084', '3dbb614914306ca79072c9e1fe2915c3d763eb2d0f9df6a4ebd46ec39440332d', 'validated', '{"audio_key":"09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506","entity_key":"d_alphabet_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3dbb614914306ca79072c9e1fe2915c3d763eb2d0f9df6a4ebd46ec39440332d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/09b27f88f0be7c4c9b05ff8dd13e936a0e0741101e3988d346a07a73d9441506.mp3"}'
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
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b.mp3', 862, '2026-09-13 04:03:52.954542', '550e24b9f496b485c929a62bdb6b6e8846afef3d5412d9d9d1a7dc1b25f6ba0d', 'validated', '{"audio_key":"0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b","entity_key":"d_letter_names_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"550e24b9f496b485c929a62bdb6b6e8846afef3d5412d9d9d1a7dc1b25f6ba0d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0e71191d0c036e6d3ad475566dce08bdeb92c732acea0cbd58a32bb8e332cd2b.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba.mp3', 679, '2026-09-13 04:03:55.809088', '4a8c5960141c93f7b276388a70d1666082fea32a7cd5412cc338dc2a5ce01e50', 'validated', '{"audio_key":"146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba","entity_key":"d_letter_names_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4a8c5960141c93f7b276388a70d1666082fea32a7cd5412cc338dc2a5ce01e50","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/146787423fe2b5478458d827b9be01cd37630ee180ad8d3a4323e7d8945c38ba.mp3"}'
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
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3.mp3', 1149, '2026-09-13 04:03:53.978040', '2e1d51baeca07a4e42ac13373158db10049c0d8a77fb1c5bb9267c0cc057ee98', 'validated', '{"audio_key":"1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3","entity_key":"d_survival_words_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2e1d51baeca07a4e42ac13373158db10049c0d8a77fb1c5bb9267c0cc057ee98","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1a804c7c421bf600bdeb378a797d0adc82c8f6de77578e2a3d77a7125e40a1d3.mp3"}'
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
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d.mp3', 862, '2026-09-13 04:03:59.461614', '5bfe2fea299bcf9488ed00e3c7d9227e13a61d4c859d292155d5df614b523309', 'validated', '{"audio_key":"1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d","entity_key":"d_first_objects_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5bfe2fea299bcf9488ed00e3c7d9227e13a61d4c859d292155d5df614b523309","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1aa2a51d320f2b76f1e74aa6e5be3b6f50098ea0ac49dccb487f6b8111dbee9d.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d.mp3', 835, '2026-09-13 04:03:56.854396', 'd83d61bef1278de5d7fb6091e1eedbb5438e7550ddda8d1e1e53d9f9826db826', 'validated', '{"audio_key":"1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d","entity_key":"d_letter_names_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d83d61bef1278de5d7fb6091e1eedbb5438e7550ddda8d1e1e53d9f9826db826","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1b76394bae2ee41293523d99ba98c58670613f8d623811a7bf04b5dd0b24f01d.mp3"}'
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
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a.mp3', 1149, '2026-09-13 04:03:57.865378', 'eea506b4232cdc7380f0d12f2fe8b257f261ce88bebf619536a83160c634a6a0', 'validated', '{"audio_key":"221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a","entity_key":"d_my_name_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"eea506b4232cdc7380f0d12f2fe8b257f261ce88bebf619536a83160c634a6a0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/221dae1150f83589d21ca5cfbf15a9cb83ef4857bee81bf2377ac10ce46efa3a.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade.mp3', 1280, '2026-09-13 04:03:58.892817', '68b5949f4c45ae354351622abb3b6ef8e0adfea39bf5c15ab6ba4389db6e3225', 'validated', '{"audio_key":"224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade","entity_key":"d_first_conversation_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"68b5949f4c45ae354351622abb3b6ef8e0adfea39bf5c15ab6ba4389db6e3225","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/224f63a293b402adbf260bafc8d00b0171b708c493cd1109c6a79d1c08a3fade.mp3"}'
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
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b.mp3', 835, '2026-09-13 04:03:59.940852', 'c6c88b108df6c277a34cb15ff0f321e4e00389d2d5dbe2124cf6c785caced045', 'validated', '{"audio_key":"2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b","entity_key":"d_first_objects_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c6c88b108df6c277a34cb15ff0f321e4e00389d2d5dbe2124cf6c785caced045","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2410f08d82d7f372b77bffce5664aafc01133dd9451f84e0e03d4567acc2028b.mp3"}'
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
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1.mp3', 1488, '2026-09-13 04:04:04.941005', 'a7e9139bc6e25cb8cc66a329fee921254b4e7048ae89441625b81fd9f3b47d2a', 'validated', '{"audio_key":"2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1","entity_key":"d_letter_names_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a7e9139bc6e25cb8cc66a329fee921254b4e7048ae89441625b81fd9f3b47d2a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2441ecefeffc8e633a5a8915add1e65bac074e82f95677161857d3b67de868e1.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113.mp3', 914, '2026-09-13 04:04:00.920079', '8a12f51a9da2194103bfd4ba218a69e78e4b9ea57f9318211fb283b8d97ece3a', 'validated', '{"audio_key":"272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113","entity_key":"d_classroom_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8a12f51a9da2194103bfd4ba218a69e78e4b9ea57f9318211fb283b8d97ece3a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/272073ade27b4347d970cee3d5c067c03e554032a93a544c36c279b15c899113.mp3"}'
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
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03.mp3', 783, '2026-09-13 04:04:04.940740', '778d13f72571aa0238fcd39381220a9a12d5a8f60186977e7572863e811c4586', 'validated', '{"audio_key":"2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03","entity_key":"d_letter_names_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"778d13f72571aa0238fcd39381220a9a12d5a8f60186977e7572863e811c4586","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2816a93e45b6912c8c8031442902a217956b86e803c01af1ec9bc29422667e03.mp3"}'
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
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12.mp3', 1280, '2026-09-13 04:04:06.011414', '7564d7c14067b7e96ce9c746df05227ac2e74cb7a2348d14919e7a13da746814', 'validated', '{"audio_key":"2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12","entity_key":"d_classroom_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7564d7c14067b7e96ce9c746df05227ac2e74cb7a2348d14919e7a13da746814","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2b695dbfc3ba1ad1a228185993418e0b8e7f3397724af9b9d44a1d57282f2a12.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4.mp3', 1567, '2026-09-13 04:04:11.163578', '30cc65d50c0a166758d77fc52b7ac028474e6ed9237179ef1ee3e212a5cd5edd', 'validated', '{"audio_key":"36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4","entity_key":"d_first_conversation_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"30cc65d50c0a166758d77fc52b7ac028474e6ed9237179ef1ee3e212a5cd5edd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/36f33f095222b2e8f537a80c697402d76a80a8a6c940f1d905df5988e275aab4.mp3"}'
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
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7.mp3', 1018, '2026-09-13 04:04:12.027937', '92ff3f7ea0f8f7c6ab147db356d1dc13b86da6af301f77f9a8e2b4dd92cb5ca8', 'validated', '{"audio_key":"3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7","entity_key":"d_classroom_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"92ff3f7ea0f8f7c6ab147db356d1dc13b86da6af301f77f9a8e2b4dd92cb5ca8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3746c5589f79b035754b24d78d6baf45a82cdeba6c8e129d0c966728b23ef7d7.mp3"}'
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
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce.mp3', 966, '2026-09-13 04:04:16.130624', '8c17ed113905703fda2823093711e2fe6c2259636cd2f0b8f0ce8ac696a7ac99', 'validated', '{"audio_key":"3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce","entity_key":"d_first_sounds_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8c17ed113905703fda2823093711e2fe6c2259636cd2f0b8f0ce8ac696a7ac99","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3d238a6e99ddfb8fa840d7c3301d480654eacfaa60a3780bc31e149187338dce.mp3"}'
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
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8.mp3', 600, '2026-09-13 04:04:16.130360', 'c2d8fbfcb4550ccac3ba988d40cdfdca5043d97334eff93d52a3cd8471517019', 'validated', '{"audio_key":"3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8","entity_key":"d_classroom_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c2d8fbfcb4550ccac3ba988d40cdfdca5043d97334eff93d52a3cd8471517019","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3df9259a65ab7712932f0e50608da17a6090dd5ecb1944f45c5cf5800e6313c8.mp3"}'
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
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451.mp3', 1515, '2026-09-13 04:04:17.232583', '811db90c2b394613d596e4e176f8c9dc5ab8d63cc7ca067a4780e9e2184824d8', 'validated', '{"audio_key":"3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451","entity_key":"d_numbers_0_10_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"811db90c2b394613d596e4e176f8c9dc5ab8d63cc7ca067a4780e9e2184824d8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3e06a9c57b61eb3707c513e4c0b3203aeff41627099a3f147f06ce4553f74451.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d.mp3', 1071, '2026-09-13 04:04:17.228323', '4e0f4a929d35ad7820f3f7222d617bfca5e51f9702744bfb980d5554114644fc', 'validated', '{"audio_key":"3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d","entity_key":"d_alphabet_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e0f4a929d35ad7820f3f7222d617bfca5e51f9702744bfb980d5554114644fc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3e1029c7cd86d78be4bfa8f29239ef047227463199446f3f2f865b22c9e2c35d.mp3"}'
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
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2.mp3', 1201, '2026-09-13 04:04:18.381431', 'b6e9875d983c8398ac3be4cebd9fb272491c3292c8c6eafaead56c9aa670aca2', 'validated', '{"audio_key":"3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2","entity_key":"d_numbers_0_10_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b6e9875d983c8398ac3be4cebd9fb272491c3292c8c6eafaead56c9aa670aca2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3e7d4fabe50103b1128cd254641d61ce656d180ec25feb7f6cde01ddd7d947f2.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b.mp3', 1280, '2026-09-13 04:04:18.304708', '90c0022f6fa21064a58bc2ffe9457eb499ca62d5faa76173abf2c34a3cca8c5e', 'validated', '{"audio_key":"3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b","entity_key":"d_first_objects_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"90c0022f6fa21064a58bc2ffe9457eb499ca62d5faa76173abf2c34a3cca8c5e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3f79114be617bda33402af714f44094d79f6d851789b24ec8e28f28406e4375b.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22.mp3', 1671, '2026-09-13 04:04:19.414326', '131400a3ace346c9bf50a8dcf20bd60caa4138fc154a2d4319f75f534fbd977d', 'validated', '{"audio_key":"4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22","entity_key":"d_first_conversation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"131400a3ace346c9bf50a8dcf20bd60caa4138fc154a2d4319f75f534fbd977d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4cebb9cbf09d58f24b48faaf3fa9122c8ca8171ccab6f85deaa3f8b8ee278c22.mp3"}'
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
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e.mp3', 1097, '2026-09-13 04:04:22.836417', '891b083088528a06949ab12e73d10d452a7930629cfa5611efcd0651c396c6e0', 'validated', '{"audio_key":"4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e","entity_key":"d_survival_words_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"891b083088528a06949ab12e73d10d452a7930629cfa5611efcd0651c396c6e0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4d7ac8025ae8548feed9bd7525c30c90c618cce120a9e059f849e6978faeeb5e.mp3"}'
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
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a.mp3', 1201, '2026-09-13 04:04:22.928983', '8ddd73877697142cacff3e950adcf5a762b2c9d9e6488d9e750c9595d7df0faa', 'validated', '{"audio_key":"50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a","entity_key":"d_alphabet_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"8ddd73877697142cacff3e950adcf5a762b2c9d9e6488d9e750c9595d7df0faa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/50d2af3c438a2266fdb4753214242850e86e45579da1b3d2fc9071fc9ff1fa9a.mp3"}'
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
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3.mp3', 1097, '2026-09-13 04:04:23.940951', 'c8123afe67903539c0a78519a4445db25d35b639cae4e294e19824683ccf0a84', 'validated', '{"audio_key":"5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3","entity_key":"d_alphabet_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"c8123afe67903539c0a78519a4445db25d35b639cae4e294e19824683ccf0a84","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5259dd6b4894f4727d114b268c7f9684425ff6f438a848d7cb55da46f33603f3.mp3"}'
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
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7.mp3', 1018, '2026-09-13 04:04:23.935057', '2cfd0ffb7fac38f94445efc6fc86dcee3ec5d388a5ec99ac48b103efe6f967f3', 'validated', '{"audio_key":"560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7","entity_key":"d_my_name_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2cfd0ffb7fac38f94445efc6fc86dcee3ec5d388a5ec99ac48b103efe6f967f3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/560860d5dc255143a79ba98abe724a0fe66f96e79da6ed632aab3558373602f7.mp3"}'
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
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635.mp3', 1253, '2026-09-13 04:04:24.994224', 'abe5670e7fe0192a50e262217c935cf3d6f33630003d3fc7d9cea3d4933694b7', 'validated', '{"audio_key":"5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635","entity_key":"d_numbers_0_10_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"abe5670e7fe0192a50e262217c935cf3d6f33630003d3fc7d9cea3d4933694b7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5cbe787fe02e7b59aaf4884b6c224bd53e54096b26836592ac7d8fc84b9b6635.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857.mp3', 1436, '2026-09-13 04:04:25.033546', '9b8d3d12790877c17108c0950b1a73ad2115810df3c04e0b81a542e67902b26a', 'validated', '{"audio_key":"5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857","entity_key":"d_first_conversation_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"9b8d3d12790877c17108c0950b1a73ad2115810df3c04e0b81a542e67902b26a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5dfe1cb6c111ed34c7161f919b44ac48e734abdd13c6c37cf6e3158c8579c857.mp3"}'
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
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86.mp3', 1567, '2026-09-13 04:04:26.075628', '9988a59cb90473972ec98ca3fe5cc7b2b03573c999b5b622e81ef29a07676bbb', 'validated', '{"audio_key":"633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86","entity_key":"d_letter_names_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9988a59cb90473972ec98ca3fe5cc7b2b03573c999b5b622e81ef29a07676bbb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/633d6afb3f22b11c9368f7f6419ce50ed585696e58e35c1ef5adca08a751fe86.mp3"}'
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
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522.mp3', 1488, '2026-09-13 04:04:30.757621', 'df550affcdefd58f2977e26bde24b8409405921ce2cc8439c7281df606c4de78', 'validated', '{"audio_key":"63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522","entity_key":"d_numbers_0_10_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"df550affcdefd58f2977e26bde24b8409405921ce2cc8439c7281df606c4de78","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/63b29d5ba895e36f9cdda705ae2923ed84a75cbb870b97b6b55e1ea96fc49522.mp3"}'
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
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a.mp3', 679, '2026-09-13 04:04:27.044565', '10ac5616249d983c8d22c0786ab9b1eaa5beff98aa7e1e7700c5a72872344162', 'validated', '{"audio_key":"646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a","entity_key":"d_alphabet_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"10ac5616249d983c8d22c0786ab9b1eaa5beff98aa7e1e7700c5a72872344162","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/646668c69c5172bd7bfbbd7e023dc40c1b8de67598a599c9561eb2eb8fd2463a.mp3"}'
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
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2.mp3', 783, '2026-09-13 04:04:28.138562', 'a49bc37fa66b762b62c62adb07e517e686af7dc49dca5fa913a381a9e07c4452', 'validated', '{"audio_key":"6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2","entity_key":"d_survival_words_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a49bc37fa66b762b62c62adb07e517e686af7dc49dca5fa913a381a9e07c4452","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6744fc1555eb2c2b52d62cb27d4576226a52d8249e6630dc3b6db8a837a8dba2.mp3"}'
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
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc.mp3', 1149, '2026-09-13 04:04:31.697826', '2d1b022334dad1b6290f3ac91c53a58b37ddb86f7f7be08dc5313705cede9836', 'validated', '{"audio_key":"69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc","entity_key":"d_first_greetings_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2d1b022334dad1b6290f3ac91c53a58b37ddb86f7f7be08dc5313705cede9836","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/69bc4d738923ed709d1528c604a542c1519379308598a8683803d72b1d1f5bbc.mp3"}'
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
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342.mp3', 1253, '2026-09-13 04:04:31.842953', '4a062c360b696a5bfeeb06f961215df6e61cf9c7ad2f2109d7d49ead57e3a97e', 'validated', '{"audio_key":"7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342","entity_key":"d_my_name_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4a062c360b696a5bfeeb06f961215df6e61cf9c7ad2f2109d7d49ead57e3a97e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7937a04e4f77085c2df48c24e3fbc4996e95fc2b78b6875038f51af530ce6342.mp3"}'
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
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d.mp3', 1018, '2026-09-13 04:04:32.718517', '1edb7622a00c4ea93b522914469d6925f6946cccda612e39bf3a7f906444b5a8', 'validated', '{"audio_key":"7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d","entity_key":"d_numbers_0_10_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1edb7622a00c4ea93b522914469d6925f6946cccda612e39bf3a7f906444b5a8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7d1ae135edb74784468e63e39f1a7df5b1c1835c39849d252a0136f6e5bd002d.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9.mp3', 862, '2026-09-13 04:04:32.852348', '538dabab6e8ec20ff01e2706915c476933effc4a953900f574fc357bfc5fbde3', 'validated', '{"audio_key":"7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9","entity_key":"d_first_conversation_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"538dabab6e8ec20ff01e2706915c476933effc4a953900f574fc357bfc5fbde3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7dc0e1307900b9d1878b7f9b0977fab522c4e949152845d89a9d5dba611768b9.mp3"}'
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
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3', 835, '2026-09-13 04:04:33.884361', 'b791aaebbe96b6cdc08ae4fe6ca8fb30e68f6e78ac6ee9804b9a9f9e4cc0d404', 'validated', '{"audio_key":"7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294","entity_key":"d_first_greetings_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b791aaebbe96b6cdc08ae4fe6ca8fb30e68f6e78ac6ee9804b9a9f9e4cc0d404","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7f01136c37e910f9374a3c6f370e7ab6c8260790c07897cd2ab94c97140a1294.mp3"}'
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
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b.mp3', 1253, '2026-09-13 04:04:33.933853', 'e50d87b952c384627e1c3fbf1d0a162c74fd0aa16750c715453e6877f957f858', 'validated', '{"audio_key":"82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b","entity_key":"d_first_greetings_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"e50d87b952c384627e1c3fbf1d0a162c74fd0aa16750c715453e6877f957f858","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/82eb08cebbe9567119860169feba207acb1821950a7aaa5fb2dc02d2c7742c4b.mp3"}'
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
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919.mp3', 783, '2026-09-13 04:04:34.974644', 'a3530d167ea050ee295c81da5f82fd3986b184ede9f1e661b3015f8b409a5801', 'validated', '{"audio_key":"842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919","entity_key":"d_alphabet_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a3530d167ea050ee295c81da5f82fd3986b184ede9f1e661b3015f8b409a5801","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/842bd6fbcf4619294196b300a6af3a9c4d07ca44f890663762c8fec1ca88c919.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7.mp3', 914, '2026-09-13 04:04:34.971735', '186cd03d9259177206a44387dc9c22978692fd4c40e4814d4a6b1933075d3fe0', 'validated', '{"audio_key":"84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7","entity_key":"d_first_conversation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"186cd03d9259177206a44387dc9c22978692fd4c40e4814d4a6b1933075d3fe0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/84edf3f4ef287333fec1e3640584acfee77ffb500ac475e0f3a35d85a9ad88c7.mp3"}'
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
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95.mp3', 835, '2026-09-13 04:04:35.950413', '7abab2f015b0b695eef0c0f7fee0967524c9f902fd2e009336fe1bfca7d01aaf', 'validated', '{"audio_key":"875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95","entity_key":"d_survival_words_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7abab2f015b0b695eef0c0f7fee0967524c9f902fd2e009336fe1bfca7d01aaf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/875673a1dcb91075b243266a8d28fa2d91376ba1f36669032238d65554b21c95.mp3"}'
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
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1.mp3', 862, '2026-09-13 04:04:36.022440', '57db41af4f6c7654ca802e5692d305ca53e0382ba1346246918937d779635d6b', 'validated', '{"audio_key":"8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1","entity_key":"d_classroom_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"57db41af4f6c7654ca802e5692d305ca53e0382ba1346246918937d779635d6b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8907514115fc348f207cd6b28992ed9954846ba09701cce7e41dc75e68b74ce1.mp3"}'
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
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744.mp3', 1149, '2026-09-13 04:04:37.054731', 'c0014e62ae56e440ecab61da3cb1634981eaf7eca81ee435a3df69d0177f91ac', 'validated', '{"audio_key":"8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744","entity_key":"d_survival_words_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c0014e62ae56e440ecab61da3cb1634981eaf7eca81ee435a3df69d0177f91ac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8a2d41a3a30df592a6cfafbb36982d1558a6f14ec5fccb7b0eb91a88680a4744.mp3"}'
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
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce.mp3', 862, '2026-09-13 04:04:37.029937', '176be5ad743967ecf2ab3bc50277edcf7d0a5a85e2d6eaf2e5bbb5d1ddc23190', 'validated', '{"audio_key":"8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce","entity_key":"d_first_sounds_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"176be5ad743967ecf2ab3bc50277edcf7d0a5a85e2d6eaf2e5bbb5d1ddc23190","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8cfbdfcb142f461a602d71d2feff901777ffde07031e422d758fa730dfb5b0ce.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7.mp3', 1515, '2026-09-13 04:04:38.075416', 'f45706488e32ad0ad839cf0133098ea8b0d0cd07c636ce432fa69962dca17a21', 'validated', '{"audio_key":"904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7","entity_key":"d_first_conversation_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f45706488e32ad0ad839cf0133098ea8b0d0cd07c636ce432fa69962dca17a21","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/904a61a1111a4b479ddd50be8ae6fd817eef02b4004aabc86863bb79babbe9c7.mp3"}'
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
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2.mp3', 1097, '2026-09-13 04:04:38.043256', '92f1ca0066b9042abe80da617f143739d56c6528b72b65a31fb5f6f8ddc8f89f', 'validated', '{"audio_key":"920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2","entity_key":"d_classroom_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"92f1ca0066b9042abe80da617f143739d56c6528b72b65a31fb5f6f8ddc8f89f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/920b216a06bc2f0373be73a99dabda06350806a70f34cbd3d6c0fdf9f9ed2eb2.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b.mp3', 966, '2026-09-13 04:04:39.064489', 'a838dd678bf37c49752a38bcba625dc80333f2badfb0d3737450240e4a0e2609', 'validated', '{"audio_key":"94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b","entity_key":"d_my_name_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a838dd678bf37c49752a38bcba625dc80333f2badfb0d3737450240e4a0e2609","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/94cc2edb07f5aae43e4526e37e56c4a16ea17f64f32ac26f47c2c9608cb77c5b.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8.mp3', 1253, '2026-09-13 04:04:39.068443', 'd12ab2cd3ebb44b8a55c0f7496c3487c6253837541e84c3673008e22a1fb4be1', 'validated', '{"audio_key":"a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8","entity_key":"d_first_objects_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d12ab2cd3ebb44b8a55c0f7496c3487c6253837541e84c3673008e22a1fb4be1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a0f860531ae11703657cf16149ac63bbcb2367a3e7ee22e952ed2b1bc69e96f8.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288.mp3', 1097, '2026-09-13 04:04:40.072307', 'fb92d60633bcc35d3e043afa8c8d7d1e6b8e3120657c95c5441993eb9657ff40', 'validated', '{"audio_key":"a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288","entity_key":"d_first_greetings_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fb92d60633bcc35d3e043afa8c8d7d1e6b8e3120657c95c5441993eb9657ff40","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a8b976de0359d41fab92573afeb1b86b041e0de3ec0a94d6322c92e8e5589288.mp3"}'
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
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0.mp3', 1253, '2026-09-13 04:04:40.080967', 'd60c6870a8a9eb9b20955b5a161a5580b13b078f04a538bbddf062bbec231026', 'validated', '{"audio_key":"a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0","entity_key":"d_classroom_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d60c6870a8a9eb9b20955b5a161a5580b13b078f04a538bbddf062bbec231026","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a940ed3cb82b3e4b7af40e6c9fdd3535eb941f48bad16ea7804f1bf35dcd1cd0.mp3"}'
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
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3', 835, '2026-09-13 04:04:41.109797', 'd36d92d046b3c06cca8d995589c780f7f9e6461e6b12577f89357d94fb2c813a', 'validated', '{"audio_key":"afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7","entity_key":"d_first_greetings_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d36d92d046b3c06cca8d995589c780f7f9e6461e6b12577f89357d94fb2c813a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/afde27ce32770455f31b807ee55ebff368a307ebb53b981ba0b0c6d298408bb7.mp3"}'
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
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f.mp3', 1515, '2026-09-13 04:04:41.152519', '3bf83e8b2c1b56ae728eec39f5bbc83245509e191abe18ba6703123766f7c294', 'validated', '{"audio_key":"b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f","entity_key":"d_my_name_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3bf83e8b2c1b56ae728eec39f5bbc83245509e191abe18ba6703123766f7c294","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b16c66a99b46fa16019e28c94cc3d245fcecb882c9156bf602b3c72aaa08b81f.mp3"}'
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
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e.mp3', 1488, '2026-09-13 04:04:42.162260', '3edfc6ba354a42753dea5402b60902c52986b50f88085cb3cb0642bf69a79205', 'validated', '{"audio_key":"b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e","entity_key":"d_first_sounds_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3edfc6ba354a42753dea5402b60902c52986b50f88085cb3cb0642bf69a79205","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b4c1095d21d44103449a4a187b67848ab6f502720446fb90e974f40c07f7551e.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357.mp3', 966, '2026-09-13 04:04:42.233564', 'c36ae5449cd2c78dbfce04c3cfcfc7e4a8612976e38a2589e796f110b5352e0a', 'validated', '{"audio_key":"b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357","entity_key":"d_alphabet_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c36ae5449cd2c78dbfce04c3cfcfc7e4a8612976e38a2589e796f110b5352e0a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b76eb23fbe6f422542756b6ec667fb8c0cc6b2f8f2c3ea0d0c2aeb4050f7b357.mp3"}'
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
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb.mp3', 1619, '2026-09-13 04:04:43.209315', 'ef1192ba5c41cde26fdddbe7fc05092948a6fbd32482da1ae718169133e453e5', 'validated', '{"audio_key":"ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb","entity_key":"d_my_name_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ef1192ba5c41cde26fdddbe7fc05092948a6fbd32482da1ae718169133e453e5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ba199cb3336fb8e4c3a8ddf61f7f5329fc097c53969d8944043d397c10145ceb.mp3"}'
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
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357.mp3', 1018, '2026-09-13 04:04:43.264349', 'd2158dff583c9e910068111f0eeeca2a041383d692f6b22f865b98cb929b610f', 'validated', '{"audio_key":"ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357","entity_key":"d_survival_words_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d2158dff583c9e910068111f0eeeca2a041383d692f6b22f865b98cb929b610f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ba7c54494fc57dd7d6036449b9707ac36ad26746042181d660107971ea9ab357.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3.mp3', 1018, '2026-09-13 04:04:44.207546', '2752d0a93d1ee70014266efd6f3916207cedbbb7ffbdc5f9a4ed38ce3f48d838', 'validated', '{"audio_key":"baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3","entity_key":"d_numbers_0_10_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"2752d0a93d1ee70014266efd6f3916207cedbbb7ffbdc5f9a4ed38ce3f48d838","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/baaae1bb2851cefa168b859533d4bc6ff464866da655b8de36573d1877122ba3.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e.mp3', 1071, '2026-09-13 04:04:44.332387', '184f2bc19c607a9309f7c7c0d9e067594df39402fe0aa596d92c04b665247190', 'validated', '{"audio_key":"bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e","entity_key":"d_first_greetings_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"184f2bc19c607a9309f7c7c0d9e067594df39402fe0aa596d92c04b665247190","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bf98487a36aac01f0a74b17dfe4071fb925ac040db26101db09bb7fdfd25f39e.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b.mp3', 1515, '2026-09-13 04:04:45.337791', 'a481c03a31621b48540f5ae0072c3323aa3c3deccf709683dc7b203f2e4a5cf2', 'validated', '{"audio_key":"c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b","entity_key":"d_my_name_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a481c03a31621b48540f5ae0072c3323aa3c3deccf709683dc7b203f2e4a5cf2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c4bb7f578e02b3e4ae113876079320b8dc2eb810b77b4cc045db4ccb8854db7b.mp3"}'
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
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0.mp3', 731, '2026-09-13 04:04:45.298470', '3fd0209f367752bc13c27c28eea51d46e2be911415da6fddfef3f74e6a751558', 'validated', '{"audio_key":"d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0","entity_key":"d_survival_words_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3fd0209f367752bc13c27c28eea51d46e2be911415da6fddfef3f74e6a751558","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2af368402cf9aad16761939e497dc558082ff817c05110a0d99f371a77d77b0.mp3"}'
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
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e.mp3', 966, '2026-09-13 04:04:46.332507', '66eb5812ed396a72708f2b3a71680084df4751e180cb9d5d7c38c48f3a5a8b9f', 'validated', '{"audio_key":"d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e","entity_key":"d_first_greetings_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"66eb5812ed396a72708f2b3a71680084df4751e180cb9d5d7c38c48f3a5a8b9f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d76eba6bdb3e70522c9b8a71d17399f3722e8ad9afa87d3fc772e1b30768ab4e.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa.mp3', 679, '2026-09-13 04:04:46.269614', '537dbdde6b235758fc2721e128e63e400613e0806c7cbbf882bb4bf8aa4c2795', 'validated', '{"audio_key":"d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa","entity_key":"d_letter_names_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"537dbdde6b235758fc2721e128e63e400613e0806c7cbbf882bb4bf8aa4c2795","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d8aa01712db5c1cdd4c6598eeef507547a75e070354f1a4c94b31756163ba3aa.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807.mp3', 1018, '2026-09-13 04:04:47.259954', '7aae4256ec98ed54c588605ea0602c5bcd0dcfca4083176b5fb9472a99812503', 'validated', '{"audio_key":"db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807","entity_key":"d_first_conversation_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aae4256ec98ed54c588605ea0602c5bcd0dcfca4083176b5fb9472a99812503","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/db689f55455cdcfc9af9f35c5faa69bff0561d35dc887e08375f512ebc27e807.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089.mp3', 966, '2026-09-13 04:04:47.305470', 'a13c290415d5a98e45096e18c35f92b24407026adae8982ef9a2ab2a876ce8ce', 'validated', '{"audio_key":"e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089","entity_key":"d_first_greetings_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a13c290415d5a98e45096e18c35f92b24407026adae8982ef9a2ab2a876ce8ce","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e18dd9945e8040c21bc942f2b3543b4af66e75c313a0d62fc1bc071af9663089.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca.mp3', 1515, '2026-09-13 04:04:48.338536', '26829ce7d6f26211dc6673686fa82a05f65c0f9f4dd7d801c83018dd611a6ad5', 'validated', '{"audio_key":"e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca","entity_key":"d_first_objects_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"26829ce7d6f26211dc6673686fa82a05f65c0f9f4dd7d801c83018dd611a6ad5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e658defff3b714d4f8a00fe62b59fcf9691c17e4d2d82453cbc8a7faccff4bca.mp3"}'
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
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103.mp3', 1097, '2026-09-13 04:04:48.317704', '4cf6bce82d22003d39a0ec02a9842c950ee114a33f453e7dfbc4d612f64d96cb', 'validated', '{"audio_key":"e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103","entity_key":"d_alphabet_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4cf6bce82d22003d39a0ec02a9842c950ee114a33f453e7dfbc4d612f64d96cb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e8041d5bfeaf734c3d68c4e3bfbd206554e3447fd48a20df9bbeef5f9c3c1103.mp3"}'
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
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7.mp3', 1071, '2026-09-13 04:04:49.326575', '9bd5257fe564efcc27215cf27db2f27d84331aec3abc2ae2897df9e2036bacfe', 'validated', '{"audio_key":"e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7","entity_key":"d_first_sounds_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9bd5257fe564efcc27215cf27db2f27d84331aec3abc2ae2897df9e2036bacfe","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e836df80ae2a14c705973ca641690b8088b44360d9b6c84b2e57b5ec6bba20b7.mp3"}'
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
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d.mp3', 1097, '2026-09-13 04:04:49.363309', '70073f3302c7628a22b52ac6ac49db7972d21509fc5e4597b4cb158329089836', 'validated', '{"audio_key":"eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d","entity_key":"d_my_name_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"70073f3302c7628a22b52ac6ac49db7972d21509fc5e4597b4cb158329089836","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/eb529017649b63e5db701176ec4838dd73c212dafe0f9945efbeea495699dc7d.mp3"}'
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
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838.mp3', 1488, '2026-09-13 04:04:50.345815', '696dc78e3380a7c21463f930b96cf9b92186cc512e048a36cfd090d1413ced7b', 'validated', '{"audio_key":"ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838","entity_key":"d_first_sounds_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"696dc78e3380a7c21463f930b96cf9b92186cc512e048a36cfd090d1413ced7b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ec3487bc417e190a628d1feaccf97c0a6397e5c754f198349451e4cd05f68838.mp3"}'
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
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc.mp3', 731, '2026-09-13 04:04:50.320806', '015435404ca90b5cfe7f745d809df92c77beaa7b0906f500dcba4c6b046460fe', 'validated', '{"audio_key":"eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc","entity_key":"d_survival_words_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"015435404ca90b5cfe7f745d809df92c77beaa7b0906f500dcba4c6b046460fe","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/eceb2904c217a50b3488be4e0c707b4d63c8237f6bb7e9a4644feac87b7927dc.mp3"}'
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
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493.mp3', 966, '2026-09-13 04:04:51.285270', '04c611574092649bda7505a8ed6d04ce6416bc67ccb81d37382587a42ca627ca', 'validated', '{"audio_key":"ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493","entity_key":"d_first_sounds_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"04c611574092649bda7505a8ed6d04ce6416bc67ccb81d37382587a42ca627ca","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ef81f2b224a443f3dad9334d285302fe5ae2b289b582d47a9fd8f36df44e5493.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969.mp3', 1071, '2026-09-13 04:04:51.300223', '8a3ac808cfe54c60d859eb0be64f270419f60fc9c9229b76ce72be97a1871632', 'validated', '{"audio_key":"f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969","entity_key":"d_classroom_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8a3ac808cfe54c60d859eb0be64f270419f60fc9c9229b76ce72be97a1871632","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f042a707abe99afd8c575309535e5a4097d52e6c452dd9d3b694e52f552b8969.mp3"}'
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
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370.mp3', 835, '2026-09-13 04:04:52.261773', '65c4242345c8bf83eee5367901dad21dfb3d1d8a766af4bb205ea9f4179ab7dc', 'validated', '{"audio_key":"f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370","entity_key":"d_first_sounds_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"65c4242345c8bf83eee5367901dad21dfb3d1d8a766af4bb205ea9f4179ab7dc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f4ce8e2a9ac1b8c6f03e20772a69c390a7ca88af6094ae7fb0da09f15b28a370.mp3"}'
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
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3.mp3', 1280, '2026-09-13 04:04:52.312868', '15c95773d15fa4c15a9c104fdb907bc16771c5bdc9960b67f1dd691776986975', 'validated', '{"audio_key":"f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3","entity_key":"d_numbers_0_10_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"15c95773d15fa4c15a9c104fdb907bc16771c5bdc9960b67f1dd691776986975","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f68babf207347e50c94e74c175c49ef5d6e182a670d89195c6fc831abbcf1df3.mp3"}'
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
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a.mp3', 1018, '2026-09-13 04:04:53.276147', '047f9937cdf0ccde5de11ae5fd491cc0a704c94d0d5ad7e3b4e74ccf58540aa8', 'validated', '{"audio_key":"fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a","entity_key":"d_first_objects_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"047f9937cdf0ccde5de11ae5fd491cc0a704c94d0d5ad7e3b4e74ccf58540aa8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/fc7457a19686b146e945100f91de48387c0250c31ee6c6d0ef942f28c03e4d4a.mp3"}'
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
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48.mp3', 966, '2026-09-13 04:04:53.285894', '4f87ddc4750fc969c11092aff19bedbcbc2e20dc0989eb611f2063af04b61ff8', 'validated', '{"audio_key":"fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48","entity_key":"d_numbers_0_10_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4f87ddc4750fc969c11092aff19bedbcbc2e20dc0989eb611f2063af04b61ff8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fea03bdd89094950eeb01fdf05892964bc6a5c981b455f3e05c5622a28167e48.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3', 835, '2026-09-13 04:04:58.498493', 'a40482826493309689751af2e041e9287acf4143cd1bc57ea2c94e247345a250', 'validated', '{"audio_key":"04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140","entity_key":"lx_survival_words_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a40482826493309689751af2e041e9287acf4143cd1bc57ea2c94e247345a250","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3', 835, '2026-09-13 04:04:58.498493', 'a40482826493309689751af2e041e9287acf4143cd1bc57ea2c94e247345a250', 'validated', '{"audio_key":"04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140","entity_key":"wf_survival_words_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a40482826493309689751af2e041e9287acf4143cd1bc57ea2c94e247345a250","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/04232fd292e845c5b2ca0d978a6e1f4783f36d2b9b463be05a15214bd654b140.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3', 966, '2026-09-13 04:04:58.625833', '09c10a19f87a17adfdf1d8062f87d3131dc1be0b420f8949c913636853c4ae5b', 'validated', '{"audio_key":"0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58","entity_key":"lx_first_objects_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09c10a19f87a17adfdf1d8062f87d3131dc1be0b420f8949c913636853c4ae5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3', 966, '2026-09-13 04:04:58.625833', '09c10a19f87a17adfdf1d8062f87d3131dc1be0b420f8949c913636853c4ae5b', 'validated', '{"audio_key":"0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58","entity_key":"wf_first_objects_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09c10a19f87a17adfdf1d8062f87d3131dc1be0b420f8949c913636853c4ae5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0708f00a293cab85e60c6ff20835a5815c295fbafb2ba4ec53be345b969d9d58.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3', 1149, '2026-09-13 04:04:59.518362', '5554a592f2db8e496ae0a4b3a32e60b5ae6322673636d7028ad9c49f4dcc9517', 'validated', '{"audio_key":"0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018","entity_key":"lx_survival_words_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5554a592f2db8e496ae0a4b3a32e60b5ae6322673636d7028ad9c49f4dcc9517","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3', 1149, '2026-09-13 04:04:59.518362', '5554a592f2db8e496ae0a4b3a32e60b5ae6322673636d7028ad9c49f4dcc9517', 'validated', '{"audio_key":"0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018","entity_key":"wf_survival_words_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5554a592f2db8e496ae0a4b3a32e60b5ae6322673636d7028ad9c49f4dcc9517","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cbf162a776fdb9c906627ede25219f41f1ecf31f31d4900960156da299fa018.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3', 862, '2026-09-13 04:04:59.594743', '47936be5263736b622d29f5836fbb8f6548d3d3ebbab9f6b0079f6351a6c61e4', 'validated', '{"audio_key":"0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6","entity_key":"lx_first_greetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47936be5263736b622d29f5836fbb8f6548d3d3ebbab9f6b0079f6351a6c61e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3', 862, '2026-09-13 04:04:59.594743', '47936be5263736b622d29f5836fbb8f6548d3d3ebbab9f6b0079f6351a6c61e4', 'validated', '{"audio_key":"0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6","entity_key":"wf_first_greetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47936be5263736b622d29f5836fbb8f6548d3d3ebbab9f6b0079f6351a6c61e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cc25e03f731da7a088beb4f84a84acdd486879212f3e50190d4c8dfc6a74cf6.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3', 1253, '2026-09-13 04:05:00.541545', 'ed043148961ff1ad626c1c13c09fa3920c16bc197602c23cca283c46f42dc840', 'validated', '{"audio_key":"0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2","entity_key":"lx_first_greetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed043148961ff1ad626c1c13c09fa3920c16bc197602c23cca283c46f42dc840","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3', 1253, '2026-09-13 04:05:00.541545', 'ed043148961ff1ad626c1c13c09fa3920c16bc197602c23cca283c46f42dc840', 'validated', '{"audio_key":"0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2","entity_key":"wf_first_greetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed043148961ff1ad626c1c13c09fa3920c16bc197602c23cca283c46f42dc840","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0cff6016ec05a3abe15cbb8ba3d71bafc0bc4c4dcbd1a9bc3e36f5b9bd31ceb2.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3', 1018, '2026-09-13 04:05:01.028585', '45f45b1ce079d88c700dec917edce16186f1e569274411c182195587348121bd', 'validated', '{"audio_key":"0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940","entity_key":"lx_survival_words_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45f45b1ce079d88c700dec917edce16186f1e569274411c182195587348121bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3', 1018, '2026-09-13 04:05:01.028585', '45f45b1ce079d88c700dec917edce16186f1e569274411c182195587348121bd', 'validated', '{"audio_key":"0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940","entity_key":"wf_survival_words_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45f45b1ce079d88c700dec917edce16186f1e569274411c182195587348121bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0eb1f6a9109ca89c803cf3a36d4407b44245813be6bc347e5a4e9c798b8e1940.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3', 1384, '2026-09-13 04:05:01.561199', 'b7d4b51dc4485af8f7dbbd678b23c9215a23166fd18d0c47f44610bb7ab8b8da', 'validated', '{"audio_key":"1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376","entity_key":"lx_classroom_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b7d4b51dc4485af8f7dbbd678b23c9215a23166fd18d0c47f44610bb7ab8b8da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3', 1384, '2026-09-13 04:05:01.561199', 'b7d4b51dc4485af8f7dbbd678b23c9215a23166fd18d0c47f44610bb7ab8b8da', 'validated', '{"audio_key":"1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376","entity_key":"wf_classroom_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b7d4b51dc4485af8f7dbbd678b23c9215a23166fd18d0c47f44610bb7ab8b8da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1398117c5572b856fb2e756c0450aa00b9ada538254db9b4fc92ac8f63a24376.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3', 1488, '2026-09-13 04:05:02.127358', '331f2853e54bca648944289758e108fe17641cc798445ffd11d31aac2f446438', 'validated', '{"audio_key":"1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641","entity_key":"lx_first_conversation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"331f2853e54bca648944289758e108fe17641cc798445ffd11d31aac2f446438","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3', 1488, '2026-09-13 04:05:02.127358', '331f2853e54bca648944289758e108fe17641cc798445ffd11d31aac2f446438', 'validated', '{"audio_key":"1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641","entity_key":"wf_first_conversation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"331f2853e54bca648944289758e108fe17641cc798445ffd11d31aac2f446438","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ee0d80c9d38b093e1885e74773c9abe55fbda19dce114cc293baccdc20a9641.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3', 1018, '2026-09-13 04:05:02.595332', '89c9ba14a55c2cc8983e1894017049a9d9f3dae47ac3960281887de6f55a37cc', 'validated', '{"audio_key":"1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0","entity_key":"lx_first_objects_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89c9ba14a55c2cc8983e1894017049a9d9f3dae47ac3960281887de6f55a37cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3', 1018, '2026-09-13 04:05:02.595332', '89c9ba14a55c2cc8983e1894017049a9d9f3dae47ac3960281887de6f55a37cc', 'validated', '{"audio_key":"1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0","entity_key":"wf_first_objects_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89c9ba14a55c2cc8983e1894017049a9d9f3dae47ac3960281887de6f55a37cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f26c8cbada4de44780fcc2782165dfc2b75b045f597e4367f2c421a0f40eef0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3', 679, '2026-09-13 04:05:03.110716', 'cc492c5ccb2fceee99f91c2867d5c8905af291cd47d3e32bc88ada258a49be84', 'validated', '{"audio_key":"2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e","entity_key":"lx_alphabet_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc492c5ccb2fceee99f91c2867d5c8905af291cd47d3e32bc88ada258a49be84","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3', 679, '2026-09-13 04:05:03.110716', 'cc492c5ccb2fceee99f91c2867d5c8905af291cd47d3e32bc88ada258a49be84', 'validated', '{"audio_key":"2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e","entity_key":"wf_alphabet_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc492c5ccb2fceee99f91c2867d5c8905af291cd47d3e32bc88ada258a49be84","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2676de837c2f9eb7a7c007190b36620694d23cecd9b703d32d38bfb97583612e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3', 966, '2026-09-13 04:05:03.563197', '9d6f73b9bf6c18c5cae8d76c35df5ad1fdd0d6c87f7574e8fe8d3f64a4bc15ff', 'validated', '{"audio_key":"27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff","entity_key":"lx_first_sounds_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d6f73b9bf6c18c5cae8d76c35df5ad1fdd0d6c87f7574e8fe8d3f64a4bc15ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3', 966, '2026-09-13 04:05:03.563197', '9d6f73b9bf6c18c5cae8d76c35df5ad1fdd0d6c87f7574e8fe8d3f64a4bc15ff', 'validated', '{"audio_key":"27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff","entity_key":"wf_first_sounds_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d6f73b9bf6c18c5cae8d76c35df5ad1fdd0d6c87f7574e8fe8d3f64a4bc15ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/27aefad935a55c7599aae7474775748586645670dd052e02c582b6ed96b8a1ff.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3', 1149, '2026-09-13 04:05:04.103721', '309da43542091e1601f0c13132ec9b92cbcafeff61b644eca8d65bc8ae2fa599', 'validated', '{"audio_key":"2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b","entity_key":"lx_first_sounds_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"309da43542091e1601f0c13132ec9b92cbcafeff61b644eca8d65bc8ae2fa599","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3', 1149, '2026-09-13 04:05:04.103721', '309da43542091e1601f0c13132ec9b92cbcafeff61b644eca8d65bc8ae2fa599', 'validated', '{"audio_key":"2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b","entity_key":"wf_first_sounds_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"309da43542091e1601f0c13132ec9b92cbcafeff61b644eca8d65bc8ae2fa599","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ba4e9829aa13b118331c5471d06bfa083da8d1f4b6b4aad10e40dcb76d9350b.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3', 1018, '2026-09-13 04:05:04.639259', 'bd77b89a36aaa547ee276afc0b4a2c91b5a4ed9af4ff4f7aa3fdbc20134d694b', 'validated', '{"audio_key":"2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab","entity_key":"lx_first_objects_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd77b89a36aaa547ee276afc0b4a2c91b5a4ed9af4ff4f7aa3fdbc20134d694b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3', 1018, '2026-09-13 04:05:04.639259', 'bd77b89a36aaa547ee276afc0b4a2c91b5a4ed9af4ff4f7aa3fdbc20134d694b', 'validated', '{"audio_key":"2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab","entity_key":"wf_first_objects_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd77b89a36aaa547ee276afc0b4a2c91b5a4ed9af4ff4f7aa3fdbc20134d694b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c7226621966f698358f8d7e3a9511e2f119207c5ade306611f684a0f0f7bcab.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3', 1149, '2026-09-13 04:05:05.133468', '65ac132858ad9348adc4d915908ea849b1bdeb6552f607832aebcb993be771ea', 'validated', '{"audio_key":"2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21","entity_key":"lx_my_name_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65ac132858ad9348adc4d915908ea849b1bdeb6552f607832aebcb993be771ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3', 1149, '2026-09-13 04:05:05.133468', '65ac132858ad9348adc4d915908ea849b1bdeb6552f607832aebcb993be771ea', 'validated', '{"audio_key":"2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21","entity_key":"wf_my_name_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65ac132858ad9348adc4d915908ea849b1bdeb6552f607832aebcb993be771ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2e66c03f9fc9ef1407b4c061d16083066c7bbb751650f304893fffc93741eb21.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3', 1201, '2026-09-13 04:05:05.645715', '581d90ba5d2aa145bb06d1265d0ec2328632ba4859af8fb0d39fd1c6d8c14f07', 'validated', '{"audio_key":"3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc","entity_key":"lx_my_name_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"581d90ba5d2aa145bb06d1265d0ec2328632ba4859af8fb0d39fd1c6d8c14f07","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3', 1201, '2026-09-13 04:05:05.645715', '581d90ba5d2aa145bb06d1265d0ec2328632ba4859af8fb0d39fd1c6d8c14f07', 'validated', '{"audio_key":"3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc","entity_key":"wf_my_name_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"581d90ba5d2aa145bb06d1265d0ec2328632ba4859af8fb0d39fd1c6d8c14f07","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3efc8fd8c1d363f9e1a2c8a533936bb5c9affcab9e9b5e88e917e730729ebdfc.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3', 731, '2026-09-13 04:05:06.133768', '849d3d66aff0bc2bc5e84434be1ee52d9da8cb6b6cb5f844bfe288f45f9f541b', 'validated', '{"audio_key":"3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54","entity_key":"lx_alphabet_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"849d3d66aff0bc2bc5e84434be1ee52d9da8cb6b6cb5f844bfe288f45f9f541b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3', 731, '2026-09-13 04:05:06.133768', '849d3d66aff0bc2bc5e84434be1ee52d9da8cb6b6cb5f844bfe288f45f9f541b', 'validated', '{"audio_key":"3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54","entity_key":"wf_alphabet_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"849d3d66aff0bc2bc5e84434be1ee52d9da8cb6b6cb5f844bfe288f45f9f541b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3f387e19d507c3fe87b9672359b8879f6f9d99cf19b749f3b123e02da91f0f54.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3', 862, '2026-09-13 04:05:06.628957', 'ef842354b9e8d3824a0f8e39f31160e5e0b6a6d9f0fc46c8cb6772893d7cd458', 'validated', '{"audio_key":"41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4","entity_key":"lx_first_greetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef842354b9e8d3824a0f8e39f31160e5e0b6a6d9f0fc46c8cb6772893d7cd458","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3', 862, '2026-09-13 04:05:06.628957', 'ef842354b9e8d3824a0f8e39f31160e5e0b6a6d9f0fc46c8cb6772893d7cd458', 'validated', '{"audio_key":"41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4","entity_key":"wf_first_greetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef842354b9e8d3824a0f8e39f31160e5e0b6a6d9f0fc46c8cb6772893d7cd458","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41b282223dca5f06a648a0a1686880afff8ea4321256474159788e9a56768bd4.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3', 966, '2026-09-13 04:05:07.121145', '139fbc3ba0a36731325646effc075a403b9d443e4a4d924b7a632f000a61fef6', 'validated', '{"audio_key":"41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e","entity_key":"lx_classroom_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"139fbc3ba0a36731325646effc075a403b9d443e4a4d924b7a632f000a61fef6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3', 966, '2026-09-13 04:05:07.121145', '139fbc3ba0a36731325646effc075a403b9d443e4a4d924b7a632f000a61fef6', 'validated', '{"audio_key":"41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e","entity_key":"wf_classroom_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"139fbc3ba0a36731325646effc075a403b9d443e4a4d924b7a632f000a61fef6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41d562d2ca51b4737261c2bcad8ec1420c90d4fba6c742e7438d51d057b97b6e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3', 1436, '2026-09-13 04:05:07.738503', '21c6da5fbe8e50d490f805b34382aa608f20a410a27a98a97dfcd749a5f1dd91', 'validated', '{"audio_key":"5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a","entity_key":"lx_first_conversation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21c6da5fbe8e50d490f805b34382aa608f20a410a27a98a97dfcd749a5f1dd91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3', 1436, '2026-09-13 04:05:07.738503', '21c6da5fbe8e50d490f805b34382aa608f20a410a27a98a97dfcd749a5f1dd91', 'validated', '{"audio_key":"5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a","entity_key":"wf_first_conversation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21c6da5fbe8e50d490f805b34382aa608f20a410a27a98a97dfcd749a5f1dd91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5108d4a4822214af630e74ad63da5903f78f8b22716cddd5ee35a76cb80b295a.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3', 679, '2026-09-13 04:05:08.084263', '151ecd3c81d0d2236747863140ebdf717356c7ebdf23576b8494a64ce1deda47', 'validated', '{"audio_key":"590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81","entity_key":"lx_letter_names_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"151ecd3c81d0d2236747863140ebdf717356c7ebdf23576b8494a64ce1deda47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3', 679, '2026-09-13 04:05:08.084263', '151ecd3c81d0d2236747863140ebdf717356c7ebdf23576b8494a64ce1deda47', 'validated', '{"audio_key":"590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81","entity_key":"wf_letter_names_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"151ecd3c81d0d2236747863140ebdf717356c7ebdf23576b8494a64ce1deda47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/590bfd23f7d6071782a1547b0ae8988cec8974bd047ad3c97dd6774917a28f81.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3', 966, '2026-09-13 04:05:08.720061', 'b428afd8820c629362cf8df341364c197c31192db68c1fe33933da7c0be83eff', 'validated', '{"audio_key":"59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0","entity_key":"lx_letter_names_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b428afd8820c629362cf8df341364c197c31192db68c1fe33933da7c0be83eff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3', 966, '2026-09-13 04:05:08.720061', 'b428afd8820c629362cf8df341364c197c31192db68c1fe33933da7c0be83eff', 'validated', '{"audio_key":"59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0","entity_key":"wf_letter_names_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b428afd8820c629362cf8df341364c197c31192db68c1fe33933da7c0be83eff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59e45e6d3cbf23c9c535ab01f877eaf3cce0492a5392fb4454b245042231c2a0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3', 914, '2026-09-13 04:05:09.060253', '4e8d8155b80e732c71adb58615cf6ea061d746f6e8068d67f7d5011ba898176c', 'validated', '{"audio_key":"5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f","entity_key":"lx_first_conversation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e8d8155b80e732c71adb58615cf6ea061d746f6e8068d67f7d5011ba898176c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3', 914, '2026-09-13 04:05:09.060253', '4e8d8155b80e732c71adb58615cf6ea061d746f6e8068d67f7d5011ba898176c', 'validated', '{"audio_key":"5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f","entity_key":"wf_first_conversation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e8d8155b80e732c71adb58615cf6ea061d746f6e8068d67f7d5011ba898176c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5c836ad1d571d02fc8699258046c142332f54469ca0ad5ccf021a90810cc8f4f.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3', 1097, '2026-09-13 04:05:09.714927', '99b627fd8cc1b7d9300a0a7492f289d828f0f2d3bf2533e5d0188c28e4f21002', 'validated', '{"audio_key":"602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c","entity_key":"lx_classroom_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99b627fd8cc1b7d9300a0a7492f289d828f0f2d3bf2533e5d0188c28e4f21002","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3', 1097, '2026-09-13 04:05:09.714927', '99b627fd8cc1b7d9300a0a7492f289d828f0f2d3bf2533e5d0188c28e4f21002', 'validated', '{"audio_key":"602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c","entity_key":"wf_classroom_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99b627fd8cc1b7d9300a0a7492f289d828f0f2d3bf2533e5d0188c28e4f21002","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/602857003f09b11db3ea7344385a783df2dd0a132e178208029491839c3d9f4c.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3', 1149, '2026-09-13 04:05:10.123561', 'ac7c7fcd18bf3d7d6f3f03ad76d46f517a3e5b111cde24c907be939f52477341', 'validated', '{"audio_key":"60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe","entity_key":"lx_survival_words_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac7c7fcd18bf3d7d6f3f03ad76d46f517a3e5b111cde24c907be939f52477341","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3', 1149, '2026-09-13 04:05:10.123561', 'ac7c7fcd18bf3d7d6f3f03ad76d46f517a3e5b111cde24c907be939f52477341', 'validated', '{"audio_key":"60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe","entity_key":"wf_survival_words_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac7c7fcd18bf3d7d6f3f03ad76d46f517a3e5b111cde24c907be939f52477341","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60ec51f9d7c261209623b6edf41d4dd39a5240e758ccb8ddf7452945b78015fe.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3', 966, '2026-09-13 04:05:10.725656', '1e33e7ee3458a4f4990dd50aba93f3e0684d84d9e21f7acbdf7ff359012f1af8', 'validated', '{"audio_key":"6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7","entity_key":"lx_first_conversation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e33e7ee3458a4f4990dd50aba93f3e0684d84d9e21f7acbdf7ff359012f1af8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3', 966, '2026-09-13 04:05:10.725656', '1e33e7ee3458a4f4990dd50aba93f3e0684d84d9e21f7acbdf7ff359012f1af8', 'validated', '{"audio_key":"6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7","entity_key":"wf_first_conversation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e33e7ee3458a4f4990dd50aba93f3e0684d84d9e21f7acbdf7ff359012f1af8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6458ff56d5ba23a2cc149b8c5b1e8d6146ce5ba6fe2d6c8063db19ba3e6220e7.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3', 1436, '2026-09-13 04:05:11.150476', '17cc05087e2b40822f7e717a57aa90aa09dbdcf45e8480332e5b2de7a38218d5', 'validated', '{"audio_key":"64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e","entity_key":"lx_my_name_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17cc05087e2b40822f7e717a57aa90aa09dbdcf45e8480332e5b2de7a38218d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3', 1436, '2026-09-13 04:05:11.150476', '17cc05087e2b40822f7e717a57aa90aa09dbdcf45e8480332e5b2de7a38218d5', 'validated', '{"audio_key":"64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e","entity_key":"wf_my_name_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17cc05087e2b40822f7e717a57aa90aa09dbdcf45e8480332e5b2de7a38218d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64e1e3f1b7242a5953b1acea3dd4cfea41734c05a9cc4c3364847f18e2f17f3e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3', 1149, '2026-09-13 04:05:11.744353', 'f477611663f27f7cc46486f526d0f55489f7e21a4d635e44a83eaea03edea849', 'validated', '{"audio_key":"7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292","entity_key":"lx_letter_names_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f477611663f27f7cc46486f526d0f55489f7e21a4d635e44a83eaea03edea849","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3', 1149, '2026-09-13 04:05:11.744353', 'f477611663f27f7cc46486f526d0f55489f7e21a4d635e44a83eaea03edea849', 'validated', '{"audio_key":"7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292","entity_key":"wf_letter_names_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f477611663f27f7cc46486f526d0f55489f7e21a4d635e44a83eaea03edea849","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7439219fc64c4a0350d2e5cddd4b0dafc4d26257ddf06f38dbce800ab9c65292.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3', 914, '2026-09-13 04:05:12.101653', 'c1f359f9328116abf0b4edccc9c402a601f83e18c51819e20d5a8de3bfa3e795', 'validated', '{"audio_key":"765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d","entity_key":"lx_first_objects_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1f359f9328116abf0b4edccc9c402a601f83e18c51819e20d5a8de3bfa3e795","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3', 914, '2026-09-13 04:05:12.101653', 'c1f359f9328116abf0b4edccc9c402a601f83e18c51819e20d5a8de3bfa3e795', 'validated', '{"audio_key":"765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d","entity_key":"wf_first_objects_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1f359f9328116abf0b4edccc9c402a601f83e18c51819e20d5a8de3bfa3e795","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/765f2cd64d3fc2409b92e346bdcf4250a2faa54ba485ae05b9b22063e530295d.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3', 862, '2026-09-13 04:05:12.712984', '5a2d31f2b446995301c76cf58b11d64e251330d29ed027a1d3f9665d4a14c6c8', 'validated', '{"audio_key":"7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65","entity_key":"lx_my_name_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a2d31f2b446995301c76cf58b11d64e251330d29ed027a1d3f9665d4a14c6c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3', 862, '2026-09-13 04:05:12.712984', '5a2d31f2b446995301c76cf58b11d64e251330d29ed027a1d3f9665d4a14c6c8', 'validated', '{"audio_key":"7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65","entity_key":"wf_my_name_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a2d31f2b446995301c76cf58b11d64e251330d29ed027a1d3f9665d4a14c6c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7f3c01e41b27381883fe7aa86dc858aa6db2df7869ece16ac6d11cb966240d65.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3', 1018, '2026-09-13 04:05:13.134386', '6ade3b5cff2db581ec3e2a1d9d43dc18c0b01dfb9cd7c2b51154bd71fc40f792', 'validated', '{"audio_key":"85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9","entity_key":"lx_survival_words_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ade3b5cff2db581ec3e2a1d9d43dc18c0b01dfb9cd7c2b51154bd71fc40f792","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3', 1018, '2026-09-13 04:05:13.134386', '6ade3b5cff2db581ec3e2a1d9d43dc18c0b01dfb9cd7c2b51154bd71fc40f792', 'validated', '{"audio_key":"85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9","entity_key":"wf_survival_words_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ade3b5cff2db581ec3e2a1d9d43dc18c0b01dfb9cd7c2b51154bd71fc40f792","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/85b79182e566674a0ec3008ce97893a5577522450dac9c4aca8533a5563612c9.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3', 1201, '2026-09-13 04:05:13.767329', 'b8d2b78ce4c6a9540f3932614f9e7363733385fd6d24c87d205196c798fc6910', 'validated', '{"audio_key":"8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38","entity_key":"lx_letter_names_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8d2b78ce4c6a9540f3932614f9e7363733385fd6d24c87d205196c798fc6910","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3', 1201, '2026-09-13 04:05:13.767329', 'b8d2b78ce4c6a9540f3932614f9e7363733385fd6d24c87d205196c798fc6910', 'validated', '{"audio_key":"8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38","entity_key":"wf_letter_names_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8d2b78ce4c6a9540f3932614f9e7363733385fd6d24c87d205196c798fc6910","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c29d1a8847516da0d258990ccfee2273d7c8c380cd1c71f033fe2b8e7a7af38.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3', 966, '2026-09-13 04:05:14.161964', 'e2769f4c5cf4832d3411634857528562777660121a5665d1d3b2bf288fe0afbc', 'validated', '{"audio_key":"8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3","entity_key":"lx_first_objects_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2769f4c5cf4832d3411634857528562777660121a5665d1d3b2bf288fe0afbc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3', 966, '2026-09-13 04:05:14.161964', 'e2769f4c5cf4832d3411634857528562777660121a5665d1d3b2bf288fe0afbc', 'validated', '{"audio_key":"8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3","entity_key":"wf_first_objects_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2769f4c5cf4832d3411634857528562777660121a5665d1d3b2bf288fe0afbc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d213faf54cea20bea5225265b2dd4a0856ea15cf51ebf46b92098b3de6661a3.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3', 1018, '2026-09-13 04:05:14.750619', 'e7186ff454bfa3f3e21a8633ea30f602744a53e1ab63988630645e3308a587aa', 'validated', '{"audio_key":"90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2","entity_key":"lx_first_sounds_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7186ff454bfa3f3e21a8633ea30f602744a53e1ab63988630645e3308a587aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3', 1018, '2026-09-13 04:05:14.750619', 'e7186ff454bfa3f3e21a8633ea30f602744a53e1ab63988630645e3308a587aa', 'validated', '{"audio_key":"90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2","entity_key":"wf_first_sounds_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7186ff454bfa3f3e21a8633ea30f602744a53e1ab63988630645e3308a587aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90ec54fe668142a24615a3c921a9a062b51b81db391ebe7b9c91fca3f916cae2.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3', 1253, '2026-09-13 04:05:15.163756', '99f5669aa8b0df224154547be8c7b728037f52f4575cfdf1e7dd198e55fb5c16', 'validated', '{"audio_key":"9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa","entity_key":"lx_my_name_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99f5669aa8b0df224154547be8c7b728037f52f4575cfdf1e7dd198e55fb5c16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3', 1253, '2026-09-13 04:05:15.163756', '99f5669aa8b0df224154547be8c7b728037f52f4575cfdf1e7dd198e55fb5c16', 'validated', '{"audio_key":"9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa","entity_key":"wf_my_name_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99f5669aa8b0df224154547be8c7b728037f52f4575cfdf1e7dd198e55fb5c16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9287d1438a622b982994acdd85c99372d1debf99814fa96ab9f3185e987413aa.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3', 862, '2026-09-13 04:05:15.721242', 'a14720c9436d7b505a0eb3d90065be6034ab7f36f5e613f6b35ac97b9bbcec7e', 'validated', '{"audio_key":"955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9","entity_key":"lx_numbers_0_10_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a14720c9436d7b505a0eb3d90065be6034ab7f36f5e613f6b35ac97b9bbcec7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3', 862, '2026-09-13 04:05:15.721242', 'a14720c9436d7b505a0eb3d90065be6034ab7f36f5e613f6b35ac97b9bbcec7e', 'validated', '{"audio_key":"955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9","entity_key":"wf_numbers_0_10_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a14720c9436d7b505a0eb3d90065be6034ab7f36f5e613f6b35ac97b9bbcec7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/955278c3600c1c751eb3c25558c9d63ac0fdabe1e5a37033bdbaad0deab21ee9.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3', 1149, '2026-09-13 04:05:16.163720', '2c1d3e9e3ee5d705a02f364154dad35f01c3150b8c7661e2fd60e1520b324ee1', 'validated', '{"audio_key":"9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e","entity_key":"lx_first_conversation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c1d3e9e3ee5d705a02f364154dad35f01c3150b8c7661e2fd60e1520b324ee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3', 1149, '2026-09-13 04:05:16.163720', '2c1d3e9e3ee5d705a02f364154dad35f01c3150b8c7661e2fd60e1520b324ee1', 'validated', '{"audio_key":"9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e","entity_key":"wf_first_conversation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c1d3e9e3ee5d705a02f364154dad35f01c3150b8c7661e2fd60e1520b324ee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b2ab3d1e2631024b3725d7e451596a112b108d03208bb38a3c2272b78f0c62e.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3', 1071, '2026-09-13 04:05:16.729160', 'c110dc7e0fc8ead9f2a0cf98bb5eafd13b3f298a9ff0f3be2f22702576cb6bd0', 'validated', '{"audio_key":"a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45","entity_key":"lx_first_greetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c110dc7e0fc8ead9f2a0cf98bb5eafd13b3f298a9ff0f3be2f22702576cb6bd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3', 1071, '2026-09-13 04:05:16.729160', 'c110dc7e0fc8ead9f2a0cf98bb5eafd13b3f298a9ff0f3be2f22702576cb6bd0', 'validated', '{"audio_key":"a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45","entity_key":"wf_first_greetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c110dc7e0fc8ead9f2a0cf98bb5eafd13b3f298a9ff0f3be2f22702576cb6bd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a35e01e059ce2a9e932c81d7738bf6f46af34aa468846b4b0ec7f281f3683e45.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3', 1071, '2026-09-13 04:05:17.253355', 'f80cf4acf79d79cb585149146bcf0c964f1b9b6ccc05c3a631560d4f1f6ebbd1', 'validated', '{"audio_key":"a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597","entity_key":"lx_numbers_0_10_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f80cf4acf79d79cb585149146bcf0c964f1b9b6ccc05c3a631560d4f1f6ebbd1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3', 1071, '2026-09-13 04:05:17.253355', 'f80cf4acf79d79cb585149146bcf0c964f1b9b6ccc05c3a631560d4f1f6ebbd1', 'validated', '{"audio_key":"a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597","entity_key":"wf_numbers_0_10_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f80cf4acf79d79cb585149146bcf0c964f1b9b6ccc05c3a631560d4f1f6ebbd1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a482457a12149b1473be4ee5b45400cc9ef2cfc1866f64df3ea3bbefa4ec9597.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3', 1384, '2026-09-13 04:05:17.737872', '7793907f3507151efd5529a9fe493ff31813735106e3c157990bc82e388c1c64', 'validated', '{"audio_key":"a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092","entity_key":"lx_classroom_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7793907f3507151efd5529a9fe493ff31813735106e3c157990bc82e388c1c64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3', 1384, '2026-09-13 04:05:17.737872', '7793907f3507151efd5529a9fe493ff31813735106e3c157990bc82e388c1c64', 'validated', '{"audio_key":"a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092","entity_key":"wf_classroom_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7793907f3507151efd5529a9fe493ff31813735106e3c157990bc82e388c1c64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a71a8b0f7d06c017d7ab1e7cd825b630c11681cc75e49b18ff3a12e5d6e28092.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3', 862, '2026-09-13 04:05:18.199324', '6321b3eefa1dadc4fc6d3c477d17b009759da17a01ddd169137bb85a40c660c9', 'validated', '{"audio_key":"a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa","entity_key":"lx_first_sounds_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6321b3eefa1dadc4fc6d3c477d17b009759da17a01ddd169137bb85a40c660c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3', 862, '2026-09-13 04:05:18.199324', '6321b3eefa1dadc4fc6d3c477d17b009759da17a01ddd169137bb85a40c660c9', 'validated', '{"audio_key":"a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa","entity_key":"wf_first_sounds_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6321b3eefa1dadc4fc6d3c477d17b009759da17a01ddd169137bb85a40c660c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8b0f091ebaaacc11bcf3bb12903e4b344308433b9a00bad4bee7e4a292ecdfa.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3', 1384, '2026-09-13 04:05:18.760069', '5d9d83d021d4b5b07796b1898de170a28253fbb9ceb4592f97837d40e5a4d84d', 'validated', '{"audio_key":"ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba","entity_key":"lx_classroom_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d9d83d021d4b5b07796b1898de170a28253fbb9ceb4592f97837d40e5a4d84d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3', 1384, '2026-09-13 04:05:18.760069', '5d9d83d021d4b5b07796b1898de170a28253fbb9ceb4592f97837d40e5a4d84d', 'validated', '{"audio_key":"ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba","entity_key":"wf_classroom_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d9d83d021d4b5b07796b1898de170a28253fbb9ceb4592f97837d40e5a4d84d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ac88d5ac9d4fa90238d12b854f8f79ac89280415cd2f99e6a82d515fb2e4d9ba.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3', 862, '2026-09-13 04:05:19.169711', 'c234fe5e740753658e7fb635a454fe36f3cf412bcfa38db6bbe1141cd352d450', 'validated', '{"audio_key":"ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b","entity_key":"lx_classroom_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c234fe5e740753658e7fb635a454fe36f3cf412bcfa38db6bbe1141cd352d450","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3', 862, '2026-09-13 04:05:19.169711', 'c234fe5e740753658e7fb635a454fe36f3cf412bcfa38db6bbe1141cd352d450', 'validated', '{"audio_key":"ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b","entity_key":"wf_classroom_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c234fe5e740753658e7fb635a454fe36f3cf412bcfa38db6bbe1141cd352d450","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad6b1ecd8cc17cb2f27be8114dc4700a2296292b37ba3807c87e0474fb96808b.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3', 1071, '2026-09-13 04:05:19.733319', 'ac2dbc7bbf28e84bab9cb38bbe62b07868467034480ffc8b4e30ae0fa3964a28', 'validated', '{"audio_key":"afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab","entity_key":"lx_first_objects_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac2dbc7bbf28e84bab9cb38bbe62b07868467034480ffc8b4e30ae0fa3964a28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3', 1071, '2026-09-13 04:05:19.733319', 'ac2dbc7bbf28e84bab9cb38bbe62b07868467034480ffc8b4e30ae0fa3964a28', 'validated', '{"audio_key":"afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab","entity_key":"wf_first_objects_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac2dbc7bbf28e84bab9cb38bbe62b07868467034480ffc8b4e30ae0fa3964a28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/afda295757419d45993b6d252271267ec0c9200dcce1bc533d1efe5cf079dcab.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 914, '2026-09-13 04:05:20.159514', 'f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"lx_first_sounds_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 914, '2026-09-13 04:05:20.159514', 'f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"wf_first_sounds_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 914, '2026-09-13 04:05:20.159514', 'f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"lx_numbers_0_10_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3', 914, '2026-09-13 04:05:20.159514', 'f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a', 'validated', '{"audio_key":"b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94","entity_key":"wf_numbers_0_10_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f75a42ff4cd67af4bbc0440e9387d9d75eeb444ab64f083ad0e6f37e8bd4834a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b262c617faa1c8ebe14c72be39bc6528dd56492defb6392e48c17e33f7488c94.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3', 1149, '2026-09-13 04:05:20.737260', '273e1cc0db62ae2ba0597d11b0f852652398997542c8682e9991c9fa263d6b98', 'validated', '{"audio_key":"b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7","entity_key":"lx_first_greetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"273e1cc0db62ae2ba0597d11b0f852652398997542c8682e9991c9fa263d6b98","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3', 1149, '2026-09-13 04:05:20.737260', '273e1cc0db62ae2ba0597d11b0f852652398997542c8682e9991c9fa263d6b98', 'validated', '{"audio_key":"b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7","entity_key":"wf_first_greetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"273e1cc0db62ae2ba0597d11b0f852652398997542c8682e9991c9fa263d6b98","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b760d1ba5aa2c648514fd2df79975a69d62e64ecb867d117ddf4e2bba00336a7.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3', 1149, '2026-09-13 04:05:21.176972', 'c57479bbdba49633325b18af690bcfb3bf1ba4380730d4ef31b6e87639fde23f', 'validated', '{"audio_key":"bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574","entity_key":"lx_first_greetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c57479bbdba49633325b18af690bcfb3bf1ba4380730d4ef31b6e87639fde23f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3', 1149, '2026-09-13 04:05:21.176972', 'c57479bbdba49633325b18af690bcfb3bf1ba4380730d4ef31b6e87639fde23f', 'validated', '{"audio_key":"bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574","entity_key":"wf_first_greetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c57479bbdba49633325b18af690bcfb3bf1ba4380730d4ef31b6e87639fde23f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb6175b11a0e463c5aa908c676365a4bc8fdf5d7f84d1fef1865530fe1ece574.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3', 783, '2026-09-13 04:05:21.686109', '555144205719f52692f35a147c9deaa5f4caba5d41968a1c029989f65dab4811', 'validated', '{"audio_key":"c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32","entity_key":"lx_alphabet_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"555144205719f52692f35a147c9deaa5f4caba5d41968a1c029989f65dab4811","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3', 783, '2026-09-13 04:05:21.686109', '555144205719f52692f35a147c9deaa5f4caba5d41968a1c029989f65dab4811', 'validated', '{"audio_key":"c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32","entity_key":"wf_alphabet_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"555144205719f52692f35a147c9deaa5f4caba5d41968a1c029989f65dab4811","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6919b25efd23c5b80b1826d60010b4552ca9e6f780448ea220e5d236e603e32.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1018, '2026-09-13 04:05:22.217705', 'c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"lx_first_conversation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1018, '2026-09-13 04:05:22.217705', 'c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"wf_first_conversation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1018, '2026-09-13 04:05:22.217705', 'c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"lx_my_name_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3', 1018, '2026-09-13 04:05:22.217705', 'c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461', 'validated', '{"audio_key":"cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274","entity_key":"wf_my_name_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c48a258846e93d995e6abf9446ffe138c4c9130a756ccabedaead67a3b9b4461","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc614cc43689109f2bb2eb61f8e3a595156cd6cb7b92b892aa3fdca659d9f274.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3', 783, '2026-09-13 04:05:22.637093', '9d83e43ff38e5432503db9a3fd519d7d81dec7b623949f4618e0d709f1cc274e', 'validated', '{"audio_key":"cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174","entity_key":"lx_alphabet_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d83e43ff38e5432503db9a3fd519d7d81dec7b623949f4618e0d709f1cc274e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3', 783, '2026-09-13 04:05:22.637093', '9d83e43ff38e5432503db9a3fd519d7d81dec7b623949f4618e0d709f1cc274e', 'validated', '{"audio_key":"cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174","entity_key":"wf_alphabet_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d83e43ff38e5432503db9a3fd519d7d81dec7b623949f4618e0d709f1cc274e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cda7c76bfaa2631f6bc61cec613117c7d9379ac5aeb19dc70af940af08572174.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3', 835, '2026-09-13 04:05:23.184722', '7467290371405bba536911f442c73eb64d48c973719d97862991a3184c73f649', 'validated', '{"audio_key":"dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30","entity_key":"lx_alphabet_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7467290371405bba536911f442c73eb64d48c973719d97862991a3184c73f649","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3', 835, '2026-09-13 04:05:23.184722', '7467290371405bba536911f442c73eb64d48c973719d97862991a3184c73f649', 'validated', '{"audio_key":"dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30","entity_key":"wf_alphabet_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7467290371405bba536911f442c73eb64d48c973719d97862991a3184c73f649","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dc0355461513a72b6a70c10f9bd79ad9fe51cb9b3c58bb28583dbf6cbaf91d30.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3', 783, '2026-09-13 04:05:23.611270', 'b87a57e5bdca84a07a461ebfee6769539436f1f3ead8386b4414b7c42097b06d', 'validated', '{"audio_key":"df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac","entity_key":"lx_numbers_0_10_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b87a57e5bdca84a07a461ebfee6769539436f1f3ead8386b4414b7c42097b06d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3', 783, '2026-09-13 04:05:23.611270', 'b87a57e5bdca84a07a461ebfee6769539436f1f3ead8386b4414b7c42097b06d', 'validated', '{"audio_key":"df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac","entity_key":"wf_numbers_0_10_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b87a57e5bdca84a07a461ebfee6769539436f1f3ead8386b4414b7c42097b06d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df9f3a0ade8347dd80daad7c745dccfd8882470faa04b1e6432e8e54389936ac.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3', 914, '2026-09-13 04:05:24.185478', '8771388f40af60d7cd8ba1301063d26e991c602a44027ddd6897dc8119cee0aa', 'validated', '{"audio_key":"e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a","entity_key":"lx_numbers_0_10_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8771388f40af60d7cd8ba1301063d26e991c602a44027ddd6897dc8119cee0aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3', 914, '2026-09-13 04:05:24.185478', '8771388f40af60d7cd8ba1301063d26e991c602a44027ddd6897dc8119cee0aa', 'validated', '{"audio_key":"e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a","entity_key":"wf_numbers_0_10_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8771388f40af60d7cd8ba1301063d26e991c602a44027ddd6897dc8119cee0aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e97b1e313a3e22ccff627c3e84b96d669876c543cda61920a39b44d0b82fd59a.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3', 1097, '2026-09-13 04:05:24.583001', '824f385e7b60484b884a518db536d6f4b16c2c8becc85c9543fb2881661ffdfd', 'validated', '{"audio_key":"ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d","entity_key":"lx_letter_names_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"824f385e7b60484b884a518db536d6f4b16c2c8becc85c9543fb2881661ffdfd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3', 1097, '2026-09-13 04:05:24.583001', '824f385e7b60484b884a518db536d6f4b16c2c8becc85c9543fb2881661ffdfd', 'validated', '{"audio_key":"ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d","entity_key":"wf_letter_names_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"824f385e7b60484b884a518db536d6f4b16c2c8becc85c9543fb2881661ffdfd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec53ae8ec7161cfdf0b5c8bbb505f99436cbda0da44339c08a1328d388254f8d.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3', 862, '2026-09-13 04:05:25.149426', '4ae0e0b675f1f64e87cd7b4a94c015b591c26018ad5d7c6f6f70ef9e77c03c6f', 'validated', '{"audio_key":"f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff","entity_key":"lx_alphabet_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ae0e0b675f1f64e87cd7b4a94c015b591c26018ad5d7c6f6f70ef9e77c03c6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3', 862, '2026-09-13 04:05:25.149426', '4ae0e0b675f1f64e87cd7b4a94c015b591c26018ad5d7c6f6f70ef9e77c03c6f', 'validated', '{"audio_key":"f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff","entity_key":"wf_alphabet_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ae0e0b675f1f64e87cd7b4a94c015b591c26018ad5d7c6f6f70ef9e77c03c6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f319d558d4bda6803425811331513b24e6c45bf61ac038a4cfc60ed9b9c317ff.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3', 1018, '2026-09-13 04:05:25.569171', '857c5a07af5b0c4a82467f9b2c699e24062afb2b9b9f745ff12b6e3294d7b148', 'validated', '{"audio_key":"f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0","entity_key":"lx_letter_names_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"857c5a07af5b0c4a82467f9b2c699e24062afb2b9b9f745ff12b6e3294d7b148","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3', 1018, '2026-09-13 04:05:25.569171', '857c5a07af5b0c4a82467f9b2c699e24062afb2b9b9f745ff12b6e3294d7b148', 'validated', '{"audio_key":"f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0","entity_key":"wf_letter_names_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"857c5a07af5b0c4a82467f9b2c699e24062afb2b9b9f745ff12b6e3294d7b148","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f96b35c8c4f3111437a385edd6ce8d3642492e8da0d5c02bcc17d48f269699e0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3', 835, '2026-09-13 04:05:26.128638', 'efc27c4523c04bd65dbbe3a6a123d3270058535821a0c3cac0fa164d79105730', 'validated', '{"audio_key":"fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0","entity_key":"lx_survival_words_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efc27c4523c04bd65dbbe3a6a123d3270058535821a0c3cac0fa164d79105730","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3', 835, '2026-09-13 04:05:26.128638', 'efc27c4523c04bd65dbbe3a6a123d3270058535821a0c3cac0fa164d79105730', 'validated', '{"audio_key":"fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0","entity_key":"wf_survival_words_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efc27c4523c04bd65dbbe3a6a123d3270058535821a0c3cac0fa164d79105730","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbf7c30d133d62a7696a196be312843e733b77fc47304b002f6f4b857c7db5d0.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3', 835, '2026-09-13 04:05:26.531353', '7b6e11b10634cb7a950bf7ba764550f6679a541a6aacd034a0bbffe72591047b', 'validated', '{"audio_key":"fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2","entity_key":"lx_numbers_0_10_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b6e11b10634cb7a950bf7ba764550f6679a541a6aacd034a0bbffe72591047b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3', 835, '2026-09-13 04:05:26.531353', '7b6e11b10634cb7a950bf7ba764550f6679a541a6aacd034a0bbffe72591047b', 'validated', '{"audio_key":"fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2","entity_key":"wf_numbers_0_10_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b6e11b10634cb7a950bf7ba764550f6679a541a6aacd034a0bbffe72591047b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fbfde45ca1ddda4d4a258b30303dc9ab07bb58935873a0feb842efdfbd0b84c2.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3', 1097, '2026-09-13 04:05:27.134522', 'f75cbc6e481692d18a374a5401daad22d84eae258f4431453e8895c1a3224508', 'validated', '{"audio_key":"fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3","entity_key":"lx_first_sounds_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f75cbc6e481692d18a374a5401daad22d84eae258f4431453e8895c1a3224508","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3"}'
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
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3', 1097, '2026-09-13 04:05:27.134522', 'f75cbc6e481692d18a374a5401daad22d84eae258f4431453e8895c1a3224508', 'validated', '{"audio_key":"fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3","entity_key":"wf_first_sounds_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f75cbc6e481692d18a374a5401daad22d84eae258f4431453e8895c1a3224508","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fde75159a5fd3ca61f29e64d9313cf44fa5273003fe3eff9e9bdbe498ce236c3.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba.mp3', 1018, '2026-09-13 04:05:27.528380', 'e5c726f4853d9a262bfdc5d7669f9f15d2233c2a95ef3a1f38643459459f0d7f', 'validated', '{"audio_key":"035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba","entity_key":"u_letter_names_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5c726f4853d9a262bfdc5d7669f9f15d2233c2a95ef3a1f38643459459f0d7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/035b114078c49a1387b5f4e2a39eee7c102e41f4ac4a0550c48a8b00aa7450ba.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6.mp3', 966, '2026-09-13 04:05:28.134427', 'af2cbb714fe9afcb72dcb94f8f1c1eaf28c913e4cb6edf8f21a0fb248940a45f', 'validated', '{"audio_key":"05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6","entity_key":"u_letter_names_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af2cbb714fe9afcb72dcb94f8f1c1eaf28c913e4cb6edf8f21a0fb248940a45f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/05112ec548db6585a4cb1f9324f3e9d29d3bd2a7da16310c70b7d931e294aed6.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0.mp3', 862, '2026-09-13 04:05:28.528657', 'e19c3b40f8486a17f27689a63ed2448eabeea689e81c07ffac0f044eb5e1036b', 'validated', '{"audio_key":"0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0","entity_key":"u_survival_words_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e19c3b40f8486a17f27689a63ed2448eabeea689e81c07ffac0f044eb5e1036b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0b95781d03a6586b319b6f01b3d99796f337f3edaf50890734fa5a7fd7184eb0.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523.mp3', 835, '2026-09-13 04:05:29.134197', 'da9165d4904e02ab697c3c24a112aa8808a71cc3c7ff9e1d5ef9598d041b1455', 'validated', '{"audio_key":"0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523","entity_key":"u_alphabet_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da9165d4904e02ab697c3c24a112aa8808a71cc3c7ff9e1d5ef9598d041b1455","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c6283776a73b2ca6874560afb3ede3cca89f9ab7e736c779981a6a3cb924523.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3', 1332, '2026-09-13 04:05:29.541361', '59cea304edce8aec86c7805d7ba56c793a88a4251d76d7ddcdadb8eeb7cbbf39', 'validated', '{"audio_key":"0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc","entity_key":"u_classroom_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59cea304edce8aec86c7805d7ba56c793a88a4251d76d7ddcdadb8eeb7cbbf39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0cee4b6ad9675697b925117572fe8c816b7951d744075c05c98d6c5e216587cc.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3', 1201, '2026-09-13 04:05:30.140413', 'e514c5d41f022a045782073797e156f459e7cbf67ea257022b2cdf8a0e56f231', 'validated', '{"audio_key":"0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd","entity_key":"u_survival_words_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e514c5d41f022a045782073797e156f459e7cbf67ea257022b2cdf8a0e56f231","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3', 1201, '2026-09-13 04:05:30.140413', 'e514c5d41f022a045782073797e156f459e7cbf67ea257022b2cdf8a0e56f231', 'validated', '{"audio_key":"0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd","entity_key":"e_survival_words_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e514c5d41f022a045782073797e156f459e7cbf67ea257022b2cdf8a0e56f231","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0eab6bfd4061dd350edd959613154ed7d6b64c0d4dc6ced83bb288139c3266bd.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3', 1018, '2026-09-13 04:05:30.519777', '3c856394c2333d330b97bd40b9a518d071f78d7f0f54f1f3c0a6308ea390fd4e', 'validated', '{"audio_key":"14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513","entity_key":"u_first_sounds_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c856394c2333d330b97bd40b9a518d071f78d7f0f54f1f3c0a6308ea390fd4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/14da75a4fb285eea879aa0c61db9be75eb4d488f5ad67d150de74c05c0771513.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3', 914, '2026-09-13 04:05:31.119693', '0f4f234f28a9a0edd2b292987b1aefaaa87974b3c4b8509bcec8f5655cc81430', 'validated', '{"audio_key":"197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b","entity_key":"u_first_sounds_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f4f234f28a9a0edd2b292987b1aefaaa87974b3c4b8509bcec8f5655cc81430","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3', 914, '2026-09-13 04:05:31.119693', '0f4f234f28a9a0edd2b292987b1aefaaa87974b3c4b8509bcec8f5655cc81430', 'validated', '{"audio_key":"197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b","entity_key":"e_first_sounds_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f4f234f28a9a0edd2b292987b1aefaaa87974b3c4b8509bcec8f5655cc81430","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3', 914, '2026-09-13 04:05:31.119693', '0f4f234f28a9a0edd2b292987b1aefaaa87974b3c4b8509bcec8f5655cc81430', 'validated', '{"audio_key":"197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b","entity_key":"u_numbers_0_10_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f4f234f28a9a0edd2b292987b1aefaaa87974b3c4b8509bcec8f5655cc81430","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/197e90ed83d20114f27e4fdf8dbe3accdfec58f5d89e1fa6c807ac48ee748c5b.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25.mp3', 1071, '2026-09-13 04:05:31.526503', '9ce71f4b0b29417a4bbf476e73e413514f324d5adb45994e66a687a42a08e097', 'validated', '{"audio_key":"1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25","entity_key":"u_survival_words_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ce71f4b0b29417a4bbf476e73e413514f324d5adb45994e66a687a42a08e097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1dd1de904e6f868fdeccead9f25e5bf475a707fa14c2e7d158a72b4e81751a25.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3', 1253, '2026-09-13 04:05:32.120736', 'e41541e1854941b63b24deb819d1153f4c6d8f41b0ed1cede00b0c3611b037af', 'validated', '{"audio_key":"1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f","entity_key":"u_classroom_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e41541e1854941b63b24deb819d1153f4c6d8f41b0ed1cede00b0c3611b037af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3', 1253, '2026-09-13 04:05:32.120736', 'e41541e1854941b63b24deb819d1153f4c6d8f41b0ed1cede00b0c3611b037af', 'validated', '{"audio_key":"1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f","entity_key":"e_classroom_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e41541e1854941b63b24deb819d1153f4c6d8f41b0ed1cede00b0c3611b037af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1fe6ed2565425d4c729f10bc248530c306ff40598010cd7c82b1e7bd86cb004f.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266.mp3', 914, '2026-09-13 04:05:32.506525', '604656fc75913dfd7769c06cb9d7b240a89e77158aac1e2df7304372c903432a', 'validated', '{"audio_key":"231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266","entity_key":"u_my_name_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"604656fc75913dfd7769c06cb9d7b240a89e77158aac1e2df7304372c903432a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/231bc471c7ddcb7dc7a3dc05b3cfa4c9f42eba15ea9265a31660b18d55181266.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3.mp3', 1071, '2026-09-13 04:05:33.118257', '0e5129a898f13c4331ab84143504947200f135b6f9b4d7e9ea12006d2eec2173', 'validated', '{"audio_key":"2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3","entity_key":"u_my_name_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e5129a898f13c4331ab84143504947200f135b6f9b4d7e9ea12006d2eec2173","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2394d94c8fe0ae0f0f862307dc2b467d257ae41a67e6bf97599699212f20c0b3.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3', 835, '2026-09-13 04:05:33.475681', '167669b3e9c551b12c57f955d2daf49ec22c92b65fd2e141b07c0b95a08d9e89', 'validated', '{"audio_key":"248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721","entity_key":"u_numbers_0_10_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"167669b3e9c551b12c57f955d2daf49ec22c92b65fd2e141b07c0b95a08d9e89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3', 835, '2026-09-13 04:05:33.475681', '167669b3e9c551b12c57f955d2daf49ec22c92b65fd2e141b07c0b95a08d9e89', 'validated', '{"audio_key":"248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721","entity_key":"e_numbers_0_10_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"167669b3e9c551b12c57f955d2daf49ec22c92b65fd2e141b07c0b95a08d9e89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/248cdfb64d8602eafaa4eb2dbd36a63d9ed5e088b137be5f0c15c18786557721.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3', 783, '2026-09-13 04:05:34.079870', '0a93d53c7e85cbea2259379534d51347677d79a8aeaf480da63c6f5003cc9e2e', 'validated', '{"audio_key":"25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec","entity_key":"u_alphabet_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a93d53c7e85cbea2259379534d51347677d79a8aeaf480da63c6f5003cc9e2e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3', 783, '2026-09-13 04:05:34.079870', '0a93d53c7e85cbea2259379534d51347677d79a8aeaf480da63c6f5003cc9e2e', 'validated', '{"audio_key":"25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec","entity_key":"e_alphabet_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a93d53c7e85cbea2259379534d51347677d79a8aeaf480da63c6f5003cc9e2e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/25165cddb080f4481f9ce200efebaf15c1c6b153ebdba10eebc44eafdc900aec.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1071, '2026-09-13 04:05:34.496495', '9f5d4970f3c3a9f878a9305e8d868d62181fcbd7313080d4c27b49c793f0cf89', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"u_first_sounds_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f5d4970f3c3a9f878a9305e8d868d62181fcbd7313080d4c27b49c793f0cf89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3', 1071, '2026-09-13 04:05:34.496495', '9f5d4970f3c3a9f878a9305e8d868d62181fcbd7313080d4c27b49c793f0cf89', 'validated', '{"audio_key":"266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4","entity_key":"e_first_sounds_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f5d4970f3c3a9f878a9305e8d868d62181fcbd7313080d4c27b49c793f0cf89","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/266e6c6d21d8f14b6bfd51817cbb86b2718e4688029c855c3219c6618759ecc4.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299.mp3', 1149, '2026-09-13 04:05:35.051820', 'ae3da726467fb4f6db08f866078aa43a38c9f8010127936db24ce625a601fc37', 'validated', '{"audio_key":"27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299","entity_key":"u_first_objects_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae3da726467fb4f6db08f866078aa43a38c9f8010127936db24ce625a601fc37","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/27fe874905d8b391ce399d9d7af9dc33ef854d264aeef1dbebd79731e4643299.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2.mp3', 1149, '2026-09-13 04:05:35.515149', '51cd1794b05165f4c25ad111edfb138ec90b1b5039f927de196bc74cc52e2cac', 'validated', '{"audio_key":"31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2","entity_key":"u_first_objects_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51cd1794b05165f4c25ad111edfb138ec90b1b5039f927de196bc74cc52e2cac","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/31966fbb6f56a100fe61712c72345e6f19309cd7323447ac7baf8b476ec183a2.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3', 1097, '2026-09-13 04:05:36.060722', 'dc3e61c3413f643e7246989b5f3b76d8243a45cc52fc35a16aa0aa75726d90e1', 'validated', '{"audio_key":"339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed","entity_key":"u_letter_names_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc3e61c3413f643e7246989b5f3b76d8243a45cc52fc35a16aa0aa75726d90e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3', 1097, '2026-09-13 04:05:36.060722', 'dc3e61c3413f643e7246989b5f3b76d8243a45cc52fc35a16aa0aa75726d90e1', 'validated', '{"audio_key":"339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed","entity_key":"e_letter_names_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc3e61c3413f643e7246989b5f3b76d8243a45cc52fc35a16aa0aa75726d90e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/339c3d424ef8d5b8b80ca6bbbb94420cfa9a8b85675614b16821faa060b4f3ed.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452.mp3', 914, '2026-09-13 04:05:36.500505', 'de8078b3522058e7649ba77c692325f658951620584ef27f63d766c991f57487', 'validated', '{"audio_key":"33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452","entity_key":"u_first_conversation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de8078b3522058e7649ba77c692325f658951620584ef27f63d766c991f57487","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/33cceb14a41bda47cd5c1f5ab6f226cba6b6da13c416dcb91981c293985af452.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4.mp3', 1515, '2026-09-13 04:05:37.070842', '4803155bf100501597186feb5b84956853202624ea487beaa5a26f2d9fdb9c27', 'validated', '{"audio_key":"3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4","entity_key":"u_first_conversation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4803155bf100501597186feb5b84956853202624ea487beaa5a26f2d9fdb9c27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3437e228e1fcb93946a62dead6b0609c09dddbebd0a942f7695a17cbde49d2f4.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4.mp3', 1149, '2026-09-13 04:05:37.646623', 'b0b398337e40baefd618269402e13eea4930a969568ec3eab7cbcf46395846a8', 'validated', '{"audio_key":"3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4","entity_key":"u_classroom_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0b398337e40baefd618269402e13eea4930a969568ec3eab7cbcf46395846a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3bbf48a41960d42cf7b894758a9839bda91b905a81d978784843be5ae9ff27a4.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3', 600, '2026-09-13 04:05:38.023409', '4d5d54ff4650837532be8b944d00c26b15db1b358120a6c7b706001f6b60c8b2', 'validated', '{"audio_key":"3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1","entity_key":"u_alphabet_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d5d54ff4650837532be8b944d00c26b15db1b358120a6c7b706001f6b60c8b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3', 600, '2026-09-13 04:05:38.023409', '4d5d54ff4650837532be8b944d00c26b15db1b358120a6c7b706001f6b60c8b2', 'validated', '{"audio_key":"3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1","entity_key":"e_alphabet_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d5d54ff4650837532be8b944d00c26b15db1b358120a6c7b706001f6b60c8b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3e882d0a3f771cdff54d51736625c33622873077f5106f06cec73ea4d7c602a1.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3', 1018, '2026-09-13 04:05:38.627500', '2e11ff0b28f3de4cbd5e6de90269ec6ba624eab018f4a5c9959791cfe0f015a2', 'validated', '{"audio_key":"3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c","entity_key":"u_first_greetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e11ff0b28f3de4cbd5e6de90269ec6ba624eab018f4a5c9959791cfe0f015a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3', 1018, '2026-09-13 04:05:38.627500', '2e11ff0b28f3de4cbd5e6de90269ec6ba624eab018f4a5c9959791cfe0f015a2', 'validated', '{"audio_key":"3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c","entity_key":"e_first_greetings_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e11ff0b28f3de4cbd5e6de90269ec6ba624eab018f4a5c9959791cfe0f015a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fc88c82712ef95bc299f9e28572a249065a475803b0fd4f523ccf821528d86c.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8.mp3', 966, '2026-09-13 04:05:39.043434', '0bbb7a392cd2109eb0fddf41000ce9fd67def8cabdfec5d54d6cd1f12534a222', 'validated', '{"audio_key":"4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8","entity_key":"u_numbers_0_10_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bbb7a392cd2109eb0fddf41000ce9fd67def8cabdfec5d54d6cd1f12534a222","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4061d7025bd169e03919217075a04cbfac873df67dac64f60ab287b4774fbcc8.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3', 1332, '2026-09-13 04:05:39.662032', 'f53bd47a17535d48e5f677ff2c71b6b43545854b665fd6f5667b8981488c7f6f', 'validated', '{"audio_key":"4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc","entity_key":"u_first_conversation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f53bd47a17535d48e5f677ff2c71b6b43545854b665fd6f5667b8981488c7f6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3', 1332, '2026-09-13 04:05:39.662032', 'f53bd47a17535d48e5f677ff2c71b6b43545854b665fd6f5667b8981488c7f6f', 'validated', '{"audio_key":"4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc","entity_key":"e_first_conversation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f53bd47a17535d48e5f677ff2c71b6b43545854b665fd6f5667b8981488c7f6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4547f93e82fec53239e5b3add2de1274b0c7226ec2d23913a84fb6a3a4de3abc.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3', 966, '2026-09-13 04:05:40.062241', 'b69263e31f4792bb48006f02947ad84ffee2d9fbaf6679de5731a20ad9bc13b4', 'validated', '{"audio_key":"4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34","entity_key":"u_first_objects_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b69263e31f4792bb48006f02947ad84ffee2d9fbaf6679de5731a20ad9bc13b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3', 966, '2026-09-13 04:05:40.062241', 'b69263e31f4792bb48006f02947ad84ffee2d9fbaf6679de5731a20ad9bc13b4', 'validated', '{"audio_key":"4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34","entity_key":"e_first_objects_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b69263e31f4792bb48006f02947ad84ffee2d9fbaf6679de5731a20ad9bc13b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4659957cf8e1a4c1d2fdadc80b1a1ebeda38b638d60e2f1168870b2516ebfb34.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3', 1332, '2026-09-13 04:05:40.688984', '9dbb536cca6d5e5028bec00aef97861c478d07904c9b0bbf603bf76ceb644871', 'validated', '{"audio_key":"4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f","entity_key":"u_my_name_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dbb536cca6d5e5028bec00aef97861c478d07904c9b0bbf603bf76ceb644871","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3', 1332, '2026-09-13 04:05:40.688984', '9dbb536cca6d5e5028bec00aef97861c478d07904c9b0bbf603bf76ceb644871', 'validated', '{"audio_key":"4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f","entity_key":"e_my_name_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dbb536cca6d5e5028bec00aef97861c478d07904c9b0bbf603bf76ceb644871","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a6e56098f4a66266fbccf3d76c50aaf27a0e020ee2f67bba0c4e2854bfd0d0f.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8.mp3', 679, '2026-09-13 04:05:41.016692', '4c7f9f5238c1d334cfca3e2805c4c5a2bbdf2a99b07a65ea43b1890dbe2d3afa', 'validated', '{"audio_key":"4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8","entity_key":"u_numbers_0_10_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c7f9f5238c1d334cfca3e2805c4c5a2bbdf2a99b07a65ea43b1890dbe2d3afa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ad12a186fbdd1abaa073f7bafdf0e95d08796bf9d92c27069e817f4f81a8bf8.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3', 1149, '2026-09-13 04:05:41.670367', '1a3aa0f32111441bcdb831dcbe4e1323517fd409605d2e623ba59e244518aeae', 'validated', '{"audio_key":"4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd","entity_key":"u_first_greetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a3aa0f32111441bcdb831dcbe4e1323517fd409605d2e623ba59e244518aeae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3', 1149, '2026-09-13 04:05:41.670367', '1a3aa0f32111441bcdb831dcbe4e1323517fd409605d2e623ba59e244518aeae', 'validated', '{"audio_key":"4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd","entity_key":"e_first_greetings_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a3aa0f32111441bcdb831dcbe4e1323517fd409605d2e623ba59e244518aeae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e7c1a2316bced44da4a5a8af60a2b605158e8f1836e1ba53bcbd94a39a7e4bd.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05.mp3', 862, '2026-09-13 04:05:42.005861', 'c7bf8e2cc3d58f122b6f9a84efd9d68e9f4108a9aa71fbdc0cb9cacc680e2ef3', 'validated', '{"audio_key":"51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05","entity_key":"u_first_sounds_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7bf8e2cc3d58f122b6f9a84efd9d68e9f4108a9aa71fbdc0cb9cacc680e2ef3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/51f8f805eb28efc9434b10cbb771ff1425238ad1d7adb35e3a7e9cf909986d05.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d.mp3', 914, '2026-09-13 04:05:42.686425', '4ce459ca3c989a83c37b09c5e4840de88d99ce6002c39ce56e1494c350ed1405', 'validated', '{"audio_key":"542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d","entity_key":"u_first_conversation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ce459ca3c989a83c37b09c5e4840de88d99ce6002c39ce56e1494c350ed1405","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/542584e81152af87478f59391776cc8722eebddeb574d6797e31f34e301e893d.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96.mp3', 862, '2026-09-13 04:05:42.984487', 'a73498d2238094d4a777c35f839b3042915fc8c66cfedcc8adb0320e05b95060', 'validated', '{"audio_key":"5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96","entity_key":"u_classroom_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a73498d2238094d4a777c35f839b3042915fc8c66cfedcc8adb0320e05b95060","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5d096a19ee81f1e41a582d79cf52761a39e66be277f328811e321ba3fe2c9d96.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4.mp3', 862, '2026-09-13 04:05:43.675618', 'fb072fcd055a5d44144f9e752abf3dbdb4a383fc23995208191d5b78e6a63fa1', 'validated', '{"audio_key":"6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4","entity_key":"u_classroom_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb072fcd055a5d44144f9e752abf3dbdb4a383fc23995208191d5b78e6a63fa1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6fe162a844bc2011f8672ca26628760713b7e8b877698c5c4849b9b7d4dc4ba4.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117.mp3', 1071, '2026-09-13 04:05:43.978088', '5adb9432e2a93fa15e8b9dd7beacdf33e6bc66cf97b847e2e265969334c04b6f', 'validated', '{"audio_key":"712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117","entity_key":"u_first_sounds_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5adb9432e2a93fa15e8b9dd7beacdf33e6bc66cf97b847e2e265969334c04b6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/712581c2b239a865ed12ae98185e79460ff48afa86b28fdf71efce5668e29117.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3', 1071, '2026-09-13 04:05:44.649329', '679f5bcff021d2c0d12d061d2e7caac44b3e47875f1c76481a11663da264a42a', 'validated', '{"audio_key":"71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789","entity_key":"u_first_objects_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"679f5bcff021d2c0d12d061d2e7caac44b3e47875f1c76481a11663da264a42a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3', 1071, '2026-09-13 04:05:44.649329', '679f5bcff021d2c0d12d061d2e7caac44b3e47875f1c76481a11663da264a42a', 'validated', '{"audio_key":"71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789","entity_key":"e_first_objects_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"679f5bcff021d2c0d12d061d2e7caac44b3e47875f1c76481a11663da264a42a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71bc566e5376ae7015ab1ee82e621753d7becde0aa283a596dc67f2fe16b7789.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b.mp3', 835, '2026-09-13 04:05:44.946887', 'b5fa5c14416c37df4a4b61fc2daa8f1d55476e936bc149730427509540a4345e', 'validated', '{"audio_key":"803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b","entity_key":"u_alphabet_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5fa5c14416c37df4a4b61fc2daa8f1d55476e936bc149730427509540a4345e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/803cc5609a957d48a1c81df6be4a655958e08f1fece3ea949d5fbc60c9249e2b.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e.mp3', 966, '2026-09-13 04:05:45.638712', 'e38b0f4b479592d69d3712a00a5429ec05803e73a95e433fcec3d53be3b5157c', 'validated', '{"audio_key":"850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e","entity_key":"u_first_greetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e38b0f4b479592d69d3712a00a5429ec05803e73a95e433fcec3d53be3b5157c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/850ddd639589f285c7e258289743a5e6d527fb8ec4955f069969d73148c8743e.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 966, '2026-09-13 04:05:45.924388', '934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"u_first_conversation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 966, '2026-09-13 04:05:45.924388', '934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"e_first_conversation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 966, '2026-09-13 04:05:45.924388', '934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"u_my_name_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3', 966, '2026-09-13 04:05:45.924388', '934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2', 'validated', '{"audio_key":"87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970","entity_key":"e_my_name_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934e9949c2de904b5da2ee80096a91fb1ab147e5932e3cc2aee02e8f5e6150d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87889faaa4fb111f4a55c338506f1c4232d0db5a6601b86e25f4707db8dc2970.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b.mp3', 1097, '2026-09-13 04:05:46.644572', '01b576d9f89e7d8a212a145fccf962185afde17cd083187edc1c17e19debf9e6', 'validated', '{"audio_key":"952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b","entity_key":"u_my_name_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01b576d9f89e7d8a212a145fccf962185afde17cd083187edc1c17e19debf9e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/952c8a7e098f21cd22d7aa87f67f9d729b01d298f76104a2e917d42c5f03d90b.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37.mp3', 783, '2026-09-13 04:05:46.882453', '6c786cc31b8db70245cc072f7b2079061668edd30bfb5598d844d2dcb402566d', 'validated', '{"audio_key":"9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37","entity_key":"u_alphabet_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c786cc31b8db70245cc072f7b2079061668edd30bfb5598d844d2dcb402566d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9e28a2b819e43c0b484f229dc0f3fc2ae84f4b8c96539a99646b10fce8897c37.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0.mp3', 862, '2026-09-13 04:05:47.647868', '8b72fd4ad3fbcc84bbd378b88736397063d757a5a1d00c41fdefe634c11c595b', 'validated', '{"audio_key":"a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0","entity_key":"u_numbers_0_10_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b72fd4ad3fbcc84bbd378b88736397063d757a5a1d00c41fdefe634c11c595b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a637ee7eb6444a51b40f64af15c6511ac0d6afd14533281e0ac5be46c48d9dd0.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f.mp3', 1149, '2026-09-13 04:05:47.868823', '432ad712b2d70fee30b55277ac53c0b5138e9bba73ee637665955397db8072a5', 'validated', '{"audio_key":"af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f","entity_key":"u_first_greetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"432ad712b2d70fee30b55277ac53c0b5138e9bba73ee637665955397db8072a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af4a577ef2f09ff0cc8fc2b7b4cfdf67727337bb63afa1e3d462f81253cd061f.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df.mp3', 1201, '2026-09-13 04:05:48.646094', '2a25ff5f3ef514cc4f41d5291a607121e986d643bf2714f4cbbd36d612639ea1', 'validated', '{"audio_key":"baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df","entity_key":"u_my_name_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a25ff5f3ef514cc4f41d5291a607121e986d643bf2714f4cbbd36d612639ea1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/baa84d94e755d230cbcf1a3cdeea2cc28c4a89cfe8d8a59668f3e8fb39e983df.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3', 1201, '2026-09-13 04:05:48.861482', '45a3f173ead045888c61e95a505bc925087f3c6471941cd57cb48b304ddba96b', 'validated', '{"audio_key":"ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598","entity_key":"u_letter_names_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45a3f173ead045888c61e95a505bc925087f3c6471941cd57cb48b304ddba96b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3', 1201, '2026-09-13 04:05:48.861482', '45a3f173ead045888c61e95a505bc925087f3c6471941cd57cb48b304ddba96b', 'validated', '{"audio_key":"ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598","entity_key":"e_letter_names_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45a3f173ead045888c61e95a505bc925087f3c6471941cd57cb48b304ddba96b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ca2dc9a230639222a8433a534e0c3c0129b8de5d5aa61b8418a556cce7523598.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968.mp3', 862, '2026-09-13 04:05:49.625488', 'c3dd194e4fa8ebe4da117a71ea87a1b591637337e2cfa5d6df49bc6c65d4a7e2', 'validated', '{"audio_key":"d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968","entity_key":"u_first_greetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3dd194e4fa8ebe4da117a71ea87a1b591637337e2cfa5d6df49bc6c65d4a7e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d0197d4e2992192683c4953bc8c2f91807a654acaf058c47a312634507e04968.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3', 1149, '2026-09-13 04:05:50.050734', 'd9048e9adc8f45213a2ccb8d40cde0eff0478affd7f055a7b61742b930330421', 'validated', '{"audio_key":"d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24","entity_key":"u_first_conversation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9048e9adc8f45213a2ccb8d40cde0eff0478affd7f055a7b61742b930330421","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d19c951f34fc99529c0081030ea397692ac124a1a44e73bced774669ac28cc24.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9.mp3', 835, '2026-09-13 04:05:50.616788', 'f25b26d7241835aa326495f85f9a7fd3df8679a84fbd43c5feff0152ba9ef778', 'validated', '{"audio_key":"d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9","entity_key":"u_survival_words_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f25b26d7241835aa326495f85f9a7fd3df8679a84fbd43c5feff0152ba9ef778","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d31c7e9f29f939cf3df311335fc040cf4468601407ccfac3a503ea7d3ae5bde9.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55.mp3', 1071, '2026-09-13 04:05:51.050568', 'f301cdb8d1aae0596637d85792771b7d33d55c1676479b0d126956032b6a7a4d', 'validated', '{"audio_key":"d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55","entity_key":"u_letter_names_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f301cdb8d1aae0596637d85792771b7d33d55c1676479b0d126956032b6a7a4d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d41d9c66ec6b939de8a7445df73c32ae2ec7287234423d923b53096ebbe62b55.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7.mp3', 1071, '2026-09-13 04:05:51.613783', '606aa2ee185109fb4811ed898b61cc9cb1f6d891c1d266be3039708349596f14', 'validated', '{"audio_key":"d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7","entity_key":"u_first_objects_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"606aa2ee185109fb4811ed898b61cc9cb1f6d891c1d266be3039708349596f14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d99067d2eb40aa682c1846e52834898eea5ad5427927bde4780e59382045d3b7.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248.mp3', 1018, '2026-09-13 04:05:52.066546', '3aff7b371e404194212aad172b0fbcf3a79f387727e7b27b22455c1e2a784e5b', 'validated', '{"audio_key":"e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248","entity_key":"u_letter_names_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aff7b371e404194212aad172b0fbcf3a79f387727e7b27b22455c1e2a784e5b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e224c0caf978dba9282166a73c6e7ff0e93cb7006b0f71c5312afaad95a38248.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 862, '2026-09-13 04:05:52.579306', '2cf1419b662f651dc71ea0fe2f63b011125b8fecd7efc9e24ee0d2d8fae87955', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"u_numbers_0_10_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cf1419b662f651dc71ea0fe2f63b011125b8fecd7efc9e24ee0d2d8fae87955","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3', 862, '2026-09-13 04:05:52.579306', '2cf1419b662f651dc71ea0fe2f63b011125b8fecd7efc9e24ee0d2d8fae87955', 'validated', '{"audio_key":"e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8","entity_key":"e_numbers_0_10_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cf1419b662f651dc71ea0fe2f63b011125b8fecd7efc9e24ee0d2d8fae87955","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4bd10bd426fbef882d9656972b4137f429d74a828d77f43eeb5276f21c150c8.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3', 1097, '2026-09-13 04:05:53.058424', '921941fe2be32805af77b0b72e3e70357bc74704864f4e939561bc28efed9797', 'validated', '{"audio_key":"e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222","entity_key":"u_classroom_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"921941fe2be32805af77b0b72e3e70357bc74704864f4e939561bc28efed9797","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3', 1097, '2026-09-13 04:05:53.058424', '921941fe2be32805af77b0b72e3e70357bc74704864f4e939561bc28efed9797', 'validated', '{"audio_key":"e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222","entity_key":"e_classroom_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"921941fe2be32805af77b0b72e3e70357bc74704864f4e939561bc28efed9797","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e7cccb7dcc2b51c868a019df3e973394a92cf6481f7845f2c9c4c1f3030b3222.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109.mp3', 1201, '2026-09-13 04:05:53.595189', 'a115f2e38dafa89aff0e31d7e6e3e8d00627c2d189e7031591972c3da53445e5', 'validated', '{"audio_key":"e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109","entity_key":"u_first_greetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a115f2e38dafa89aff0e31d7e6e3e8d00627c2d189e7031591972c3da53445e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e9ffd822cf269cfeff7f12d736a30df41a0eac6b719f4d7352b45d2f99a58109.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe.mp3', 966, '2026-09-13 04:05:54.005506', '2ea47e4f34fdb13d644bf16a62a7b801ce9b63a3b212bce66b9e44828bdfc43c', 'validated', '{"audio_key":"f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe","entity_key":"u_survival_words_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ea47e4f34fdb13d644bf16a62a7b801ce9b63a3b212bce66b9e44828bdfc43c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f1840dd6ff6c5df1765e23854e3c9e0f69787aeaeaec49c6674cd8713898f1fe.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82.mp3', 548, '2026-09-13 04:05:54.540701', '5410c4aadcb01eab1c0c64bef9c2bbd85d27499441094f1bbff3d04681e1febb', 'validated', '{"audio_key":"f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82","entity_key":"u_alphabet_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5410c4aadcb01eab1c0c64bef9c2bbd85d27499441094f1bbff3d04681e1febb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f4e29cfec3cb2c256732c1e832754f5979d9cf62849f5c1a599f901e640e5b82.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66.mp3', 1071, '2026-09-13 04:05:54.996687', 'b724df82b81deb98d4369f5aee9241ecd71ea12e8399edf6f48baec24d8f5550', 'validated', '{"audio_key":"f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66","entity_key":"u_first_objects_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b724df82b81deb98d4369f5aee9241ecd71ea12e8399edf6f48baec24d8f5550","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f5b2177fda6ad94077e3033207d26ed2d7835933fc14786b1b25bbc8e4114c66.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3', 1018, '2026-09-13 04:05:55.516597', '285f80dea7bf8d956a7edd60253ed2812876e0fcb9a13744059fda5f8360bce5', 'validated', '{"audio_key":"f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e","entity_key":"u_survival_words_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"285f80dea7bf8d956a7edd60253ed2812876e0fcb9a13744059fda5f8360bce5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3', 1018, '2026-09-13 04:05:55.516597', '285f80dea7bf8d956a7edd60253ed2812876e0fcb9a13744059fda5f8360bce5', 'validated', '{"audio_key":"f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e","entity_key":"e_survival_words_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"285f80dea7bf8d956a7edd60253ed2812876e0fcb9a13744059fda5f8360bce5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7dbb21443efb34530327bc0bc65a2449a7ff003231ec86912a6f4b13f4f3c2e.mp3"}'
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
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3', 1018, '2026-09-13 04:05:56.282364', '1f5f2006d1b500fd71b73cad44a28cb6599a4ef2b93cdcc860a7f2a4f0294a50', 'validated', '{"audio_key":"f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892","entity_key":"u_first_sounds_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f5f2006d1b500fd71b73cad44a28cb6599a4ef2b93cdcc860a7f2a4f0294a50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f8453ea865c9c45b2c7b3b33d6d826f596ea54d02ddf4ffbe6c979799b650892.mp3"}'
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

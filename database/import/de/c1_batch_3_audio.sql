-- Generated audio link import for de-DE C1
-- Source manifest: audio/manifests/de/C1-batch-3.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_executive_presentations_02:4 -> audio/generated/de-DE/dialogues/01b83ae62624e23e7108fdd8a93b3fdee9786ee1da6374e6bd34c5afcce252e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d58ccda4-b639-5ad2-a53a-6297fbfd50c3', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d9c4b4b1062cc65cd9d1827d838c8e0b2ba4b1103a6a3fe5a9fdd9656424b29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('083fe561-8aea-52c8-8ce6-a1618fb25069', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d58ccda4-b639-5ad2-a53a-6297fbfd50c3', 1), '0d9c4b4b1062cc65cd9d1827d838c8e0b2ba4b1103a6a3fe5a9fdd9656424b29',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/01b83ae62624e23e7108fdd8a93b3fdee9786ee1da6374e6bd34c5afcce252e8.mp3', 4545, '2026-09-13 10:19:43.585582', '367f35653f1577afb3fe4cdf636f1665a64157ca59315a21f2b27ea1edd93b6d', 'validated', '{"audio_key":"01b83ae62624e23e7108fdd8a93b3fdee9786ee1da6374e6bd34c5afcce252e8","entity_key":"d_executive_presentations_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"367f35653f1577afb3fe4cdf636f1665a64157ca59315a21f2b27ea1edd93b6d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/01b83ae62624e23e7108fdd8a93b3fdee9786ee1da6374e6bd34c5afcce252e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_01:4 -> audio/generated/de-DE/dialogues/063288238b990952b60bb15a2aaad2dcd213abe1cc2e9ed8e47a27a0e01fc214.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72bb0669-c821-59f5-b330-9b236a7d6bce', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c916a61039a587e5fdaaa69b28cd6c5a2d5a796779c6a29de0cf9133a0208a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acae3c54-caac-5e07-bf84-d779d4564b0b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72bb0669-c821-59f5-b330-9b236a7d6bce', 1), '67c916a61039a587e5fdaaa69b28cd6c5a2d5a796779c6a29de0cf9133a0208a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/063288238b990952b60bb15a2aaad2dcd213abe1cc2e9ed8e47a27a0e01fc214.mp3', 4545, '2026-09-13 10:19:43.604540', 'cf770385d4bd117b25893b901eddbb8db2ba452a9c6fb2f40eaf08ed6a499b65', 'validated', '{"audio_key":"063288238b990952b60bb15a2aaad2dcd213abe1cc2e9ed8e47a27a0e01fc214","entity_key":"d_change_communication_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"cf770385d4bd117b25893b901eddbb8db2ba452a9c6fb2f40eaf08ed6a499b65","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/063288238b990952b60bb15a2aaad2dcd213abe1cc2e9ed8e47a27a0e01fc214.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_03:2 -> audio/generated/de-DE/dialogues/082a87f8ae7b3186a4dbe8543f397592db6b99dffe276f70b1a8b26fdc7f2cf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92649dbb-933f-56e6-9c7e-b98bd9efc671', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5393c73a67eef8ad3ccde54d0923ce63e81d30d7412df69c95713c86cb03401f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('504d28f6-06de-5ec5-87fc-85204e5d42a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92649dbb-933f-56e6-9c7e-b98bd9efc671', 1), '5393c73a67eef8ad3ccde54d0923ce63e81d30d7412df69c95713c86cb03401f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/082a87f8ae7b3186a4dbe8543f397592db6b99dffe276f70b1a8b26fdc7f2cf5.mp3', 2951, '2026-09-13 10:19:44.841641', 'f17216359373bf6d7888045d2782500cd0fc1232a92074432439f1ea6fa9cbf4', 'validated', '{"audio_key":"082a87f8ae7b3186a4dbe8543f397592db6b99dffe276f70b1a8b26fdc7f2cf5","entity_key":"d_expert_interviews_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f17216359373bf6d7888045d2782500cd0fc1232a92074432439f1ea6fa9cbf4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/082a87f8ae7b3186a4dbe8543f397592db6b99dffe276f70b1a8b26fdc7f2cf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_01:1 -> audio/generated/de-DE/dialogues/138513201e5622a970949d1e3b1835be5ff8ce081eaab98648d3c93f699e5171.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85dca05c-b388-520f-bd9d-334383ee41d9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ec5558ce0dc6db384f672e17186fde967f0f6704b4b5a04ac38473642dfd736'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a09b7ecc-81f4-5520-9876-7d1d2f24231d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85dca05c-b388-520f-bd9d-334383ee41d9', 1), '3ec5558ce0dc6db384f672e17186fde967f0f6704b4b5a04ac38473642dfd736',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/138513201e5622a970949d1e3b1835be5ff8ce081eaab98648d3c93f699e5171.mp3', 4310, '2026-09-13 10:19:45.019723', 'c384b51abf4989c9627f832ee20a1c69a6d8978696ae0efc637ca9ec99b13126', 'validated', '{"audio_key":"138513201e5622a970949d1e3b1835be5ff8ce081eaab98648d3c93f699e5171","entity_key":"d_scenario_planning_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c384b51abf4989c9627f832ee20a1c69a6d8978696ae0efc637ca9ec99b13126","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/138513201e5622a970949d1e3b1835be5ff8ce081eaab98648d3c93f699e5171.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_02:4 -> audio/generated/de-DE/dialogues/18fc3613198e1a279ce42319d02a647aaccf2f3dd095c5083997562d06c8aba7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3bace7d-f1b5-501d-8f43-40b2b60d356e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd79e3b7f08c5ee1b368a2f0cc0f6e016088691b359e4834837cb174575391ec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5500e158-f302-5e47-8f23-78d83df29fae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3bace7d-f1b5-501d-8f43-40b2b60d356e', 1), 'd79e3b7f08c5ee1b368a2f0cc0f6e016088691b359e4834837cb174575391ec7',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/18fc3613198e1a279ce42319d02a647aaccf2f3dd095c5083997562d06c8aba7.mp3', 4205, '2026-09-13 10:19:46.211569', '21a5e7e61fedf6b5b6e7c18d37e48ee031d12544499371ed1868e5d61b1fb798', 'validated', '{"audio_key":"18fc3613198e1a279ce42319d02a647aaccf2f3dd095c5083997562d06c8aba7","entity_key":"d_meeting_facilitation_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"21a5e7e61fedf6b5b6e7c18d37e48ee031d12544499371ed1868e5d61b1fb798","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/18fc3613198e1a279ce42319d02a647aaccf2f3dd095c5083997562d06c8aba7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_02:4 -> audio/generated/de-DE/dialogues/19bf75a39011b0a0f26a74b4b72dea2623c8d60515d26b72c398d1d339ff43d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('97dfae56-9ec3-5678-ae1e-f619e9e9287c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3f7a6125929cc5ea494fe2d14ae4040912bcbd9c4847affa7e4bb0862e3ab83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('669da1d2-5055-5c3e-8f95-8d9179cdd374', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('97dfae56-9ec3-5678-ae1e-f619e9e9287c', 1), 'd3f7a6125929cc5ea494fe2d14ae4040912bcbd9c4847affa7e4bb0862e3ab83',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/19bf75a39011b0a0f26a74b4b72dea2623c8d60515d26b72c398d1d339ff43d1.mp3', 5851, '2026-09-13 10:19:46.534323', '221c3e1569554b27de914594cf9e884f3003b940a371f7632e4f2a067b5c8b18', 'validated', '{"audio_key":"19bf75a39011b0a0f26a74b4b72dea2623c8d60515d26b72c398d1d339ff43d1","entity_key":"d_strategic_alignment_capstone_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"221c3e1569554b27de914594cf9e884f3003b940a371f7632e4f2a067b5c8b18","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/19bf75a39011b0a0f26a74b4b72dea2623c8d60515d26b72c398d1d339ff43d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_02:4 -> audio/generated/de-DE/dialogues/1a1e25a94bc00e2ba994b6e4d4c1d2a5f6fc307764146a46eae13a16dfa0adcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d6f1b35-f515-5214-b833-62870bc0ee73', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ca2e27707c95f3ea84c9f3a7003eff792310440a4bc8b25e33635b128a49532'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c77791cf-6bbf-5248-b85c-e41c8e8727a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d6f1b35-f515-5214-b833-62870bc0ee73', 1), '1ca2e27707c95f3ea84c9f3a7003eff792310440a4bc8b25e33635b128a49532',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a1e25a94bc00e2ba994b6e4d4c1d2a5f6fc307764146a46eae13a16dfa0adcc.mp3', 5982, '2026-09-13 10:19:47.841876', '85da0ee7778fa2b3f895f80a53c9e4d3a54e9cdef901343fb3b15fc54489db3b', 'validated', '{"audio_key":"1a1e25a94bc00e2ba994b6e4d4c1d2a5f6fc307764146a46eae13a16dfa0adcc","entity_key":"d_data_interpretation_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"85da0ee7778fa2b3f895f80a53c9e4d3a54e9cdef901343fb3b15fc54489db3b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1a1e25a94bc00e2ba994b6e4d4c1d2a5f6fc307764146a46eae13a16dfa0adcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_01:3 -> audio/generated/de-DE/dialogues/1b1fddcd58e6943a9543104e79a3d1e498bfd7b6cdd81a78205c439c56ab316e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0365c4f-1781-5bcf-ac69-4a736a4e550b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b572846aacfa3aef4456e7cb0eafb1999bf2b6aa6ed92f768d315be34b35e90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca74a73e-f238-5a50-8d62-f8652078a246', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0365c4f-1781-5bcf-ac69-4a736a4e550b', 1), '9b572846aacfa3aef4456e7cb0eafb1999bf2b6aa6ed92f768d315be34b35e90',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b1fddcd58e6943a9543104e79a3d1e498bfd7b6cdd81a78205c439c56ab316e.mp3', 2403, '2026-09-13 10:19:47.784440', '99718a8850dd7ac77610c24a8fd1ccfc4ceb508bd9a086247470e7a2db77fc42', 'validated', '{"audio_key":"1b1fddcd58e6943a9543104e79a3d1e498bfd7b6cdd81a78205c439c56ab316e","entity_key":"d_proposal_writing_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"99718a8850dd7ac77610c24a8fd1ccfc4ceb508bd9a086247470e7a2db77fc42","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1b1fddcd58e6943a9543104e79a3d1e498bfd7b6cdd81a78205c439c56ab316e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_02:3 -> audio/generated/de-DE/dialogues/1c593fb858c96d06390ebac487bb296c000c5c69c4af4e905c21dee0e0cd5a57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9624aec7-255c-5b7c-a024-f5167c68e2cf', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d64d93a50bd732de703da528ef303b067890bbe3d501e08f6b5798925ad9142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bddd2a35-fcfc-5b5b-a97e-b8302625a6ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9624aec7-255c-5b7c-a024-f5167c68e2cf', 1), '7d64d93a50bd732de703da528ef303b067890bbe3d501e08f6b5798925ad9142',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1c593fb858c96d06390ebac487bb296c000c5c69c4af4e905c21dee0e0cd5a57.mp3', 5381, '2026-09-13 10:19:49.313905', '11d39e24bb46a54e6bf2aaa378f6ff85fea8174a751daf62fbcddc46b43e16b9', 'validated', '{"audio_key":"1c593fb858c96d06390ebac487bb296c000c5c69c4af4e905c21dee0e0cd5a57","entity_key":"d_strategic_alignment_capstone_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"11d39e24bb46a54e6bf2aaa378f6ff85fea8174a751daf62fbcddc46b43e16b9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1c593fb858c96d06390ebac487bb296c000c5c69c4af4e905c21dee0e0cd5a57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_01:2 -> audio/generated/de-DE/dialogues/1de1fa192d5ad0e2e70a12168dc72058fa1d666b7b216ca979059e43eda59253.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98299d0c-7451-55b3-b669-8677125daed8', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '668b1f512fc70566688ce3062292c144c4a9a641e407ecf540aa1521e05bbdfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa329ed6-5daa-552f-ad87-a584a8836136', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98299d0c-7451-55b3-b669-8677125daed8', 1), '668b1f512fc70566688ce3062292c144c4a9a641e407ecf540aa1521e05bbdfb',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1de1fa192d5ad0e2e70a12168dc72058fa1d666b7b216ca979059e43eda59253.mp3', 6713, '2026-09-13 10:19:49.469316', '9fef1baab9a31fbcb1d3db08576743ecc315d10b1d550772ae0e339db7d3c16c', 'validated', '{"audio_key":"1de1fa192d5ad0e2e70a12168dc72058fa1d666b7b216ca979059e43eda59253","entity_key":"d_executive_presentations_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9fef1baab9a31fbcb1d3db08576743ecc315d10b1d550772ae0e339db7d3c16c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1de1fa192d5ad0e2e70a12168dc72058fa1d666b7b216ca979059e43eda59253.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_01:4 -> audio/generated/de-DE/dialogues/2075eb979be68b95d6e270d51821790e8bb3df76b690710c9e87681c5652c344.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e1ab765-90cb-5592-88d9-1417299e1782', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2155ddfbffb6d80b46ecc49cd31c725e14ff695acd7fa2f97fb66d37be0bab1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99923b06-da0c-5c9d-a24b-89b7786b438c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e1ab765-90cb-5592-88d9-1417299e1782', 1), 'c2155ddfbffb6d80b46ecc49cd31c725e14ff695acd7fa2f97fb66d37be0bab1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2075eb979be68b95d6e270d51821790e8bb3df76b690710c9e87681c5652c344.mp3', 3996, '2026-09-13 10:19:50.626797', 'd21298898cb615a2247b390a83c89692979d6ca8a186fa58f435b3f7775f173b', 'validated', '{"audio_key":"2075eb979be68b95d6e270d51821790e8bb3df76b690710c9e87681c5652c344","entity_key":"d_strategic_alignment_capstone_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d21298898cb615a2247b390a83c89692979d6ca8a186fa58f435b3f7775f173b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2075eb979be68b95d6e270d51821790e8bb3df76b690710c9e87681c5652c344.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_01:4 -> audio/generated/de-DE/dialogues/22af9242c6e8f643f6f0fa9cd3a6dedbdc59661f07143ba968d932839a6bb958.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73b2208f-5126-5419-8d65-4cd77b16110d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88dc2af0234258287e45ab4dbb212eed27b6a31b9e728144dfad64103eb71b75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1b59fac-295c-519c-baf7-f71ec03ba724', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73b2208f-5126-5419-8d65-4cd77b16110d', 1), '88dc2af0234258287e45ab4dbb212eed27b6a31b9e728144dfad64103eb71b75',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/22af9242c6e8f643f6f0fa9cd3a6dedbdc59661f07143ba968d932839a6bb958.mp3', 5276, '2026-09-13 10:19:51.006391', 'eb8b223e717ea77cef80f96fcd30404e1755a104395f5995d9f6adf177346934', 'validated', '{"audio_key":"22af9242c6e8f643f6f0fa9cd3a6dedbdc59661f07143ba968d932839a6bb958","entity_key":"d_conflict_mediation_power_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eb8b223e717ea77cef80f96fcd30404e1755a104395f5995d9f6adf177346934","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/22af9242c6e8f643f6f0fa9cd3a6dedbdc59661f07143ba968d932839a6bb958.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_02:2 -> audio/generated/de-DE/dialogues/26df2ee0ef61324ce69e7b95ea3e4d62c41184b2d4143f2d3f68ff4b09200f41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63b1a374-931f-5d1a-aa97-b14d5d8216fe', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f89c6366384ad5e20283e76bc21dce7d0b920f1a88a75b451ad5c03499a91ed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f744d4f-bcf1-55a3-b585-0c0add21135e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63b1a374-931f-5d1a-aa97-b14d5d8216fe', 1), 'f89c6366384ad5e20283e76bc21dce7d0b920f1a88a75b451ad5c03499a91ed1',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/26df2ee0ef61324ce69e7b95ea3e4d62c41184b2d4143f2d3f68ff4b09200f41.mp3', 6347, '2026-09-13 10:19:52.243200', '2b3b68588526d685a6c437d79ad8c5300cd6ce2388ce07fcc7ba170d3bdcfe8b', 'validated', '{"audio_key":"26df2ee0ef61324ce69e7b95ea3e4d62c41184b2d4143f2d3f68ff4b09200f41","entity_key":"d_executive_presentations_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2b3b68588526d685a6c437d79ad8c5300cd6ce2388ce07fcc7ba170d3bdcfe8b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/26df2ee0ef61324ce69e7b95ea3e4d62c41184b2d4143f2d3f68ff4b09200f41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_01:4 -> audio/generated/de-DE/dialogues/286d9e938afaede3dd26939fcd458ff8e18d4203134e8bd66ac00c85b51a01cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52b3c40d-bc4e-5406-95b5-2df52e076403', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6281fffab3767d524be6827fc27f606084bd3bf75c8ad8cde7343376113e4685'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bd43a0e-fbad-5554-b91c-0c6fb61432da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52b3c40d-bc4e-5406-95b5-2df52e076403', 1), '6281fffab3767d524be6827fc27f606084bd3bf75c8ad8cde7343376113e4685',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/286d9e938afaede3dd26939fcd458ff8e18d4203134e8bd66ac00c85b51a01cd.mp3', 5198, '2026-09-13 10:19:52.646160', '6d1986b916cc6bed0e99b9fcd83672ec5ceba2b293d5a845fc710366c1858b42', 'validated', '{"audio_key":"286d9e938afaede3dd26939fcd458ff8e18d4203134e8bd66ac00c85b51a01cd","entity_key":"d_scenario_planning_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6d1986b916cc6bed0e99b9fcd83672ec5ceba2b293d5a845fc710366c1858b42","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/286d9e938afaede3dd26939fcd458ff8e18d4203134e8bd66ac00c85b51a01cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_01:3 -> audio/generated/de-DE/dialogues/29165e53d8eb80bf440f21e50829cc6b53e686d1d4a60852c50b1e928a98d604.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1524588c-3c10-5b61-bbbd-0560a5a65e88', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93089b61c2cf81400a47c4b6448bba96b04e6b676bdcbda362f252bf8c11c4ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e268dd88-3ffe-5389-ab35-32d0a0111298', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1524588c-3c10-5b61-bbbd-0560a5a65e88', 1), '93089b61c2cf81400a47c4b6448bba96b04e6b676bdcbda362f252bf8c11c4ec',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29165e53d8eb80bf440f21e50829cc6b53e686d1d4a60852c50b1e928a98d604.mp3', 3761, '2026-09-13 10:19:53.595410', 'bd0d613c44615dfb338c4bf160ffa528589838050a97e1e6d8a5d93c82f37d57', 'validated', '{"audio_key":"29165e53d8eb80bf440f21e50829cc6b53e686d1d4a60852c50b1e928a98d604","entity_key":"d_expert_interviews_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bd0d613c44615dfb338c4bf160ffa528589838050a97e1e6d8a5d93c82f37d57","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/29165e53d8eb80bf440f21e50829cc6b53e686d1d4a60852c50b1e928a98d604.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_03:1 -> audio/generated/de-DE/dialogues/2ba9e0d599c8ce1f58b9d0a8db0101cac180a51054c4a2822c55ff4713406873.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b0c5d94-a9b7-5772-b7a1-9e6be4c8a2b8', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fa807897793882a7816ab5c7d467999ccd64085d07340a2091118f5d396cca8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dce1c5ae-ce79-51ae-aab9-5a6f5e1244e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b0c5d94-a9b7-5772-b7a1-9e6be4c8a2b8', 1), '0fa807897793882a7816ab5c7d467999ccd64085d07340a2091118f5d396cca8',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ba9e0d599c8ce1f58b9d0a8db0101cac180a51054c4a2822c55ff4713406873.mp3', 3944, '2026-09-13 10:19:54.130805', '606b3094ad7eb0e3bcba24da867e425a7e83bf04d9bb38603b41fd93ef4caa17', 'validated', '{"audio_key":"2ba9e0d599c8ce1f58b9d0a8db0101cac180a51054c4a2822c55ff4713406873","entity_key":"d_proposal_writing_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"606b3094ad7eb0e3bcba24da867e425a7e83bf04d9bb38603b41fd93ef4caa17","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2ba9e0d599c8ce1f58b9d0a8db0101cac180a51054c4a2822c55ff4713406873.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_01:3 -> audio/generated/de-DE/dialogues/2c474bd7e8d94459679a0af65523981c060c4fdd7ecf06f8634268f02fbee8a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91b7ed87-bf1b-564b-be03-f60f66ec9474', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd89041a89e7a5ed9791b3f18fe8c67cdea3cbb5fc109a7a96105c7712ad24061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('172e9feb-468d-5b2b-b4fc-b62e70ee25b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91b7ed87-bf1b-564b-be03-f60f66ec9474', 1), 'd89041a89e7a5ed9791b3f18fe8c67cdea3cbb5fc109a7a96105c7712ad24061',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c474bd7e8d94459679a0af65523981c060c4fdd7ecf06f8634268f02fbee8a9.mp3', 1750, '2026-09-13 10:19:54.659330', 'bbb870ada1b3cde802a5f1a13a7ca9a5dbb1328695f51f0c3d507b24fdcc090f', 'validated', '{"audio_key":"2c474bd7e8d94459679a0af65523981c060c4fdd7ecf06f8634268f02fbee8a9","entity_key":"d_meeting_facilitation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bbb870ada1b3cde802a5f1a13a7ca9a5dbb1328695f51f0c3d507b24fdcc090f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c474bd7e8d94459679a0af65523981c060c4fdd7ecf06f8634268f02fbee8a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_01:2 -> audio/generated/de-DE/dialogues/2e0bc050458f7dd8fcf5e8ce5d47453feb087e7de5943ab05ff79e760ef5a81b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a39aee19-b5f3-5392-9354-ee94eb7f9028', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '110836fd91575bbb9e00eed0816b6244fbea46daa2ab528ad1259aac16770182'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8522d80-48f5-5f70-a7c0-3f98f5d223c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a39aee19-b5f3-5392-9354-ee94eb7f9028', 1), '110836fd91575bbb9e00eed0816b6244fbea46daa2ab528ad1259aac16770182',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e0bc050458f7dd8fcf5e8ce5d47453feb087e7de5943ab05ff79e760ef5a81b.mp3', 5851, '2026-09-13 10:19:55.775374', '3df4f59310834ac5b5ba55825e44d918adcb2bb48ab7e68a454191bd14c171cc', 'validated', '{"audio_key":"2e0bc050458f7dd8fcf5e8ce5d47453feb087e7de5943ab05ff79e760ef5a81b","entity_key":"d_proposal_writing_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3df4f59310834ac5b5ba55825e44d918adcb2bb48ab7e68a454191bd14c171cc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2e0bc050458f7dd8fcf5e8ce5d47453feb087e7de5943ab05ff79e760ef5a81b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_03:4 -> audio/generated/de-DE/dialogues/2f8b3d7709f421ca2fbb95fa0c0744c2f5e4da208b5f0c2ff09181ee4cb89511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02651607-ece8-50f7-8686-6ea73b112c45', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8353bd9aed2350cd5ce39c8af581883578087150cf200fa36a4e4e352578ed7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3d4b36c-090b-57ea-8666-de9188534a4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02651607-ece8-50f7-8686-6ea73b112c45', 1), 'f8353bd9aed2350cd5ce39c8af581883578087150cf200fa36a4e4e352578ed7',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2f8b3d7709f421ca2fbb95fa0c0744c2f5e4da208b5f0c2ff09181ee4cb89511.mp3', 3840, '2026-09-13 10:19:55.959660', '10ad44822b29d9bfac9cf16f7f48e938cdfabccfc60913517b1e725697aa06f9', 'validated', '{"audio_key":"2f8b3d7709f421ca2fbb95fa0c0744c2f5e4da208b5f0c2ff09181ee4cb89511","entity_key":"d_strategic_alignment_capstone_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"10ad44822b29d9bfac9cf16f7f48e938cdfabccfc60913517b1e725697aa06f9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2f8b3d7709f421ca2fbb95fa0c0744c2f5e4da208b5f0c2ff09181ee4cb89511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_03:2 -> audio/generated/de-DE/dialogues/31e6f0b479f4a8259a6121fad9ae96c6b07198d51950e47f280b56aa55ac073c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('145a1b22-7c85-56a0-b4ac-4ebbd5c5bfb0', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3e078613e8f23a24e928321ad483a553d71c431950312b83761f55883625fd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40bab77d-a4a5-5965-ba5c-5b580074345d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('145a1b22-7c85-56a0-b4ac-4ebbd5c5bfb0', 1), 'b3e078613e8f23a24e928321ad483a553d71c431950312b83761f55883625fd0',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/31e6f0b479f4a8259a6121fad9ae96c6b07198d51950e47f280b56aa55ac073c.mp3', 4545, '2026-09-13 10:19:57.173528', 'faa08b66589ddf96297a5371a59f6071081f25d77271cd74756a99a32a12385c', 'validated', '{"audio_key":"31e6f0b479f4a8259a6121fad9ae96c6b07198d51950e47f280b56aa55ac073c","entity_key":"d_executive_presentations_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"faa08b66589ddf96297a5371a59f6071081f25d77271cd74756a99a32a12385c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/31e6f0b479f4a8259a6121fad9ae96c6b07198d51950e47f280b56aa55ac073c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_03:1 -> audio/generated/de-DE/dialogues/37909470dca17f98bdb532880877487b24390a8e1622b263d4e5b883c42838dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8d0ee9f-f87d-5a0a-8a94-0db3d022a54a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '360e58477c51517382ef7b04979cc14f366bcaf8d16a6fecce62cf3752dc9c8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc7a44c8-c997-5490-81d8-158272e803fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8d0ee9f-f87d-5a0a-8a94-0db3d022a54a', 1), '360e58477c51517382ef7b04979cc14f366bcaf8d16a6fecce62cf3752dc9c8d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37909470dca17f98bdb532880877487b24390a8e1622b263d4e5b883c42838dd.mp3', 4545, '2026-09-13 10:19:57.360169', 'a31818b72e4a2d2a6836b9e4a0a0bc2fd6df7f4917f9ce98003455024cf20bf1', 'validated', '{"audio_key":"37909470dca17f98bdb532880877487b24390a8e1622b263d4e5b883c42838dd","entity_key":"d_strategic_alignment_capstone_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a31818b72e4a2d2a6836b9e4a0a0bc2fd6df7f4917f9ce98003455024cf20bf1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/37909470dca17f98bdb532880877487b24390a8e1622b263d4e5b883c42838dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_01:1 -> audio/generated/de-DE/dialogues/3ba463650a284de9970d40858327464f07f30d7af387427aa9a74825b45291dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c5827da-478a-5ad9-bb36-1d83d83ae57d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '933ad3fbbb45afd8187a9cab3112d63cdd46be60d0d18c4857abff70338b5b62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4832c468-aa18-5b29-9385-f9112b5a4f47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c5827da-478a-5ad9-bb36-1d83d83ae57d', 1), '933ad3fbbb45afd8187a9cab3112d63cdd46be60d0d18c4857abff70338b5b62',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ba463650a284de9970d40858327464f07f30d7af387427aa9a74825b45291dd.mp3', 4022, '2026-09-13 10:19:58.517647', 'b2a5e29e1ec1800b227971c59db0088272c28034923ada82f58743a6118f3aee', 'validated', '{"audio_key":"3ba463650a284de9970d40858327464f07f30d7af387427aa9a74825b45291dd","entity_key":"d_change_communication_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b2a5e29e1ec1800b227971c59db0088272c28034923ada82f58743a6118f3aee","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3ba463650a284de9970d40858327464f07f30d7af387427aa9a74825b45291dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_01:4 -> audio/generated/de-DE/dialogues/3c3ba177db62fad3cc58b1bd7fd2e594c6b6f3dc390b5088e0da5f80143d2a87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55f396cd-18d3-5e22-a4fc-ff32d0158832', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '785d1a8ee2032888fce77b262c7c9cf07839f9be4ed2c6e860e93fe833bf9cd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5db3373-bb38-586e-8763-3ad9e83b4b9d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55f396cd-18d3-5e22-a4fc-ff32d0158832', 1), '785d1a8ee2032888fce77b262c7c9cf07839f9be4ed2c6e860e93fe833bf9cd4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3c3ba177db62fad3cc58b1bd7fd2e594c6b6f3dc390b5088e0da5f80143d2a87.mp3', 5250, '2026-09-13 10:19:58.887174', '18c8a337e78f093801862df068474567523a39063048ad5b9352acf93beac39d', 'validated', '{"audio_key":"3c3ba177db62fad3cc58b1bd7fd2e594c6b6f3dc390b5088e0da5f80143d2a87","entity_key":"d_executive_presentations_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"18c8a337e78f093801862df068474567523a39063048ad5b9352acf93beac39d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3c3ba177db62fad3cc58b1bd7fd2e594c6b6f3dc390b5088e0da5f80143d2a87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_02:1 -> audio/generated/de-DE/dialogues/3c989cf22a2fb7a4d77016bda0097dd2ea8fda773c2034a5254691f4b592aff2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c2a3781e-f5a2-59ba-bf19-35061f16b55e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81a987bb9d0340de397582690784adbc54cfad3f56554dcaa202b9eb77643dfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07035e59-473c-58a6-9438-a2f67e1728c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c2a3781e-f5a2-59ba-bf19-35061f16b55e', 1), '81a987bb9d0340de397582690784adbc54cfad3f56554dcaa202b9eb77643dfb',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3c989cf22a2fb7a4d77016bda0097dd2ea8fda773c2034a5254691f4b592aff2.mp3', 3343, '2026-09-13 10:19:59.798668', 'f34e49c346e0e3dc3ecae6d224b261d753381ddbed465aea0bf2c730a8725125', 'validated', '{"audio_key":"3c989cf22a2fb7a4d77016bda0097dd2ea8fda773c2034a5254691f4b592aff2","entity_key":"d_partnership_negotiation_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f34e49c346e0e3dc3ecae6d224b261d753381ddbed465aea0bf2c730a8725125","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3c989cf22a2fb7a4d77016bda0097dd2ea8fda773c2034a5254691f4b592aff2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_02:1 -> audio/generated/de-DE/dialogues/3d6ba5a35e622518b9c4f1b98645987e249513da8f4e93593ceade960558b80d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01860ffc-dce7-5566-bca0-8c754f5315fe', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ffd5da92845afcceae8d2754fc2c6e77ebf358dd1720b4472e66d308c6e25cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4af363c6-adca-5038-95d9-7bd7100077dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01860ffc-dce7-5566-bca0-8c754f5315fe', 1), '3ffd5da92845afcceae8d2754fc2c6e77ebf358dd1720b4472e66d308c6e25cb',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d6ba5a35e622518b9c4f1b98645987e249513da8f4e93593ceade960558b80d.mp3', 5146, '2026-09-13 10:20:00.365628', '600b8ee59779ab13788a585c82e05034630fce67f9162fb690ba01b0257fe48b', 'validated', '{"audio_key":"3d6ba5a35e622518b9c4f1b98645987e249513da8f4e93593ceade960558b80d","entity_key":"d_proposal_writing_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"600b8ee59779ab13788a585c82e05034630fce67f9162fb690ba01b0257fe48b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3d6ba5a35e622518b9c4f1b98645987e249513da8f4e93593ceade960558b80d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_02:3 -> audio/generated/de-DE/dialogues/3f2a2a13ace2809c41bc0849f129acaed29c496828b1fbc7ae911ab7fb9d0110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f760a009-7a1c-5177-b0c0-2faeb18274ec', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '496a333a4f00d3beaf05ec2644e9a2bdc1d34734451cd50b85dc536abb5f5720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f92957a7-3a55-5af9-a5ca-d601035b65a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f760a009-7a1c-5177-b0c0-2faeb18274ec', 1), '496a333a4f00d3beaf05ec2644e9a2bdc1d34734451cd50b85dc536abb5f5720',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f2a2a13ace2809c41bc0849f129acaed29c496828b1fbc7ae911ab7fb9d0110.mp3', 4414, '2026-09-13 10:20:01.136927', 'de7dd48f3de9094e7c07e492b951a96c8e02e215a90a50b6cb9d4e587b4f21f9', 'validated', '{"audio_key":"3f2a2a13ace2809c41bc0849f129acaed29c496828b1fbc7ae911ab7fb9d0110","entity_key":"d_change_communication_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"de7dd48f3de9094e7c07e492b951a96c8e02e215a90a50b6cb9d4e587b4f21f9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f2a2a13ace2809c41bc0849f129acaed29c496828b1fbc7ae911ab7fb9d0110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_02:3 -> audio/generated/de-DE/dialogues/436b6bebe12298bc242e2d48df2aaff14782d407baf0b27772657a08f1ccb10e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03e3ab62-97c9-5ba3-843b-0b531740c956', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '745d073c594f4b0663a651d9ad0e5cc19cb32e0805ed9daec67b0100c8733cd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('612bd42c-6c5d-5bb4-852e-b7fc283948e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03e3ab62-97c9-5ba3-843b-0b531740c956', 1), '745d073c594f4b0663a651d9ad0e5cc19cb32e0805ed9daec67b0100c8733cd6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/436b6bebe12298bc242e2d48df2aaff14782d407baf0b27772657a08f1ccb10e.mp3', 4545, '2026-09-13 10:20:01.777390', 'fde83486541d1f2c0fb72622239011856ca690c980e99f2db671c6c4c185cae9', 'validated', '{"audio_key":"436b6bebe12298bc242e2d48df2aaff14782d407baf0b27772657a08f1ccb10e","entity_key":"d_proposal_writing_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"fde83486541d1f2c0fb72622239011856ca690c980e99f2db671c6c4c185cae9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/436b6bebe12298bc242e2d48df2aaff14782d407baf0b27772657a08f1ccb10e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_03:2 -> audio/generated/de-DE/dialogues/44f656e6fdf671b9b305621aaccc1cb2cab2e770b10fd859f374fadf78131af2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aff167a0-df1c-5bec-8ddf-9bdb5e67a710', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c765693864fab364d68dc8bca1cd5b98c7b5ae794e6ccccaf8bce46648c64e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcf09344-bb8f-5e53-932c-411f63d674b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aff167a0-df1c-5bec-8ddf-9bdb5e67a710', 1), '3c765693864fab364d68dc8bca1cd5b98c7b5ae794e6ccccaf8bce46648c64e9',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/44f656e6fdf671b9b305621aaccc1cb2cab2e770b10fd859f374fadf78131af2.mp3', 3657, '2026-09-13 10:20:02.447618', '05c806051f5c180ea399e1e158ce875c3fd820bd7d501e52ac9ea0a5e16c9c36', 'validated', '{"audio_key":"44f656e6fdf671b9b305621aaccc1cb2cab2e770b10fd859f374fadf78131af2","entity_key":"d_proposal_writing_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"05c806051f5c180ea399e1e158ce875c3fd820bd7d501e52ac9ea0a5e16c9c36","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/44f656e6fdf671b9b305621aaccc1cb2cab2e770b10fd859f374fadf78131af2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_03:3 -> audio/generated/de-DE/dialogues/45b4b7cd03284078ffb97cf2786a68025eb1aae0617e68d3d3b46499276d8efa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3e94095-d83a-5375-accc-a2208596718b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c828093eb3beee0c5b98488d022b6c7f6668065d02cf36fc208c047a3a0e6393'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ed3ce81-e47c-5acd-864b-ee9e76ad29e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3e94095-d83a-5375-accc-a2208596718b', 1), 'c828093eb3beee0c5b98488d022b6c7f6668065d02cf36fc208c047a3a0e6393',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/45b4b7cd03284078ffb97cf2786a68025eb1aae0617e68d3d3b46499276d8efa.mp3', 4597, '2026-09-13 10:20:03.224416', '81b50e567b187d6c7ac07d1f383e6e3550a6b124d9268f2d1dfd61883ab6d2a3', 'validated', '{"audio_key":"45b4b7cd03284078ffb97cf2786a68025eb1aae0617e68d3d3b46499276d8efa","entity_key":"d_partnership_negotiation_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"81b50e567b187d6c7ac07d1f383e6e3550a6b124d9268f2d1dfd61883ab6d2a3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/45b4b7cd03284078ffb97cf2786a68025eb1aae0617e68d3d3b46499276d8efa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_03:3 -> audio/generated/de-DE/dialogues/4a6c1bba7daf2b904b9d06beddf4a7880875bfa3af37e187ace99ff2ac2c139b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0465e49f-531d-5be6-b121-434c181d82ad', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97f672cbb99a0b0dbe137713d6ba2b2ae44f2e2d3d8a0dee466c1f5d14766e83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01e3581d-2f1f-58c1-8894-708b4755355c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0465e49f-531d-5be6-b121-434c181d82ad', 1), '97f672cbb99a0b0dbe137713d6ba2b2ae44f2e2d3d8a0dee466c1f5d14766e83',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4a6c1bba7daf2b904b9d06beddf4a7880875bfa3af37e187ace99ff2ac2c139b.mp3', 4597, '2026-09-13 10:20:03.858889', '3b821e65879c78f04844f38a25e5a8ea7e1920892e52f88651e595500beeea11', 'validated', '{"audio_key":"4a6c1bba7daf2b904b9d06beddf4a7880875bfa3af37e187ace99ff2ac2c139b","entity_key":"d_strategic_alignment_capstone_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3b821e65879c78f04844f38a25e5a8ea7e1920892e52f88651e595500beeea11","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4a6c1bba7daf2b904b9d06beddf4a7880875bfa3af37e187ace99ff2ac2c139b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_02:4 -> audio/generated/de-DE/dialogues/4ad8cdffa73093e4eea7a3bb7b130e567fb6115223d2f46bf1f7c41541658212.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76f18f57-cfc5-5a5e-b40d-8ee13d342948', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18a630b4a1691a56371e7b25f2add45258c6055ed41cc6bd4467703b245018d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79caf0ef-140b-5bcd-99a2-fd8dce1ab7ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76f18f57-cfc5-5a5e-b40d-8ee13d342948', 1), '18a630b4a1691a56371e7b25f2add45258c6055ed41cc6bd4467703b245018d6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ad8cdffa73093e4eea7a3bb7b130e567fb6115223d2f46bf1f7c41541658212.mp3', 4310, '2026-09-13 10:20:04.637049', 'ef208f4eec5451c3be7c7dc574ac78b8ab4ea7b57bba010de647345447d73a74', 'validated', '{"audio_key":"4ad8cdffa73093e4eea7a3bb7b130e567fb6115223d2f46bf1f7c41541658212","entity_key":"d_change_communication_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ef208f4eec5451c3be7c7dc574ac78b8ab4ea7b57bba010de647345447d73a74","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4ad8cdffa73093e4eea7a3bb7b130e567fb6115223d2f46bf1f7c41541658212.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_01:3 -> audio/generated/de-DE/dialogues/4ed7a23cc37f1f6344900e50d454361042915b37e39ffc784b4704ec6e21b837.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36abd6d7-9caa-52cd-afbc-dfcc46a4d494', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'feb6d18f98f46efa2b6133f311379f1759deda7e698250e705d4085923b541cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40f4f65b-9579-58be-b049-a14c994a2a62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36abd6d7-9caa-52cd-afbc-dfcc46a4d494', 1), 'feb6d18f98f46efa2b6133f311379f1759deda7e698250e705d4085923b541cf',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ed7a23cc37f1f6344900e50d454361042915b37e39ffc784b4704ec6e21b837.mp3', 5093, '2026-09-13 10:20:05.370980', 'dfab8f833b75f15b88ba489d72e77966e1c72f70ef4621eaf0f6ecba8f939cb3', 'validated', '{"audio_key":"4ed7a23cc37f1f6344900e50d454361042915b37e39ffc784b4704ec6e21b837","entity_key":"d_executive_presentations_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"dfab8f833b75f15b88ba489d72e77966e1c72f70ef4621eaf0f6ecba8f939cb3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4ed7a23cc37f1f6344900e50d454361042915b37e39ffc784b4704ec6e21b837.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_01:1 -> audio/generated/de-DE/dialogues/4f529f83105d2fb6cf3386ccdd08923ba80940077d965281740aa6cea18dfc03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ca068a2-7c99-5bd3-a900-141545c77e62', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4612e47382f6c8c7748ee5b56b2567218bcbc910b1075be89e3fbeab121dc658'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bf50c01-f213-5248-9607-3da0ee4d90c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ca068a2-7c99-5bd3-a900-141545c77e62', 1), '4612e47382f6c8c7748ee5b56b2567218bcbc910b1075be89e3fbeab121dc658',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4f529f83105d2fb6cf3386ccdd08923ba80940077d965281740aa6cea18dfc03.mp3', 6217, '2026-09-13 10:20:06.505463', '83bbf13bf7a1f3f803f61f5d5add2aaca221b0d8774f11192b850bdefb36a913', 'validated', '{"audio_key":"4f529f83105d2fb6cf3386ccdd08923ba80940077d965281740aa6cea18dfc03","entity_key":"d_data_interpretation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"83bbf13bf7a1f3f803f61f5d5add2aaca221b0d8774f11192b850bdefb36a913","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4f529f83105d2fb6cf3386ccdd08923ba80940077d965281740aa6cea18dfc03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_01:3 -> audio/generated/de-DE/dialogues/548c605c763a3c6ad08e6708d6298af22f78e1cc4ecc39296488fcd03f5bf9f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c48b6d4e-0040-586f-a628-4a2625c01d72', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90782e13198c1b0432c501d7ec0744d6250186a3ee5d3824331b93627ae6b058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85a3464c-d89d-5bb8-b851-5c410278724e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c48b6d4e-0040-586f-a628-4a2625c01d72', 1), '90782e13198c1b0432c501d7ec0744d6250186a3ee5d3824331b93627ae6b058',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/548c605c763a3c6ad08e6708d6298af22f78e1cc4ecc39296488fcd03f5bf9f6.mp3', 3291, '2026-09-13 10:20:06.624708', 'a3ad08265138504dbd108704183c3951d783c801085be521fa1bc0ddff955b60', 'validated', '{"audio_key":"548c605c763a3c6ad08e6708d6298af22f78e1cc4ecc39296488fcd03f5bf9f6","entity_key":"d_data_interpretation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a3ad08265138504dbd108704183c3951d783c801085be521fa1bc0ddff955b60","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/548c605c763a3c6ad08e6708d6298af22f78e1cc4ecc39296488fcd03f5bf9f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_01:3 -> audio/generated/de-DE/dialogues/56ccfb373f7fe04d2ddc64ff109bb3633404afd6cac03040649dfebdbe70db37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('84a0beca-051c-5a9f-815c-93e8c1eca068', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b185ae91e048aa1769ccb63b879aca901d6d5cc0d4ef13eca1a4e70edba82ff7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9d04533-8c5d-50cf-b266-5c47cbd4d2e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('84a0beca-051c-5a9f-815c-93e8c1eca068', 1), 'b185ae91e048aa1769ccb63b879aca901d6d5cc0d4ef13eca1a4e70edba82ff7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56ccfb373f7fe04d2ddc64ff109bb3633404afd6cac03040649dfebdbe70db37.mp3', 4780, '2026-09-13 10:20:07.965110', '4e1b25224ab634eb2823faf45696d66fa4862492566717861c75e4b630785629', 'validated', '{"audio_key":"56ccfb373f7fe04d2ddc64ff109bb3633404afd6cac03040649dfebdbe70db37","entity_key":"d_strategic_alignment_capstone_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e1b25224ab634eb2823faf45696d66fa4862492566717861c75e4b630785629","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/56ccfb373f7fe04d2ddc64ff109bb3633404afd6cac03040649dfebdbe70db37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_03:4 -> audio/generated/de-DE/dialogues/58798856a89826b701c99c29898412d2aafc070999f639ab11ba0caf3f09409c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd04b5c1-841f-52d1-9b51-aef957a7a236', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83fdbb7abb951dd8ddd3ff160f1ef2ea8d1242d2fa02d71fff413b06f07e12c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4a5eec7-7ca3-57b2-9896-a01e09335a32', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd04b5c1-841f-52d1-9b51-aef957a7a236', 1), '83fdbb7abb951dd8ddd3ff160f1ef2ea8d1242d2fa02d71fff413b06f07e12c4',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/58798856a89826b701c99c29898412d2aafc070999f639ab11ba0caf3f09409c.mp3', 4911, '2026-09-13 10:20:08.061471', 'd9e5035b50200c999abfec7f771ad6fd54cbc7f855399e4b8164a7fc232f9199', 'validated', '{"audio_key":"58798856a89826b701c99c29898412d2aafc070999f639ab11ba0caf3f09409c","entity_key":"d_scenario_planning_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d9e5035b50200c999abfec7f771ad6fd54cbc7f855399e4b8164a7fc232f9199","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/58798856a89826b701c99c29898412d2aafc070999f639ab11ba0caf3f09409c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_03:2 -> audio/generated/de-DE/dialogues/5885a764e5244c6e4b8282779bbeb2d18dd5d7bcb04932d72051a43f0c644f72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1cdaba84-ad64-5d62-9d4e-7e25f2968f47', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd2c9551edbbc6b096ff8146d64074483c10b0c7f915419db1cca57c4b403111'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e178744-5164-5cba-a99e-7e5febe1d41a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1cdaba84-ad64-5d62-9d4e-7e25f2968f47', 1), 'fd2c9551edbbc6b096ff8146d64074483c10b0c7f915419db1cca57c4b403111',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5885a764e5244c6e4b8282779bbeb2d18dd5d7bcb04932d72051a43f0c644f72.mp3', 3892, '2026-09-13 10:20:09.276800', '2e71425d1534ec17478dae14e0fe19b78ffec1bf2f6635c276659ad00af959c5', 'validated', '{"audio_key":"5885a764e5244c6e4b8282779bbeb2d18dd5d7bcb04932d72051a43f0c644f72","entity_key":"d_data_interpretation_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2e71425d1534ec17478dae14e0fe19b78ffec1bf2f6635c276659ad00af959c5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5885a764e5244c6e4b8282779bbeb2d18dd5d7bcb04932d72051a43f0c644f72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_02:1 -> audio/generated/de-DE/dialogues/5bc703a5c7dfaeb97c64b1050e15f2a1ef4695d65964f2805ba47e41b7da9550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e496379-31f8-5a16-9876-2bdceb9b4604', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd76a0c5e69b02ccb3e1acb9be7c15e4539cabeccb0121c4b8ab7a27b601a8f68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88ce38a4-8ca5-5dfa-bd54-97c8c11d5f84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e496379-31f8-5a16-9876-2bdceb9b4604', 1), 'd76a0c5e69b02ccb3e1acb9be7c15e4539cabeccb0121c4b8ab7a27b601a8f68',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5bc703a5c7dfaeb97c64b1050e15f2a1ef4695d65964f2805ba47e41b7da9550.mp3', 5511, '2026-09-13 10:20:09.589761', '7e1e8566d5ec690f19773fc4a246b2b4bff34d45e1ab481802795163baf5abdb', 'validated', '{"audio_key":"5bc703a5c7dfaeb97c64b1050e15f2a1ef4695d65964f2805ba47e41b7da9550","entity_key":"d_change_communication_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7e1e8566d5ec690f19773fc4a246b2b4bff34d45e1ab481802795163baf5abdb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5bc703a5c7dfaeb97c64b1050e15f2a1ef4695d65964f2805ba47e41b7da9550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_01:4 -> audio/generated/de-DE/dialogues/5d50c08f342d9164985d50c2f7722deeb92df6385e5bf476d828b49ac7f10e58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ff73ccd0-8109-55e1-b02a-69c73ac58d61', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e6bfe2340302bf2cbfc5a17fac08d7734183328ba7f9b89667863c0a736c4fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52d087bd-8418-52ec-ad3b-7f270ad75b2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ff73ccd0-8109-55e1-b02a-69c73ac58d61', 1), '3e6bfe2340302bf2cbfc5a17fac08d7734183328ba7f9b89667863c0a736c4fa',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d50c08f342d9164985d50c2f7722deeb92df6385e5bf476d828b49ac7f10e58.mp3', 4440, '2026-09-13 10:20:10.681503', '1890a9ccdae34bf75c40ea99e909535bcb08f18bf083075dacdf181511ce818e', 'validated', '{"audio_key":"5d50c08f342d9164985d50c2f7722deeb92df6385e5bf476d828b49ac7f10e58","entity_key":"d_partnership_negotiation_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1890a9ccdae34bf75c40ea99e909535bcb08f18bf083075dacdf181511ce818e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5d50c08f342d9164985d50c2f7722deeb92df6385e5bf476d828b49ac7f10e58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_03:1 -> audio/generated/de-DE/dialogues/5e330f74ef56f1929668908160795548dcab499cf05392d693a20b44f4fde27b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77de9eb3-531a-57d8-a854-7d6fb789576e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5b40c5c6d605e8591eba920fa59b3573614a8a7d2106f8d9146ff502e2afa88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fee27a87-fdc7-5cce-9f52-9f24c354cf0c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77de9eb3-531a-57d8-a854-7d6fb789576e', 1), 'b5b40c5c6d605e8591eba920fa59b3573614a8a7d2106f8d9146ff502e2afa88',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5e330f74ef56f1929668908160795548dcab499cf05392d693a20b44f4fde27b.mp3', 6086, '2026-09-13 10:20:11.179887', 'ec4aa4f935a34f3bce0984408265528f6d7c0ab1d0f3495502053cad7a9fcc27', 'validated', '{"audio_key":"5e330f74ef56f1929668908160795548dcab499cf05392d693a20b44f4fde27b","entity_key":"d_scenario_planning_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ec4aa4f935a34f3bce0984408265528f6d7c0ab1d0f3495502053cad7a9fcc27","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5e330f74ef56f1929668908160795548dcab499cf05392d693a20b44f4fde27b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_03:1 -> audio/generated/de-DE/dialogues/60e9afaa9603cb6ae6a12d9b27f293b7127c8ed388fd46662269dec75bbea569.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aab1b03c-59de-55af-92b8-b6c0defee31e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25c23d30ae4a5d2c9e74aad53be3eda627d4f17908d8f4691dd4d3bf0c32ed66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f7d1532-8112-5367-953e-7cf077fc87a2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aab1b03c-59de-55af-92b8-b6c0defee31e', 1), '25c23d30ae4a5d2c9e74aad53be3eda627d4f17908d8f4691dd4d3bf0c32ed66',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/60e9afaa9603cb6ae6a12d9b27f293b7127c8ed388fd46662269dec75bbea569.mp3', 4414, '2026-09-13 10:20:12.045398', 'd5cd31b81ea7cd5aeee1f797acc1011dd6cf97dcd1dcc76bf677d0708fdf6ad2', 'validated', '{"audio_key":"60e9afaa9603cb6ae6a12d9b27f293b7127c8ed388fd46662269dec75bbea569","entity_key":"d_partnership_negotiation_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d5cd31b81ea7cd5aeee1f797acc1011dd6cf97dcd1dcc76bf677d0708fdf6ad2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/60e9afaa9603cb6ae6a12d9b27f293b7127c8ed388fd46662269dec75bbea569.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_03:2 -> audio/generated/de-DE/dialogues/613ef18e1f3e22e9d09486c78db7aeecbc8a9dd3c81947d39f912305e8647579.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3fafca01-c653-5655-9138-1f60e59cd928', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a179d1541d03daf0a65198bcaa66ba759dcd84f85d311d397ff6884839d1689'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2aaaea02-1513-5e32-b7f1-9df6f13048a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3fafca01-c653-5655-9138-1f60e59cd928', 1), '1a179d1541d03daf0a65198bcaa66ba759dcd84f85d311d397ff6884839d1689',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/613ef18e1f3e22e9d09486c78db7aeecbc8a9dd3c81947d39f912305e8647579.mp3', 4440, '2026-09-13 10:20:12.540067', '2fab8d09846483b3beb43e27f7f5b8a0cffdebca8eee2f8727efe38ee610b715', 'validated', '{"audio_key":"613ef18e1f3e22e9d09486c78db7aeecbc8a9dd3c81947d39f912305e8647579","entity_key":"d_strategic_alignment_capstone_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"2fab8d09846483b3beb43e27f7f5b8a0cffdebca8eee2f8727efe38ee610b715","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/613ef18e1f3e22e9d09486c78db7aeecbc8a9dd3c81947d39f912305e8647579.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_02:1 -> audio/generated/de-DE/dialogues/6210ea45a0fac731ee0f624ecfbd863e5a900441dcfddc4140ad977ff85ddee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92e63ad5-5315-5b2d-81a9-8c4c87fa775b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b18edfaacd2248307211cbdcaf33804548bc2d23388d05ce82e30ea10194b85d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ef46533-df38-5e79-a9e1-350b7a2bf9c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92e63ad5-5315-5b2d-81a9-8c4c87fa775b', 1), 'b18edfaacd2248307211cbdcaf33804548bc2d23388d05ce82e30ea10194b85d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6210ea45a0fac731ee0f624ecfbd863e5a900441dcfddc4140ad977ff85ddee3.mp3', 6217, '2026-09-13 10:20:13.655114', '285f91d4859c67d7bf62500ac7df99b4294a06398e6b442c54f58ff099d22827', 'validated', '{"audio_key":"6210ea45a0fac731ee0f624ecfbd863e5a900441dcfddc4140ad977ff85ddee3","entity_key":"d_expert_interviews_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"285f91d4859c67d7bf62500ac7df99b4294a06398e6b442c54f58ff099d22827","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6210ea45a0fac731ee0f624ecfbd863e5a900441dcfddc4140ad977ff85ddee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_02:1 -> audio/generated/de-DE/dialogues/6731251b99578905d8054eb62934e12c9c223848c79648e5a500d53004193518.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bbf873e-8236-58c0-821d-aadefd170e00', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f4bd0e0147166588892ce9dcdaede5f2396b9001768c869d14e454c2a5ff140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('232fef1b-9c6f-566d-8084-adba4dafbfd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bbf873e-8236-58c0-821d-aadefd170e00', 1), '4f4bd0e0147166588892ce9dcdaede5f2396b9001768c869d14e454c2a5ff140',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6731251b99578905d8054eb62934e12c9c223848c79648e5a500d53004193518.mp3', 4127, '2026-09-13 10:20:13.857996', 'a811ffd1841995b44aa6bdc1f5b84b51ab252330d61def705dfbf744d4ec3116', 'validated', '{"audio_key":"6731251b99578905d8054eb62934e12c9c223848c79648e5a500d53004193518","entity_key":"d_conflict_mediation_power_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a811ffd1841995b44aa6bdc1f5b84b51ab252330d61def705dfbf744d4ec3116","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6731251b99578905d8054eb62934e12c9c223848c79648e5a500d53004193518.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_01:1 -> audio/generated/de-DE/dialogues/6b061b8d53c6a017a76933a701fc40aff67f61546a63640138ac403f794035cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51f9f212-cc05-55f3-80e4-1b0e06b994b7', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bf92dfa0689a77802d2c44520c6671a136144969436fc24701b87bfe15ae477'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('473bb336-f76b-5798-9a2a-c80402841290', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51f9f212-cc05-55f3-80e4-1b0e06b994b7', 1), '9bf92dfa0689a77802d2c44520c6671a136144969436fc24701b87bfe15ae477',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6b061b8d53c6a017a76933a701fc40aff67f61546a63640138ac403f794035cf.mp3', 4728, '2026-09-13 10:20:15.077938', '30b8adcd334a3437ffea513ebd8a1363fc6f93239924d19b7ed44fe6db71676e', 'validated', '{"audio_key":"6b061b8d53c6a017a76933a701fc40aff67f61546a63640138ac403f794035cf","entity_key":"d_strategic_alignment_capstone_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30b8adcd334a3437ffea513ebd8a1363fc6f93239924d19b7ed44fe6db71676e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6b061b8d53c6a017a76933a701fc40aff67f61546a63640138ac403f794035cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_01:2 -> audio/generated/de-DE/dialogues/6b8814aec97c1f795e9dc367d8c70d9c3407dc1a88f70159bde8e69551183da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8397877f-bd36-5f72-a05c-5e27ba696f8d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f99b8e072983686c5a7e7cf320ba2bfc62b54221f2d7d5a46eaa611a4554851'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5310a626-3b59-5630-936f-4970ce0f6603', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8397877f-bd36-5f72-a05c-5e27ba696f8d', 1), '8f99b8e072983686c5a7e7cf320ba2bfc62b54221f2d7d5a46eaa611a4554851',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6b8814aec97c1f795e9dc367d8c70d9c3407dc1a88f70159bde8e69551183da9.mp3', 7288, '2026-09-13 10:20:15.626941', 'e6cc48139cd6d9cf519bba6f1ffd743178f0f8ecab9d915513480a66a019b829', 'validated', '{"audio_key":"6b8814aec97c1f795e9dc367d8c70d9c3407dc1a88f70159bde8e69551183da9","entity_key":"d_expert_interviews_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"e6cc48139cd6d9cf519bba6f1ffd743178f0f8ecab9d915513480a66a019b829","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6b8814aec97c1f795e9dc367d8c70d9c3407dc1a88f70159bde8e69551183da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_03:2 -> audio/generated/de-DE/dialogues/6dd01e290ee0fc48b165f3157dcaf5fd217b3d43d6b1cfcf4b1d85bbeb14b046.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('991ebc83-d243-5377-a01d-457ed85f6274', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fff6da68fe95606514edb34321d373cb6e658901ef5378fd310017ab4221450'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('763c3988-b64e-5c84-8d5f-657f3a8359a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('991ebc83-d243-5377-a01d-457ed85f6274', 1), '1fff6da68fe95606514edb34321d373cb6e658901ef5378fd310017ab4221450',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6dd01e290ee0fc48b165f3157dcaf5fd217b3d43d6b1cfcf4b1d85bbeb14b046.mp3', 4963, '2026-09-13 10:20:16.548154', '6596067e11f69b03d7fd8a1cd3cd498bb0f3664c26ebcd3bce59917fb5dbbd12', 'validated', '{"audio_key":"6dd01e290ee0fc48b165f3157dcaf5fd217b3d43d6b1cfcf4b1d85bbeb14b046","entity_key":"d_partnership_negotiation_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6596067e11f69b03d7fd8a1cd3cd498bb0f3664c26ebcd3bce59917fb5dbbd12","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6dd01e290ee0fc48b165f3157dcaf5fd217b3d43d6b1cfcf4b1d85bbeb14b046.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_03:4 -> audio/generated/de-DE/dialogues/6e575fd60ad33c37a74ea04af5c9898252dfef7898cc1270445dd7ce2a022b34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2418bbe0-68d1-5d65-883c-c88d4f4e42ee', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fa520b3f63f08b22989d4356f5ba9ce0f195fa82bfe70c422cf3a28a53b2e1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f935cf8-8ca7-5602-9918-5bfbe444433f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2418bbe0-68d1-5d65-883c-c88d4f4e42ee', 1), '3fa520b3f63f08b22989d4356f5ba9ce0f195fa82bfe70c422cf3a28a53b2e1c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6e575fd60ad33c37a74ea04af5c9898252dfef7898cc1270445dd7ce2a022b34.mp3', 4257, '2026-09-13 10:20:16.974285', '2d1fb3a404dd3400d0eb90ddfa2a33494a17d7a2a19fe9ad6e2536e2568270d2', 'validated', '{"audio_key":"6e575fd60ad33c37a74ea04af5c9898252dfef7898cc1270445dd7ce2a022b34","entity_key":"d_meeting_facilitation_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2d1fb3a404dd3400d0eb90ddfa2a33494a17d7a2a19fe9ad6e2536e2568270d2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6e575fd60ad33c37a74ea04af5c9898252dfef7898cc1270445dd7ce2a022b34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_01:2 -> audio/generated/de-DE/dialogues/6e98c12c36bc71675b2a4558243aa139faa628cc9eb1a646b293c2b50dc41cf7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2352f54c-4012-5eb7-8baf-ec5c07261e31', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9433ee5e8a5965eb395eb7af0d66512f7bbd8a78826331f093fa6cbc9b50e10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1246cb4-5699-59de-acb5-a0cde266f58b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2352f54c-4012-5eb7-8baf-ec5c07261e31', 1), 'a9433ee5e8a5965eb395eb7af0d66512f7bbd8a78826331f093fa6cbc9b50e10',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6e98c12c36bc71675b2a4558243aa139faa628cc9eb1a646b293c2b50dc41cf7.mp3', 5276, '2026-09-13 10:20:18.033010', '22d4c0d54829b38620d06f7cf8d3744e0038bc692ab5b9d74c6889e89bb072c3', 'validated', '{"audio_key":"6e98c12c36bc71675b2a4558243aa139faa628cc9eb1a646b293c2b50dc41cf7","entity_key":"d_strategic_alignment_capstone_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"22d4c0d54829b38620d06f7cf8d3744e0038bc692ab5b9d74c6889e89bb072c3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6e98c12c36bc71675b2a4558243aa139faa628cc9eb1a646b293c2b50dc41cf7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_01:4 -> audio/generated/de-DE/dialogues/6f48a029028dffd8ab10170ce4fdc854c7ec783506213b3ac430361fc8cc5edf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72b42e1d-6de7-524e-bad2-260c10ed68c0', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1edf08afcd6382d76a97ccd03331caf175ec7b7cd0240b967c855a8c3c7bbf8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('087189cb-b786-514e-9703-0f1c2f4ace5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72b42e1d-6de7-524e-bad2-260c10ed68c0', 1), '1edf08afcd6382d76a97ccd03331caf175ec7b7cd0240b967c855a8c3c7bbf8f',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6f48a029028dffd8ab10170ce4fdc854c7ec783506213b3ac430361fc8cc5edf.mp3', 5459, '2026-09-13 10:20:18.522276', 'bce57d4848e156965b48038ba56fe1d797aaca6506b7c412dec193dba5a469b5', 'validated', '{"audio_key":"6f48a029028dffd8ab10170ce4fdc854c7ec783506213b3ac430361fc8cc5edf","entity_key":"d_proposal_writing_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bce57d4848e156965b48038ba56fe1d797aaca6506b7c412dec193dba5a469b5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6f48a029028dffd8ab10170ce4fdc854c7ec783506213b3ac430361fc8cc5edf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_02:1 -> audio/generated/de-DE/dialogues/712c4030068ad597cfd7cab79868d160127618f4fda354b13c2a664d8e7f10d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5634627c-538a-5145-93c8-67a58fbb3c39', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c3af3ec4482d79d5e9dde17376d504dfd980638efb8bb2aa406e94fb6bb5e5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d35c3f6f-e174-5064-afea-43ed1a3976c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5634627c-538a-5145-93c8-67a58fbb3c39', 1), '5c3af3ec4482d79d5e9dde17376d504dfd980638efb8bb2aa406e94fb6bb5e5c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/712c4030068ad597cfd7cab79868d160127618f4fda354b13c2a664d8e7f10d5.mp3', 5015, '2026-09-13 10:20:19.506308', '4d6b17b8b0caf8c6bd1935707548fd08ab71f46c4cf5ab703ad1ee21ea25fb43', 'validated', '{"audio_key":"712c4030068ad597cfd7cab79868d160127618f4fda354b13c2a664d8e7f10d5","entity_key":"d_data_interpretation_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4d6b17b8b0caf8c6bd1935707548fd08ab71f46c4cf5ab703ad1ee21ea25fb43","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/712c4030068ad597cfd7cab79868d160127618f4fda354b13c2a664d8e7f10d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_01:4 -> audio/generated/de-DE/dialogues/723e6b75543c39e7b84815f417dff666a818f716c8ae15d770b26346f96df148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d666ba6-c72e-56b6-b70d-ec6a876beeb3', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5cbd4e30880504804d614dda062edd74eb80a3e20ad829b1c237d191c2d4003'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f3f9eb4-c465-5cfb-b9c7-b15883bac9be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d666ba6-c72e-56b6-b70d-ec6a876beeb3', 1), 'f5cbd4e30880504804d614dda062edd74eb80a3e20ad829b1c237d191c2d4003',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/723e6b75543c39e7b84815f417dff666a818f716c8ae15d770b26346f96df148.mp3', 5982, '2026-09-13 10:20:20.024614', '734dd66b9aac8666928abc669733fd9f4f97b2869778ff8f314b24f77ea85092', 'validated', '{"audio_key":"723e6b75543c39e7b84815f417dff666a818f716c8ae15d770b26346f96df148","entity_key":"d_expert_interviews_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"734dd66b9aac8666928abc669733fd9f4f97b2869778ff8f314b24f77ea85092","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/723e6b75543c39e7b84815f417dff666a818f716c8ae15d770b26346f96df148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_02:3 -> audio/generated/de-DE/dialogues/731028052c70843bcd199b3fc20aa4367c6587b2955d0afb92076ebea8da66e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d1a2d12-161f-5c80-a1a9-3bc4c2254fa8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4835e66d456766c2cf226e9409a4df433a16b05b9fc7a82b6c366b4caa01226a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('483d70aa-8e81-5c05-b563-d8d2181d5606', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d1a2d12-161f-5c80-a1a9-3bc4c2254fa8', 1), '4835e66d456766c2cf226e9409a4df433a16b05b9fc7a82b6c366b4caa01226a',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/731028052c70843bcd199b3fc20aa4367c6587b2955d0afb92076ebea8da66e3.mp3', 4623, '2026-09-13 10:20:20.957426', 'cae21a498005beba7a2b336e82d5e06afa993f3d81f176fe68dbb9a35d483fc0', 'validated', '{"audio_key":"731028052c70843bcd199b3fc20aa4367c6587b2955d0afb92076ebea8da66e3","entity_key":"d_meeting_facilitation_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cae21a498005beba7a2b336e82d5e06afa993f3d81f176fe68dbb9a35d483fc0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/731028052c70843bcd199b3fc20aa4367c6587b2955d0afb92076ebea8da66e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_02:1 -> audio/generated/de-DE/dialogues/779bfa3997805003ab83f62ee3cb246f804258b1d6cbcb8dcd657bed10c12949.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7854c52-e0da-50b8-a70a-e30757ca4d5b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0363041eedf1a9f36dcd6a3fbc91555600b8c12cf4749b4cd6b3fd8d79cbc49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38ea89b8-80f5-5e48-ab43-f3cbbac9327b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7854c52-e0da-50b8-a70a-e30757ca4d5b', 1), 'd0363041eedf1a9f36dcd6a3fbc91555600b8c12cf4749b4cd6b3fd8d79cbc49',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/779bfa3997805003ab83f62ee3cb246f804258b1d6cbcb8dcd657bed10c12949.mp3', 5328, '2026-09-13 10:20:21.867215', '64d422faff77b6986a514f0aff7c7dc5d6d7afe7a090257a08f3cc3dfaedb074', 'validated', '{"audio_key":"779bfa3997805003ab83f62ee3cb246f804258b1d6cbcb8dcd657bed10c12949","entity_key":"d_executive_presentations_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"64d422faff77b6986a514f0aff7c7dc5d6d7afe7a090257a08f3cc3dfaedb074","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/779bfa3997805003ab83f62ee3cb246f804258b1d6cbcb8dcd657bed10c12949.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_03:3 -> audio/generated/de-DE/dialogues/78c5c11b7cf4c79b442fd0bd9826cb27cb97af407b0dd872c690fc51b5c1110a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8b5ec72-1593-5b1c-bde7-91cc2ebbd479', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a8153e213a6c8b58ce9de79bed6d8290172f207a6f3a645de2f4467cf91421e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed2dd1e2-1d5d-5d4e-9ade-b2df2251098a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8b5ec72-1593-5b1c-bde7-91cc2ebbd479', 1), '4a8153e213a6c8b58ce9de79bed6d8290172f207a6f3a645de2f4467cf91421e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/78c5c11b7cf4c79b442fd0bd9826cb27cb97af407b0dd872c690fc51b5c1110a.mp3', 7235, '2026-09-13 10:20:22.713172', '3af3aef362aebfd78fe31bd2172bc322dd01637225c6cece4e0379d5b6a341c8', 'validated', '{"audio_key":"78c5c11b7cf4c79b442fd0bd9826cb27cb97af407b0dd872c690fc51b5c1110a","entity_key":"d_scenario_planning_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3af3aef362aebfd78fe31bd2172bc322dd01637225c6cece4e0379d5b6a341c8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/78c5c11b7cf4c79b442fd0bd9826cb27cb97af407b0dd872c690fc51b5c1110a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_01:2 -> audio/generated/de-DE/dialogues/798c9d8480a900e1a687c8b864458cd72f559bd05378d35be799ff5b02db9433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8796279-9cb7-578c-a8c1-343ecbd9d81f', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd68544044516ca342cf7e3deb4b2f7bf6d3d191583c6e40e21781c50d7c8187'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b8beada-7fe1-5139-b0db-d6d7c102e7e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8796279-9cb7-578c-a8c1-343ecbd9d81f', 1), 'cd68544044516ca342cf7e3deb4b2f7bf6d3d191583c6e40e21781c50d7c8187',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/798c9d8480a900e1a687c8b864458cd72f559bd05378d35be799ff5b02db9433.mp3', 6504, '2026-09-13 10:20:23.512866', '914d147639ecd450cb54c37d58f951db11bd47dfe72f1e2f6c10c8c42e704210', 'validated', '{"audio_key":"798c9d8480a900e1a687c8b864458cd72f559bd05378d35be799ff5b02db9433","entity_key":"d_meeting_facilitation_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"914d147639ecd450cb54c37d58f951db11bd47dfe72f1e2f6c10c8c42e704210","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/798c9d8480a900e1a687c8b864458cd72f559bd05378d35be799ff5b02db9433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_03:4 -> audio/generated/de-DE/dialogues/7a608fea41e6292e355c0f3de71138d412e93e54e4a5bfb6e112dbdf62fb8fb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8503bd2-a683-571f-ae0f-c6bd3ffc4d7e', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ca7246c7f3f58275b6ee5412ca05b104cab3e2873d4017f1346bfd70bf745e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('696a9bd7-8430-5774-bd92-665332069ce1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8503bd2-a683-571f-ae0f-c6bd3ffc4d7e', 1), '8ca7246c7f3f58275b6ee5412ca05b104cab3e2873d4017f1346bfd70bf745e5',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a608fea41e6292e355c0f3de71138d412e93e54e4a5bfb6e112dbdf62fb8fb0.mp3', 4205, '2026-09-13 10:20:24.139138', 'dcecec5160429355941bcc47f659500818a179a9d884316881fee209ad0c6c4b', 'validated', '{"audio_key":"7a608fea41e6292e355c0f3de71138d412e93e54e4a5bfb6e112dbdf62fb8fb0","entity_key":"d_executive_presentations_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"dcecec5160429355941bcc47f659500818a179a9d884316881fee209ad0c6c4b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7a608fea41e6292e355c0f3de71138d412e93e54e4a5bfb6e112dbdf62fb8fb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_03:2 -> audio/generated/de-DE/dialogues/7f977b524738c2007d1a3cc5292d7c5b264366eafe101c6c52c15832e286df59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('21c615ef-6435-51db-92d5-ddf76613a9fc', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b0e38369335aff8afb10c150ca1359f58fa9386d12dd2602c31811633afc976'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89850b45-abb9-52a4-97b7-7b47b965dc7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('21c615ef-6435-51db-92d5-ddf76613a9fc', 1), '5b0e38369335aff8afb10c150ca1359f58fa9386d12dd2602c31811633afc976',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f977b524738c2007d1a3cc5292d7c5b264366eafe101c6c52c15832e286df59.mp3', 6765, '2026-09-13 10:20:25.220673', '85114164d7724ef873da7408c7cedeb05a1fbc1ae303dd05d91cfc3a40d7ab33', 'validated', '{"audio_key":"7f977b524738c2007d1a3cc5292d7c5b264366eafe101c6c52c15832e286df59","entity_key":"d_conflict_mediation_power_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"85114164d7724ef873da7408c7cedeb05a1fbc1ae303dd05d91cfc3a40d7ab33","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7f977b524738c2007d1a3cc5292d7c5b264366eafe101c6c52c15832e286df59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_02:3 -> audio/generated/de-DE/dialogues/7fd9aaad190d8589b44800be8b793ff0247719653c5f4857fcd57f054f5e602e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36e8646b-788b-59d7-8cc9-35a50c23145c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'deb222a08a0a900ca90a1061ced9999d7ac4cc413921c8d0838fa469728f43ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9de4bb87-a496-5225-9d23-79f5555a5cfa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36e8646b-788b-59d7-8cc9-35a50c23145c', 1), 'deb222a08a0a900ca90a1061ced9999d7ac4cc413921c8d0838fa469728f43ef',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7fd9aaad190d8589b44800be8b793ff0247719653c5f4857fcd57f054f5e602e.mp3', 4623, '2026-09-13 10:20:25.563976', '59a9f909fc9089f36811149e3bf68c588362a87307a31ac2f9e656b80d207beb', 'validated', '{"audio_key":"7fd9aaad190d8589b44800be8b793ff0247719653c5f4857fcd57f054f5e602e","entity_key":"d_executive_presentations_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"59a9f909fc9089f36811149e3bf68c588362a87307a31ac2f9e656b80d207beb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7fd9aaad190d8589b44800be8b793ff0247719653c5f4857fcd57f054f5e602e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_02:3 -> audio/generated/de-DE/dialogues/80343d33c1a8f7ff8a979429708eea1b118b65103af60dbd5a822257ce072264.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5a3de92-99f5-5c4a-a5d7-4997fa47d7f0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96611bf6596d7a3ea49ec297219c93a4afdb53e7c578d2c6a7328c0e4c0fba79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8315a3f-288e-5071-8e70-59f537b24ca8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5a3de92-99f5-5c4a-a5d7-4997fa47d7f0', 1), '96611bf6596d7a3ea49ec297219c93a4afdb53e7c578d2c6a7328c0e4c0fba79',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/80343d33c1a8f7ff8a979429708eea1b118b65103af60dbd5a822257ce072264.mp3', 4493, '2026-09-13 10:20:26.553298', '75f06c0560aec72d60e09e2920488d5e7a7e77d4e2416135857e4a87e9b67820', 'validated', '{"audio_key":"80343d33c1a8f7ff8a979429708eea1b118b65103af60dbd5a822257ce072264","entity_key":"d_expert_interviews_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75f06c0560aec72d60e09e2920488d5e7a7e77d4e2416135857e4a87e9b67820","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/80343d33c1a8f7ff8a979429708eea1b118b65103af60dbd5a822257ce072264.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_01:2 -> audio/generated/de-DE/dialogues/81bd7c1c6a46d187e27b06754e647b534627ee401de1ccfed79c6418ba86d707.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4bc9573c-222f-588f-b716-ce1c5c80d33f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '033f088e469006a6723ff2a3366fc4909b9a7962888da57e0ecb9926ad307827'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8833440-4e42-5ffd-b3dd-f67659024ded', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4bc9573c-222f-588f-b716-ce1c5c80d33f', 1), '033f088e469006a6723ff2a3366fc4909b9a7962888da57e0ecb9926ad307827',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81bd7c1c6a46d187e27b06754e647b534627ee401de1ccfed79c6418ba86d707.mp3', 5799, '2026-09-13 10:20:27.133458', 'f80ec60757d56d7a8818b64354ab5a7335b35e82fc236a5d819ad9678d351c5a', 'validated', '{"audio_key":"81bd7c1c6a46d187e27b06754e647b534627ee401de1ccfed79c6418ba86d707","entity_key":"d_partnership_negotiation_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f80ec60757d56d7a8818b64354ab5a7335b35e82fc236a5d819ad9678d351c5a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/81bd7c1c6a46d187e27b06754e647b534627ee401de1ccfed79c6418ba86d707.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_03:3 -> audio/generated/de-DE/dialogues/821087c319a1c8a71257aa3bb9775c410bb94dbea023250e8c2544509358eeca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6e009b1-3d50-5169-9bd2-458b83d7cdfd', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ce2f1031f4af12c88ac92f94f8ea554e43c8f566d5ed99125e588a5d91ab7bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97da3785-bbe9-5379-bd59-f3f00ba54618', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6e009b1-3d50-5169-9bd2-458b83d7cdfd', 1), '0ce2f1031f4af12c88ac92f94f8ea554e43c8f566d5ed99125e588a5d91ab7bf',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/821087c319a1c8a71257aa3bb9775c410bb94dbea023250e8c2544509358eeca.mp3', 4440, '2026-09-13 10:20:27.898475', '07a65ee3f661666d7b77f6176fa3a082a48bf6536457ce9e41402ec4b93a9c3e', 'validated', '{"audio_key":"821087c319a1c8a71257aa3bb9775c410bb94dbea023250e8c2544509358eeca","entity_key":"d_conflict_mediation_power_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07a65ee3f661666d7b77f6176fa3a082a48bf6536457ce9e41402ec4b93a9c3e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/821087c319a1c8a71257aa3bb9775c410bb94dbea023250e8c2544509358eeca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_03:3 -> audio/generated/de-DE/dialogues/83bf01840516ec0525c911df7e1c645cbbfc18daa64ae2371f68116a3b59ba9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6fd84dff-b359-5ebc-9ce5-052007db3035', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c77aa676ce929ad8159d5a03492c0ae1db8687e7fb0d9ee563cab211e8365ce2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2803b96e-6b39-56bd-90a3-321dd93b47a2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6fd84dff-b359-5ebc-9ce5-052007db3035', 1), 'c77aa676ce929ad8159d5a03492c0ae1db8687e7fb0d9ee563cab211e8365ce2',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83bf01840516ec0525c911df7e1c645cbbfc18daa64ae2371f68116a3b59ba9a.mp3', 6452, '2026-09-13 10:20:28.792441', '80213bf89511a618052d21b00167b62b170dd726068671900becfa365584d21c', 'validated', '{"audio_key":"83bf01840516ec0525c911df7e1c645cbbfc18daa64ae2371f68116a3b59ba9a","entity_key":"d_expert_interviews_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"80213bf89511a618052d21b00167b62b170dd726068671900becfa365584d21c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/83bf01840516ec0525c911df7e1c645cbbfc18daa64ae2371f68116a3b59ba9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_02:2 -> audio/generated/de-DE/dialogues/8ad55c02bc837304222642d52fc139232ca2429fe8b2f94341a4e3f724571588.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91592bfc-5a84-541c-a658-461266d9a981', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50f32eab4ccbe4c9a65b04246ade4b4afb9aab16a824d9a1bb8c9fb3ce7c4812'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f1b5d05-05f2-5669-a06c-d0facb907802', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91592bfc-5a84-541c-a658-461266d9a981', 1), '50f32eab4ccbe4c9a65b04246ade4b4afb9aab16a824d9a1bb8c9fb3ce7c4812',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8ad55c02bc837304222642d52fc139232ca2429fe8b2f94341a4e3f724571588.mp3', 7288, '2026-09-13 10:20:29.580362', '59a740d60e88798dedf5e28dd02124ffd64833b7996fdc46e5d7ab974eaded3a', 'validated', '{"audio_key":"8ad55c02bc837304222642d52fc139232ca2429fe8b2f94341a4e3f724571588","entity_key":"d_strategic_alignment_capstone_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"59a740d60e88798dedf5e28dd02124ffd64833b7996fdc46e5d7ab974eaded3a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8ad55c02bc837304222642d52fc139232ca2429fe8b2f94341a4e3f724571588.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_01:2 -> audio/generated/de-DE/dialogues/8c23ae30e64ce9303e0ca7e47dfc95b436d6d51388a20d226ca3e9f2fd7780b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c56cf8bc-0dbc-5b17-9c57-6bc3538c802f', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79d6047d8da3e0419a6d4a77b41026bd2c22f795af950dd36fb4d75a7de285c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2897145-4488-5d8a-bbba-d84624eb0050', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c56cf8bc-0dbc-5b17-9c57-6bc3538c802f', 1), '79d6047d8da3e0419a6d4a77b41026bd2c22f795af950dd36fb4d75a7de285c4',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c23ae30e64ce9303e0ca7e47dfc95b436d6d51388a20d226ca3e9f2fd7780b5.mp3', 4963, '2026-09-13 10:20:30.273736', '4cb607b6b7f8283125415aaddf86e8d461c01275e7cb89d617ae15fe6ac1199a', 'validated', '{"audio_key":"8c23ae30e64ce9303e0ca7e47dfc95b436d6d51388a20d226ca3e9f2fd7780b5","entity_key":"d_change_communication_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4cb607b6b7f8283125415aaddf86e8d461c01275e7cb89d617ae15fe6ac1199a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8c23ae30e64ce9303e0ca7e47dfc95b436d6d51388a20d226ca3e9f2fd7780b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_01:1 -> audio/generated/de-DE/dialogues/8cafb43b5cf24fb3c5ba215e0a60f67f3016dd559d31d5d9a15b4c5fcf9105b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5503312-c388-5cbd-83de-76cafc521c84', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48d55ebd1c84bdf271d6e9b5c3b25e2dec89ab10e2859181fa3d3e6a3a2b8940'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3275b321-1f7c-5677-9b74-93c5ec4a93a2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5503312-c388-5cbd-83de-76cafc521c84', 1), '48d55ebd1c84bdf271d6e9b5c3b25e2dec89ab10e2859181fa3d3e6a3a2b8940',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8cafb43b5cf24fb3c5ba215e0a60f67f3016dd559d31d5d9a15b4c5fcf9105b8.mp3', 4858, '2026-09-13 10:20:30.999693', '66b02ee725cb0b50aac9b91e58f10ebb7f9377104c454a09150494917793f2e0', 'validated', '{"audio_key":"8cafb43b5cf24fb3c5ba215e0a60f67f3016dd559d31d5d9a15b4c5fcf9105b8","entity_key":"d_conflict_mediation_power_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"66b02ee725cb0b50aac9b91e58f10ebb7f9377104c454a09150494917793f2e0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8cafb43b5cf24fb3c5ba215e0a60f67f3016dd559d31d5d9a15b4c5fcf9105b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_02:3 -> audio/generated/de-DE/dialogues/93ae40eb6aead8e9f29382c9b85c394f539f82cd7edaa7313ad006d83e2e0b57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26d20cd4-9157-5219-977f-25219baf6769', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46a13a707d6c632452f473ec1ad048144ffd612ed46fa4078b68b714c164dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01d1d40c-6c09-502a-92f0-fbb07f066fed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26d20cd4-9157-5219-977f-25219baf6769', 1), '46a13a707d6c632452f473ec1ad048144ffd612ed46fa4078b68b714c164dcf4',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/93ae40eb6aead8e9f29382c9b85c394f539f82cd7edaa7313ad006d83e2e0b57.mp3', 5015, '2026-09-13 10:20:31.784771', '61e6e19cdb790cda7cedf67fc6e0fd1a98ae3da80291ea1c3d38e80b95972356', 'validated', '{"audio_key":"93ae40eb6aead8e9f29382c9b85c394f539f82cd7edaa7313ad006d83e2e0b57","entity_key":"d_data_interpretation_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61e6e19cdb790cda7cedf67fc6e0fd1a98ae3da80291ea1c3d38e80b95972356","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/93ae40eb6aead8e9f29382c9b85c394f539f82cd7edaa7313ad006d83e2e0b57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_03:2 -> audio/generated/de-DE/dialogues/943370b6a4620a4d8089a26a969af661feeb86c1e9158346ade3a95e1ef16f97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cfb4f751-3402-5fe0-a204-bb3db8d5ad2b', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d4531afc60771ae02e0bbffbea5cd5c715887a875e49fd00577ebefc55f68c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5057a12c-1652-5288-a261-10e81aaa59e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cfb4f751-3402-5fe0-a204-bb3db8d5ad2b', 1), '9d4531afc60771ae02e0bbffbea5cd5c715887a875e49fd00577ebefc55f68c1',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/943370b6a4620a4d8089a26a969af661feeb86c1e9158346ade3a95e1ef16f97.mp3', 4728, '2026-09-13 10:20:32.401679', 'b05d99cc02a491e9f3ec637a01e681646c50fea37b7d6d45031e025ca0474313', 'validated', '{"audio_key":"943370b6a4620a4d8089a26a969af661feeb86c1e9158346ade3a95e1ef16f97","entity_key":"d_meeting_facilitation_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b05d99cc02a491e9f3ec637a01e681646c50fea37b7d6d45031e025ca0474313","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/943370b6a4620a4d8089a26a969af661feeb86c1e9158346ade3a95e1ef16f97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_02:4 -> audio/generated/de-DE/dialogues/947fcbd642d9d50a154b06c678e06b40e21bacd2553d8387498e617628eb52c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f63e66d-4248-50b3-8bf6-aed3c88f7cc0', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1df943b5aa963c660d9662b1d3e313319fdf9be3652464bee4c0f5b1e62fa039'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aa29ac7-5d4f-593b-8560-5aea04ba545e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f63e66d-4248-50b3-8bf6-aed3c88f7cc0', 1), '1df943b5aa963c660d9662b1d3e313319fdf9be3652464bee4c0f5b1e62fa039',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/947fcbd642d9d50a154b06c678e06b40e21bacd2553d8387498e617628eb52c2.mp3', 3578, '2026-09-13 10:20:33.059903', '6e4c2ff0f599dd40fb696d6e978f31d2a3761ef1028266e2bb12eb1c9b4ff29e', 'validated', '{"audio_key":"947fcbd642d9d50a154b06c678e06b40e21bacd2553d8387498e617628eb52c2","entity_key":"d_partnership_negotiation_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6e4c2ff0f599dd40fb696d6e978f31d2a3761ef1028266e2bb12eb1c9b4ff29e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/947fcbd642d9d50a154b06c678e06b40e21bacd2553d8387498e617628eb52c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_03:2 -> audio/generated/de-DE/dialogues/94f04c4f246f650a0e6ee412deefc9c9ca168dcffd3283655105a0380a2c0de6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cfe1e259-b7b1-593d-9ee3-0e0b4c73ee1c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f301d4e443739096034aa41cd79b62632b0008dc6b701fc933d240607c87514'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a992ada1-5982-59ad-866b-8f24149b12fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cfe1e259-b7b1-593d-9ee3-0e0b4c73ee1c', 1), '1f301d4e443739096034aa41cd79b62632b0008dc6b701fc933d240607c87514',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/94f04c4f246f650a0e6ee412deefc9c9ca168dcffd3283655105a0380a2c0de6.mp3', 5982, '2026-09-13 10:20:33.965646', '5d155367f301bf017772f358e3e7e7b166e5ba1fe28819cee1da21288411757c', 'validated', '{"audio_key":"94f04c4f246f650a0e6ee412deefc9c9ca168dcffd3283655105a0380a2c0de6","entity_key":"d_scenario_planning_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5d155367f301bf017772f358e3e7e7b166e5ba1fe28819cee1da21288411757c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/94f04c4f246f650a0e6ee412deefc9c9ca168dcffd3283655105a0380a2c0de6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_01:3 -> audio/generated/de-DE/dialogues/94fdfedcee7357947a3ffa4310270be9a449d2d61db20786989da8812c46c8e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5cfe3e8e-ca37-593d-a54c-9c6ae44e9919', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b81ac84f7ae8af9292450bc840dc849142aaeb0d2d4fefff9e80dd360603179'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c368f41c-096f-5929-ae7a-e10c7ae82f03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5cfe3e8e-ca37-593d-a54c-9c6ae44e9919', 1), '1b81ac84f7ae8af9292450bc840dc849142aaeb0d2d4fefff9e80dd360603179',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/94fdfedcee7357947a3ffa4310270be9a449d2d61db20786989da8812c46c8e1.mp3', 5694, '2026-09-13 10:20:34.609802', '32ab042f726c5c9d352c333ecb72bb1c2f8ba68df62608e25fc158c6bb345585', 'validated', '{"audio_key":"94fdfedcee7357947a3ffa4310270be9a449d2d61db20786989da8812c46c8e1","entity_key":"d_change_communication_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"32ab042f726c5c9d352c333ecb72bb1c2f8ba68df62608e25fc158c6bb345585","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/94fdfedcee7357947a3ffa4310270be9a449d2d61db20786989da8812c46c8e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_01:4 -> audio/generated/de-DE/dialogues/957d440471fc08a79c912761e54a288f8c17ee8e0426dc4d04c0cca0c16e9357.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4593cd1-21c4-557d-ae5a-4f2b082114fd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '706c78cb96f67bcf3574c86e82d77e4eb17159d1b6b63a65adab233bc7f84f91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c30566e1-af6b-5f93-b393-30d9ea166783', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4593cd1-21c4-557d-ae5a-4f2b082114fd', 1), '706c78cb96f67bcf3574c86e82d77e4eb17159d1b6b63a65adab233bc7f84f91',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/957d440471fc08a79c912761e54a288f8c17ee8e0426dc4d04c0cca0c16e9357.mp3', 4205, '2026-09-13 10:20:35.304331', '6a330386a869d0de5fa04041e6a2761a441cc842bfe01c01d29e1ee142b9a452', 'validated', '{"audio_key":"957d440471fc08a79c912761e54a288f8c17ee8e0426dc4d04c0cca0c16e9357","entity_key":"d_meeting_facilitation_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6a330386a869d0de5fa04041e6a2761a441cc842bfe01c01d29e1ee142b9a452","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/957d440471fc08a79c912761e54a288f8c17ee8e0426dc4d04c0cca0c16e9357.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_alignment_capstone_02:1 -> audio/generated/de-DE/dialogues/95e74f2a4788888c3e1be461d62f928baeb3e9441908aad301fa0c4476715a03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45a3b06c-c2b4-5b9b-a252-8d42d28bba5b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_alignment_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1699f3e1423614af59193a9f50ea7bb0a490336b220925ec99bf120e510c13ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea3a8cc3-3d03-51d8-8b8e-c953d05a2d4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45a3b06c-c2b4-5b9b-a252-8d42d28bba5b', 1), '1699f3e1423614af59193a9f50ea7bb0a490336b220925ec99bf120e510c13ad',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/95e74f2a4788888c3e1be461d62f928baeb3e9441908aad301fa0c4476715a03.mp3', 3996, '2026-09-13 10:20:36.013190', '6a352dced5c31629517e2950b54808fd3b488e2d3cf88ab2c9fc64de392fd351', 'validated', '{"audio_key":"95e74f2a4788888c3e1be461d62f928baeb3e9441908aad301fa0c4476715a03","entity_key":"d_strategic_alignment_capstone_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6a352dced5c31629517e2950b54808fd3b488e2d3cf88ab2c9fc64de392fd351","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/95e74f2a4788888c3e1be461d62f928baeb3e9441908aad301fa0c4476715a03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_03:4 -> audio/generated/de-DE/dialogues/99a0f378e06f49653a1c9cf0b530af1255b53c8ac533a921f7fdee37a55f9789.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6b1738b-a78d-57fc-9677-a9399a27faa1', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2a6f9dbdf258db1494fda4dfa9d246662da6f61be60a639c9130284b022c7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d56f0f43-52b5-5636-823e-aab375af7a26', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6b1738b-a78d-57fc-9677-a9399a27faa1', 1), '2c2a6f9dbdf258db1494fda4dfa9d246662da6f61be60a639c9130284b022c7d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99a0f378e06f49653a1c9cf0b530af1255b53c8ac533a921f7fdee37a55f9789.mp3', 3657, '2026-09-13 10:20:36.592734', '13dbac0a1a4dc7e5dd22236cf1800e2f5884e9f07a6a0bd6fa1be9b00993c0d4', 'validated', '{"audio_key":"99a0f378e06f49653a1c9cf0b530af1255b53c8ac533a921f7fdee37a55f9789","entity_key":"d_expert_interviews_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"13dbac0a1a4dc7e5dd22236cf1800e2f5884e9f07a6a0bd6fa1be9b00993c0d4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/99a0f378e06f49653a1c9cf0b530af1255b53c8ac533a921f7fdee37a55f9789.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_01:1 -> audio/generated/de-DE/dialogues/9e727b2fffb3a59ac8374d5cfdd7cafcce2d30c840002c1d78738fd07737bd70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d6e7ce1-056b-5d25-acb2-8ac93c76c696', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15e69f71e6f8af591ed968a93f1fdecc38a33a94c160b4431cb84388537a80e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e3dcbb6-3eb4-5ff0-ba6e-f178bc68602f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d6e7ce1-056b-5d25-acb2-8ac93c76c696', 1), '15e69f71e6f8af591ed968a93f1fdecc38a33a94c160b4431cb84388537a80e1',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e727b2fffb3a59ac8374d5cfdd7cafcce2d30c840002c1d78738fd07737bd70.mp3', 3526, '2026-09-13 10:20:37.274951', 'bf056814e755695147b883250674f1c3981e565d0c613147b1dc28a6dc611ed6', 'validated', '{"audio_key":"9e727b2fffb3a59ac8374d5cfdd7cafcce2d30c840002c1d78738fd07737bd70","entity_key":"d_expert_interviews_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bf056814e755695147b883250674f1c3981e565d0c613147b1dc28a6dc611ed6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9e727b2fffb3a59ac8374d5cfdd7cafcce2d30c840002c1d78738fd07737bd70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_03:1 -> audio/generated/de-DE/dialogues/a2038ebff1fc85f052bb13175f77562fb73556275e085e12e485ac477f0f6825.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f070867f-f97a-5564-8608-0d17dc8b0f98', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53ac2368e26bcea8ac0f248bccdbcf10444d1c79a82dd82bd78a70c6f96bb631'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('288ae5a4-bd73-588f-b70b-4baae37299d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f070867f-f97a-5564-8608-0d17dc8b0f98', 1), '53ac2368e26bcea8ac0f248bccdbcf10444d1c79a82dd82bd78a70c6f96bb631',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a2038ebff1fc85f052bb13175f77562fb73556275e085e12e485ac477f0f6825.mp3', 6086, '2026-09-13 10:20:38.182889', '435d26c84327d8af9d21d8544b88a1a6ccc087ae71f7a3a3c74214bdde6d1cf9', 'validated', '{"audio_key":"a2038ebff1fc85f052bb13175f77562fb73556275e085e12e485ac477f0f6825","entity_key":"d_executive_presentations_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"435d26c84327d8af9d21d8544b88a1a6ccc087ae71f7a3a3c74214bdde6d1cf9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a2038ebff1fc85f052bb13175f77562fb73556275e085e12e485ac477f0f6825.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_03:1 -> audio/generated/de-DE/dialogues/a25b1e57da75b4c0b769da1a128493c6f5af98db9dc1fe2325c8e9e68ab5e1a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('260bd476-e2dd-56b6-afe6-3fee12892f70', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0686d4c12a3ff5fef4526a823bf1aca4a96a09b0326c24a631c8448d8899b1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b9c534a-63bd-5c0b-9534-7c79677a5686', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('260bd476-e2dd-56b6-afe6-3fee12892f70', 1), 'a0686d4c12a3ff5fef4526a823bf1aca4a96a09b0326c24a631c8448d8899b1a',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a25b1e57da75b4c0b769da1a128493c6f5af98db9dc1fe2325c8e9e68ab5e1a9.mp3', 4257, '2026-09-13 10:20:38.623926', 'ccf13fa59b970c31771d2b3bc1eaaabd6d3ba032ee17b887215b4237d9b4b83a', 'validated', '{"audio_key":"a25b1e57da75b4c0b769da1a128493c6f5af98db9dc1fe2325c8e9e68ab5e1a9","entity_key":"d_data_interpretation_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ccf13fa59b970c31771d2b3bc1eaaabd6d3ba032ee17b887215b4237d9b4b83a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a25b1e57da75b4c0b769da1a128493c6f5af98db9dc1fe2325c8e9e68ab5e1a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_02:2 -> audio/generated/de-DE/dialogues/a49001c0050d3e590a762fea1ca4d5d2dffc94a02f8d297b1dc4753afcbaaa2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('21aaf6e1-aed3-53e8-aac8-d6d438e972ac', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645ada0160df2fd3e499f0244743149d49dc81d9c8daacbc2a54175ccbea9c26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53f8f7f4-31e0-5c25-9fbe-6e725245a09e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('21aaf6e1-aed3-53e8-aac8-d6d438e972ac', 1), '645ada0160df2fd3e499f0244743149d49dc81d9c8daacbc2a54175ccbea9c26',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a49001c0050d3e590a762fea1ca4d5d2dffc94a02f8d297b1dc4753afcbaaa2a.mp3', 9012, '2026-09-13 10:20:40.112442', 'a94bd85fb225533308207bada0df12c5238b7e545cea3c88673dcc0c552b6260', 'validated', '{"audio_key":"a49001c0050d3e590a762fea1ca4d5d2dffc94a02f8d297b1dc4753afcbaaa2a","entity_key":"d_partnership_negotiation_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a94bd85fb225533308207bada0df12c5238b7e545cea3c88673dcc0c552b6260","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a49001c0050d3e590a762fea1ca4d5d2dffc94a02f8d297b1dc4753afcbaaa2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_03:3 -> audio/generated/de-DE/dialogues/a8c9233ac21986cb4e8b927fd3326a41b145ff11df574f71fb9d89fd4740af3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eac4e2b4-a7c3-5e31-8f83-90f83773a4cf', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4fbc7f5e01c40a111c4cf52b3dbb1dcf276b59988b4c0dcc2b02b7931687261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b24c5f7-0112-58e6-9fc2-9427c78df2a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eac4e2b4-a7c3-5e31-8f83-90f83773a4cf', 1), 'a4fbc7f5e01c40a111c4cf52b3dbb1dcf276b59988b4c0dcc2b02b7931687261',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8c9233ac21986cb4e8b927fd3326a41b145ff11df574f71fb9d89fd4740af3b.mp3', 5328, '2026-09-13 10:20:40.132939', '4bddc8aa8ccc251673e29a1174dd32c723088fcc695bc36911af35ea40abc926', 'validated', '{"audio_key":"a8c9233ac21986cb4e8b927fd3326a41b145ff11df574f71fb9d89fd4740af3b","entity_key":"d_change_communication_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4bddc8aa8ccc251673e29a1174dd32c723088fcc695bc36911af35ea40abc926","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a8c9233ac21986cb4e8b927fd3326a41b145ff11df574f71fb9d89fd4740af3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_02:1 -> audio/generated/de-DE/dialogues/ab38522012360c6ff234d744e77d459b7d3769e882a2ec22e7d031d5cd1bc79b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e87ca97-47ca-529c-b973-7e240b056bc8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec786312b4e988a800f26afca4f11001a85ab22e259edb0df28c3662bba995d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3afd9969-60f7-54d2-b1fe-7dea5ce2afb5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e87ca97-47ca-529c-b973-7e240b056bc8', 1), 'ec786312b4e988a800f26afca4f11001a85ab22e259edb0df28c3662bba995d6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ab38522012360c6ff234d744e77d459b7d3769e882a2ec22e7d031d5cd1bc79b.mp3', 4963, '2026-09-13 10:20:41.570629', '3bcd16bd1f5eeb7aa9b8d88c21ceb75d55886bacb267d812308b898faa4b14e4', 'validated', '{"audio_key":"ab38522012360c6ff234d744e77d459b7d3769e882a2ec22e7d031d5cd1bc79b","entity_key":"d_scenario_planning_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3bcd16bd1f5eeb7aa9b8d88c21ceb75d55886bacb267d812308b898faa4b14e4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ab38522012360c6ff234d744e77d459b7d3769e882a2ec22e7d031d5cd1bc79b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_01:2 -> audio/generated/de-DE/dialogues/ae537572875c15f141a8f682f33f1858e957117e96e3123c7b397828e7ac7826.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e93c016c-9b6f-53a1-aed7-06843b219559', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e70e26e25863dba4d1c1398a134fd17c1fc52c62df5fd798ca1f057ac189b0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b88e51df-b3d3-54a4-afec-a89379a78cc7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e93c016c-9b6f-53a1-aed7-06843b219559', 1), '4e70e26e25863dba4d1c1398a134fd17c1fc52c62df5fd798ca1f057ac189b0a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ae537572875c15f141a8f682f33f1858e957117e96e3123c7b397828e7ac7826.mp3', 3892, '2026-09-13 10:20:41.492674', 'a92af43d1547d03a357ace6d7d6d6e56cbb77bd1481f90a2c834255d8e8cc613', 'validated', '{"audio_key":"ae537572875c15f141a8f682f33f1858e957117e96e3123c7b397828e7ac7826","entity_key":"d_data_interpretation_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"a92af43d1547d03a357ace6d7d6d6e56cbb77bd1481f90a2c834255d8e8cc613","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ae537572875c15f141a8f682f33f1858e957117e96e3123c7b397828e7ac7826.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_03:4 -> audio/generated/de-DE/dialogues/afe1256d0087dee47cbe21dc0aef089e820f3496ab559ce21570747af3f9ba4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b87bf134-04dc-50e2-891b-7e402dac11ce', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ba6f7f7864319fcaf11cc32e440cbe2366472f1e72e82dbd573d076804c3802'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f8dfa98-5a30-547f-a019-91685a316162', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b87bf134-04dc-50e2-891b-7e402dac11ce', 1), '9ba6f7f7864319fcaf11cc32e440cbe2366472f1e72e82dbd573d076804c3802',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/afe1256d0087dee47cbe21dc0aef089e820f3496ab559ce21570747af3f9ba4e.mp3', 6217, '2026-09-13 10:20:43.106286', 'aa79574fb2e60713f96095fbb4fa57c190798ed47124718b60cd46af59f94737', 'validated', '{"audio_key":"afe1256d0087dee47cbe21dc0aef089e820f3496ab559ce21570747af3f9ba4e","entity_key":"d_proposal_writing_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"aa79574fb2e60713f96095fbb4fa57c190798ed47124718b60cd46af59f94737","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/afe1256d0087dee47cbe21dc0aef089e820f3496ab559ce21570747af3f9ba4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_01:2 -> audio/generated/de-DE/dialogues/b29edd3b744f35eea728e61785557cf0224a63c4836e9dc2ba692f46e6cbe115.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30f59289-a92e-5481-9d34-7efd1673ebce', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0216a2cd64af88f76990be8a271dfc64b91d1451f6ded38820b645dc76f13bb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70e5a76d-c96e-55ca-8ec9-346e3cd3c769', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30f59289-a92e-5481-9d34-7efd1673ebce', 1), '0216a2cd64af88f76990be8a271dfc64b91d1451f6ded38820b645dc76f13bb4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b29edd3b744f35eea728e61785557cf0224a63c4836e9dc2ba692f46e6cbe115.mp3', 5041, '2026-09-13 10:20:43.061796', '49833d9a4325c1dc846a17e89b4748d0e205a1f8a9bc7128ae8d348d3dddb2c8', 'validated', '{"audio_key":"b29edd3b744f35eea728e61785557cf0224a63c4836e9dc2ba692f46e6cbe115","entity_key":"d_scenario_planning_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"49833d9a4325c1dc846a17e89b4748d0e205a1f8a9bc7128ae8d348d3dddb2c8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b29edd3b744f35eea728e61785557cf0224a63c4836e9dc2ba692f46e6cbe115.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_01:3 -> audio/generated/de-DE/dialogues/b5f20b67fc099002f3517e65ae44088580a6b2edf54b6abdc4405e9849e0a6b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d958e08f-d461-5c5f-af28-4e4aa85fe223', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '744425fb84d5c22b81282524981b8163045b4f45a15c1e4f5bc9715c456f0803'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03b8286b-3aff-5817-98d8-8d0d1f82617b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d958e08f-d461-5c5f-af28-4e4aa85fe223', 1), '744425fb84d5c22b81282524981b8163045b4f45a15c1e4f5bc9715c456f0803',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b5f20b67fc099002f3517e65ae44088580a6b2edf54b6abdc4405e9849e0a6b2.mp3', 6948, '2026-09-13 10:20:44.731875', '095f43baf87ff8762a6199dcad4e51839d004d021dbf3f83dfe269bc90d05362', 'validated', '{"audio_key":"b5f20b67fc099002f3517e65ae44088580a6b2edf54b6abdc4405e9849e0a6b2","entity_key":"d_conflict_mediation_power_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"095f43baf87ff8762a6199dcad4e51839d004d021dbf3f83dfe269bc90d05362","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b5f20b67fc099002f3517e65ae44088580a6b2edf54b6abdc4405e9849e0a6b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_02:3 -> audio/generated/de-DE/dialogues/b6791c9c646f727355e375845af9e9fb673f071a01d8211091849022f8fe9fe3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('352ebde3-3724-50d2-b6bb-e2b310867929', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ede219db239c532529e35eb04b9e3e3e28bf2ded2d8f53bf77aaab582b0f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c552dae2-0928-5d13-8a30-a0531191e58b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('352ebde3-3724-50d2-b6bb-e2b310867929', 1), '28ede219db239c532529e35eb04b9e3e3e28bf2ded2d8f53bf77aaab582b0f2d',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b6791c9c646f727355e375845af9e9fb673f071a01d8211091849022f8fe9fe3.mp3', 6400, '2026-09-13 10:20:44.800138', '8dc9870c3c96f01ba8132893c4d7547bf57126412fec63cbe578182aa16e9f44', 'validated', '{"audio_key":"b6791c9c646f727355e375845af9e9fb673f071a01d8211091849022f8fe9fe3","entity_key":"d_scenario_planning_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8dc9870c3c96f01ba8132893c4d7547bf57126412fec63cbe578182aa16e9f44","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b6791c9c646f727355e375845af9e9fb673f071a01d8211091849022f8fe9fe3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_01:2 -> audio/generated/de-DE/dialogues/b7b4dfa5082ff573b4cac54a268f2f4f6506f163b1c5efc21868ed696b9b3066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48d2910a-f685-5edf-9af0-f9b42c0ad693', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d847822be4b20ae4b51818a9899684b34a0c9f6918f3cc46cc2032de6006e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c056bd0-8841-5add-a3ae-d4ca59a680b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48d2910a-f685-5edf-9af0-f9b42c0ad693', 1), 'e5d847822be4b20ae4b51818a9899684b34a0c9f6918f3cc46cc2032de6006e1',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b7b4dfa5082ff573b4cac54a268f2f4f6506f163b1c5efc21868ed696b9b3066.mp3', 8019, '2026-09-13 10:20:46.554805', '4e1e42ec424eddf80b91ef1c027d5a9d4025d5ca78adffc89bbabac0c5e74e2d', 'validated', '{"audio_key":"b7b4dfa5082ff573b4cac54a268f2f4f6506f163b1c5efc21868ed696b9b3066","entity_key":"d_conflict_mediation_power_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e1e42ec424eddf80b91ef1c027d5a9d4025d5ca78adffc89bbabac0c5e74e2d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b7b4dfa5082ff573b4cac54a268f2f4f6506f163b1c5efc21868ed696b9b3066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_03:3 -> audio/generated/de-DE/dialogues/bbefe6209b23398f31db9c1b9dc36e28b07eea2f574370f66e8161d460355ce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3080c228-1876-5f7c-9663-6e007d9ecd37', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f24c0aaf26b2b5397d40416607f1978528ee0d3436f330bcee2d70451577acc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad67e4d3-ffdc-50c0-b839-6707edaaf7ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3080c228-1876-5f7c-9663-6e007d9ecd37', 1), 'f24c0aaf26b2b5397d40416607f1978528ee0d3436f330bcee2d70451577acc9',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bbefe6209b23398f31db9c1b9dc36e28b07eea2f574370f66e8161d460355ce7.mp3', 7549, '2026-09-13 10:20:46.547219', 'f38d322036cf5e089dcaa67577ce9d4ff477c91824fe91924a673b0944672447', 'validated', '{"audio_key":"bbefe6209b23398f31db9c1b9dc36e28b07eea2f574370f66e8161d460355ce7","entity_key":"d_data_interpretation_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f38d322036cf5e089dcaa67577ce9d4ff477c91824fe91924a673b0944672447","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bbefe6209b23398f31db9c1b9dc36e28b07eea2f574370f66e8161d460355ce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_01:3 -> audio/generated/de-DE/dialogues/bc3bc9e463f5eb7575345a39acd8b81f272976735607f40a41806ad4b5c89fbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('810bd463-067d-50fc-b9d4-3c15badfa0b8', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc79314fc8ed0cb4dd8f193be7985edb7b4d232c81e68783683a41a4036b3fd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7e288a1-c1c7-5080-86ae-712bbc7b54c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('810bd463-067d-50fc-b9d4-3c15badfa0b8', 1), 'fc79314fc8ed0cb4dd8f193be7985edb7b4d232c81e68783683a41a4036b3fd2',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bc3bc9e463f5eb7575345a39acd8b81f272976735607f40a41806ad4b5c89fbf.mp3', 5198, '2026-09-13 10:20:48.045858', '4260a809262688c8702e9a4fd2f5bde93aa5cf89601c0ad8efb06fec88f02b59', 'validated', '{"audio_key":"bc3bc9e463f5eb7575345a39acd8b81f272976735607f40a41806ad4b5c89fbf","entity_key":"d_scenario_planning_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4260a809262688c8702e9a4fd2f5bde93aa5cf89601c0ad8efb06fec88f02b59","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/bc3bc9e463f5eb7575345a39acd8b81f272976735607f40a41806ad4b5c89fbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_03:1 -> audio/generated/de-DE/dialogues/bfe0bf6f5100bea6cbcd4c769febf71157b5f5c8aa269a92ee4efc179575e777.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26ba6f1f-6adc-5643-8834-6affb5550c94', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82d4656b83bb9bfc9349e245c335631cafe3d1cd1e5f85f49cdf5913f2a03408'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dee335e5-3139-50b9-ab08-a33480240132', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26ba6f1f-6adc-5643-8834-6affb5550c94', 1), '82d4656b83bb9bfc9349e245c335631cafe3d1cd1e5f85f49cdf5913f2a03408',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bfe0bf6f5100bea6cbcd4c769febf71157b5f5c8aa269a92ee4efc179575e777.mp3', 6713, '2026-09-13 10:20:48.273651', 'ee211bfa1645c9164a3e6023e3bdd6743fa19bb14e392e3dcac9015695d636d0', 'validated', '{"audio_key":"bfe0bf6f5100bea6cbcd4c769febf71157b5f5c8aa269a92ee4efc179575e777","entity_key":"d_expert_interviews_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ee211bfa1645c9164a3e6023e3bdd6743fa19bb14e392e3dcac9015695d636d0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bfe0bf6f5100bea6cbcd4c769febf71157b5f5c8aa269a92ee4efc179575e777.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_02:3 -> audio/generated/de-DE/dialogues/c237e47819ad95cf77ebc19ba16bc43f109124cfb2d56660c9a9efa96e9e5049.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('004f5650-f5c8-510b-bd9f-38251e3a24f5', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60132cf5b5b9a5bedae4a752f0ed4e8ce94748c274a2d76b25f6690a913534df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23414597-9fbd-5939-9914-a9f3a1798ead', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('004f5650-f5c8-510b-bd9f-38251e3a24f5', 1), '60132cf5b5b9a5bedae4a752f0ed4e8ce94748c274a2d76b25f6690a913534df',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c237e47819ad95cf77ebc19ba16bc43f109124cfb2d56660c9a9efa96e9e5049.mp3', 4832, '2026-09-13 10:20:49.519723', '07b5bec09e9bf8324ba9a1adef14e4a2179559c9f810ec93e5c29357d543ead5', 'validated', '{"audio_key":"c237e47819ad95cf77ebc19ba16bc43f109124cfb2d56660c9a9efa96e9e5049","entity_key":"d_conflict_mediation_power_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"07b5bec09e9bf8324ba9a1adef14e4a2179559c9f810ec93e5c29357d543ead5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c237e47819ad95cf77ebc19ba16bc43f109124cfb2d56660c9a9efa96e9e5049.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_03:4 -> audio/generated/de-DE/dialogues/c23ab6f249f3426ce363ac53a4b35dc1bbde0203f06300fef05c104e40382c80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6043a9e-7cf3-5a52-9061-1471cd2e6199', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efb7b6a31b74c6fdf5f8f188659f57ee67666868d9b9b2a6d3ac461f2b417376'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c9ab8a8-d476-5448-958d-e314bde87c37', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6043a9e-7cf3-5a52-9061-1471cd2e6199', 1), 'efb7b6a31b74c6fdf5f8f188659f57ee67666868d9b9b2a6d3ac461f2b417376',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c23ab6f249f3426ce363ac53a4b35dc1bbde0203f06300fef05c104e40382c80.mp3', 4205, '2026-09-13 10:20:49.603092', '443ea97f10b957b222db51262ac908060ff8e69ee92858f529e79746ce6a7a37', 'validated', '{"audio_key":"c23ab6f249f3426ce363ac53a4b35dc1bbde0203f06300fef05c104e40382c80","entity_key":"d_change_communication_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"443ea97f10b957b222db51262ac908060ff8e69ee92858f529e79746ce6a7a37","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c23ab6f249f3426ce363ac53a4b35dc1bbde0203f06300fef05c104e40382c80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_01:1 -> audio/generated/de-DE/dialogues/c256f819db367cec8625844cdeda4d98d5d0b5a839bb696a77c000bd620f94ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70a4cc78-bd63-521f-992d-4d0790fbb6d2', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c7641b195719dc00847dac615d9da22c3a0ff1ba6a2eb6834004e9c89cd3729'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15c44bbb-7b2a-50f7-9b37-65550ed3d260', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70a4cc78-bd63-521f-992d-4d0790fbb6d2', 1), '7c7641b195719dc00847dac615d9da22c3a0ff1ba6a2eb6834004e9c89cd3729',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c256f819db367cec8625844cdeda4d98d5d0b5a839bb696a77c000bd620f94ec.mp3', 4780, '2026-09-13 10:20:51.049339', 'fbb6f5e56ca124d9454151008f20922aac1abc2a75d4e8fd82786bfe20172730', 'validated', '{"audio_key":"c256f819db367cec8625844cdeda4d98d5d0b5a839bb696a77c000bd620f94ec","entity_key":"d_partnership_negotiation_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fbb6f5e56ca124d9454151008f20922aac1abc2a75d4e8fd82786bfe20172730","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c256f819db367cec8625844cdeda4d98d5d0b5a839bb696a77c000bd620f94ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_02:2 -> audio/generated/de-DE/dialogues/c565cf29a3ccefbaea250760a0a424954219a6ff420b23150320393c95f0bb03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64debb08-f31a-5ad4-a3ce-63ee2504aec0', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0530c7d1cf6adbc356daff893aa8d5a8462a7737db5bf541ef9c2e3ad003f19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4632ff0-488c-5367-bff1-8383f3fb35af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64debb08-f31a-5ad4-a3ce-63ee2504aec0', 1), 'a0530c7d1cf6adbc356daff893aa8d5a8462a7737db5bf541ef9c2e3ad003f19',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c565cf29a3ccefbaea250760a0a424954219a6ff420b23150320393c95f0bb03.mp3', 4414, '2026-09-13 10:20:51.225189', '581161152ba55d49df16df1963a7dbe4f3db6305b3994bb1d3034ad244ca5698', 'validated', '{"audio_key":"c565cf29a3ccefbaea250760a0a424954219a6ff420b23150320393c95f0bb03","entity_key":"d_data_interpretation_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"581161152ba55d49df16df1963a7dbe4f3db6305b3994bb1d3034ad244ca5698","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c565cf29a3ccefbaea250760a0a424954219a6ff420b23150320393c95f0bb03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_03:3 -> audio/generated/de-DE/dialogues/c76dfbbb336732bc82b93a31f091c41875507edf972b7c1ee50fbc2e5b8dc819.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6a9c689-9269-5e28-ae6e-99e958c01173', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e5667faf2b18cb8298395a5d92f9eff9557cefa3780cb6c7b21391387d31757'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d446841-e6da-512e-badc-995328ed8b58', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6a9c689-9269-5e28-ae6e-99e958c01173', 1), '3e5667faf2b18cb8298395a5d92f9eff9557cefa3780cb6c7b21391387d31757',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c76dfbbb336732bc82b93a31f091c41875507edf972b7c1ee50fbc2e5b8dc819.mp3', 3369, '2026-09-13 10:20:52.290163', '77aee45b8854256c38482356f87231b95eac319baa44634ac3e5a0a01ce35dac', 'validated', '{"audio_key":"c76dfbbb336732bc82b93a31f091c41875507edf972b7c1ee50fbc2e5b8dc819","entity_key":"d_meeting_facilitation_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"77aee45b8854256c38482356f87231b95eac319baa44634ac3e5a0a01ce35dac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c76dfbbb336732bc82b93a31f091c41875507edf972b7c1ee50fbc2e5b8dc819.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_03:2 -> audio/generated/de-DE/dialogues/c99b5b72a977c5c608a05117901cd91c9560a4e6b9fce79b16dd7b2e8a7b154a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99a76152-1499-5ba3-8ad4-f06057bbeab1', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1425f09ec20c801c3279f858a51329ea72b624eacc4811fa95becd8530b50bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('073c1942-1688-5838-85e1-3a9ad6b9c272', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99a76152-1499-5ba3-8ad4-f06057bbeab1', 1), 'b1425f09ec20c801c3279f858a51329ea72b624eacc4811fa95becd8530b50bd',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c99b5b72a977c5c608a05117901cd91c9560a4e6b9fce79b16dd7b2e8a7b154a.mp3', 5250, '2026-09-13 10:20:52.683018', 'b82367498752f70be394977b24cd4f357ef2a066758b5ba3011a66e04794954e', 'validated', '{"audio_key":"c99b5b72a977c5c608a05117901cd91c9560a4e6b9fce79b16dd7b2e8a7b154a","entity_key":"d_change_communication_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b82367498752f70be394977b24cd4f357ef2a066758b5ba3011a66e04794954e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c99b5b72a977c5c608a05117901cd91c9560a4e6b9fce79b16dd7b2e8a7b154a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_03:3 -> audio/generated/de-DE/dialogues/ccf25980db41e92016be84dd61890be5d4ef26cc5f8d09134f46036deb924b98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d5b6f14-f81f-579e-b3b3-6baf9c299dcb', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdf1485db5b101fda9e9896baeedd9b5d843a6b633854e5587231763eb820263'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9471c185-34ce-549c-b460-66e49a0165cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d5b6f14-f81f-579e-b3b3-6baf9c299dcb', 1), 'fdf1485db5b101fda9e9896baeedd9b5d843a6b633854e5587231763eb820263',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ccf25980db41e92016be84dd61890be5d4ef26cc5f8d09134f46036deb924b98.mp3', 4675, '2026-09-13 10:20:53.728265', '3afada56ef27d19c3cb98cb82cfbb9387fe351479d79389293482ada454c5417', 'validated', '{"audio_key":"ccf25980db41e92016be84dd61890be5d4ef26cc5f8d09134f46036deb924b98","entity_key":"d_proposal_writing_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3afada56ef27d19c3cb98cb82cfbb9387fe351479d79389293482ada454c5417","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ccf25980db41e92016be84dd61890be5d4ef26cc5f8d09134f46036deb924b98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_01:3 -> audio/generated/de-DE/dialogues/cdf687b04e34c799c7b98e1f29a24a92e76c49118ec34d6654cd87ad52d0c692.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68c9d440-02ec-5402-bef8-62e7b3a7ed95', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f245b7b1bf0342b0ba41b0bf529bd241343dcbafedee16af572722a1600d270'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57e5c0af-0635-5ca1-a3b4-da88b9781faf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68c9d440-02ec-5402-bef8-62e7b3a7ed95', 1), '7f245b7b1bf0342b0ba41b0bf529bd241343dcbafedee16af572722a1600d270',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cdf687b04e34c799c7b98e1f29a24a92e76c49118ec34d6654cd87ad52d0c692.mp3', 4780, '2026-09-13 10:20:54.143852', '79d7fd840ebdb197791e234da15a3c343ed257b9201d5923de4f5a5dd1b876c7', 'validated', '{"audio_key":"cdf687b04e34c799c7b98e1f29a24a92e76c49118ec34d6654cd87ad52d0c692","entity_key":"d_partnership_negotiation_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"79d7fd840ebdb197791e234da15a3c343ed257b9201d5923de4f5a5dd1b876c7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cdf687b04e34c799c7b98e1f29a24a92e76c49118ec34d6654cd87ad52d0c692.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_01:4 -> audio/generated/de-DE/dialogues/cf4fdcb748c764304da115d129c9672970d7c7e0ea49adebbf29b37646c3710a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24431147-3019-5cc2-a07b-fe88ee15cac3', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1be014bc7a43e1fd019f766d9144e7a15c28f5f4740d4e81ed33c16fae8c806f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2918148a-63b5-53ae-9af2-9b2009f7c79d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24431147-3019-5cc2-a07b-fe88ee15cac3', 1), '1be014bc7a43e1fd019f766d9144e7a15c28f5f4740d4e81ed33c16fae8c806f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf4fdcb748c764304da115d129c9672970d7c7e0ea49adebbf29b37646c3710a.mp3', 6713, '2026-09-13 10:20:55.842241', 'b334667c13572b91b6fd89c73302437bdc17ffc8423d2a2e765542c0a163e6f0', 'validated', '{"audio_key":"cf4fdcb748c764304da115d129c9672970d7c7e0ea49adebbf29b37646c3710a","entity_key":"d_data_interpretation_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b334667c13572b91b6fd89c73302437bdc17ffc8423d2a2e765542c0a163e6f0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cf4fdcb748c764304da115d129c9672970d7c7e0ea49adebbf29b37646c3710a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_03:1 -> audio/generated/de-DE/dialogues/d19cc359c0f12c92265c8eaf9506f1b5efc401950804232d06ce1c8e7887561a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a2948a2-366a-5a06-8d8f-67b569da6f09', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff5c06ba9352e156e495ed12c00cc010166e2c5916882e57430fa408edad80e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffa4b7e2-0fd3-59ff-bb44-9accf7599767', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a2948a2-366a-5a06-8d8f-67b569da6f09', 1), 'eff5c06ba9352e156e495ed12c00cc010166e2c5916882e57430fa408edad80e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d19cc359c0f12c92265c8eaf9506f1b5efc401950804232d06ce1c8e7887561a.mp3', 5015, '2026-09-13 10:20:55.641269', '7441ab84a283b0c221f2f01a03b508793b4eb215a47d0f2b9b86881ea3087a2a', 'validated', '{"audio_key":"d19cc359c0f12c92265c8eaf9506f1b5efc401950804232d06ce1c8e7887561a","entity_key":"d_meeting_facilitation_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7441ab84a283b0c221f2f01a03b508793b4eb215a47d0f2b9b86881ea3087a2a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d19cc359c0f12c92265c8eaf9506f1b5efc401950804232d06ce1c8e7887561a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_02:4 -> audio/generated/de-DE/dialogues/d53d3153febc0aff5e5142c310da902845ea1650c2fdf0dfe5b72b961ce1eddd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('474d7262-2a20-5478-98f2-cb30e546a4d9', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebe7be33da264f7b7f2947b6ed828e6ef8501690fccbf1fe644aedba5aed2107'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca4106f6-cdab-5604-ba6c-ca4e1093a532', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('474d7262-2a20-5478-98f2-cb30e546a4d9', 1), 'ebe7be33da264f7b7f2947b6ed828e6ef8501690fccbf1fe644aedba5aed2107',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d53d3153febc0aff5e5142c310da902845ea1650c2fdf0dfe5b72b961ce1eddd.mp3', 3004, '2026-09-13 10:20:56.915956', 'dcc4c81a10bf4ef68475b1e5aaaaa82132211b72018e8dd7179e8e0379507c8a', 'validated', '{"audio_key":"d53d3153febc0aff5e5142c310da902845ea1650c2fdf0dfe5b72b961ce1eddd","entity_key":"d_scenario_planning_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dcc4c81a10bf4ef68475b1e5aaaaa82132211b72018e8dd7179e8e0379507c8a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d53d3153febc0aff5e5142c310da902845ea1650c2fdf0dfe5b72b961ce1eddd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_02:1 -> audio/generated/de-DE/dialogues/d85c103cb5281e3ee5f95453f6b9883310217869fd9ba935e8f0862f32d815de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('abbf8309-450a-5f07-9f13-5562f61930c2', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3f6bd7a03d5fcc2b7b005d3f011f49bdcc62f4a87cb961b52b0693dc2dadf79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c46d3f3-f55d-584c-bb98-0e02b054df9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('abbf8309-450a-5f07-9f13-5562f61930c2', 1), 'f3f6bd7a03d5fcc2b7b005d3f011f49bdcc62f4a87cb961b52b0693dc2dadf79',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d85c103cb5281e3ee5f95453f6b9883310217869fd9ba935e8f0862f32d815de.mp3', 3996, '2026-09-13 10:20:57.135612', '0aad298427b1ec750889939b0f9e47308198ba99898f1a77a296ceeec7ecd581', 'validated', '{"audio_key":"d85c103cb5281e3ee5f95453f6b9883310217869fd9ba935e8f0862f32d815de","entity_key":"d_meeting_facilitation_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0aad298427b1ec750889939b0f9e47308198ba99898f1a77a296ceeec7ecd581","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d85c103cb5281e3ee5f95453f6b9883310217869fd9ba935e8f0862f32d815de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_01:1 -> audio/generated/de-DE/dialogues/dc34f7e932ebbd66f3cf45c0880ec387f8d0bc2dfe57bbfde814bc61a0e39c86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b40af440-1723-5ccd-93fa-cbd3ebc1efd4', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db66808b1884e80d52b3df1800c93a4007752386d1ca37883516ce71bd1cbee4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a43be52-f757-57e0-8324-0fb9106a0b67', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b40af440-1723-5ccd-93fa-cbd3ebc1efd4', 1), 'db66808b1884e80d52b3df1800c93a4007752386d1ca37883516ce71bd1cbee4',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc34f7e932ebbd66f3cf45c0880ec387f8d0bc2dfe57bbfde814bc61a0e39c86.mp3', 6086, '2026-09-13 10:20:58.821020', '049c45996ceb2025dd0b09105e38c2c58c24fe75a6dccf8813777768d95b44d8', 'validated', '{"audio_key":"dc34f7e932ebbd66f3cf45c0880ec387f8d0bc2dfe57bbfde814bc61a0e39c86","entity_key":"d_proposal_writing_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"049c45996ceb2025dd0b09105e38c2c58c24fe75a6dccf8813777768d95b44d8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/dc34f7e932ebbd66f3cf45c0880ec387f8d0bc2dfe57bbfde814bc61a0e39c86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_02:2 -> audio/generated/de-DE/dialogues/ddb73627edf49e00afdcff93c37351b734f997c1df3887f1ed53a844dc079864.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('84d945ef-8b47-56c0-90ed-c3f138b897c6', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b81fd8b97b52fdf38ed4a09f518f4fcc93722b50b2b3286fc6b2fb06e1253c1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43be515b-7051-55d2-8410-bed48d84458f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('84d945ef-8b47-56c0-90ed-c3f138b897c6', 1), 'b81fd8b97b52fdf38ed4a09f518f4fcc93722b50b2b3286fc6b2fb06e1253c1b',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ddb73627edf49e00afdcff93c37351b734f997c1df3887f1ed53a844dc079864.mp3', 6765, '2026-09-13 10:20:58.842282', '0b656f82c6e442a8c631776cc999d7bbd510362e2e2f695e645d818cbdbb1c1b', 'validated', '{"audio_key":"ddb73627edf49e00afdcff93c37351b734f997c1df3887f1ed53a844dc079864","entity_key":"d_change_communication_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0b656f82c6e442a8c631776cc999d7bbd510362e2e2f695e645d818cbdbb1c1b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ddb73627edf49e00afdcff93c37351b734f997c1df3887f1ed53a844dc079864.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_03:4 -> audio/generated/de-DE/dialogues/e3bb497a8b6b9d071b3b3a7afdf39a9e560ecf4882d15fe2233580531b0d83ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1f02f70-bd12-5b5d-812d-949bf29f497d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef23c740fa351f6939e5f2bb1def7d1191ef407969debcb1ee5d5265142b2e59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96cc4c35-c21b-5dcd-bbb4-082be2895cc7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1f02f70-bd12-5b5d-812d-949bf29f497d', 1), 'ef23c740fa351f6939e5f2bb1def7d1191ef407969debcb1ee5d5265142b2e59',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e3bb497a8b6b9d071b3b3a7afdf39a9e560ecf4882d15fe2233580531b0d83ea.mp3', 4597, '2026-09-13 10:21:00.316983', '7bd9b45da1a8465e561d86de2b1bad1871fe87344db6a7251ba15087799ebd04', 'validated', '{"audio_key":"e3bb497a8b6b9d071b3b3a7afdf39a9e560ecf4882d15fe2233580531b0d83ea","entity_key":"d_conflict_mediation_power_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7bd9b45da1a8465e561d86de2b1bad1871fe87344db6a7251ba15087799ebd04","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e3bb497a8b6b9d071b3b3a7afdf39a9e560ecf4882d15fe2233580531b0d83ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_03:3 -> audio/generated/de-DE/dialogues/e3f0a9a797868f9f003c29fe89deee709322fe21b1fa6a1f115c90b28e1f2b06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3beb01bb-e8e3-52c0-9d30-172c256f2057', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ed39b3827f138fe49dfbcd48a839f20e83960725ef7dbbfde7e811b8ed8a09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9afdc5ee-a3de-572f-bf38-1e99a0e1e917', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3beb01bb-e8e3-52c0-9d30-172c256f2057', 1), '28ed39b3827f138fe49dfbcd48a839f20e83960725ef7dbbfde7e811b8ed8a09',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e3f0a9a797868f9f003c29fe89deee709322fe21b1fa6a1f115c90b28e1f2b06.mp3', 4858, '2026-09-13 10:21:00.278599', 'f3e40cd6580114324f269d1d7a4e05e2c94a7ea4d41fc40923266ca4696ae865', 'validated', '{"audio_key":"e3f0a9a797868f9f003c29fe89deee709322fe21b1fa6a1f115c90b28e1f2b06","entity_key":"d_executive_presentations_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f3e40cd6580114324f269d1d7a4e05e2c94a7ea4d41fc40923266ca4696ae865","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e3f0a9a797868f9f003c29fe89deee709322fe21b1fa6a1f115c90b28e1f2b06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_02:4 -> audio/generated/de-DE/dialogues/e528886296832d77d764079b2fbcb463f8840d3fb15cf1ea3876e80c0075f7ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72dbd1c4-9a5a-5aaa-bd0b-71e6e5442a67', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19087d2ec6947716ab212c5f829e068c463b9bb428e890813f7f476b1d8db0da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d9f843f-8f55-5f07-ba49-37efb14c9860', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72dbd1c4-9a5a-5aaa-bd0b-71e6e5442a67', 1), '19087d2ec6947716ab212c5f829e068c463b9bb428e890813f7f476b1d8db0da',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e528886296832d77d764079b2fbcb463f8840d3fb15cf1ea3876e80c0075f7ad.mp3', 6034, '2026-09-13 10:21:01.859425', 'd7af9f441edd5367648e95c26f4660614e6b227497dd26188c16c54c9c693902', 'validated', '{"audio_key":"e528886296832d77d764079b2fbcb463f8840d3fb15cf1ea3876e80c0075f7ad","entity_key":"d_proposal_writing_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d7af9f441edd5367648e95c26f4660614e6b227497dd26188c16c54c9c693902","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e528886296832d77d764079b2fbcb463f8840d3fb15cf1ea3876e80c0075f7ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_proposal_writing_02:2 -> audio/generated/de-DE/dialogues/e78836887df3d30da49b975101d398cbfd748eece93143e14e1ef50e2f06307c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0b16e4d-b34a-511c-aec2-8fb2bde6db71', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_proposal_writing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c83f8cb996f6aaf3ed9af4ec18f0e39ff19aec004b98ddf8ff1c209a3cdf41e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('becc4498-ed11-5ae4-a7e5-2bbb2a5be358', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0b16e4d-b34a-511c-aec2-8fb2bde6db71', 1), '6c83f8cb996f6aaf3ed9af4ec18f0e39ff19aec004b98ddf8ff1c209a3cdf41e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e78836887df3d30da49b975101d398cbfd748eece93143e14e1ef50e2f06307c.mp3', 4075, '2026-09-13 10:21:01.663055', '2997e1fa50454a7eb9893d09299a4787d8c40cf8b2e35818eebba25f156db966', 'validated', '{"audio_key":"e78836887df3d30da49b975101d398cbfd748eece93143e14e1ef50e2f06307c","entity_key":"d_proposal_writing_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"2997e1fa50454a7eb9893d09299a4787d8c40cf8b2e35818eebba25f156db966","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e78836887df3d30da49b975101d398cbfd748eece93143e14e1ef50e2f06307c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_02:2 -> audio/generated/de-DE/dialogues/e8a0f783922105b98d0a4040bc642f5a324df3ccd5e43104d8d62398b7f1dc98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0502d3a2-5df5-5810-b14a-a0dd88bdce50', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd313898446c1ee3bd563256d95953d2653f0f70967cee87f83dd5d549c54ff10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('252cf948-79f3-5300-b33a-776d50305dec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0502d3a2-5df5-5810-b14a-a0dd88bdce50', 1), 'd313898446c1ee3bd563256d95953d2653f0f70967cee87f83dd5d549c54ff10',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8a0f783922105b98d0a4040bc642f5a324df3ccd5e43104d8d62398b7f1dc98.mp3', 6112, '2026-09-13 10:21:03.326695', '72e22f45a7cc79e78b1e47419f1ef22739c5a41cee710617c2cd20da00655994', 'validated', '{"audio_key":"e8a0f783922105b98d0a4040bc642f5a324df3ccd5e43104d8d62398b7f1dc98","entity_key":"d_expert_interviews_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"72e22f45a7cc79e78b1e47419f1ef22739c5a41cee710617c2cd20da00655994","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e8a0f783922105b98d0a4040bc642f5a324df3ccd5e43104d8d62398b7f1dc98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_02:2 -> audio/generated/de-DE/dialogues/e9e851ba4b9a9d5107960a27ce1077d73e59b691bc24354dae055e1b56a49770.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa47690e-5f86-56d5-befe-3fe835a707be', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9c94597f9d34a3be6f7f246a96a734ff175f3040c3b4050ec184b4660865c90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec7c4162-28cd-53e5-8f1c-435b46a3655e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa47690e-5f86-56d5-befe-3fe835a707be', 1), 'b9c94597f9d34a3be6f7f246a96a734ff175f3040c3b4050ec184b4660865c90',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e9e851ba4b9a9d5107960a27ce1077d73e59b691bc24354dae055e1b56a49770.mp3', 5041, '2026-09-13 10:21:03.315676', 'd1662d6777bb05b1ffda0b70ee1f1c1a65f836c8374b48a7bd24d557484d080d', 'validated', '{"audio_key":"e9e851ba4b9a9d5107960a27ce1077d73e59b691bc24354dae055e1b56a49770","entity_key":"d_conflict_mediation_power_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d1662d6777bb05b1ffda0b70ee1f1c1a65f836c8374b48a7bd24d557484d080d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e9e851ba4b9a9d5107960a27ce1077d73e59b691bc24354dae055e1b56a49770.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_executive_presentations_01:1 -> audio/generated/de-DE/dialogues/eb240007f23a3a3732ade4ecf9b7aa93478aabf95c81b626b2090b974cd3a053.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cff4de47-1f77-5095-a077-313bcefaceeb', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_executive_presentations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3df9c2401961b3e7b7f98805fe9b9a0b283cf84c3d533f2204da6f5e278c79b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed873fd8-b9bf-5d9b-bf9e-f0b7d98d6f41', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cff4de47-1f77-5095-a077-313bcefaceeb', 1), 'e3df9c2401961b3e7b7f98805fe9b9a0b283cf84c3d533f2204da6f5e278c79b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb240007f23a3a3732ade4ecf9b7aa93478aabf95c81b626b2090b974cd3a053.mp3', 3840, '2026-09-13 10:21:04.654101', '6995f8020ee4eb6c36bc1ec26265d37dd4359e8138d00606c59d16c613d7491d', 'validated', '{"audio_key":"eb240007f23a3a3732ade4ecf9b7aa93478aabf95c81b626b2090b974cd3a053","entity_key":"d_executive_presentations_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6995f8020ee4eb6c36bc1ec26265d37dd4359e8138d00606c59d16c613d7491d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/eb240007f23a3a3732ade4ecf9b7aa93478aabf95c81b626b2090b974cd3a053.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_data_interpretation_03:4 -> audio/generated/de-DE/dialogues/ebf562cb63cb3a6ff3c2ee3bac54681c529b76124720233f95dc2265c33a66a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5683bf2-2ee0-5194-9f3b-4b8efde1a707', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_data_interpretation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33ae6e04a81781a2ad11ee265f5b951f2d8733e7ff14ca8d98adf52ca82ac28a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2d79a97-aa5f-5064-b1f3-71e6f6484cd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5683bf2-2ee0-5194-9f3b-4b8efde1a707', 1), '33ae6e04a81781a2ad11ee265f5b951f2d8733e7ff14ca8d98adf52ca82ac28a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ebf562cb63cb3a6ff3c2ee3bac54681c529b76124720233f95dc2265c33a66a1.mp3', 2925, '2026-09-13 10:21:04.510114', '5b7dc02c1346cc1d79c734d36e8a0a4f84dfe773bcf8c33266471d0b5ca91790', 'validated', '{"audio_key":"ebf562cb63cb3a6ff3c2ee3bac54681c529b76124720233f95dc2265c33a66a1","entity_key":"d_data_interpretation_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5b7dc02c1346cc1d79c734d36e8a0a4f84dfe773bcf8c33266471d0b5ca91790","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ebf562cb63cb3a6ff3c2ee3bac54681c529b76124720233f95dc2265c33a66a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_change_communication_03:1 -> audio/generated/de-DE/dialogues/eff6e286ed704257c869db882551628c601cef4ae088b90857b12f857f556225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e968e2ab-4dec-5574-ac9f-68f15fd0d367', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_change_communication_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28fc26791b78ba73e337cb085850da484bd7de96f457558da9073ea6bfdf36d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bca991de-79f0-502c-9ee5-2005afde7a83', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e968e2ab-4dec-5574-ac9f-68f15fd0d367', 1), '28fc26791b78ba73e337cb085850da484bd7de96f457558da9073ea6bfdf36d3',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eff6e286ed704257c869db882551628c601cef4ae088b90857b12f857f556225.mp3', 3944, '2026-09-13 10:21:05.823724', '6c8c71991ae08366e9720dcbb4229fa113b315292ef6e445c62a53361329e3f1', 'validated', '{"audio_key":"eff6e286ed704257c869db882551628c601cef4ae088b90857b12f857f556225","entity_key":"d_change_communication_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6c8c71991ae08366e9720dcbb4229fa113b315292ef6e445c62a53361329e3f1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/eff6e286ed704257c869db882551628c601cef4ae088b90857b12f857f556225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_planning_02:2 -> audio/generated/de-DE/dialogues/f0193444f9bf25bf0eee6bf5332b8816336acd18232fe740e43fc0d2058d4675.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('984877f2-38bf-57ee-b490-08226adfc8e6', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_planning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '260a12cd39d224a449586d06accf2d93181d3d4c5220629553b15cd75f60b6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad42997d-304c-5935-a268-8583546ee342', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('984877f2-38bf-57ee-b490-08226adfc8e6', 1), '260a12cd39d224a449586d06accf2d93181d3d4c5220629553b15cd75f60b6b4',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0193444f9bf25bf0eee6bf5332b8816336acd18232fe740e43fc0d2058d4675.mp3', 5982, '2026-09-13 10:21:06.204998', '11615a436381766fab0bd188c0919e49dc379f0fab48dd3799ceee75a4175241', 'validated', '{"audio_key":"f0193444f9bf25bf0eee6bf5332b8816336acd18232fe740e43fc0d2058d4675","entity_key":"d_scenario_planning_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"11615a436381766fab0bd188c0919e49dc379f0fab48dd3799ceee75a4175241","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f0193444f9bf25bf0eee6bf5332b8816336acd18232fe740e43fc0d2058d4675.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_interviews_02:4 -> audio/generated/de-DE/dialogues/f04f7eadc2ac7b79eb8cb81b6f81d8a08543dc7c67d71de20981a7b3a7164ab8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d59fe156-ef01-50fb-8935-bbf169126577', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_interviews_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6f3b47139b5fd8418d4ece50e6ea9afe0791c7695139cb025ebea4b9b9f46b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5dc02e4-44d9-5588-98db-f9ee8ef498aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d59fe156-ef01-50fb-8935-bbf169126577', 1), 'c6f3b47139b5fd8418d4ece50e6ea9afe0791c7695139cb025ebea4b9b9f46b6',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f04f7eadc2ac7b79eb8cb81b6f81d8a08543dc7c67d71de20981a7b3a7164ab8.mp3', 4440, '2026-09-13 10:21:07.173489', 'cfe5c47271b1f878ecd7d179e6cbbf8bfca2663e4bcdcad6127b3c3eb301815c', 'validated', '{"audio_key":"f04f7eadc2ac7b79eb8cb81b6f81d8a08543dc7c67d71de20981a7b3a7164ab8","entity_key":"d_expert_interviews_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cfe5c47271b1f878ecd7d179e6cbbf8bfca2663e4bcdcad6127b3c3eb301815c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f04f7eadc2ac7b79eb8cb81b6f81d8a08543dc7c67d71de20981a7b3a7164ab8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_02:4 -> audio/generated/de-DE/dialogues/f441b972c9dceb04dd50d315658d54a31d62f97be42adf40dec76b8e293ef6f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('551abefd-a9d3-5349-a0e7-5a42beec3a72', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a10cdb6e0e90394a321382e2a3c62e9b16c097e391755860070af3151e6bf89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bc826d8-81af-590a-913c-3effe72ad2f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('551abefd-a9d3-5349-a0e7-5a42beec3a72', 1), '2a10cdb6e0e90394a321382e2a3c62e9b16c097e391755860070af3151e6bf89',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f441b972c9dceb04dd50d315658d54a31d62f97be42adf40dec76b8e293ef6f2.mp3', 4597, '2026-09-13 10:21:07.639520', 'a2d1ba1f8f67e2c13f34c1c2b533e7ebbe5737f845e0864605a9344b1ffe05ea', 'validated', '{"audio_key":"f441b972c9dceb04dd50d315658d54a31d62f97be42adf40dec76b8e293ef6f2","entity_key":"d_conflict_mediation_power_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a2d1ba1f8f67e2c13f34c1c2b533e7ebbe5737f845e0864605a9344b1ffe05ea","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f441b972c9dceb04dd50d315658d54a31d62f97be42adf40dec76b8e293ef6f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_03:4 -> audio/generated/de-DE/dialogues/f50c2dcd1aa69ec3f45a98de4d03ae6affd9f91386c95fe566824a0ddc7eec2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a39a1f15-4f3f-582b-99a2-d2b2f53c1dc0', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cf9304dd7e58092a03220339236072b1f51fdd3d7a2a154a96b494c1a6f20f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a53c4e47-977b-5bc8-85ff-c03780f66cbb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a39a1f15-4f3f-582b-99a2-d2b2f53c1dc0', 1), '6cf9304dd7e58092a03220339236072b1f51fdd3d7a2a154a96b494c1a6f20f1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f50c2dcd1aa69ec3f45a98de4d03ae6affd9f91386c95fe566824a0ddc7eec2e.mp3', 5982, '2026-09-13 10:21:08.727301', '46ed87aed5bd5b011139546274b7ff7782699fd5e07088b70fd83f425c78b3a9', 'validated', '{"audio_key":"f50c2dcd1aa69ec3f45a98de4d03ae6affd9f91386c95fe566824a0ddc7eec2e","entity_key":"d_partnership_negotiation_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"46ed87aed5bd5b011139546274b7ff7782699fd5e07088b70fd83f425c78b3a9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f50c2dcd1aa69ec3f45a98de4d03ae6affd9f91386c95fe566824a0ddc7eec2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_partnership_negotiation_02:3 -> audio/generated/de-DE/dialogues/f8c0fa67edc2447dba64777bbab943b9f8ac024c914418c1d164d33bd24afb81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0265add-124f-5a7d-84dc-2e19cda47f0d', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_partnership_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4481fcd8b3a69b9f1f9c000e62d49ab04a409fc89077151de28914ce436ca4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d284431-b54b-509f-a9bf-094c85b17403', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0265add-124f-5a7d-84dc-2e19cda47f0d', 1), 'c4481fcd8b3a69b9f1f9c000e62d49ab04a409fc89077151de28914ce436ca4b',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8c0fa67edc2447dba64777bbab943b9f8ac024c914418c1d164d33bd24afb81.mp3', 5015, '2026-09-13 10:21:09.086325', '8650fc89bc6cb31b4da93b80a8e764ca36d60d396bb3edb33de3ed5102f9d341', 'validated', '{"audio_key":"f8c0fa67edc2447dba64777bbab943b9f8ac024c914418c1d164d33bd24afb81","entity_key":"d_partnership_negotiation_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8650fc89bc6cb31b4da93b80a8e764ca36d60d396bb3edb33de3ed5102f9d341","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f8c0fa67edc2447dba64777bbab943b9f8ac024c914418c1d164d33bd24afb81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_power_03:1 -> audio/generated/de-DE/dialogues/fb501a7d64b7fd906a5d7c57088fa3aea3ede7652b89cc90e7f1e4505c621bbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9050eb0c-d627-5015-836b-85b7a60a82d4', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_power_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '886d4fc2f5353b0d0b0b6852f811d9d4711a4510878415f9ba1477a71d74ab15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85adaf27-ddea-53e9-9e08-4c93e1881374', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9050eb0c-d627-5015-836b-85b7a60a82d4', 1), '886d4fc2f5353b0d0b0b6852f811d9d4711a4510878415f9ba1477a71d74ab15',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fb501a7d64b7fd906a5d7c57088fa3aea3ede7652b89cc90e7f1e4505c621bbb.mp3', 5616, '2026-09-13 10:21:10.232604', 'b9d76a8ed17b17e7b391ca7df46040d299ce491100d2afd60f4b8937d7130863', 'validated', '{"audio_key":"fb501a7d64b7fd906a5d7c57088fa3aea3ede7652b89cc90e7f1e4505c621bbb","entity_key":"d_conflict_mediation_power_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b9d76a8ed17b17e7b391ca7df46040d299ce491100d2afd60f4b8937d7130863","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fb501a7d64b7fd906a5d7c57088fa3aea3ede7652b89cc90e7f1e4505c621bbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_01:1 -> audio/generated/de-DE/dialogues/fc400e24fc47b9a29870e0232251294149511843ece1e217443b4c8c3c375363.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('21aaac84-9912-5ed9-8c9e-836fd3f43a76', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cefda6a5df9dd4f702b74700c708c8a7c99b428bd762f01a89e2e564dea2a4ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21dcfb98-4a8a-5673-b20c-57f162cc0a14', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('21aaac84-9912-5ed9-8c9e-836fd3f43a76', 1), 'cefda6a5df9dd4f702b74700c708c8a7c99b428bd762f01a89e2e564dea2a4ff',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc400e24fc47b9a29870e0232251294149511843ece1e217443b4c8c3c375363.mp3', 5694, '2026-09-13 10:21:10.634318', 'c7dc85de72d08e88ba75d4451efcd24722855554566961037b9b1a20a9132b50', 'validated', '{"audio_key":"fc400e24fc47b9a29870e0232251294149511843ece1e217443b4c8c3c375363","entity_key":"d_meeting_facilitation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c7dc85de72d08e88ba75d4451efcd24722855554566961037b9b1a20a9132b50","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fc400e24fc47b9a29870e0232251294149511843ece1e217443b4c8c3c375363.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_meeting_facilitation_02:2 -> audio/generated/de-DE/dialogues/fd4c77405771302a9970cbd183d2a39c251076db2d7cca4b7a86a321847fb58d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e22649a2-161b-5a4d-827b-f3d8705bac99', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_meeting_facilitation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42fbf3b23a47c550611220a4ca0ea0d33959b98bb5e7d1ebcc6b96c82681a84f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a4a9aa1-21c1-58dc-9c7f-0d078a2fd9de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e22649a2-161b-5a4d-827b-f3d8705bac99', 1), '42fbf3b23a47c550611220a4ca0ea0d33959b98bb5e7d1ebcc6b96c82681a84f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd4c77405771302a9970cbd183d2a39c251076db2d7cca4b7a86a321847fb58d.mp3', 4493, '2026-09-13 10:21:11.611717', '3591c7e6ab9e6e6ae4698c49962b1c5e7059bc8bc6e1fd7bb6798f88781cec7f', 'validated', '{"audio_key":"fd4c77405771302a9970cbd183d2a39c251076db2d7cca4b7a86a321847fb58d","entity_key":"d_meeting_facilitation_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3591c7e6ab9e6e6ae4698c49962b1c5e7059bc8bc6e1fd7bb6798f88781cec7f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/fd4c77405771302a9970cbd183d2a39c251076db2d7cca4b7a86a321847fb58d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meeting_facilitation_06 -> audio/generated/de-DE/lexical/005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aeae9e7f-4599-5b14-8941-b0131b321199', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meeting_facilitation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14e2ad06a93894ea49275785022e9b2597b60418b00c05bb4eb598920a661e45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8fae95c-27ef-59db-9cea-6b89e9a97b40', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aeae9e7f-4599-5b14-8941-b0131b321199', 1), '14e2ad06a93894ea49275785022e9b2597b60418b00c05bb4eb598920a661e45',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900.mp3', 1384, '2026-09-13 10:21:11.818438', 'd0e06719a45b97202a237b461c984c690eaabd01ef2316380fca7ed1f949a6e4', 'validated', '{"audio_key":"005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900","entity_key":"lx_meeting_facilitation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0e06719a45b97202a237b461c984c690eaabd01ef2316380fca7ed1f949a6e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meeting_facilitation_06 -> audio/generated/de-DE/lexical/005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10ef4293-6675-50c8-bd64-bd13a5e675d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meeting_facilitation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14e2ad06a93894ea49275785022e9b2597b60418b00c05bb4eb598920a661e45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8596e1dd-31a0-515a-b7f4-5a16d429d1bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10ef4293-6675-50c8-bd64-bd13a5e675d6', 1), '14e2ad06a93894ea49275785022e9b2597b60418b00c05bb4eb598920a661e45',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900.mp3', 1384, '2026-09-13 10:21:11.818438', 'd0e06719a45b97202a237b461c984c690eaabd01ef2316380fca7ed1f949a6e4', 'validated', '{"audio_key":"005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900","entity_key":"wf_meeting_facilitation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0e06719a45b97202a237b461c984c690eaabd01ef2316380fca7ed1f949a6e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/005d6cc709c24527bfbc2192344561276b52592445e6f1a53dbd7d2394964900.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_partnership_negotiation_01 -> audio/generated/de-DE/lexical/00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7cab3da0-3ca9-5057-9f95-8b8a032ea4f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_partnership_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d2bde43bf108e4f3ed06ac93f3a54f8e3cf08dbdac9bbd83484fcf008fa3685'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d1eb30d-0122-5e6f-b692-19086290b545', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7cab3da0-3ca9-5057-9f95-8b8a032ea4f9', 1), '0d2bde43bf108e4f3ed06ac93f3a54f8e3cf08dbdac9bbd83484fcf008fa3685',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62.mp3', 1567, '2026-09-13 10:21:12.679275', '35345f8d46492edfd556b57687a1e97f494904f6cd1f469ffc176ff722ceca73', 'validated', '{"audio_key":"00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62","entity_key":"lx_partnership_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35345f8d46492edfd556b57687a1e97f494904f6cd1f469ffc176ff722ceca73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_partnership_negotiation_01 -> audio/generated/de-DE/lexical/00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('860b5085-f65b-5758-8bab-562a076c6dc7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_partnership_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d2bde43bf108e4f3ed06ac93f3a54f8e3cf08dbdac9bbd83484fcf008fa3685'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b5457b2-d253-5fac-aac8-2643a5c30077', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('860b5085-f65b-5758-8bab-562a076c6dc7', 1), '0d2bde43bf108e4f3ed06ac93f3a54f8e3cf08dbdac9bbd83484fcf008fa3685',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62.mp3', 1567, '2026-09-13 10:21:12.679275', '35345f8d46492edfd556b57687a1e97f494904f6cd1f469ffc176ff722ceca73', 'validated', '{"audio_key":"00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62","entity_key":"wf_partnership_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35345f8d46492edfd556b57687a1e97f494904f6cd1f469ffc176ff722ceca73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00686ea157246a9142c72e557ef349183cc28d7b6ebd6ac0d89be5ec1af43f62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_interpretation_02 -> audio/generated/de-DE/lexical/0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('37bcb39b-e18d-5d05-8d5d-6cf2bc1209de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_interpretation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2acc3239ea0959b0dfae06a200c007bc577ec0051cbef4562ceca0e9957e4dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adcf77ae-b5a9-50f7-bfeb-0caa20129d45', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('37bcb39b-e18d-5d05-8d5d-6cf2bc1209de', 1), 'b2acc3239ea0959b0dfae06a200c007bc577ec0051cbef4562ceca0e9957e4dd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74.mp3', 1201, '2026-09-13 10:21:12.819162', '3914d466c618da7164999cb6489fb7653d195c92ad989217d91bea7952518f21', 'validated', '{"audio_key":"0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74","entity_key":"lx_data_interpretation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3914d466c618da7164999cb6489fb7653d195c92ad989217d91bea7952518f21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_interpretation_02 -> audio/generated/de-DE/lexical/0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('78fa1f50-2ab5-5fd6-bae9-fc12b75f28fe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_interpretation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2acc3239ea0959b0dfae06a200c007bc577ec0051cbef4562ceca0e9957e4dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2e52afb-d932-58f3-845b-afba57199e1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('78fa1f50-2ab5-5fd6-bae9-fc12b75f28fe', 1), 'b2acc3239ea0959b0dfae06a200c007bc577ec0051cbef4562ceca0e9957e4dd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74.mp3', 1201, '2026-09-13 10:21:12.819162', '3914d466c618da7164999cb6489fb7653d195c92ad989217d91bea7952518f21', 'validated', '{"audio_key":"0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74","entity_key":"wf_data_interpretation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3914d466c618da7164999cb6489fb7653d195c92ad989217d91bea7952518f21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0854b661e6ffcb7052113614d3fa0540c0fa422b9ce922c31663cdd875a8dd74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_planning_01 -> audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b702f14e-bc70-5227-aedf-1480efe95e9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cf2efaa-65b4-547b-bfdf-964a47139ef3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b702f14e-bc70-5227-aedf-1480efe95e9d', 1), 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3', 1149, '2026-09-13 08:32:22.220003', 'aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2', 'validated', '{"audio_key":"0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24","entity_key":"lx_scenario_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_planning_01 -> audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e3e5d31-c796-5300-9665-78a11038efbe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c495155a-2841-5eca-b821-90f4d519cc0f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e3e5d31-c796-5300-9665-78a11038efbe', 1), 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3', 1149, '2026-09-13 08:32:22.220003', 'aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2', 'validated', '{"audio_key":"0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24","entity_key":"wf_scenario_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_executive_presentations_05 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_executive_presentations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_executive_presentations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_executive_presentations_05 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56f9c7f5-0f23-5361-a80d-247036154c80', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_executive_presentations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9edd2c3-5671-5618-8ad9-dc1626eca7a9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56f9c7f5-0f23-5361-a80d-247036154c80', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_executive_presentations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_alignment_capstone_05 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_alignment_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7fb0c14-b683-560b-98e1-23fea6d02b09', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"lx_strategic_alignment_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_alignment_capstone_05 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8a4b2a60-8a8e-5447-9b8e-51b7e874e99b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_alignment_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00bc331d-016c-59af-9f48-879a11969bd9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8a4b2a60-8a8e-5447-9b8e-51b7e874e99b', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"wf_strategic_alignment_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_partnership_negotiation_05 -> audio/generated/de-DE/lexical/0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f7585c3b-f91c-587c-8146-a70cbd4c8238', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_partnership_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71832932854604acc1d36abf8e83b17e365c649338f416c0b41b6ecc4220a05f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e32bddec-eb8b-5de2-bc23-c20a77e8ec9d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f7585c3b-f91c-587c-8146-a70cbd4c8238', 1), '71832932854604acc1d36abf8e83b17e365c649338f416c0b41b6ecc4220a05f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100.mp3', 1280, '2026-09-13 10:21:13.726789', 'f9d0eda2981d4471b80dec627bcd440cc052d67a37a0bf306d76d018019ade71', 'validated', '{"audio_key":"0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100","entity_key":"lx_partnership_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9d0eda2981d4471b80dec627bcd440cc052d67a37a0bf306d76d018019ade71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_partnership_negotiation_05 -> audio/generated/de-DE/lexical/0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e6a01ec-ab4c-5325-9b68-0b02a4c0f95d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_partnership_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71832932854604acc1d36abf8e83b17e365c649338f416c0b41b6ecc4220a05f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74655d4e-61b5-5b8e-af4c-4ccf56f49b14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e6a01ec-ab4c-5325-9b68-0b02a4c0f95d', 1), '71832932854604acc1d36abf8e83b17e365c649338f416c0b41b6ecc4220a05f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100.mp3', 1280, '2026-09-13 10:21:13.726789', 'f9d0eda2981d4471b80dec627bcd440cc052d67a37a0bf306d76d018019ade71', 'validated', '{"audio_key":"0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100","entity_key":"wf_partnership_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9d0eda2981d4471b80dec627bcd440cc052d67a37a0bf306d76d018019ade71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0e2511348bb841952c50a9432e7323aca84e470245d44a65b5e8da1000c13100.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_power_04 -> audio/generated/de-DE/lexical/0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bf222269-1251-5cbd-986d-ca1ffff78e03', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_power_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3318b02d0889b57c284940b92aa9bb01452d1cd355d9bad17108641241510bd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4024b619-c86e-5098-8927-f054ceee5e55', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bf222269-1251-5cbd-986d-ca1ffff78e03', 1), '3318b02d0889b57c284940b92aa9bb01452d1cd355d9bad17108641241510bd9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6.mp3', 1436, '2026-09-13 10:21:13.984084', '1cde050951d37883fbaa88322ef4d0fd4d2103c2b67526e57cc0c7a32c52a56d', 'validated', '{"audio_key":"0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6","entity_key":"lx_conflict_mediation_power_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cde050951d37883fbaa88322ef4d0fd4d2103c2b67526e57cc0c7a32c52a56d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_power_04 -> audio/generated/de-DE/lexical/0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c92ea538-cd70-55b4-b41e-7cf7c90600ea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_power_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3318b02d0889b57c284940b92aa9bb01452d1cd355d9bad17108641241510bd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d2efb44-941b-5a30-95e3-10e8eeaf7ef8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c92ea538-cd70-55b4-b41e-7cf7c90600ea', 1), '3318b02d0889b57c284940b92aa9bb01452d1cd355d9bad17108641241510bd9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6.mp3', 1436, '2026-09-13 10:21:13.984084', '1cde050951d37883fbaa88322ef4d0fd4d2103c2b67526e57cc0c7a32c52a56d', 'validated', '{"audio_key":"0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6","entity_key":"wf_conflict_mediation_power_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cde050951d37883fbaa88322ef4d0fd4d2103c2b67526e57cc0c7a32c52a56d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0e749e25df3260d25ddbdee8808deed43f4a51a929118307876bd8a5f127d7a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_communication_05 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fbc6b5-631c-541c-8dd1-d4d5d11f3a57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"lx_change_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_communication_05 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a9fec1ef-8b89-51cb-b157-d05d975f6bc1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d582f04-7947-5aad-9ddf-144979c33414', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a9fec1ef-8b89-51cb-b157-d05d975f6bc1', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"wf_change_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_alignment_capstone_01 -> audio/generated/de-DE/lexical/21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e4415bf-006f-5ec7-a7e8-d61066ac165b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_alignment_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '938e70d1425cf27d7c62bb87923ab95812e21b8bbc49cb9233243b9abbfb165b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f141fd62-6671-5724-aef6-129d0b4fdbac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e4415bf-006f-5ec7-a7e8-d61066ac165b', 1), '938e70d1425cf27d7c62bb87923ab95812e21b8bbc49cb9233243b9abbfb165b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3.mp3', 966, '2026-09-13 10:21:14.762108', '020339bbc14bf603beb7a1249301998c00ddf6d1447e507a15357f6072c23b5e', 'validated', '{"audio_key":"21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3","entity_key":"lx_strategic_alignment_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"020339bbc14bf603beb7a1249301998c00ddf6d1447e507a15357f6072c23b5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_alignment_capstone_01 -> audio/generated/de-DE/lexical/21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5561647-b4fe-53bd-a54e-78962fb9e46c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_alignment_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '938e70d1425cf27d7c62bb87923ab95812e21b8bbc49cb9233243b9abbfb165b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c95c47b-b34d-51d6-afd0-94afaa0cd75f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5561647-b4fe-53bd-a54e-78962fb9e46c', 1), '938e70d1425cf27d7c62bb87923ab95812e21b8bbc49cb9233243b9abbfb165b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3.mp3', 966, '2026-09-13 10:21:14.762108', '020339bbc14bf603beb7a1249301998c00ddf6d1447e507a15357f6072c23b5e', 'validated', '{"audio_key":"21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3","entity_key":"wf_strategic_alignment_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"020339bbc14bf603beb7a1249301998c00ddf6d1447e507a15357f6072c23b5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/21b728b16909296fcc59b4ca7232b1deca15dbba85413230b8b582bc108186e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_power_01 -> audio/generated/de-DE/lexical/27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddc33a89-6a56-5a34-a3a4-51601b8ef564', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_power_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd91d94b1d6e2c2530ee2f38a41348e40b1bf5a16e90e5f7986c20d1e2c61546'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f0d0be2-96a9-5dcd-82d9-122ac93dce0d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddc33a89-6a56-5a34-a3a4-51601b8ef564', 1), 'fd91d94b1d6e2c2530ee2f38a41348e40b1bf5a16e90e5f7986c20d1e2c61546',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66.mp3', 1253, '2026-09-13 10:21:14.972342', '3370ad5266c2117cf6284ed2df7cd712477b795caea5316d906816f57641861e', 'validated', '{"audio_key":"27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66","entity_key":"lx_conflict_mediation_power_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3370ad5266c2117cf6284ed2df7cd712477b795caea5316d906816f57641861e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_power_01 -> audio/generated/de-DE/lexical/27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2dd91d66-0628-5d98-80ad-8c4e6db8abf6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_power_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd91d94b1d6e2c2530ee2f38a41348e40b1bf5a16e90e5f7986c20d1e2c61546'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4843b5f9-049b-5741-a0ce-0ce20d582a63', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2dd91d66-0628-5d98-80ad-8c4e6db8abf6', 1), 'fd91d94b1d6e2c2530ee2f38a41348e40b1bf5a16e90e5f7986c20d1e2c61546',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66.mp3', 1253, '2026-09-13 10:21:14.972342', '3370ad5266c2117cf6284ed2df7cd712477b795caea5316d906816f57641861e', 'validated', '{"audio_key":"27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66","entity_key":"wf_conflict_mediation_power_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3370ad5266c2117cf6284ed2df7cd712477b795caea5316d906816f57641861e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/27ff4c8d79879e8158b46e8ccffbbde53ccf3142a0291871ad8c537ecd9a7a66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_proposal_writing_02 -> audio/generated/de-DE/lexical/33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('40942080-5af9-56e8-88da-11f52851f465', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_proposal_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2578a60c60e72776ab029b17d2163958d93dd6de99196ace7921a11fadb235ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('758849f7-5830-50d8-85e8-c1b3626c5a21', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('40942080-5af9-56e8-88da-11f52851f465', 1), '2578a60c60e72776ab029b17d2163958d93dd6de99196ace7921a11fadb235ad',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0.mp3', 1436, '2026-09-13 10:21:15.768886', 'e70fb8a8c7eb083663726306cb748e24052c824e3e9b87721c60a89d276cd1c4', 'validated', '{"audio_key":"33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0","entity_key":"lx_proposal_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e70fb8a8c7eb083663726306cb748e24052c824e3e9b87721c60a89d276cd1c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_proposal_writing_02 -> audio/generated/de-DE/lexical/33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('81a16910-c88f-5a37-ab4d-c63e8fdca2d4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_proposal_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2578a60c60e72776ab029b17d2163958d93dd6de99196ace7921a11fadb235ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f85a82d-e334-5fd0-8aa6-558962e39622', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('81a16910-c88f-5a37-ab4d-c63e8fdca2d4', 1), '2578a60c60e72776ab029b17d2163958d93dd6de99196ace7921a11fadb235ad',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0.mp3', 1436, '2026-09-13 10:21:15.768886', 'e70fb8a8c7eb083663726306cb748e24052c824e3e9b87721c60a89d276cd1c4', 'validated', '{"audio_key":"33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0","entity_key":"wf_proposal_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e70fb8a8c7eb083663726306cb748e24052c824e3e9b87721c60a89d276cd1c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/33310b537824034f3b732935d2b812d1f8a9c51d43d7dd01334f9dcb8062e3f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_interviews_02 -> audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9475036-87d4-502d-ac21-20e513a77cb1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_interviews_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cf62e4f-d08a-55cd-9b62-feeffdb9da45', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9475036-87d4-502d-ac21-20e513a77cb1', 1), '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3', 1201, '2026-09-13 10:21:15.979109', '924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e', 'validated', '{"audio_key":"33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3","entity_key":"lx_expert_interviews_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_interviews_02 -> audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a8e70d6-660f-5ebd-a021-c29098b172d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_interviews_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77d4d56d-f7fc-59cc-99f6-e53ed6e9c2e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a8e70d6-660f-5ebd-a021-c29098b172d3', 1), '2d9c9e8fbef2b98bb3989dc751abbab675fd0f9a2dd917af5155a13085467162',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3', 1201, '2026-09-13 10:21:15.979109', '924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e', 'validated', '{"audio_key":"33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3","entity_key":"wf_expert_interviews_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924f34a269ee31c88c1442cbb5419c5d52cb17ab8f08221c7cddfbf357951a0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/33911ddd691b477c2f88419b016adc918616868b3c5d03655614d3fcdabdc5c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_power_06 -> audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d1f5efc8-3963-5d10-a716-7aba0b40292c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_power_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd97f502-d68c-53d8-bc65-a216a08489c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d1f5efc8-3963-5d10-a716-7aba0b40292c', 1), '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3', 1384, '2026-09-13 10:21:16.856955', '354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106', 'validated', '{"audio_key":"40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710","entity_key":"lx_conflict_mediation_power_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_power_06 -> audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cac6cd70-6dcb-5e33-86f9-bf0ed48c2c58', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_power_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4a604ba-3299-5c61-b81b-1088e7b2cc11', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cac6cd70-6dcb-5e33-86f9-bf0ed48c2c58', 1), '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3', 1384, '2026-09-13 10:21:16.856955', '354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106', 'validated', '{"audio_key":"40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710","entity_key":"wf_conflict_mediation_power_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_planning_03 -> audio/generated/de-DE/lexical/41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b47f17bd-cca0-5f56-af6f-f3d4d041f60f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d76f754eb1536f1dec55871d8b3f29920b745788039e1744d65e888cdcfef54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62fac6b3-ace2-5511-aab9-293718320acd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b47f17bd-cca0-5f56-af6f-f3d4d041f60f', 1), '1d76f754eb1536f1dec55871d8b3f29920b745788039e1744d65e888cdcfef54',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05.mp3', 1436, '2026-09-13 10:21:17.000331', '709dc4833db63a3fdd4a0facb38b729ac0c5d20530e242e7d49d36e1c102c648', 'validated', '{"audio_key":"41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05","entity_key":"lx_scenario_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"709dc4833db63a3fdd4a0facb38b729ac0c5d20530e242e7d49d36e1c102c648","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_planning_03 -> audio/generated/de-DE/lexical/41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c714d3c8-facd-5218-94e5-4caa2e564eb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d76f754eb1536f1dec55871d8b3f29920b745788039e1744d65e888cdcfef54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aa8e5cc-c4b4-56a9-9830-395cbb5f83cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c714d3c8-facd-5218-94e5-4caa2e564eb5', 1), '1d76f754eb1536f1dec55871d8b3f29920b745788039e1744d65e888cdcfef54',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05.mp3', 1436, '2026-09-13 10:21:17.000331', '709dc4833db63a3fdd4a0facb38b729ac0c5d20530e242e7d49d36e1c102c648', 'validated', '{"audio_key":"41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05","entity_key":"wf_scenario_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"709dc4833db63a3fdd4a0facb38b729ac0c5d20530e242e7d49d36e1c102c648","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41a4bf2b1894f6745ef7f8575dcb45666f2873e87c283a5400ec5cd924ba7c05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_executive_presentations_02 -> audio/generated/de-DE/lexical/45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fe4afd8f-75b7-5c8f-ac4e-9f74bb225d6e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_executive_presentations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e4dc2df279857416e0cac37c2c3eb00b0746bfa12ce461fbd966fe8509373cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b11f540-1395-5243-ae3e-9b24dae012e1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fe4afd8f-75b7-5c8f-ac4e-9f74bb225d6e', 1), '6e4dc2df279857416e0cac37c2c3eb00b0746bfa12ce461fbd966fe8509373cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540.mp3', 1697, '2026-09-13 10:21:17.907322', '674bc2d666d1250b7af02e16d183bc02cce9312dcd18828936c36d0f8986b8db', 'validated', '{"audio_key":"45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540","entity_key":"lx_executive_presentations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"674bc2d666d1250b7af02e16d183bc02cce9312dcd18828936c36d0f8986b8db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_executive_presentations_02 -> audio/generated/de-DE/lexical/45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32baedb4-4296-5b88-be8f-cbfa2fc22edb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_executive_presentations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e4dc2df279857416e0cac37c2c3eb00b0746bfa12ce461fbd966fe8509373cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d509047b-bb14-5bee-9f43-16c2980f7c1a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32baedb4-4296-5b88-be8f-cbfa2fc22edb', 1), '6e4dc2df279857416e0cac37c2c3eb00b0746bfa12ce461fbd966fe8509373cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540.mp3', 1697, '2026-09-13 10:21:17.907322', '674bc2d666d1250b7af02e16d183bc02cce9312dcd18828936c36d0f8986b8db', 'validated', '{"audio_key":"45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540","entity_key":"wf_executive_presentations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"674bc2d666d1250b7af02e16d183bc02cce9312dcd18828936c36d0f8986b8db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/45ba99f9751b63ee2310dece6f39f6fc5c2988344578a3a515dd838b2ed6b540.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_interpretation_04 -> audio/generated/de-DE/lexical/4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('401d4e00-0932-5cb6-aefa-fe68a305d572', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_interpretation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ceb31fc15d3ff208791ed38fea5c91283420a2cf48568191c2ded59124692b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4cd32da-0854-5f39-9d31-bc789f81dade', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('401d4e00-0932-5cb6-aefa-fe68a305d572', 1), '1ceb31fc15d3ff208791ed38fea5c91283420a2cf48568191c2ded59124692b8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632.mp3', 1201, '2026-09-13 10:21:18.014434', 'ff71ec5e250a2963aa4393790c75cb5d9ab1b4bf4b2a08b658d1bab69905c056', 'validated', '{"audio_key":"4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632","entity_key":"lx_data_interpretation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff71ec5e250a2963aa4393790c75cb5d9ab1b4bf4b2a08b658d1bab69905c056","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_interpretation_04 -> audio/generated/de-DE/lexical/4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8be8b16-fd68-5564-860d-b4cb4db075ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_interpretation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ceb31fc15d3ff208791ed38fea5c91283420a2cf48568191c2ded59124692b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49732139-d6ba-5963-8bca-911d0a6f2a9b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8be8b16-fd68-5564-860d-b4cb4db075ed', 1), '1ceb31fc15d3ff208791ed38fea5c91283420a2cf48568191c2ded59124692b8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632.mp3', 1201, '2026-09-13 10:21:18.014434', 'ff71ec5e250a2963aa4393790c75cb5d9ab1b4bf4b2a08b658d1bab69905c056', 'validated', '{"audio_key":"4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632","entity_key":"wf_data_interpretation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff71ec5e250a2963aa4393790c75cb5d9ab1b4bf4b2a08b658d1bab69905c056","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4ec3f686725c38fb87c2271c3e6532dc35729e9b3a6628c7871bdf883869d632.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_alignment_capstone_02 -> audio/generated/de-DE/lexical/4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af7cb718-3909-5ad4-ba03-b316c84bb1f0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_alignment_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41cdbcf89c2a78d10001cf2b308e078de2885df88887f484f56e4492f0365a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e02b24d-6291-5314-9f09-0d93b64262d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af7cb718-3909-5ad4-ba03-b316c84bb1f0', 1), 'b41cdbcf89c2a78d10001cf2b308e078de2885df88887f484f56e4492f0365a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37.mp3', 1515, '2026-09-13 10:21:18.961249', '327802c344381ce5a5f313691b0ed96243c3a7cc0985e203777c3d88bd446fca', 'validated', '{"audio_key":"4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37","entity_key":"lx_strategic_alignment_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"327802c344381ce5a5f313691b0ed96243c3a7cc0985e203777c3d88bd446fca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_alignment_capstone_02 -> audio/generated/de-DE/lexical/4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d383a727-f91b-5509-ac19-d7f06df843bc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_alignment_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41cdbcf89c2a78d10001cf2b308e078de2885df88887f484f56e4492f0365a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1200cae4-b46e-5e87-956f-0b2b9cd97049', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d383a727-f91b-5509-ac19-d7f06df843bc', 1), 'b41cdbcf89c2a78d10001cf2b308e078de2885df88887f484f56e4492f0365a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37.mp3', 1515, '2026-09-13 10:21:18.961249', '327802c344381ce5a5f313691b0ed96243c3a7cc0985e203777c3d88bd446fca', 'validated', '{"audio_key":"4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37","entity_key":"wf_strategic_alignment_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"327802c344381ce5a5f313691b0ed96243c3a7cc0985e203777c3d88bd446fca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4fd0c22d71c9dd4fb1b6b756068b2e3f3e129c1f9627c360df20777ad1a2bf37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_executive_presentations_04 -> audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('264130d6-1e39-5ee7-84f5-dbc333c8e69e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_executive_presentations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dac5e26-b048-5fda-9fd1-903ef8d69ac7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('264130d6-1e39-5ee7-84f5-dbc333c8e69e', 1), 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3', 1149, '2026-09-13 10:21:19.044720', '916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2', 'validated', '{"audio_key":"570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c","entity_key":"lx_executive_presentations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_executive_presentations_04 -> audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('580574b8-e28c-548a-8a0f-d7500dd239fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_executive_presentations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bcd6057-38ca-59eb-90f1-a5c87911f377', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('580574b8-e28c-548a-8a0f-d7500dd239fc', 1), 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3', 1149, '2026-09-13 10:21:19.044720', '916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2', 'validated', '{"audio_key":"570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c","entity_key":"wf_executive_presentations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_power_05 -> audio/generated/de-DE/lexical/5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('528607ea-0800-5800-9947-8c37afe167a9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_power_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '677e6155af080f94034f0173d3e8e54f4d3e7fb600a5400baa1db020fc267f40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ef515eb-963c-5e59-89d6-3143be460c88', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('528607ea-0800-5800-9947-8c37afe167a9', 1), '677e6155af080f94034f0173d3e8e54f4d3e7fb600a5400baa1db020fc267f40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd.mp3', 1201, '2026-09-13 10:21:19.958928', 'ea5d6bc9e940141f5e2edbd62faa2a334d7eff979686e11d76212c125c81703b', 'validated', '{"audio_key":"5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd","entity_key":"lx_conflict_mediation_power_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea5d6bc9e940141f5e2edbd62faa2a334d7eff979686e11d76212c125c81703b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_power_05 -> audio/generated/de-DE/lexical/5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c74dbec0-3c04-5761-9dfe-28d23d3a9b95', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_power_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '677e6155af080f94034f0173d3e8e54f4d3e7fb600a5400baa1db020fc267f40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('650f69e1-4b19-5dfb-b9e5-34ebbe4666bc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c74dbec0-3c04-5761-9dfe-28d23d3a9b95', 1), '677e6155af080f94034f0173d3e8e54f4d3e7fb600a5400baa1db020fc267f40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd.mp3', 1201, '2026-09-13 10:21:19.958928', 'ea5d6bc9e940141f5e2edbd62faa2a334d7eff979686e11d76212c125c81703b', 'validated', '{"audio_key":"5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd","entity_key":"wf_conflict_mediation_power_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea5d6bc9e940141f5e2edbd62faa2a334d7eff979686e11d76212c125c81703b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5e2d043f6ef59cdfb8a49412e9d45512ed34424dc3e07ccc6c691de2e28ad6dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_planning_02 -> audio/generated/de-DE/lexical/62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4ea5b8c-67b8-5597-9eed-148e5380288a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e597bfbb443a5f134844d6fea208dc3e514dffa29dbbaeef77f8ae9bf1de9d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d02984a7-d350-5a31-9b39-3cd16896297b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4ea5b8c-67b8-5597-9eed-148e5380288a', 1), '4e597bfbb443a5f134844d6fea208dc3e514dffa29dbbaeef77f8ae9bf1de9d5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7.mp3', 1097, '2026-09-13 10:21:20.073761', '6b06c436ab134e843099ca6bff8f2bf62532a870fd0d35d0c18bff053286cdbe', 'validated', '{"audio_key":"62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7","entity_key":"lx_scenario_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b06c436ab134e843099ca6bff8f2bf62532a870fd0d35d0c18bff053286cdbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_planning_02 -> audio/generated/de-DE/lexical/62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('40e34b02-9366-5447-8cd7-f183849fa23e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e597bfbb443a5f134844d6fea208dc3e514dffa29dbbaeef77f8ae9bf1de9d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01850375-d059-5d6c-902d-4e51065cf4bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('40e34b02-9366-5447-8cd7-f183849fa23e', 1), '4e597bfbb443a5f134844d6fea208dc3e514dffa29dbbaeef77f8ae9bf1de9d5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7.mp3', 1097, '2026-09-13 10:21:20.073761', '6b06c436ab134e843099ca6bff8f2bf62532a870fd0d35d0c18bff053286cdbe', 'validated', '{"audio_key":"62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7","entity_key":"wf_scenario_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b06c436ab134e843099ca6bff8f2bf62532a870fd0d35d0c18bff053286cdbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62fa77eb3d5f194465e287aab0d59fbce4313696b4002f1c7e29eab2eccd24f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_interpretation_06 -> audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9787b15b-5d82-5c9a-979e-d76e96ae95de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_interpretation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('952deedc-0bf2-5dcc-bf11-a88e873964ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9787b15b-5d82-5c9a-979e-d76e96ae95de', 1), 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3', 1384, '2026-09-13 10:21:21.037824', '576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815', 'validated', '{"audio_key":"64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594","entity_key":"lx_data_interpretation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_interpretation_06 -> audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('236f5ef3-7643-56d6-aeed-74e1b9149110', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_interpretation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('377df7c0-0909-5d02-a494-d39be53623b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('236f5ef3-7643-56d6-aeed-74e1b9149110', 1), 'fa8146cbfa15ce79d7855372613e89a910bd1749638758aeeb17afa912047781',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3', 1384, '2026-09-13 10:21:21.037824', '576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815', 'validated', '{"audio_key":"64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594","entity_key":"wf_data_interpretation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"576a8a8be5a8b3cd8431d180bf8a215f4fc3526258534a42104019e87762d815","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64d673b1ba71faf4f64a41ac504d0bdad36ced474c5349872e5752063d47e594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_proposal_writing_01 -> audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('80c25f82-d5ee-52ca-b516-4c798edcefad', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_proposal_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('481444ee-b807-5eb8-bc54-d01a9f08dc19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('80c25f82-d5ee-52ca-b516-4c798edcefad', 1), 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3', 1436, '2026-09-13 09:40:58.136800', '4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79', 'validated', '{"audio_key":"65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16","entity_key":"lx_proposal_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_proposal_writing_01 -> audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80694572-8f07-594e-8752-39cc941a3c94', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_proposal_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbb340c2-e299-5c55-8d60-fa1b65241719', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80694572-8f07-594e-8752-39cc941a3c94', 1), 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3', 1436, '2026-09-13 09:40:58.136800', '4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79', 'validated', '{"audio_key":"65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16","entity_key":"wf_proposal_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_interpretation_03 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_interpretation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3834db5-363b-50fe-97f5-0de7ab7402f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"lx_data_interpretation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_interpretation_03 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a5a2b8fa-cc81-5add-8193-54d49823e946', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_interpretation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13eed761-9742-51e4-b3be-21d2939f2f41', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a5a2b8fa-cc81-5add-8193-54d49823e946', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"wf_data_interpretation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_communication_01 -> audio/generated/de-DE/lexical/6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d76b49b-de1d-5813-b314-90eca9d6ef93', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44bbf65f4fe8a220fb1cdb3e1dad7541d345acab37e35c17f23a0b6cf85030dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1541242-c527-55a8-8cbe-67bc8febb6a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d76b49b-de1d-5813-b314-90eca9d6ef93', 1), '44bbf65f4fe8a220fb1cdb3e1dad7541d345acab37e35c17f23a0b6cf85030dc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c.mp3', 1515, '2026-09-13 10:21:21.138561', 'd6c909e1f9580add309d77ab614f1c5ab99fc2e19de5a376568e671fa5991a92', 'validated', '{"audio_key":"6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c","entity_key":"lx_change_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6c909e1f9580add309d77ab614f1c5ab99fc2e19de5a376568e671fa5991a92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_communication_01 -> audio/generated/de-DE/lexical/6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d9f14157-77c7-52c6-8dd4-fb3b955bc442', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44bbf65f4fe8a220fb1cdb3e1dad7541d345acab37e35c17f23a0b6cf85030dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd30acf6-be95-5d36-8abb-53dc08ce0dd2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d9f14157-77c7-52c6-8dd4-fb3b955bc442', 1), '44bbf65f4fe8a220fb1cdb3e1dad7541d345acab37e35c17f23a0b6cf85030dc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c.mp3', 1515, '2026-09-13 10:21:21.138561', 'd6c909e1f9580add309d77ab614f1c5ab99fc2e19de5a376568e671fa5991a92', 'validated', '{"audio_key":"6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c","entity_key":"wf_change_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6c909e1f9580add309d77ab614f1c5ab99fc2e19de5a376568e671fa5991a92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6664e55aa2e82b8175d9410ea8ca1799b0f0fb5a9f0c1fcbec2e6bac40def57c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_interpretation_05 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_interpretation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c4c3a8e-958d-56ca-b95e-1506b839bf72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"lx_data_interpretation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_interpretation_05 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e45ae222-6e4d-59b3-8c70-4346d745c465', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_interpretation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8313737a-8c5f-54f6-94f6-136032ceb25e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e45ae222-6e4d-59b3-8c70-4346d745c465', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"wf_data_interpretation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_data_interpretation_01 -> audio/generated/de-DE/lexical/714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bcc08d34-ed9b-523e-bade-dddcf8bb3716', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_data_interpretation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c5071622fd3f502dd76afe31ef4e7b0198fa4360dae68d276868f5e5aa3c498'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aec88ce4-6396-5863-a9ad-a37a4dc1663c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bcc08d34-ed9b-523e-bade-dddcf8bb3716', 1), '0c5071622fd3f502dd76afe31ef4e7b0198fa4360dae68d276868f5e5aa3c498',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9.mp3', 1280, '2026-09-13 10:21:22.129051', '7b351398bc6fac6aeba4d37876bc732f1050b6ac0efaeb2b0a59b8741e23ea92', 'validated', '{"audio_key":"714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9","entity_key":"lx_data_interpretation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b351398bc6fac6aeba4d37876bc732f1050b6ac0efaeb2b0a59b8741e23ea92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_data_interpretation_01 -> audio/generated/de-DE/lexical/714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6265223e-a2bb-5ed6-b937-aa5cf9ede0cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_data_interpretation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c5071622fd3f502dd76afe31ef4e7b0198fa4360dae68d276868f5e5aa3c498'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ed688ce-fd82-5788-ad4c-0110aadf9786', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6265223e-a2bb-5ed6-b937-aa5cf9ede0cf', 1), '0c5071622fd3f502dd76afe31ef4e7b0198fa4360dae68d276868f5e5aa3c498',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9.mp3', 1280, '2026-09-13 10:21:22.129051', '7b351398bc6fac6aeba4d37876bc732f1050b6ac0efaeb2b0a59b8741e23ea92', 'validated', '{"audio_key":"714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9","entity_key":"wf_data_interpretation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b351398bc6fac6aeba4d37876bc732f1050b6ac0efaeb2b0a59b8741e23ea92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/714e3cfa2f6daf1155370f4a7cb3fa225518180cb1275a1de112fe4840d585d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_partnership_negotiation_06 -> audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3243d12-8112-57c7-8d90-193a0b4ff09f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_partnership_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49dcdba5-cc5a-5cd4-941f-ebf9d505814f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3243d12-8112-57c7-8d90-193a0b4ff09f', 1), 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3', 1280, '2026-09-13 10:01:07.055648', '9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d', 'validated', '{"audio_key":"73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e","entity_key":"lx_partnership_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_partnership_negotiation_06 -> audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eeb13ec2-5a22-511a-9c95-1f6dd9c23a5c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_partnership_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdbe0314-cae4-59a2-87ad-2aeb10acc65a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eeb13ec2-5a22-511a-9c95-1f6dd9c23a5c', 1), 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3', 1280, '2026-09-13 10:01:07.055648', '9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d', 'validated', '{"audio_key":"73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e","entity_key":"wf_partnership_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_proposal_writing_04 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_proposal_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('361c079f-d85c-519d-b931-34e1d1ecdb08', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"lx_proposal_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_proposal_writing_04 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39b4813a-0b60-57f1-9f1f-3c4080599a88', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_proposal_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('600b440b-fd71-5b4a-84b6-56658c80302d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39b4813a-0b60-57f1-9f1f-3c4080599a88', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"wf_proposal_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meeting_facilitation_05 -> audio/generated/de-DE/lexical/7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8663fe3c-b6ca-5463-859e-21ffeeb8df46', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meeting_facilitation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '631b9337c2090ad10bf2833ec1ef9785c1ef838535db704569e8fb7ad5d8f5d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67551de9-44f4-54f4-9e63-2b82710a4858', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8663fe3c-b6ca-5463-859e-21ffeeb8df46', 1), '631b9337c2090ad10bf2833ec1ef9785c1ef838535db704569e8fb7ad5d8f5d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116.mp3', 1097, '2026-09-13 10:21:22.120056', '8231168e2553c2b9f83154614c96164c8ed272ee23665f4d7d5eba4a49e3a2a7', 'validated', '{"audio_key":"7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116","entity_key":"lx_meeting_facilitation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8231168e2553c2b9f83154614c96164c8ed272ee23665f4d7d5eba4a49e3a2a7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meeting_facilitation_05 -> audio/generated/de-DE/lexical/7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e76819f0-d04d-59cd-a11a-a40292ae70a5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meeting_facilitation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '631b9337c2090ad10bf2833ec1ef9785c1ef838535db704569e8fb7ad5d8f5d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80313910-7c3b-5494-a3c0-03d81f15e5df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e76819f0-d04d-59cd-a11a-a40292ae70a5', 1), '631b9337c2090ad10bf2833ec1ef9785c1ef838535db704569e8fb7ad5d8f5d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116.mp3', 1097, '2026-09-13 10:21:22.120056', '8231168e2553c2b9f83154614c96164c8ed272ee23665f4d7d5eba4a49e3a2a7', 'validated', '{"audio_key":"7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116","entity_key":"wf_meeting_facilitation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8231168e2553c2b9f83154614c96164c8ed272ee23665f4d7d5eba4a49e3a2a7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7daee25d3cb411bc178355fbc987d19adba0bb392dd8b5f22a2ebb42f939b116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_communication_06 -> audio/generated/de-DE/lexical/7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af8ee87e-6a72-5efc-ab05-47f6d7b00455', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0636b768a9ed2844ae2f19a5d6b97926ef180a892773e332999cfa72f85dd3da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e7c4bac-e619-503a-9296-c09aec12b7b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af8ee87e-6a72-5efc-ab05-47f6d7b00455', 1), '0636b768a9ed2844ae2f19a5d6b97926ef180a892773e332999cfa72f85dd3da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d.mp3', 1671, '2026-09-13 10:21:23.195905', 'b63bd4a3b97e60f25418fc194f015703a3dbb6a8d30bac5c4c40277a12515612', 'validated', '{"audio_key":"7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d","entity_key":"lx_change_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b63bd4a3b97e60f25418fc194f015703a3dbb6a8d30bac5c4c40277a12515612","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_communication_06 -> audio/generated/de-DE/lexical/7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e730d6f3-6563-5486-85be-a9e579009f9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0636b768a9ed2844ae2f19a5d6b97926ef180a892773e332999cfa72f85dd3da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ca79ae2-70d1-57ef-a14a-c8750497a6f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e730d6f3-6563-5486-85be-a9e579009f9e', 1), '0636b768a9ed2844ae2f19a5d6b97926ef180a892773e332999cfa72f85dd3da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d.mp3', 1671, '2026-09-13 10:21:23.195905', 'b63bd4a3b97e60f25418fc194f015703a3dbb6a8d30bac5c4c40277a12515612', 'validated', '{"audio_key":"7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d","entity_key":"wf_change_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b63bd4a3b97e60f25418fc194f015703a3dbb6a8d30bac5c4c40277a12515612","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7edd16ec29d8113197b6369f1916c409fcf44871d7b4077fdc07e408fc6ae24d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_planning_05 -> audio/generated/de-DE/lexical/888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f0d6422e-633b-555c-b2ba-8ff9f6a93dd3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f650dce81c641b4cf5870eaff5ab08b816b2fed5f8cc38b4693ae41c6b823f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d9d9043-c579-5e0b-8769-c665cf393a5c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f0d6422e-633b-555c-b2ba-8ff9f6a93dd3', 1), '3f650dce81c641b4cf5870eaff5ab08b816b2fed5f8cc38b4693ae41c6b823f1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621.mp3', 1071, '2026-09-13 10:21:23.170872', 'f00515d0e205ddefc48bf75ccde0e267690be375acfec31c6a9bd6e1ab61e4c7', 'validated', '{"audio_key":"888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621","entity_key":"lx_scenario_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f00515d0e205ddefc48bf75ccde0e267690be375acfec31c6a9bd6e1ab61e4c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_planning_05 -> audio/generated/de-DE/lexical/888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('539c98d6-a5bb-5a14-bea1-fdc8c55f9aaa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f650dce81c641b4cf5870eaff5ab08b816b2fed5f8cc38b4693ae41c6b823f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd7e6d6e-ddbe-5264-95b2-06ccb32e8c58', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('539c98d6-a5bb-5a14-bea1-fdc8c55f9aaa', 1), '3f650dce81c641b4cf5870eaff5ab08b816b2fed5f8cc38b4693ae41c6b823f1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621.mp3', 1071, '2026-09-13 10:21:23.170872', 'f00515d0e205ddefc48bf75ccde0e267690be375acfec31c6a9bd6e1ab61e4c7', 'validated', '{"audio_key":"888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621","entity_key":"wf_scenario_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f00515d0e205ddefc48bf75ccde0e267690be375acfec31c6a9bd6e1ab61e4c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/888513e0bcea277ea869ffadfa7c285babfa166077e2be663e20474f09bc7621.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_power_03 -> audio/generated/de-DE/lexical/88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6793f1e4-f484-5913-9a84-4d6c2ad19721', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_power_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9c2d59344fca5649108700622693c553b4c4ffefd8560b13014ee06d37457b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b4660a2-ad94-52c8-8c02-f8e9a9c37b7f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6793f1e4-f484-5913-9a84-4d6c2ad19721', 1), 'ac9c2d59344fca5649108700622693c553b4c4ffefd8560b13014ee06d37457b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7.mp3', 1332, '2026-09-13 10:21:24.200434', '9475175f5aa24e7807d694014488a407a87394d594d0cfc249a787b526d5acfb', 'validated', '{"audio_key":"88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7","entity_key":"lx_conflict_mediation_power_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9475175f5aa24e7807d694014488a407a87394d594d0cfc249a787b526d5acfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_power_03 -> audio/generated/de-DE/lexical/88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('41f903f3-6340-599f-8911-e8f4cdbab8ec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_power_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9c2d59344fca5649108700622693c553b4c4ffefd8560b13014ee06d37457b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c435e26-7322-5b5f-b4ae-7cd9b3c09da5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('41f903f3-6340-599f-8911-e8f4cdbab8ec', 1), 'ac9c2d59344fca5649108700622693c553b4c4ffefd8560b13014ee06d37457b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7.mp3', 1332, '2026-09-13 10:21:24.200434', '9475175f5aa24e7807d694014488a407a87394d594d0cfc249a787b526d5acfb', 'validated', '{"audio_key":"88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7","entity_key":"wf_conflict_mediation_power_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9475175f5aa24e7807d694014488a407a87394d594d0cfc249a787b526d5acfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88cb587ccba67258dd22b36bd1a0673254c24361d00094bf58844a610caf7db7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_power_02 -> audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3fe935a1-ca4c-53b2-9224-fa844cd9c185', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_power_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7155057-e385-515a-9666-c61009c836df', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3fe935a1-ca4c-53b2-9224-fa844cd9c185', 1), '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3', 1488, '2026-09-13 10:21:24.242031', '65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64', 'validated', '{"audio_key":"966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab","entity_key":"lx_conflict_mediation_power_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_power_02 -> audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ac3838ee-2474-5e4c-9ab8-2b60ed56769b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_power_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('297208a9-65e9-522f-9b5e-d8d558a3ce87', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ac3838ee-2474-5e4c-9ab8-2b60ed56769b', 1), '61988612da358e02b68582335ab44883752fb280245610441e1868d5341e647e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3', 1488, '2026-09-13 10:21:24.242031', '65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64', 'validated', '{"audio_key":"966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab","entity_key":"wf_conflict_mediation_power_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65f68ee6e6df649691bb055bf045c85768ce0ff3d45168ad3cf2179d766f5b64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/966bf8108c27d62c538a243d5ad42213fb07e83a26fe326b1f136ef342e3d5ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_planning_04 -> audio/generated/de-DE/lexical/99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f421b3a-9502-5c30-9b49-cbb22df6d3fb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f177f99baa370ea3db19b3535257799c5f90d50c3037fce3ab83d0051567dcbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de73f897-f59b-5548-b803-f92ff0462d0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f421b3a-9502-5c30-9b49-cbb22df6d3fb', 1), 'f177f99baa370ea3db19b3535257799c5f90d50c3037fce3ab83d0051567dcbf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550.mp3', 1253, '2026-09-13 10:21:25.217673', 'd4d7139e937e8db90fe17912f6f90f87fd1a8c13e85b153fcded3cf031d380bb', 'validated', '{"audio_key":"99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550","entity_key":"lx_scenario_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4d7139e937e8db90fe17912f6f90f87fd1a8c13e85b153fcded3cf031d380bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_planning_04 -> audio/generated/de-DE/lexical/99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2b3e93d-8fa3-5207-90dc-acffe7ccd4e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f177f99baa370ea3db19b3535257799c5f90d50c3037fce3ab83d0051567dcbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d55abbf5-9fa5-5c9d-a7a7-07c433f3b71d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2b3e93d-8fa3-5207-90dc-acffe7ccd4e5', 1), 'f177f99baa370ea3db19b3535257799c5f90d50c3037fce3ab83d0051567dcbf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550.mp3', 1253, '2026-09-13 10:21:25.217673', 'd4d7139e937e8db90fe17912f6f90f87fd1a8c13e85b153fcded3cf031d380bb', 'validated', '{"audio_key":"99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550","entity_key":"wf_scenario_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4d7139e937e8db90fe17912f6f90f87fd1a8c13e85b153fcded3cf031d380bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/99fb4d92d78c3930f17e9d8dd2ac672f048e63116f783c34b9995ce6959fe550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meeting_facilitation_02 -> audio/generated/de-DE/lexical/9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3deda14-52c0-5898-8457-4bd689835ac9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meeting_facilitation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1da9c6264fa232b0822c094cdcddb356a515682b8eecbc38370fcab0ef4b2013'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e60afc1e-df6c-5026-8381-e7845130fafc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3deda14-52c0-5898-8457-4bd689835ac9', 1), '1da9c6264fa232b0822c094cdcddb356a515682b8eecbc38370fcab0ef4b2013',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832.mp3', 1436, '2026-09-13 10:21:25.285974', 'b336e5a10c314c755d435edfd91389060a9d6e96a629af1e2cc43634f0fcbbfe', 'validated', '{"audio_key":"9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832","entity_key":"lx_meeting_facilitation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b336e5a10c314c755d435edfd91389060a9d6e96a629af1e2cc43634f0fcbbfe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meeting_facilitation_02 -> audio/generated/de-DE/lexical/9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('54de6229-9ad1-5217-839b-53006f585500', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meeting_facilitation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1da9c6264fa232b0822c094cdcddb356a515682b8eecbc38370fcab0ef4b2013'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22ed9df0-450f-5f6f-a43b-b4cd6d0772ca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('54de6229-9ad1-5217-839b-53006f585500', 1), '1da9c6264fa232b0822c094cdcddb356a515682b8eecbc38370fcab0ef4b2013',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832.mp3', 1436, '2026-09-13 10:21:25.285974', 'b336e5a10c314c755d435edfd91389060a9d6e96a629af1e2cc43634f0fcbbfe', 'validated', '{"audio_key":"9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832","entity_key":"wf_meeting_facilitation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b336e5a10c314c755d435edfd91389060a9d6e96a629af1e2cc43634f0fcbbfe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d527c7d0f5340bad8455938fb50ca4e661e3cc387a790693bb1080ae031d832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_interviews_04 -> audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a32bf5d4-c8ce-5a07-b5e0-94b24b772ff3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_interviews_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('854dfdfb-4ce8-5a46-977c-71b23b40f953', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a32bf5d4-c8ce-5a07-b5e0-94b24b772ff3', 1), '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3', 1097, '2026-09-13 10:21:26.233780', 'd1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae', 'validated', '{"audio_key":"9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3","entity_key":"lx_expert_interviews_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_interviews_04 -> audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc1db3ff-3774-54ae-8987-0f78c51f4c40', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_interviews_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2f9420c-de94-5367-ad40-1eb731a0336a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc1db3ff-3774-54ae-8987-0f78c51f4c40', 1), '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3', 1097, '2026-09-13 10:21:26.233780', 'd1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae', 'validated', '{"audio_key":"9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3","entity_key":"wf_expert_interviews_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_alignment_capstone_04 -> audio/generated/de-DE/lexical/a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0585c3e6-409e-56ae-bfa9-ed31b5bfb7b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_alignment_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34c6de2f22248a7a3902da7abc9c355c455be077ff7d903abc8bc90e575e6400'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ce26d0b-500c-5c5e-a12c-229132f0dbdd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0585c3e6-409e-56ae-bfa9-ed31b5bfb7b8', 1), '34c6de2f22248a7a3902da7abc9c355c455be077ff7d903abc8bc90e575e6400',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf.mp3', 1071, '2026-09-13 05:30:36.335371', 'e65279dbd4474c84cc8fcf8d60334847dba212ebc7e7ad74d4f58a7c139e7503', 'validated', '{"audio_key":"a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf","entity_key":"lx_strategic_alignment_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e65279dbd4474c84cc8fcf8d60334847dba212ebc7e7ad74d4f58a7c139e7503","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_alignment_capstone_04 -> audio/generated/de-DE/lexical/a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8fcd2836-49cb-5152-b99d-d937c53429a7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_alignment_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34c6de2f22248a7a3902da7abc9c355c455be077ff7d903abc8bc90e575e6400'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7d81b7f-1d2c-5620-bb9c-34e9f9ae726a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8fcd2836-49cb-5152-b99d-d937c53429a7', 1), '34c6de2f22248a7a3902da7abc9c355c455be077ff7d903abc8bc90e575e6400',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf.mp3', 1071, '2026-09-13 05:30:36.335371', 'e65279dbd4474c84cc8fcf8d60334847dba212ebc7e7ad74d4f58a7c139e7503', 'validated', '{"audio_key":"a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf","entity_key":"wf_strategic_alignment_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e65279dbd4474c84cc8fcf8d60334847dba212ebc7e7ad74d4f58a7c139e7503","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a18772b1c9b586346c0b8238aef7ceb61d3889b707c86d98d6e2e5b9050023bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_partnership_negotiation_02 -> audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('faaf1065-f9d4-5820-82fe-4a27b81d2498', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_partnership_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1747a39e-b4b0-5644-8809-74991430f6f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('faaf1065-f9d4-5820-82fe-4a27b81d2498', 1), 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3', 1149, '2026-09-13 10:01:10.071281', '114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561', 'validated', '{"audio_key":"a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb","entity_key":"lx_partnership_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_partnership_negotiation_02 -> audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e1cf12d3-fcd6-5efc-8e87-952d16e20b73', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_partnership_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b74b400c-a433-5456-86cd-79e4ce2d6ee9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e1cf12d3-fcd6-5efc-8e87-952d16e20b73', 1), 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3', 1149, '2026-09-13 10:01:10.071281', '114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561', 'validated', '{"audio_key":"a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb","entity_key":"wf_partnership_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_partnership_negotiation_04 -> audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('314df33d-2927-566d-989f-83b5823a381e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_partnership_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c75a661e-0952-5da0-9703-297f934533cb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('314df33d-2927-566d-989f-83b5823a381e', 1), 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3', 1384, '2026-09-13 07:53:25.434941', '99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831', 'validated', '{"audio_key":"a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c","entity_key":"lx_partnership_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_partnership_negotiation_04 -> audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dfdde6b4-829c-5f73-ab1c-9ff2f7fb5aeb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_partnership_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c90a277-37d0-5ede-bdf3-1a8ca2595ab6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dfdde6b4-829c-5f73-ab1c-9ff2f7fb5aeb', 1), 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3', 1384, '2026-09-13 07:53:25.434941', '99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831', 'validated', '{"audio_key":"a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c","entity_key":"wf_partnership_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meeting_facilitation_04 -> audio/generated/de-DE/lexical/a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ee9d0213-459f-5d5c-8b25-a4bcc3c85f27', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meeting_facilitation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3622c2c3afbcadb0c6a29595ea840fb6be007924eee28616b5c498cafd18668'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fce3b448-aee1-551f-919e-1f465e8088dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ee9d0213-459f-5d5c-8b25-a4bcc3c85f27', 1), 'e3622c2c3afbcadb0c6a29595ea840fb6be007924eee28616b5c498cafd18668',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791.mp3', 1253, '2026-09-13 10:21:26.337248', '5e7533fe8ac7283100660249051a27a3e32e61c78f6efacb5b47874301d3e6b9', 'validated', '{"audio_key":"a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791","entity_key":"lx_meeting_facilitation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e7533fe8ac7283100660249051a27a3e32e61c78f6efacb5b47874301d3e6b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meeting_facilitation_04 -> audio/generated/de-DE/lexical/a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c7c43ad6-0272-5af9-aac7-df8a24816265', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meeting_facilitation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3622c2c3afbcadb0c6a29595ea840fb6be007924eee28616b5c498cafd18668'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b32412a-036e-5f02-b849-e05d8f389f15', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c7c43ad6-0272-5af9-aac7-df8a24816265', 1), 'e3622c2c3afbcadb0c6a29595ea840fb6be007924eee28616b5c498cafd18668',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791.mp3', 1253, '2026-09-13 10:21:26.337248', '5e7533fe8ac7283100660249051a27a3e32e61c78f6efacb5b47874301d3e6b9', 'validated', '{"audio_key":"a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791","entity_key":"wf_meeting_facilitation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e7533fe8ac7283100660249051a27a3e32e61c78f6efacb5b47874301d3e6b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a939d120fc048a652837937f85f4213cea0332015909ebca0dca08d1e9a93791.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_communication_03 -> audio/generated/de-DE/lexical/adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a707c00-bca9-5b21-bfa5-1cb6bbc8df75', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c48425fae6380389eee8a5620faa1ca523ec3aeb34fbf468e15f23afcd76474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79864597-eca4-5f09-9a71-3002ff44c83d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a707c00-bca9-5b21-bfa5-1cb6bbc8df75', 1), '3c48425fae6380389eee8a5620faa1ca523ec3aeb34fbf468e15f23afcd76474',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de.mp3', 1332, '2026-09-13 10:21:27.282031', '60f7e993058cfb1d51aa022389b87c731ca1c19a8c54fea4cbe28ede795be987', 'validated', '{"audio_key":"adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de","entity_key":"lx_change_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60f7e993058cfb1d51aa022389b87c731ca1c19a8c54fea4cbe28ede795be987","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_communication_03 -> audio/generated/de-DE/lexical/adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8e9f1f2f-4bb5-5f14-af15-cc16dc34d92e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c48425fae6380389eee8a5620faa1ca523ec3aeb34fbf468e15f23afcd76474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74b47824-ef40-59f5-bfa0-ab2bb1b5efb4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8e9f1f2f-4bb5-5f14-af15-cc16dc34d92e', 1), '3c48425fae6380389eee8a5620faa1ca523ec3aeb34fbf468e15f23afcd76474',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de.mp3', 1332, '2026-09-13 10:21:27.282031', '60f7e993058cfb1d51aa022389b87c731ca1c19a8c54fea4cbe28ede795be987', 'validated', '{"audio_key":"adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de","entity_key":"wf_change_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60f7e993058cfb1d51aa022389b87c731ca1c19a8c54fea4cbe28ede795be987","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/adb799502574b24b08a63338b87362ea32b5d0a1cb852af213657b929e9884de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meeting_facilitation_01 -> audio/generated/de-DE/lexical/aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7c89645b-645b-53df-91f5-e42ba7836954', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meeting_facilitation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f02908c036092e130721ee5c1af127b00da8198c788631eeae0fcfd0e53ccc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ded0cc94-63b3-5ac9-a929-a6d33512698f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7c89645b-645b-53df-91f5-e42ba7836954', 1), '4f02908c036092e130721ee5c1af127b00da8198c788631eeae0fcfd0e53ccc1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf.mp3', 1619, '2026-09-13 10:21:27.416336', '095ea4de8bbd165115c16e662de615d4b1230ae31675886d61de6516b7da224f', 'validated', '{"audio_key":"aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf","entity_key":"lx_meeting_facilitation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"095ea4de8bbd165115c16e662de615d4b1230ae31675886d61de6516b7da224f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meeting_facilitation_01 -> audio/generated/de-DE/lexical/aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff4e46bb-4b67-52ae-ac9d-9078060bf6ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meeting_facilitation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f02908c036092e130721ee5c1af127b00da8198c788631eeae0fcfd0e53ccc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb7995f3-7e77-5918-8793-a1a2e1577a07', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff4e46bb-4b67-52ae-ac9d-9078060bf6ce', 1), '4f02908c036092e130721ee5c1af127b00da8198c788631eeae0fcfd0e53ccc1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf.mp3', 1619, '2026-09-13 10:21:27.416336', '095ea4de8bbd165115c16e662de615d4b1230ae31675886d61de6516b7da224f', 'validated', '{"audio_key":"aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf","entity_key":"wf_meeting_facilitation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"095ea4de8bbd165115c16e662de615d4b1230ae31675886d61de6516b7da224f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aff6f0283f9e82142d845ef178e7a54d506a27a5792adc099eb32035a7f87eaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_interviews_06 -> audio/generated/de-DE/lexical/c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('92ecf219-fbb7-50ad-9e97-d18421770f40', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_interviews_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30ee7edc21b751016a4aded0aa6b77c75654d741a004046147203859e7253679'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16a07fdc-a18e-55e2-9c02-73f18a7939a1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('92ecf219-fbb7-50ad-9e97-d18421770f40', 1), '30ee7edc21b751016a4aded0aa6b77c75654d741a004046147203859e7253679',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a.mp3', 1253, '2026-09-13 10:21:28.312471', 'beedc9efc83fdd9962aa6658e5a83de326bcaaeb2777cfd3e622a94dfe605475', 'validated', '{"audio_key":"c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a","entity_key":"lx_expert_interviews_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"beedc9efc83fdd9962aa6658e5a83de326bcaaeb2777cfd3e622a94dfe605475","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_interviews_06 -> audio/generated/de-DE/lexical/c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10fb070d-666c-52af-9348-7c5567735e86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_interviews_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30ee7edc21b751016a4aded0aa6b77c75654d741a004046147203859e7253679'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38c1f561-5311-5cc7-a3fb-2ae098e28ef0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10fb070d-666c-52af-9348-7c5567735e86', 1), '30ee7edc21b751016a4aded0aa6b77c75654d741a004046147203859e7253679',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a.mp3', 1253, '2026-09-13 10:21:28.312471', 'beedc9efc83fdd9962aa6658e5a83de326bcaaeb2777cfd3e622a94dfe605475', 'validated', '{"audio_key":"c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a","entity_key":"wf_expert_interviews_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"beedc9efc83fdd9962aa6658e5a83de326bcaaeb2777cfd3e622a94dfe605475","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c1f9e498525b349e90358b3e231f5657544f5d0856ab1d9d44fb111549b5443a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_executive_presentations_03 -> audio/generated/de-DE/lexical/c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('336ef420-2450-566d-9f45-1193793f4b85', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_executive_presentations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '243162217dda37622fc4346d4ab572b15230e0da78516826a47de895017f3b64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e04eb04-da94-528a-9180-74faf57bbc14', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('336ef420-2450-566d-9f45-1193793f4b85', 1), '243162217dda37622fc4346d4ab572b15230e0da78516826a47de895017f3b64',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0.mp3', 1332, '2026-09-13 10:21:28.474716', '2a382e6127be79c87cb50e77a3f5116491eccb4c3499a132a8f9482836c60f91', 'validated', '{"audio_key":"c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0","entity_key":"lx_executive_presentations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a382e6127be79c87cb50e77a3f5116491eccb4c3499a132a8f9482836c60f91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_executive_presentations_03 -> audio/generated/de-DE/lexical/c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('604d2b72-6a78-5876-ba73-dcdb9218502a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_executive_presentations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '243162217dda37622fc4346d4ab572b15230e0da78516826a47de895017f3b64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdff0e97-b813-5fa6-b1dd-405fae2f67b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('604d2b72-6a78-5876-ba73-dcdb9218502a', 1), '243162217dda37622fc4346d4ab572b15230e0da78516826a47de895017f3b64',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0.mp3', 1332, '2026-09-13 10:21:28.474716', '2a382e6127be79c87cb50e77a3f5116491eccb4c3499a132a8f9482836c60f91', 'validated', '{"audio_key":"c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0","entity_key":"wf_executive_presentations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a382e6127be79c87cb50e77a3f5116491eccb4c3499a132a8f9482836c60f91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c37c32245c823dac71f81d1900aff96853517530661463668f73a2a9555f34c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_alignment_capstone_06 -> audio/generated/de-DE/lexical/ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8c190235-3452-531d-a1ae-a49d39cef6c9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_alignment_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e852e4db74641ffb10b4c2c5ddb8f651e3955748c61db82001c8dbde2ab3c15d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8d9006b-bf38-5894-8406-d5fed7720f42', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8c190235-3452-531d-a1ae-a49d39cef6c9', 1), 'e852e4db74641ffb10b4c2c5ddb8f651e3955748c61db82001c8dbde2ab3c15d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff.mp3', 1384, '2026-09-13 10:21:29.376403', '4f08e36ab49e36e6bef2a613549d844569363afe9c6e68e082d2972641d7c720', 'validated', '{"audio_key":"ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff","entity_key":"lx_strategic_alignment_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f08e36ab49e36e6bef2a613549d844569363afe9c6e68e082d2972641d7c720","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_alignment_capstone_06 -> audio/generated/de-DE/lexical/ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06ab6220-6015-5f4d-a71f-843bab87c49a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_alignment_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e852e4db74641ffb10b4c2c5ddb8f651e3955748c61db82001c8dbde2ab3c15d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('347f6d1a-c439-543a-8129-c0fabb2cef9f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06ab6220-6015-5f4d-a71f-843bab87c49a', 1), 'e852e4db74641ffb10b4c2c5ddb8f651e3955748c61db82001c8dbde2ab3c15d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff.mp3', 1384, '2026-09-13 10:21:29.376403', '4f08e36ab49e36e6bef2a613549d844569363afe9c6e68e082d2972641d7c720', 'validated', '{"audio_key":"ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff","entity_key":"wf_strategic_alignment_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f08e36ab49e36e6bef2a613549d844569363afe9c6e68e082d2972641d7c720","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ce1398574626fa09bd9071e22ab540ddd05ebcf7d45fa5c241700b64020796ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_interviews_05 -> audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9966089b-da11-5eb0-95e8-123b94d60d82', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_interviews_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c31df5db-25e8-5fde-a44b-03d5da658a0e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9966089b-da11-5eb0-95e8-123b94d60d82', 1), '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3', 1149, '2026-09-13 10:21:29.460166', '777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3', 'validated', '{"audio_key":"d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655","entity_key":"lx_expert_interviews_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_interviews_05 -> audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39a2ceed-21d5-580a-a33a-1b52f806b1aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_interviews_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8b130cc-85fd-59c1-838e-6e43411095a2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39a2ceed-21d5-580a-a33a-1b52f806b1aa', 1), '35db4139f3d074ab567ae27a0fe7a1d739d0af1bf0fd1cb23424e02d2e9c26f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3', 1149, '2026-09-13 10:21:29.460166', '777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3', 'validated', '{"audio_key":"d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655","entity_key":"wf_expert_interviews_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"777a6c66d5680a4085af5dc763ffe30df3c38451b9240f8dff5a7e3770bcb9a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d40da8913b7c8a17415d236ce88e169f2d69fbf5b3e11da6356c8f2947994655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_executive_presentations_01 -> audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56dceb87-d2b9-5e0a-b74c-8f462f3e9fde', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_executive_presentations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8df51b5-89a2-5c87-97da-495f77ba89ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56dceb87-d2b9-5e0a-b74c-8f462f3e9fde', 1), '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3', 1384, '2026-09-13 10:21:30.410630', '6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159', 'validated', '{"audio_key":"dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70","entity_key":"lx_executive_presentations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_executive_presentations_01 -> audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('21a8ce10-058b-534e-9cb5-c2bed3a76f2a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_executive_presentations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('915b172c-d6a6-5c74-bbc8-0b51918a5cb5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('21a8ce10-058b-534e-9cb5-c2bed3a76f2a', 1), '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3', 1384, '2026-09-13 10:21:30.410630', '6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159', 'validated', '{"audio_key":"dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70","entity_key":"wf_executive_presentations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_interviews_01 -> audio/generated/de-DE/lexical/df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('378a4875-727a-5474-85b3-a2f1bd966c37', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_interviews_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2933ed95ea87b0fe1cc8e0277eacf385f8583be7f034c9a1f481201a420de1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75f51933-25f4-530a-844c-0a4ba1adbbac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('378a4875-727a-5474-85b3-a2f1bd966c37', 1), 'a2933ed95ea87b0fe1cc8e0277eacf385f8583be7f034c9a1f481201a420de1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db.mp3', 1280, '2026-09-13 10:21:30.486132', 'c552129da88d33b640397f55fef12bf35d77ab5905aec2fe3fcdf69c5319a2b7', 'validated', '{"audio_key":"df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db","entity_key":"lx_expert_interviews_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c552129da88d33b640397f55fef12bf35d77ab5905aec2fe3fcdf69c5319a2b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_interviews_01 -> audio/generated/de-DE/lexical/df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc506fe4-4a02-576f-a876-292cda584be6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_interviews_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2933ed95ea87b0fe1cc8e0277eacf385f8583be7f034c9a1f481201a420de1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25b6e5e5-014c-589a-9317-99317084bf8d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc506fe4-4a02-576f-a876-292cda584be6', 1), 'a2933ed95ea87b0fe1cc8e0277eacf385f8583be7f034c9a1f481201a420de1c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db.mp3', 1280, '2026-09-13 10:21:30.486132', 'c552129da88d33b640397f55fef12bf35d77ab5905aec2fe3fcdf69c5319a2b7', 'validated', '{"audio_key":"df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db","entity_key":"wf_expert_interviews_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c552129da88d33b640397f55fef12bf35d77ab5905aec2fe3fcdf69c5319a2b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df3291ff1d2d7d61286b59d788ac4a559a1911e584f98ecba7824fe14a8b13db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_planning_06 -> audio/generated/de-DE/lexical/e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a83cecc1-3932-5f8a-928f-04c8affc7987', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'addad7832ac9c366ab45e2d4526ae07d2542bb3bd9939ce4610664f4f645875b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef04c3de-a23f-5e04-87a1-3e728ee95fef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a83cecc1-3932-5f8a-928f-04c8affc7987', 1), 'addad7832ac9c366ab45e2d4526ae07d2542bb3bd9939ce4610664f4f645875b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0.mp3', 1384, '2026-09-13 10:21:31.435876', 'a79c92de23fd863a6a8b1598a98341b0311602a17e910889ec3a18155aaf8b30', 'validated', '{"audio_key":"e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0","entity_key":"lx_scenario_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a79c92de23fd863a6a8b1598a98341b0311602a17e910889ec3a18155aaf8b30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_planning_06 -> audio/generated/de-DE/lexical/e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fb6ea959-c0b7-5010-8dd1-9ab912deb63f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'addad7832ac9c366ab45e2d4526ae07d2542bb3bd9939ce4610664f4f645875b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('652ae6bb-2720-505c-a76b-093a3163c939', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fb6ea959-c0b7-5010-8dd1-9ab912deb63f', 1), 'addad7832ac9c366ab45e2d4526ae07d2542bb3bd9939ce4610664f4f645875b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0.mp3', 1384, '2026-09-13 10:21:31.435876', 'a79c92de23fd863a6a8b1598a98341b0311602a17e910889ec3a18155aaf8b30', 'validated', '{"audio_key":"e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0","entity_key":"wf_scenario_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a79c92de23fd863a6a8b1598a98341b0311602a17e910889ec3a18155aaf8b30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e1803d479904b18fe84db01ba825c27eccda671ed9fd3a4af9fe2067ef2eb5d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_partnership_negotiation_03 -> audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('63466ced-45d1-597e-b4af-5129c2c8f9cc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_partnership_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9afeba3-34da-5e61-a5e4-3f7c6b20dcc4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('63466ced-45d1-597e-b4af-5129c2c8f9cc', 1), '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3', 1384, '2026-09-13 09:41:09.350877', 'f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8', 'validated', '{"audio_key":"e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991","entity_key":"lx_partnership_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_partnership_negotiation_03 -> audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4c26378a-fcc5-5097-88cf-4e7c3f0d61dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_partnership_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b956cfdf-88fa-5c29-86c7-68d4a83574af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4c26378a-fcc5-5097-88cf-4e7c3f0d61dd', 1), '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3', 1384, '2026-09-13 09:41:09.350877', 'f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8', 'validated', '{"audio_key":"e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991","entity_key":"wf_partnership_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_communication_04 -> audio/generated/de-DE/lexical/e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b965c185-8ddc-5252-b606-4ccfdd229dac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d6bef07071e74b90b2c10b6bb2b5c356201376252918d114861b8730ef303a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd3fb93d-611b-5cec-a18b-60728bba335f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b965c185-8ddc-5252-b606-4ccfdd229dac', 1), '01d6bef07071e74b90b2c10b6bb2b5c356201376252918d114861b8730ef303a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d.mp3', 1253, '2026-09-13 10:21:31.514227', '5d34b8b7e42915c71eea1543b2437cfd4de3bc9739f4a308d71a34e091a4063d', 'validated', '{"audio_key":"e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d","entity_key":"lx_change_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d34b8b7e42915c71eea1543b2437cfd4de3bc9739f4a308d71a34e091a4063d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_communication_04 -> audio/generated/de-DE/lexical/e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8b62e5d8-eed5-58f9-be9b-ce9e01477fde', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d6bef07071e74b90b2c10b6bb2b5c356201376252918d114861b8730ef303a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ea4448d-7c76-5561-918c-3f9d26089c86', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8b62e5d8-eed5-58f9-be9b-ce9e01477fde', 1), '01d6bef07071e74b90b2c10b6bb2b5c356201376252918d114861b8730ef303a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d.mp3', 1253, '2026-09-13 10:21:31.514227', '5d34b8b7e42915c71eea1543b2437cfd4de3bc9739f4a308d71a34e091a4063d', 'validated', '{"audio_key":"e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d","entity_key":"wf_change_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d34b8b7e42915c71eea1543b2437cfd4de3bc9739f4a308d71a34e091a4063d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e49752dab6e155d64120a3ff04c025e5d7a920174f8bf3f1ed52b705febf047d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_proposal_writing_03 -> audio/generated/de-DE/lexical/e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f0458f8a-8d82-58a7-a9a6-dcdbf098d647', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_proposal_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e657406f9f30ec1d3cca02143a3393c8b952bbf011d342767fe1328c903e9da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e38fd95-29bc-5997-aaaa-293bac250093', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f0458f8a-8d82-58a7-a9a6-dcdbf098d647', 1), '7e657406f9f30ec1d3cca02143a3393c8b952bbf011d342767fe1328c903e9da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321.mp3', 1567, '2026-09-13 10:21:32.497518', '11a29d888d4211ec273b851175eb2a498ad2854d9fd8a12fe98c0f5eff8bb713', 'validated', '{"audio_key":"e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321","entity_key":"lx_proposal_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11a29d888d4211ec273b851175eb2a498ad2854d9fd8a12fe98c0f5eff8bb713","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_proposal_writing_03 -> audio/generated/de-DE/lexical/e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('981c0a3f-a027-579b-afb1-5ad4dfb220e3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_proposal_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e657406f9f30ec1d3cca02143a3393c8b952bbf011d342767fe1328c903e9da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa22469c-c800-5be0-86bf-180bb6cb3211', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('981c0a3f-a027-579b-afb1-5ad4dfb220e3', 1), '7e657406f9f30ec1d3cca02143a3393c8b952bbf011d342767fe1328c903e9da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321.mp3', 1567, '2026-09-13 10:21:32.497518', '11a29d888d4211ec273b851175eb2a498ad2854d9fd8a12fe98c0f5eff8bb713', 'validated', '{"audio_key":"e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321","entity_key":"wf_proposal_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11a29d888d4211ec273b851175eb2a498ad2854d9fd8a12fe98c0f5eff8bb713","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e65bf1984af1fc865215bdcd469618c09bab4b22baaed5c3c0396b4be6b67321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_executive_presentations_06 -> audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a75de1f8-b69b-5962-8025-be6930e72e86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_executive_presentations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3be9fb76-ff92-51ab-bc18-d1f3b13613b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a75de1f8-b69b-5962-8025-be6930e72e86', 1), 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3', 1332, '2026-09-13 10:21:32.529431', '70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8', 'validated', '{"audio_key":"e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724","entity_key":"lx_executive_presentations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_executive_presentations_06 -> audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('90bba753-55a3-5249-8914-2234351fc02f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_executive_presentations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('234615e0-7988-564f-86fb-b45be12fd13b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('90bba753-55a3-5249-8914-2234351fc02f', 1), 'e457f2082ac0ba78f1c6a5272f0575c313d866c9f18125786089b2aa13aeb345',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3', 1332, '2026-09-13 10:21:32.529431', '70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8', 'validated', '{"audio_key":"e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724","entity_key":"wf_executive_presentations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70f33e05a74c919629d150c44c66c4a2f2051ba01ac7755079cf024c0703c2a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e936cd288997dd1b0f82643fadf4ede91fc29cc8b86dad3f3420b1683d55e724.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_proposal_writing_06 -> audio/generated/de-DE/lexical/eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a47f2ed2-e343-5686-a89f-7944d7308b95', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_proposal_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c540fe0d6fe6146f917fefb625f032bd7977c2e859b8271a4cc7f73ba3baa85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bd326af-b549-546f-863a-c79ffa099722', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a47f2ed2-e343-5686-a89f-7944d7308b95', 1), '3c540fe0d6fe6146f917fefb625f032bd7977c2e859b8271a4cc7f73ba3baa85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c.mp3', 1097, '2026-09-13 10:21:33.490256', 'cb2acdf9a1d8d98ea7ef939ac28264f58b85d9ccc6f8e50d272815c2c5aa657d', 'validated', '{"audio_key":"eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c","entity_key":"lx_proposal_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb2acdf9a1d8d98ea7ef939ac28264f58b85d9ccc6f8e50d272815c2c5aa657d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_proposal_writing_06 -> audio/generated/de-DE/lexical/eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4f3db725-6186-5bb6-a6f8-8cabf0e1eca2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_proposal_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c540fe0d6fe6146f917fefb625f032bd7977c2e859b8271a4cc7f73ba3baa85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d311bf2-3d7b-52fe-8904-513a9b16e2bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4f3db725-6186-5bb6-a6f8-8cabf0e1eca2', 1), '3c540fe0d6fe6146f917fefb625f032bd7977c2e859b8271a4cc7f73ba3baa85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c.mp3', 1097, '2026-09-13 10:21:33.490256', 'cb2acdf9a1d8d98ea7ef939ac28264f58b85d9ccc6f8e50d272815c2c5aa657d', 'validated', '{"audio_key":"eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c","entity_key":"wf_proposal_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb2acdf9a1d8d98ea7ef939ac28264f58b85d9ccc6f8e50d272815c2c5aa657d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eee56f10a3bc5b54392e9511f401939d0cfc914b694055a4d8c97046618e8d1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_change_communication_02 -> audio/generated/de-DE/lexical/eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e6568498-5d4a-52db-a68b-49cd6d4735b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_change_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37fe2dcbfacd3288daaf096cc47ddad2f0d6f02702461cd57e7f4a19ec6c954b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82ea1409-9f1f-5d30-89f4-42a4956ffc48', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e6568498-5d4a-52db-a68b-49cd6d4735b7', 1), '37fe2dcbfacd3288daaf096cc47ddad2f0d6f02702461cd57e7f4a19ec6c954b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2.mp3', 1280, '2026-09-13 10:21:33.538243', 'e02ef9eeffa70dac60dd7f3726fd32dc11e648787d3cf9a2ce5645fb27ff6fe7', 'validated', '{"audio_key":"eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2","entity_key":"lx_change_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e02ef9eeffa70dac60dd7f3726fd32dc11e648787d3cf9a2ce5645fb27ff6fe7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_change_communication_02 -> audio/generated/de-DE/lexical/eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3c6b78e7-4e56-51ca-9548-6af13e945dfe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_change_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37fe2dcbfacd3288daaf096cc47ddad2f0d6f02702461cd57e7f4a19ec6c954b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70c1b774-a5d1-51ee-a2c5-8a795ab3864c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3c6b78e7-4e56-51ca-9548-6af13e945dfe', 1), '37fe2dcbfacd3288daaf096cc47ddad2f0d6f02702461cd57e7f4a19ec6c954b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2.mp3', 1280, '2026-09-13 10:21:33.538243', 'e02ef9eeffa70dac60dd7f3726fd32dc11e648787d3cf9a2ce5645fb27ff6fe7', 'validated', '{"audio_key":"eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2","entity_key":"wf_change_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e02ef9eeffa70dac60dd7f3726fd32dc11e648787d3cf9a2ce5645fb27ff6fe7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eee71899122547d52cff9527bf9594848fd3ee2bbaa021817d414891169312f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_alignment_capstone_03 -> audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4c642cb-dec5-5878-baeb-b0109f1b53a2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_alignment_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08eb6bad-8009-5934-969b-234f91dcff44', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4c642cb-dec5-5878-baeb-b0109f1b53a2', 1), 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3', 1253, '2026-09-13 08:16:47.949839', 'ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7', 'validated', '{"audio_key":"f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894","entity_key":"lx_strategic_alignment_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_alignment_capstone_03 -> audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('87aebb0f-74b7-5955-9091-1ff1d4a4f908', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_alignment_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c067c23c-6561-5c72-a2f8-a6c0f9a0389b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('87aebb0f-74b7-5955-9091-1ff1d4a4f908', 1), 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3', 1253, '2026-09-13 08:16:47.949839', 'ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7', 'validated', '{"audio_key":"f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894","entity_key":"wf_strategic_alignment_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_proposal_writing_05 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_proposal_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e259af70-aad9-56f1-97e8-c5cc4d1579b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"lx_proposal_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_proposal_writing_05 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d48533e-aa02-5a02-aaa7-83e89c7ce017', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_proposal_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('386cd7ca-b3b9-5d1f-8a15-165743ed09f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d48533e-aa02-5a02-aaa7-83e89c7ce017', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"wf_proposal_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_interviews_03 -> audio/generated/de-DE/lexical/faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('acbbd312-5d0c-5768-a2a0-87b64f4d073c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_interviews_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4ce6a8a2643bcef118b318c1de6bf15725123efa8bbe0465126ebc8ec0050be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d3bf2c4-fd11-5308-a854-9ae6234e60ea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('acbbd312-5d0c-5768-a2a0-87b64f4d073c', 1), 'b4ce6a8a2643bcef118b318c1de6bf15725123efa8bbe0465126ebc8ec0050be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550.mp3', 1488, '2026-09-13 10:21:34.558097', 'eb881d7440587d6ef73601ea7b7c4d60d6aaeeda755b7bce9b13050bdfd7fd53', 'validated', '{"audio_key":"faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550","entity_key":"lx_expert_interviews_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb881d7440587d6ef73601ea7b7c4d60d6aaeeda755b7bce9b13050bdfd7fd53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_interviews_03 -> audio/generated/de-DE/lexical/faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f062d44-8692-5076-a789-15d30fdc5ef4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_interviews_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4ce6a8a2643bcef118b318c1de6bf15725123efa8bbe0465126ebc8ec0050be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb0d63a6-4de9-52c9-93d1-1e2d78016782', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f062d44-8692-5076-a789-15d30fdc5ef4', 1), 'b4ce6a8a2643bcef118b318c1de6bf15725123efa8bbe0465126ebc8ec0050be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550.mp3', 1488, '2026-09-13 10:21:34.558097', 'eb881d7440587d6ef73601ea7b7c4d60d6aaeeda755b7bce9b13050bdfd7fd53', 'validated', '{"audio_key":"faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550","entity_key":"wf_expert_interviews_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb881d7440587d6ef73601ea7b7c4d60d6aaeeda755b7bce9b13050bdfd7fd53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/faf0a584b4d8f92874bb1e066ff401e0fc44e6a1f950605760a23663d186b550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_meeting_facilitation_03 -> audio/generated/de-DE/lexical/fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a444241b-9fbc-5adb-afe6-b11d348fd092', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_meeting_facilitation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7230689f065af5d0d6bc0a7758ab2a380753f30bacb48eee0ec2326413784f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('950f1425-fdf4-5d6f-b711-69528cfbdad8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a444241b-9fbc-5adb-afe6-b11d348fd092', 1), '7230689f065af5d0d6bc0a7758ab2a380753f30bacb48eee0ec2326413784f2d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9.mp3', 1201, '2026-09-13 10:21:34.598496', '2a79f3b14b345708363a221da9114b2b49d68c3e346dd91d632e998c46601645', 'validated', '{"audio_key":"fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9","entity_key":"lx_meeting_facilitation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a79f3b14b345708363a221da9114b2b49d68c3e346dd91d632e998c46601645","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_meeting_facilitation_03 -> audio/generated/de-DE/lexical/fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('faf02eb9-db67-5ee5-9e33-54389c2c58b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_meeting_facilitation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7230689f065af5d0d6bc0a7758ab2a380753f30bacb48eee0ec2326413784f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ff74521-4466-513d-b94e-7fd6b7d085e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('faf02eb9-db67-5ee5-9e33-54389c2c58b7', 1), '7230689f065af5d0d6bc0a7758ab2a380753f30bacb48eee0ec2326413784f2d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9.mp3', 1201, '2026-09-13 10:21:34.598496', '2a79f3b14b345708363a221da9114b2b49d68c3e346dd91d632e998c46601645', 'validated', '{"audio_key":"fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9","entity_key":"wf_meeting_facilitation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a79f3b14b345708363a221da9114b2b49d68c3e346dd91d632e998c46601645","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fe4255e68dbc3f3a48fb9a25d51c12ec861f5cfd86bebdb464f7d5c7c53efec9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_interviews_01 -> audio/generated/de-DE/utterances/0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f14fdde0-fcf0-53b8-bc33-518aaba0550a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_interviews_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7ddd382ffc0aef36ac853034003b6288d3bf7da50e3ec7324d1ce37e1724798'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('466dfb19-71a4-5e98-b15e-417f469e1ac6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f14fdde0-fcf0-53b8-bc33-518aaba0550a', 1), 'f7ddd382ffc0aef36ac853034003b6288d3bf7da50e3ec7324d1ce37e1724798',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870.mp3', 5041, '2026-09-13 10:21:36.002348', '8f279b4569deab40f0e36ac9de183dc77606ca22f74575834f7e74d08a9ec751', 'validated', '{"audio_key":"0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870","entity_key":"u_expert_interviews_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f279b4569deab40f0e36ac9de183dc77606ca22f74575834f7e74d08a9ec751","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_interviews_01_listen -> audio/generated/de-DE/utterances/0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('360e092b-ae2a-5624-98b7-304dedba3c2d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_interviews_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7ddd382ffc0aef36ac853034003b6288d3bf7da50e3ec7324d1ce37e1724798'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0c15ac7-ae91-5d3c-83a1-36f7d860582c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('360e092b-ae2a-5624-98b7-304dedba3c2d', 1), 'f7ddd382ffc0aef36ac853034003b6288d3bf7da50e3ec7324d1ce37e1724798',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870.mp3', 5041, '2026-09-13 10:21:36.002348', '8f279b4569deab40f0e36ac9de183dc77606ca22f74575834f7e74d08a9ec751', 'validated', '{"audio_key":"0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870","entity_key":"ex_expert_interviews_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f279b4569deab40f0e36ac9de183dc77606ca22f74575834f7e74d08a9ec751","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0119dbcae5b7cc764e5c93ec77ab6d3c0fa8d6472ff17d4afa2a71ba645d5870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_alignment_capstone_03 -> audio/generated/de-DE/utterances/0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1e7107d0-1a97-5653-8c45-a40eea2fc41d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_alignment_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dbbbb055fb6037324a635b5c8edd6e6021e439dfd7ff3e30127300944400380'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7d05686-8668-5fce-9e72-8e51ada5cc86', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1e7107d0-1a97-5653-8c45-a40eea2fc41d', 1), '1dbbbb055fb6037324a635b5c8edd6e6021e439dfd7ff3e30127300944400380',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515.mp3', 4440, '2026-09-13 10:21:35.986596', 'c582cd7f73c5a084daa1f8f0d46c41e0fc152c57fd32542ec5d50dd5787cb4b7', 'validated', '{"audio_key":"0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515","entity_key":"u_strategic_alignment_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c582cd7f73c5a084daa1f8f0d46c41e0fc152c57fd32542ec5d50dd5787cb4b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_strategic_alignment_capstone_02_listen -> audio/generated/de-DE/utterances/0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1c4abdd7-c04d-5b32-970f-fa666a025c69', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_strategic_alignment_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dbbbb055fb6037324a635b5c8edd6e6021e439dfd7ff3e30127300944400380'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('802b76c2-5fbd-5552-b430-c73abc850ca8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1c4abdd7-c04d-5b32-970f-fa666a025c69', 1), '1dbbbb055fb6037324a635b5c8edd6e6021e439dfd7ff3e30127300944400380',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515.mp3', 4440, '2026-09-13 10:21:35.986596', 'c582cd7f73c5a084daa1f8f0d46c41e0fc152c57fd32542ec5d50dd5787cb4b7', 'validated', '{"audio_key":"0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515","entity_key":"ex_strategic_alignment_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c582cd7f73c5a084daa1f8f0d46c41e0fc152c57fd32542ec5d50dd5787cb4b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0ff82ab7290e4d696dcea397f7fc90f38cf94f60e97ffb2f9960455224878515.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_communication_01 -> audio/generated/de-DE/utterances/10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e2cdb3b7-138b-56fe-8087-af8580ad3121', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32d2b596021b829b181ba45836357eb54f4cad5e1098e216fd15135ebc5604ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f752520-5126-51b1-b466-443506a8cd17', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e2cdb3b7-138b-56fe-8087-af8580ad3121', 1), '32d2b596021b829b181ba45836357eb54f4cad5e1098e216fd15135ebc5604ba',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d.mp3', 5250, '2026-09-13 10:21:37.458077', '5718c79e3770d8a4f3551f84dd548f805338a7ca988c3ad389be3d9cdf169c01', 'validated', '{"audio_key":"10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d","entity_key":"u_change_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5718c79e3770d8a4f3551f84dd548f805338a7ca988c3ad389be3d9cdf169c01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_change_communication_01_listen -> audio/generated/de-DE/utterances/10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('465cb984-84b8-58b1-987c-ed17c09412ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_change_communication_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32d2b596021b829b181ba45836357eb54f4cad5e1098e216fd15135ebc5604ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11e9dafb-7b61-5963-9ec6-4ef3365b9eba', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('465cb984-84b8-58b1-987c-ed17c09412ca', 1), '32d2b596021b829b181ba45836357eb54f4cad5e1098e216fd15135ebc5604ba',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d.mp3', 5250, '2026-09-13 10:21:37.458077', '5718c79e3770d8a4f3551f84dd548f805338a7ca988c3ad389be3d9cdf169c01', 'validated', '{"audio_key":"10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d","entity_key":"ex_change_communication_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5718c79e3770d8a4f3551f84dd548f805338a7ca988c3ad389be3d9cdf169c01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/10fd1e97e96ab256c47511e066045c53ef4be33e8731c52c1a786416cfa7d43d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_executive_presentations_05 -> audio/generated/de-DE/utterances/125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58fd619a-329c-5c3b-b7ca-fa4377aacd46', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_executive_presentations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52529a2488479fc849d346990ad53e0ebb33acec355832fbbc1043ff6ae39c99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35949da3-656f-55c0-a93d-e37b4def1d60', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58fd619a-329c-5c3b-b7ca-fa4377aacd46', 1), '52529a2488479fc849d346990ad53e0ebb33acec355832fbbc1043ff6ae39c99',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17.mp3', 5328, '2026-09-13 10:21:37.512148', '96fa56fa36245cfff5f608ca396384393806bd94c70f2feecce9a71aa41806da', 'validated', '{"audio_key":"125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17","entity_key":"u_executive_presentations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96fa56fa36245cfff5f608ca396384393806bd94c70f2feecce9a71aa41806da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_executive_presentations_03_listen -> audio/generated/de-DE/utterances/125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ed4e3026-c4db-585e-ab28-56ff4407f670', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_executive_presentations_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52529a2488479fc849d346990ad53e0ebb33acec355832fbbc1043ff6ae39c99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90abd3d4-a8fa-54d5-97f5-1740257764a3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ed4e3026-c4db-585e-ab28-56ff4407f670', 1), '52529a2488479fc849d346990ad53e0ebb33acec355832fbbc1043ff6ae39c99',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17.mp3', 5328, '2026-09-13 10:21:37.512148', '96fa56fa36245cfff5f608ca396384393806bd94c70f2feecce9a71aa41806da', 'validated', '{"audio_key":"125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17","entity_key":"ex_executive_presentations_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96fa56fa36245cfff5f608ca396384393806bd94c70f2feecce9a71aa41806da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/125f670726284d15f12fabe282866903a49e303f373b73694a869548a3c85b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_planning_06 -> audio/generated/de-DE/utterances/1723f8fa283dc9718434f3fb485cfba6432db2ec7493b0894c4b79c68891110f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8f02778f-0b03-5888-b211-0163c7b08179', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74c010944131459c757a132b6a4678ec27a55e999ece8df9490c6685171d2f8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7f2cd00-b3ad-5d7c-b4b9-cea76bded829', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8f02778f-0b03-5888-b211-0163c7b08179', 1), '74c010944131459c757a132b6a4678ec27a55e999ece8df9490c6685171d2f8e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1723f8fa283dc9718434f3fb485cfba6432db2ec7493b0894c4b79c68891110f.mp3', 5276, '2026-09-13 10:21:38.936498', 'ea07aaf8e74a2d7c75b96325c7943b6b0f367337a9c8d7bb60a6c8f616895d46', 'validated', '{"audio_key":"1723f8fa283dc9718434f3fb485cfba6432db2ec7493b0894c4b79c68891110f","entity_key":"u_scenario_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea07aaf8e74a2d7c75b96325c7943b6b0f367337a9c8d7bb60a6c8f616895d46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1723f8fa283dc9718434f3fb485cfba6432db2ec7493b0894c4b79c68891110f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_proposal_writing_01 -> audio/generated/de-DE/utterances/1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('66676dc4-702c-514f-8c51-8ebf823ad478', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_proposal_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aed169c8c3a2001e4846404e5c973561476946563e0475433f779ddb38e0e191'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('213b932e-4b47-5e9b-98c9-3ed3cfd893e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('66676dc4-702c-514f-8c51-8ebf823ad478', 1), 'aed169c8c3a2001e4846404e5c973561476946563e0475433f779ddb38e0e191',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b.mp3', 4832, '2026-09-13 10:21:38.985100', '125dd68e88eb2cd203376e737441a416675fac2520432872f9c1405a612f67ca', 'validated', '{"audio_key":"1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b","entity_key":"u_proposal_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"125dd68e88eb2cd203376e737441a416675fac2520432872f9c1405a612f67ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_proposal_writing_01_listen -> audio/generated/de-DE/utterances/1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('584010d3-f8f7-5f11-a1dc-b53a5cf9b157', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_proposal_writing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aed169c8c3a2001e4846404e5c973561476946563e0475433f779ddb38e0e191'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e36aaab-f766-5095-afc1-55234043e1d2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('584010d3-f8f7-5f11-a1dc-b53a5cf9b157', 1), 'aed169c8c3a2001e4846404e5c973561476946563e0475433f779ddb38e0e191',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b.mp3', 4832, '2026-09-13 10:21:38.985100', '125dd68e88eb2cd203376e737441a416675fac2520432872f9c1405a612f67ca', 'validated', '{"audio_key":"1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b","entity_key":"ex_proposal_writing_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"125dd68e88eb2cd203376e737441a416675fac2520432872f9c1405a612f67ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1958aad5c86a93672cb81c09813c7923d578e43b5ca57098def6d6ff9be4546b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_communication_04 -> audio/generated/de-DE/utterances/1c78ca934baad300cf91220c6dc5b7715a2d454a9d30ac0ff08c5183e53f7e29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de54da49-7e71-5d7e-992c-05b6169b947b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e0f924fab175fb7d078751d0826703b29cc194f7f65e7ed6e6003db9cbbbc6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d1312d8-8596-521b-a1a3-f1c6469c6fba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de54da49-7e71-5d7e-992c-05b6169b947b', 1), '2e0f924fab175fb7d078751d0826703b29cc194f7f65e7ed6e6003db9cbbbc6d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1c78ca934baad300cf91220c6dc5b7715a2d454a9d30ac0ff08c5183e53f7e29.mp3', 5746, '2026-09-13 10:21:40.477380', '750db5ea3dfd48e12d5ae9acb84758e596a0582dce4caeeb2f549d728fc19314', 'validated', '{"audio_key":"1c78ca934baad300cf91220c6dc5b7715a2d454a9d30ac0ff08c5183e53f7e29","entity_key":"u_change_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"750db5ea3dfd48e12d5ae9acb84758e596a0582dce4caeeb2f549d728fc19314","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1c78ca934baad300cf91220c6dc5b7715a2d454a9d30ac0ff08c5183e53f7e29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_interpretation_05 -> audio/generated/de-DE/utterances/1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55266f70-ba4e-5b07-973c-e02a6c8edda6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_interpretation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cd93489ce0e7af2dbf2c1fe7496dc425c84f0f88fb3e51051daca3d5901a7cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a2fd582-b77a-5247-b2e5-871b2599ac97', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55266f70-ba4e-5b07-973c-e02a6c8edda6', 1), '4cd93489ce0e7af2dbf2c1fe7496dc425c84f0f88fb3e51051daca3d5901a7cd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794.mp3', 5093, '2026-09-13 10:21:40.482449', '812bbf9c3e0d5672d2127828d48462f260cba40592a59e9513138675eb526c6b', 'validated', '{"audio_key":"1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794","entity_key":"u_data_interpretation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"812bbf9c3e0d5672d2127828d48462f260cba40592a59e9513138675eb526c6b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_data_interpretation_03_listen -> audio/generated/de-DE/utterances/1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fca24ac7-4b30-5ee0-8bf1-1aceec6a233f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_data_interpretation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cd93489ce0e7af2dbf2c1fe7496dc425c84f0f88fb3e51051daca3d5901a7cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cd4da38-5e35-51b0-bcf6-d85cff59688a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fca24ac7-4b30-5ee0-8bf1-1aceec6a233f', 1), '4cd93489ce0e7af2dbf2c1fe7496dc425c84f0f88fb3e51051daca3d5901a7cd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794.mp3', 5093, '2026-09-13 10:21:40.482449', '812bbf9c3e0d5672d2127828d48462f260cba40592a59e9513138675eb526c6b', 'validated', '{"audio_key":"1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794","entity_key":"ex_data_interpretation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"812bbf9c3e0d5672d2127828d48462f260cba40592a59e9513138675eb526c6b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f4ff83a5faad35f5ad0cd2050160187cc4a336a8c6331ac96a6b30a0f5d2794.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_power_02 -> audio/generated/de-DE/utterances/1f65831e874e9533c31e093b26968b43f94f985518530b8ef706aa1f5a4c9cc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bbbecfd8-5335-5316-a595-78ce3443e025', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_power_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9baadafe516b13a829d0120beff853c3767a99d0da2f2695398cbf254586debc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4983db4b-09ec-5cc8-b518-2a155fc9ef31', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bbbecfd8-5335-5316-a595-78ce3443e025', 1), '9baadafe516b13a829d0120beff853c3767a99d0da2f2695398cbf254586debc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f65831e874e9533c31e093b26968b43f94f985518530b8ef706aa1f5a4c9cc7.mp3', 5616, '2026-09-13 10:21:42.004958', 'cc3308aff2cdd3f0dbfe86388bd349ace56675d76e9e9b8a9b09ef1bf24b1067', 'validated', '{"audio_key":"1f65831e874e9533c31e093b26968b43f94f985518530b8ef706aa1f5a4c9cc7","entity_key":"u_conflict_mediation_power_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc3308aff2cdd3f0dbfe86388bd349ace56675d76e9e9b8a9b09ef1bf24b1067","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f65831e874e9533c31e093b26968b43f94f985518530b8ef706aa1f5a4c9cc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_partnership_negotiation_01 -> audio/generated/de-DE/utterances/224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('da1f5380-7ceb-5441-a216-29eee38b32df', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_partnership_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f00548b3d02bcf20fd25f78790df48c4af2b6aa5d63c37162ba69e9e71ece933'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd49ce85-cfb6-58d2-993b-ab0934dc96ed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('da1f5380-7ceb-5441-a216-29eee38b32df', 1), 'f00548b3d02bcf20fd25f78790df48c4af2b6aa5d63c37162ba69e9e71ece933',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d.mp3', 4675, '2026-09-13 10:21:41.923354', '1348104fd0554d37dfae4317e7964d832ec19709d613c0c93ca45be8dc3573c2', 'validated', '{"audio_key":"224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d","entity_key":"u_partnership_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1348104fd0554d37dfae4317e7964d832ec19709d613c0c93ca45be8dc3573c2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_partnership_negotiation_01_listen -> audio/generated/de-DE/utterances/224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7a015cae-a405-5e80-9b79-92d293808d0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_partnership_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f00548b3d02bcf20fd25f78790df48c4af2b6aa5d63c37162ba69e9e71ece933'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e16675d2-e7aa-54bb-87f1-a37879a69385', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7a015cae-a405-5e80-9b79-92d293808d0d', 1), 'f00548b3d02bcf20fd25f78790df48c4af2b6aa5d63c37162ba69e9e71ece933',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d.mp3', 4675, '2026-09-13 10:21:41.923354', '1348104fd0554d37dfae4317e7964d832ec19709d613c0c93ca45be8dc3573c2', 'validated', '{"audio_key":"224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d","entity_key":"ex_partnership_negotiation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1348104fd0554d37dfae4317e7964d832ec19709d613c0c93ca45be8dc3573c2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/224db02bc060a04a6f13c45a8d17782aa7c317dfbad4fb6edb462a84ad24735d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_interpretation_02 -> audio/generated/de-DE/utterances/2a1b4391c791cabeba69316dba5a44d0d85bca080a92e0937374517db41a4fe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f50406dc-4690-5dd8-b712-96c4bf6b969b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_interpretation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd64912a78328dbb2addef22229c1ca3ecfd4d529bf7a8a12f6e7efc58962b377'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00904dc8-17b7-5ee6-a32d-496d5308d3f1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f50406dc-4690-5dd8-b712-96c4bf6b969b', 1), 'd64912a78328dbb2addef22229c1ca3ecfd4d529bf7a8a12f6e7efc58962b377',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2a1b4391c791cabeba69316dba5a44d0d85bca080a92e0937374517db41a4fe0.mp3', 3369, '2026-09-13 10:21:43.167390', '680913c5c7731486f1ee7d181d110854259992e22239a20f2bf78dcc00a31fba', 'validated', '{"audio_key":"2a1b4391c791cabeba69316dba5a44d0d85bca080a92e0937374517db41a4fe0","entity_key":"u_data_interpretation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"680913c5c7731486f1ee7d181d110854259992e22239a20f2bf78dcc00a31fba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2a1b4391c791cabeba69316dba5a44d0d85bca080a92e0937374517db41a4fe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_executive_presentations_03 -> audio/generated/de-DE/utterances/2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c3c44fe7-611a-5900-b97d-fa6f85628925', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_executive_presentations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4e430ef75024a9441b001971e2214481edecd9c65c6ba6e970c3e49c1b0a64d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba4eb578-e408-53bb-9f30-3e57f033da68', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c3c44fe7-611a-5900-b97d-fa6f85628925', 1), 'a4e430ef75024a9441b001971e2214481edecd9c65c6ba6e970c3e49c1b0a64d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc.mp3', 5564, '2026-09-13 10:21:43.494341', 'b3b009a4cde87a3998b5e42124d4437d99694fff6b97b7ce80bb5a5dff02db4e', 'validated', '{"audio_key":"2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc","entity_key":"u_executive_presentations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3b009a4cde87a3998b5e42124d4437d99694fff6b97b7ce80bb5a5dff02db4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_executive_presentations_02_listen -> audio/generated/de-DE/utterances/2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6f9c2c62-638b-59be-b427-172380b70962', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_executive_presentations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4e430ef75024a9441b001971e2214481edecd9c65c6ba6e970c3e49c1b0a64d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2595120-cf1a-515b-a473-9cd502255ae5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6f9c2c62-638b-59be-b427-172380b70962', 1), 'a4e430ef75024a9441b001971e2214481edecd9c65c6ba6e970c3e49c1b0a64d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc.mp3', 5564, '2026-09-13 10:21:43.494341', 'b3b009a4cde87a3998b5e42124d4437d99694fff6b97b7ce80bb5a5dff02db4e', 'validated', '{"audio_key":"2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc","entity_key":"ex_executive_presentations_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3b009a4cde87a3998b5e42124d4437d99694fff6b97b7ce80bb5a5dff02db4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2c7e66e4ed96368785af8bede6dc155c61d1f16bff428f5072c13125d6dc78cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_interpretation_06 -> audio/generated/de-DE/utterances/3451147cf7292e686a361b5b5afcbe4757d9eabcfed3ae4671a5af1119fcbcf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c71a6c65-44cc-59e4-8df2-49f4c58a17f9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_interpretation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '262acc93af382bede72a6a491a36148181282fcc376f7da519633ad2b065f6f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('568fbc15-6c75-5147-8788-aaab77c4f5ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c71a6c65-44cc-59e4-8df2-49f4c58a17f9', 1), '262acc93af382bede72a6a491a36148181282fcc376f7da519633ad2b065f6f5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3451147cf7292e686a361b5b5afcbe4757d9eabcfed3ae4671a5af1119fcbcf1.mp3', 5433, '2026-09-13 10:21:44.763895', '5ddf9fbddad5acb2ed38cfbfe510445775553a1fa88a0814ca0c60f780bd252f', 'validated', '{"audio_key":"3451147cf7292e686a361b5b5afcbe4757d9eabcfed3ae4671a5af1119fcbcf1","entity_key":"u_data_interpretation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ddf9fbddad5acb2ed38cfbfe510445775553a1fa88a0814ca0c60f780bd252f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3451147cf7292e686a361b5b5afcbe4757d9eabcfed3ae4671a5af1119fcbcf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_planning_03 -> audio/generated/de-DE/utterances/4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0315837c-1ad0-5593-9cea-2a05b0cb12c9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62e4956abb9e3ba43225709560a7c9d2a09ea7869b014336b4ac22988c3d16e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e11a9501-39e7-5a36-9bbb-1cd650fb56ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0315837c-1ad0-5593-9cea-2a05b0cb12c9', 1), '62e4956abb9e3ba43225709560a7c9d2a09ea7869b014336b4ac22988c3d16e0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19.mp3', 5433, '2026-09-13 10:21:45.013444', '7484e639e38085c86039284e0a66dece1065fa119df5e5e284fdf004f1d1b27d', 'validated', '{"audio_key":"4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19","entity_key":"u_scenario_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7484e639e38085c86039284e0a66dece1065fa119df5e5e284fdf004f1d1b27d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scenario_planning_02_listen -> audio/generated/de-DE/utterances/4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('248b6f45-b90d-5bd4-9278-b71d5e39c2cd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scenario_planning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62e4956abb9e3ba43225709560a7c9d2a09ea7869b014336b4ac22988c3d16e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68e50d8d-e06d-563c-92c8-2d6529bdbde3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('248b6f45-b90d-5bd4-9278-b71d5e39c2cd', 1), '62e4956abb9e3ba43225709560a7c9d2a09ea7869b014336b4ac22988c3d16e0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19.mp3', 5433, '2026-09-13 10:21:45.013444', '7484e639e38085c86039284e0a66dece1065fa119df5e5e284fdf004f1d1b27d', 'validated', '{"audio_key":"4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19","entity_key":"ex_scenario_planning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7484e639e38085c86039284e0a66dece1065fa119df5e5e284fdf004f1d1b27d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4bfe203987d88b0c25d837b8dcdd34e06ceacae89b63d0fd6d82258c1c6b3b19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_proposal_writing_05 -> audio/generated/de-DE/utterances/4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e7f3ef5e-ef19-5026-bf76-64beffe41418', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_proposal_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a2955f5f7876403fd264ee0eb70d6f388bf3ff0e298f3a70355bb82632777cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('310c7576-3dc6-54ff-a61f-3a20df99bf49', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e7f3ef5e-ef19-5026-bf76-64beffe41418', 1), '8a2955f5f7876403fd264ee0eb70d6f388bf3ff0e298f3a70355bb82632777cb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db.mp3', 5041, '2026-09-13 10:21:46.226146', 'b467752c24e80007b7a1770a94ecffe76235af1d410789f9bee36706be8d831e', 'validated', '{"audio_key":"4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db","entity_key":"u_proposal_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b467752c24e80007b7a1770a94ecffe76235af1d410789f9bee36706be8d831e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_proposal_writing_03_listen -> audio/generated/de-DE/utterances/4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b6c62080-097e-57ea-9104-d3c480cee747', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_proposal_writing_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a2955f5f7876403fd264ee0eb70d6f388bf3ff0e298f3a70355bb82632777cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24325da5-9197-5a45-8b77-4190597b62ca', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b6c62080-097e-57ea-9104-d3c480cee747', 1), '8a2955f5f7876403fd264ee0eb70d6f388bf3ff0e298f3a70355bb82632777cb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db.mp3', 5041, '2026-09-13 10:21:46.226146', 'b467752c24e80007b7a1770a94ecffe76235af1d410789f9bee36706be8d831e', 'validated', '{"audio_key":"4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db","entity_key":"ex_proposal_writing_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b467752c24e80007b7a1770a94ecffe76235af1d410789f9bee36706be8d831e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4d6a3c3def39fd0070453d6ff3897e3fbcf2a9bfc706b95b82aa9878bdbee3db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_planning_05 -> audio/generated/de-DE/utterances/4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e23a2d43-e9ab-5707-bc73-6d35b8a2b958', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8322e8badc228dbae6f876c103ae4952b499a4435fe1ed9eb7fa1283f6b42834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4dbb2a6-bd17-5527-a055-72a57459e46c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e23a2d43-e9ab-5707-bc73-6d35b8a2b958', 1), '8322e8badc228dbae6f876c103ae4952b499a4435fe1ed9eb7fa1283f6b42834',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58.mp3', 4075, '2026-09-13 10:21:46.353343', '756736f2fed0941f72f2ff93d62e369a33bc6d6997455558de0dcfef62a12fc0', 'validated', '{"audio_key":"4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58","entity_key":"u_scenario_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"756736f2fed0941f72f2ff93d62e369a33bc6d6997455558de0dcfef62a12fc0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scenario_planning_03_listen -> audio/generated/de-DE/utterances/4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b1fdf0f7-42bb-53ba-894c-795a79f8dd87', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scenario_planning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8322e8badc228dbae6f876c103ae4952b499a4435fe1ed9eb7fa1283f6b42834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a562bde-c50c-52f7-b16f-5c9d1101b07d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b1fdf0f7-42bb-53ba-894c-795a79f8dd87', 1), '8322e8badc228dbae6f876c103ae4952b499a4435fe1ed9eb7fa1283f6b42834',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58.mp3', 4075, '2026-09-13 10:21:46.353343', '756736f2fed0941f72f2ff93d62e369a33bc6d6997455558de0dcfef62a12fc0', 'validated', '{"audio_key":"4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58","entity_key":"ex_scenario_planning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"756736f2fed0941f72f2ff93d62e369a33bc6d6997455558de0dcfef62a12fc0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4da02656dbb20ee71063a7c41249beaa4944e13d4073cd0a467ac21187e14f58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meeting_facilitation_04 -> audio/generated/de-DE/utterances/4e427f3bf3c24e77ec70e97a9ce367bc7bfbadd496d36ecf39a1af400221d5ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dcfd1ead-ffef-59ac-b7ac-fa2509d6791c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meeting_facilitation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5af7be1e95c0c5160a449acc013f03c7dca517d4c06a278445148a4509e73308'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b542416-20cc-5b38-9bf5-455752e7045e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dcfd1ead-ffef-59ac-b7ac-fa2509d6791c', 1), '5af7be1e95c0c5160a449acc013f03c7dca517d4c06a278445148a4509e73308',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e427f3bf3c24e77ec70e97a9ce367bc7bfbadd496d36ecf39a1af400221d5ad.mp3', 4728, '2026-09-13 10:21:47.660547', '5ac13f097e5c7bbe0f8460ea0bb44167643a911db98ac3619f666290b1546c5d', 'validated', '{"audio_key":"4e427f3bf3c24e77ec70e97a9ce367bc7bfbadd496d36ecf39a1af400221d5ad","entity_key":"u_meeting_facilitation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ac13f097e5c7bbe0f8460ea0bb44167643a911db98ac3619f666290b1546c5d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e427f3bf3c24e77ec70e97a9ce367bc7bfbadd496d36ecf39a1af400221d5ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meeting_facilitation_01 -> audio/generated/de-DE/utterances/585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f3558844-f9ef-5142-9384-ec3947f8239d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meeting_facilitation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73afe531a104a376bd9a197ba585acc1299259a7dfeb54eab688d973552b839b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7cc27b9-c40d-55e4-b6a9-80ad7522fa4a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f3558844-f9ef-5142-9384-ec3947f8239d', 1), '73afe531a104a376bd9a197ba585acc1299259a7dfeb54eab688d973552b839b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b.mp3', 4858, '2026-09-13 10:21:47.943519', '3f60490247a01bf632da70562b7582ffc7ac2ff4a360829366f6adf871eb620b', 'validated', '{"audio_key":"585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b","entity_key":"u_meeting_facilitation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f60490247a01bf632da70562b7582ffc7ac2ff4a360829366f6adf871eb620b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_meeting_facilitation_01_listen -> audio/generated/de-DE/utterances/585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bdba7c79-744a-5dd1-9557-795a51922212', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_meeting_facilitation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73afe531a104a376bd9a197ba585acc1299259a7dfeb54eab688d973552b839b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da8638c2-fbcd-5c8b-9f85-17edf15939af', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bdba7c79-744a-5dd1-9557-795a51922212', 1), '73afe531a104a376bd9a197ba585acc1299259a7dfeb54eab688d973552b839b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b.mp3', 4858, '2026-09-13 10:21:47.943519', '3f60490247a01bf632da70562b7582ffc7ac2ff4a360829366f6adf871eb620b', 'validated', '{"audio_key":"585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b","entity_key":"ex_meeting_facilitation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f60490247a01bf632da70562b7582ffc7ac2ff4a360829366f6adf871eb620b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/585eba2c31d16dd31e72d56ff5e6193aade6ec0b0b3d58836a40c31cf6ebf98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_proposal_writing_03 -> audio/generated/de-DE/utterances/5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce8a48f9-3c37-5e66-a0ce-7c9b6132672a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_proposal_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd403aa8d562e085963b42980b7fe07cf01c089260ca744570b60b57f5ea19a4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('491595fd-d619-555f-b416-f713165522c8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce8a48f9-3c37-5e66-a0ce-7c9b6132672a', 1), 'd403aa8d562e085963b42980b7fe07cf01c089260ca744570b60b57f5ea19a4a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5.mp3', 6295, '2026-09-13 10:21:49.311371', '011b68092da00a1c3b2fbf6959d8c8cf899b8225660af50327316c02d40aef84', 'validated', '{"audio_key":"5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5","entity_key":"u_proposal_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"011b68092da00a1c3b2fbf6959d8c8cf899b8225660af50327316c02d40aef84","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_proposal_writing_02_listen -> audio/generated/de-DE/utterances/5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b3f3afa1-068d-5bcd-abe4-ec0ef7aabe0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_proposal_writing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd403aa8d562e085963b42980b7fe07cf01c089260ca744570b60b57f5ea19a4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc8654e3-2493-5d98-82eb-a12d47cfcd95', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b3f3afa1-068d-5bcd-abe4-ec0ef7aabe0d', 1), 'd403aa8d562e085963b42980b7fe07cf01c089260ca744570b60b57f5ea19a4a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5.mp3', 6295, '2026-09-13 10:21:49.311371', '011b68092da00a1c3b2fbf6959d8c8cf899b8225660af50327316c02d40aef84', 'validated', '{"audio_key":"5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5","entity_key":"ex_proposal_writing_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"011b68092da00a1c3b2fbf6959d8c8cf899b8225660af50327316c02d40aef84","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cedd63d3db65f6a2e75d903d885b0d5e036bdd3e5cf5af3b425b45ebd20b9b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_partnership_negotiation_04 -> audio/generated/de-DE/utterances/5d1a3849b93a730bb9fef49e4ae922bf2762beea021f97d08ffc8465bf39b112.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('af12a232-7d82-5c81-a77c-9d5715496b42', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_partnership_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '484ad7c77afbf7ad8f0701207e0e3bc753c789c2eea4d1d0388ff0ac89b787dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('460415f5-eca4-540d-9d41-d0d7376928f2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('af12a232-7d82-5c81-a77c-9d5715496b42', 1), '484ad7c77afbf7ad8f0701207e0e3bc753c789c2eea4d1d0388ff0ac89b787dc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5d1a3849b93a730bb9fef49e4ae922bf2762beea021f97d08ffc8465bf39b112.mp3', 6217, '2026-09-13 10:21:49.580129', '73be2fdec7d265a7748f2835d9c116ca751ff54d2ceb3bc3187534f113ec37fc', 'validated', '{"audio_key":"5d1a3849b93a730bb9fef49e4ae922bf2762beea021f97d08ffc8465bf39b112","entity_key":"u_partnership_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73be2fdec7d265a7748f2835d9c116ca751ff54d2ceb3bc3187534f113ec37fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5d1a3849b93a730bb9fef49e4ae922bf2762beea021f97d08ffc8465bf39b112.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_partnership_negotiation_02 -> audio/generated/de-DE/utterances/5dd969b84d4169ddb0e8de0bec52dbaf9dcda8fd15652d5649e69720c74b0b8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e59f77cf-186d-5e39-8e5b-5beee88f7a57', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_partnership_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f435d0947e30a13daa269849c1ba65dfb5da03e6de6201e9d913939a613ebf0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9143aad5-6ac3-531d-9d12-37c8df0e59a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e59f77cf-186d-5e39-8e5b-5beee88f7a57', 1), 'f435d0947e30a13daa269849c1ba65dfb5da03e6de6201e9d913939a613ebf0c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5dd969b84d4169ddb0e8de0bec52dbaf9dcda8fd15652d5649e69720c74b0b8d.mp3', 4597, '2026-09-13 10:21:50.741277', '70ce7cfb15056358a43af4a3fe22107769bdfa5de39255652ae38533fa23c7cb', 'validated', '{"audio_key":"5dd969b84d4169ddb0e8de0bec52dbaf9dcda8fd15652d5649e69720c74b0b8d","entity_key":"u_partnership_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70ce7cfb15056358a43af4a3fe22107769bdfa5de39255652ae38533fa23c7cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5dd969b84d4169ddb0e8de0bec52dbaf9dcda8fd15652d5649e69720c74b0b8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meeting_facilitation_03 -> audio/generated/de-DE/utterances/686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('384cacbb-23c3-5d7a-aab6-a5441af9ced7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meeting_facilitation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c885447d92a710d77e0c8a64fc34bededa4fa9e1ce0ba424a87e38dacaa38dda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ad405b3-0cf5-587e-9afe-1d79c43edda4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('384cacbb-23c3-5d7a-aab6-a5441af9ced7', 1), 'c885447d92a710d77e0c8a64fc34bededa4fa9e1ce0ba424a87e38dacaa38dda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932.mp3', 4728, '2026-09-13 10:21:51.039548', 'fe046b2905652bc489c0942a6e27bf76d1f1b6c7856fc1dd1094f04c506796f8', 'validated', '{"audio_key":"686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932","entity_key":"u_meeting_facilitation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe046b2905652bc489c0942a6e27bf76d1f1b6c7856fc1dd1094f04c506796f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_meeting_facilitation_02_listen -> audio/generated/de-DE/utterances/686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('76694fb5-2591-5ceb-abe4-c338846b3201', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_meeting_facilitation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c885447d92a710d77e0c8a64fc34bededa4fa9e1ce0ba424a87e38dacaa38dda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fec15066-4015-5957-9545-9d11b0b65615', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('76694fb5-2591-5ceb-abe4-c338846b3201', 1), 'c885447d92a710d77e0c8a64fc34bededa4fa9e1ce0ba424a87e38dacaa38dda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932.mp3', 4728, '2026-09-13 10:21:51.039548', 'fe046b2905652bc489c0942a6e27bf76d1f1b6c7856fc1dd1094f04c506796f8', 'validated', '{"audio_key":"686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932","entity_key":"ex_meeting_facilitation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe046b2905652bc489c0942a6e27bf76d1f1b6c7856fc1dd1094f04c506796f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/686cd4118c466bb8911d4164d7e291cdebedde3659cfd7066a19a7766487c932.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_executive_presentations_06 -> audio/generated/de-DE/utterances/7146da77a5137723a180e28b6a5ade54167a878718a2e4d42491595da73bddc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd8324b0-7dd4-5848-88f3-1b263e38d8f0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_executive_presentations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1e7db5910c6adfbfea196f0005767dd7b0b68ec560d17c5d688d1adca6eba89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5cfe73c-7eef-5122-84fe-f2e64b1f4c58', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd8324b0-7dd4-5848-88f3-1b263e38d8f0', 1), 'f1e7db5910c6adfbfea196f0005767dd7b0b68ec560d17c5d688d1adca6eba89',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7146da77a5137723a180e28b6a5ade54167a878718a2e4d42491595da73bddc5.mp3', 5146, '2026-09-13 10:21:52.215935', '4b136bb0a460d74a968b9b3d6ea894c9ad9d7c1b847ccccaf00382a55fbf4859', 'validated', '{"audio_key":"7146da77a5137723a180e28b6a5ade54167a878718a2e4d42491595da73bddc5","entity_key":"u_executive_presentations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b136bb0a460d74a968b9b3d6ea894c9ad9d7c1b847ccccaf00382a55fbf4859","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7146da77a5137723a180e28b6a5ade54167a878718a2e4d42491595da73bddc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_partnership_negotiation_06 -> audio/generated/de-DE/utterances/71956b509551bcad33d09ceb536097215357ddceb9053f0fd7a02e5ea5f55251.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('30555784-baac-5ff6-887d-45a474503d10', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_partnership_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3701de70c65477c6896319d93997c0f537be892035c418d5f9ea8e64c261f5f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('254964af-0a54-54a4-8163-ed4f614b3d76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('30555784-baac-5ff6-887d-45a474503d10', 1), '3701de70c65477c6896319d93997c0f537be892035c418d5f9ea8e64c261f5f3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/71956b509551bcad33d09ceb536097215357ddceb9053f0fd7a02e5ea5f55251.mp3', 6713, '2026-09-13 10:21:52.831957', 'acc532716c44ce7547e50b35839d4e1abd10cfcf23baced91679d0a9580d9400', 'validated', '{"audio_key":"71956b509551bcad33d09ceb536097215357ddceb9053f0fd7a02e5ea5f55251","entity_key":"u_partnership_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"acc532716c44ce7547e50b35839d4e1abd10cfcf23baced91679d0a9580d9400","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/71956b509551bcad33d09ceb536097215357ddceb9053f0fd7a02e5ea5f55251.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_communication_03 -> audio/generated/de-DE/utterances/726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('51edbfff-7db8-54e6-94bb-a3385e58c8ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c813938520c089a6cbeedc16bc57b39f6b924de5814c971d6a1b50e27af206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42c47bbc-8e9b-59ae-850f-5c877af4ca53', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('51edbfff-7db8-54e6-94bb-a3385e58c8ef', 1), 'c5c813938520c089a6cbeedc16bc57b39f6b924de5814c971d6a1b50e27af206',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314.mp3', 4623, '2026-09-13 10:21:53.681706', '58844ace6053ff71d47d6b61136643e463d58bad66e20c1169816938d4f98018', 'validated', '{"audio_key":"726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314","entity_key":"u_change_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58844ace6053ff71d47d6b61136643e463d58bad66e20c1169816938d4f98018","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_change_communication_02_listen -> audio/generated/de-DE/utterances/726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ef56852f-a4ad-5e1e-b797-3abfe9580a3f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_change_communication_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c813938520c089a6cbeedc16bc57b39f6b924de5814c971d6a1b50e27af206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c787dcf-acff-5fc5-966c-a1c3c9c46925', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ef56852f-a4ad-5e1e-b797-3abfe9580a3f', 1), 'c5c813938520c089a6cbeedc16bc57b39f6b924de5814c971d6a1b50e27af206',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314.mp3', 4623, '2026-09-13 10:21:53.681706', '58844ace6053ff71d47d6b61136643e463d58bad66e20c1169816938d4f98018', 'validated', '{"audio_key":"726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314","entity_key":"ex_change_communication_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58844ace6053ff71d47d6b61136643e463d58bad66e20c1169816938d4f98018","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/726717c220427093a2b8c6685f1b311830fb8c6a968d38f87223df5967fd8314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_alignment_capstone_04 -> audio/generated/de-DE/utterances/7709859526124bd8c0b5debee4e2d97fc2921bad2e152641240a4eecd121b985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('086679d8-6c92-52b0-aa67-da474e6c82c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_alignment_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be0da7f763028f799cbae3470b1568b3c34da9e16e186346036b6a82f63820d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c161ac09-bfd3-5d45-93cb-fcb41de7eca2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('086679d8-6c92-52b0-aa67-da474e6c82c7', 1), 'be0da7f763028f799cbae3470b1568b3c34da9e16e186346036b6a82f63820d0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7709859526124bd8c0b5debee4e2d97fc2921bad2e152641240a4eecd121b985.mp3', 5877, '2026-09-13 10:21:54.452824', '220918979a11d9f194341ac0139714d7174cc654cf8ee4df11e2ff5a671be1f7', 'validated', '{"audio_key":"7709859526124bd8c0b5debee4e2d97fc2921bad2e152641240a4eecd121b985","entity_key":"u_strategic_alignment_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"220918979a11d9f194341ac0139714d7174cc654cf8ee4df11e2ff5a671be1f7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7709859526124bd8c0b5debee4e2d97fc2921bad2e152641240a4eecd121b985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_executive_presentations_04 -> audio/generated/de-DE/utterances/7f04a31dace21771cda92e8c766904cbdc5c8dd0d97aefb00bc824cff1aff0d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('283673a0-85cc-54dc-8d46-b68acd74fc20', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_executive_presentations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a41c476b27f8f5e8e90f831495616048e5351ba8cdc1ef2805a7f098c94e76ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c760cba-473c-5cdc-805b-b7b8acc8a5e3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('283673a0-85cc-54dc-8d46-b68acd74fc20', 1), 'a41c476b27f8f5e8e90f831495616048e5351ba8cdc1ef2805a7f098c94e76ea',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f04a31dace21771cda92e8c766904cbdc5c8dd0d97aefb00bc824cff1aff0d7.mp3', 4858, '2026-09-13 10:21:55.127141', 'f35bc00989cf368ed66bbfdb4bb906be93cfe8b7a84992de975722db59fba449', 'validated', '{"audio_key":"7f04a31dace21771cda92e8c766904cbdc5c8dd0d97aefb00bc824cff1aff0d7","entity_key":"u_executive_presentations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f35bc00989cf368ed66bbfdb4bb906be93cfe8b7a84992de975722db59fba449","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f04a31dace21771cda92e8c766904cbdc5c8dd0d97aefb00bc824cff1aff0d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_power_04 -> audio/generated/de-DE/utterances/81121917b0e9cc494e05d79d83d54f93bde5f20b42f9041c1bb71fa97c8762e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee1c5ced-593b-5203-9264-3df6d7a168d0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_power_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2352cfd970e69dd1f8990eed8da4292e6b6af1fe7b721b45afe9265da29eca8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76af98b0-3e7f-53cc-a762-c4f0dc3852ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee1c5ced-593b-5203-9264-3df6d7a168d0', 1), 'd2352cfd970e69dd1f8990eed8da4292e6b6af1fe7b721b45afe9265da29eca8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/81121917b0e9cc494e05d79d83d54f93bde5f20b42f9041c1bb71fa97c8762e0.mp3', 5929, '2026-09-13 10:21:56.030475', 'a66216d843e29fc682882cba631b20dc37a140c831cb670ac2b29a6bd052170d', 'validated', '{"audio_key":"81121917b0e9cc494e05d79d83d54f93bde5f20b42f9041c1bb71fa97c8762e0","entity_key":"u_conflict_mediation_power_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a66216d843e29fc682882cba631b20dc37a140c831cb670ac2b29a6bd052170d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/81121917b0e9cc494e05d79d83d54f93bde5f20b42f9041c1bb71fa97c8762e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_planning_02 -> audio/generated/de-DE/utterances/842d9fc460186c72795a1be73873dd65fe371128cc5e759702223deb47ef8ae5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c5d2f24-a66f-5cf4-97fb-b2e3c4688cca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43b676b16859a14998d25e685a0fbf04fc0a91283e6aeba013fddf503dce35a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2334f85f-65b1-5efe-b4a4-421de9b46138', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c5d2f24-a66f-5cf4-97fb-b2e3c4688cca', 1), '43b676b16859a14998d25e685a0fbf04fc0a91283e6aeba013fddf503dce35a3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/842d9fc460186c72795a1be73873dd65fe371128cc5e759702223deb47ef8ae5.mp3', 4780, '2026-09-13 10:21:56.603024', '78cf3e9a3d1e35f1e032414df91bc079c07420a3b29fddbb74dc946335e2fa1e', 'validated', '{"audio_key":"842d9fc460186c72795a1be73873dd65fe371128cc5e759702223deb47ef8ae5","entity_key":"u_scenario_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78cf3e9a3d1e35f1e032414df91bc079c07420a3b29fddbb74dc946335e2fa1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/842d9fc460186c72795a1be73873dd65fe371128cc5e759702223deb47ef8ae5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_alignment_capstone_05 -> audio/generated/de-DE/utterances/8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7fb0f6d-3b2e-5bea-a009-57b79f604fae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_alignment_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5833e90ca5e25e5e3e4d59c0625b95375ea61e0343a9dfe16399e68aeef4c169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de4ba50d-2397-5187-aec8-73c5461eb2cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7fb0f6d-3b2e-5bea-a009-57b79f604fae', 1), '5833e90ca5e25e5e3e4d59c0625b95375ea61e0343a9dfe16399e68aeef4c169',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7.mp3', 5511, '2026-09-13 10:21:57.550942', 'ecdf5e810d51024f6d8b65af5052e326804f8a8d800a260a0f38945899d5e660', 'validated', '{"audio_key":"8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7","entity_key":"u_strategic_alignment_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ecdf5e810d51024f6d8b65af5052e326804f8a8d800a260a0f38945899d5e660","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_strategic_alignment_capstone_03_listen -> audio/generated/de-DE/utterances/8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8cdc1c68-7806-5355-b370-31deadb48d17', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_strategic_alignment_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5833e90ca5e25e5e3e4d59c0625b95375ea61e0343a9dfe16399e68aeef4c169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf5b2f8b-4f22-5a7c-8944-a94f366cac53', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8cdc1c68-7806-5355-b370-31deadb48d17', 1), '5833e90ca5e25e5e3e4d59c0625b95375ea61e0343a9dfe16399e68aeef4c169',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7.mp3', 5511, '2026-09-13 10:21:57.550942', 'ecdf5e810d51024f6d8b65af5052e326804f8a8d800a260a0f38945899d5e660', 'validated', '{"audio_key":"8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7","entity_key":"ex_strategic_alignment_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ecdf5e810d51024f6d8b65af5052e326804f8a8d800a260a0f38945899d5e660","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c63f0d79b22a3dc2b46cea4139ee3b97df5a08ebb1167d925fa12e198c4dbc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_communication_02 -> audio/generated/de-DE/utterances/8daad510aec9c161e32d4334e457d9b6e1ee44038eeab555ed806b5817bc5574.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee273647-db78-5f67-9024-1d1acad82d17', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5a69b889985a920111549b3c1d9c9751ea4c96f352a7c7d3aef39f84dff5b32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a462d008-5082-5735-8551-870f0e2ce560', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee273647-db78-5f67-9024-1d1acad82d17', 1), 'f5a69b889985a920111549b3c1d9c9751ea4c96f352a7c7d3aef39f84dff5b32',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8daad510aec9c161e32d4334e457d9b6e1ee44038eeab555ed806b5817bc5574.mp3', 6295, '2026-09-13 10:21:58.233203', '95a58e92c693b73af67e9e2b8805680cf7ad64e1c5bc4904d8b7eb0b760b5187', 'validated', '{"audio_key":"8daad510aec9c161e32d4334e457d9b6e1ee44038eeab555ed806b5817bc5574","entity_key":"u_change_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95a58e92c693b73af67e9e2b8805680cf7ad64e1c5bc4904d8b7eb0b760b5187","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8daad510aec9c161e32d4334e457d9b6e1ee44038eeab555ed806b5817bc5574.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_proposal_writing_06 -> audio/generated/de-DE/utterances/8e12f169ace8d9e3ceebd54a76318e456f297eb4bb41fa6735d4a75a1fb34d78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('66b1c321-7a5d-5b34-8427-75ac88fd8d51', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_proposal_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '454ad9d14dfa4870272d794a99d6b6caafd62b1144374c014feba11c373d384d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2bf10e0-082c-5963-b5b0-59191f871ad3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('66b1c321-7a5d-5b34-8427-75ac88fd8d51', 1), '454ad9d14dfa4870272d794a99d6b6caafd62b1144374c014feba11c373d384d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e12f169ace8d9e3ceebd54a76318e456f297eb4bb41fa6735d4a75a1fb34d78.mp3', 5250, '2026-09-13 10:21:59.055724', 'a026ba9c46d4785f108251bd5d76daf952955097983db71a8c22557844cf19ff', 'validated', '{"audio_key":"8e12f169ace8d9e3ceebd54a76318e456f297eb4bb41fa6735d4a75a1fb34d78","entity_key":"u_proposal_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a026ba9c46d4785f108251bd5d76daf952955097983db71a8c22557844cf19ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e12f169ace8d9e3ceebd54a76318e456f297eb4bb41fa6735d4a75a1fb34d78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_partnership_negotiation_03 -> audio/generated/de-DE/utterances/8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c864badf-e7f0-587f-acbe-26905cb593b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_partnership_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ad30116b2ad5ad3d14ff79a869b03429eab54b31a37090dc834b6e5f3e06d66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('963725cc-69f3-5b12-9cd5-ad47c2689518', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c864badf-e7f0-587f-acbe-26905cb593b5', 1), '0ad30116b2ad5ad3d14ff79a869b03429eab54b31a37090dc834b6e5f3e06d66',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14.mp3', 5381, '2026-09-13 10:21:59.740983', '8a3be92202ee392cfe7212011e0d66a05a32699190eeca4d732601d7ba1726db', 'validated', '{"audio_key":"8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14","entity_key":"u_partnership_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a3be92202ee392cfe7212011e0d66a05a32699190eeca4d732601d7ba1726db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_partnership_negotiation_02_listen -> audio/generated/de-DE/utterances/8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('14553228-167a-55a8-bff4-c57f9e0a3594', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_partnership_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ad30116b2ad5ad3d14ff79a869b03429eab54b31a37090dc834b6e5f3e06d66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9053ed6b-b88e-5201-9cd0-dc07bee3e9fe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('14553228-167a-55a8-bff4-c57f9e0a3594', 1), '0ad30116b2ad5ad3d14ff79a869b03429eab54b31a37090dc834b6e5f3e06d66',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14.mp3', 5381, '2026-09-13 10:21:59.740983', '8a3be92202ee392cfe7212011e0d66a05a32699190eeca4d732601d7ba1726db', 'validated', '{"audio_key":"8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14","entity_key":"ex_partnership_negotiation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a3be92202ee392cfe7212011e0d66a05a32699190eeca4d732601d7ba1726db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e310dbd466b687fdc76f6e21aa81210bf09e82113e093a6744b5e26a7b6de14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_interviews_02 -> audio/generated/de-DE/utterances/8e7ba833819436edcc8ec9cf42d33e49ec320b4f0ce45823587e909b67f62839.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25ab5f41-226c-5a02-b7c6-2fa44063298e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_interviews_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fd9a8ce033a741b0aa27837eca04c3fc800c76ea35bd4235c2c7f05383807b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('702b8f92-219b-5627-8084-4ad0b34ee435', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25ab5f41-226c-5a02-b7c6-2fa44063298e', 1), '5fd9a8ce033a741b0aa27837eca04c3fc800c76ea35bd4235c2c7f05383807b4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e7ba833819436edcc8ec9cf42d33e49ec320b4f0ce45823587e909b67f62839.mp3', 6112, '2026-09-13 10:22:00.665512', '4d08eb261a6a03c02b25d50b835e0da2a4109f4eec6b460fa350c374932f4697', 'validated', '{"audio_key":"8e7ba833819436edcc8ec9cf42d33e49ec320b4f0ce45823587e909b67f62839","entity_key":"u_expert_interviews_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d08eb261a6a03c02b25d50b835e0da2a4109f4eec6b460fa350c374932f4697","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e7ba833819436edcc8ec9cf42d33e49ec320b4f0ce45823587e909b67f62839.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_interpretation_03 -> audio/generated/de-DE/utterances/8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c042a077-7b46-5808-b921-0b2c499233a8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_interpretation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17743ecac8220d71011659ed5d4eee447c6f283413d25fcfe6622e24e171c22d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f80c5739-92f2-56c9-8c3f-865a7ff71356', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c042a077-7b46-5808-b921-0b2c499233a8', 1), '17743ecac8220d71011659ed5d4eee447c6f283413d25fcfe6622e24e171c22d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0.mp3', 3474, '2026-09-13 10:22:01.008456', '27e5cf19d9b7ad9d10ac223d74af134b570667733f5646ff877458a3c0e913b5', 'validated', '{"audio_key":"8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0","entity_key":"u_data_interpretation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27e5cf19d9b7ad9d10ac223d74af134b570667733f5646ff877458a3c0e913b5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_data_interpretation_02_listen -> audio/generated/de-DE/utterances/8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0a5e8701-2541-57b1-a22e-59bf2d7ffa65', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_data_interpretation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17743ecac8220d71011659ed5d4eee447c6f283413d25fcfe6622e24e171c22d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a4c4ed5-c543-5224-a034-c3f8d104dc39', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0a5e8701-2541-57b1-a22e-59bf2d7ffa65', 1), '17743ecac8220d71011659ed5d4eee447c6f283413d25fcfe6622e24e171c22d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0.mp3', 3474, '2026-09-13 10:22:01.008456', '27e5cf19d9b7ad9d10ac223d74af134b570667733f5646ff877458a3c0e913b5', 'validated', '{"audio_key":"8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0","entity_key":"ex_data_interpretation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27e5cf19d9b7ad9d10ac223d74af134b570667733f5646ff877458a3c0e913b5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8e947c8137e17303b8bbc4ffa276afcf809e8308fe28980de5768b6b5042feb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_power_06 -> audio/generated/de-DE/utterances/9008c4c204ebb308fd8c538a04b4108ea4d8c1f3e53f669cc48d17b1c98417be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('32485aba-f439-5905-8c50-c6d5b5404190', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_power_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efd6146389f8fc07478401f5f35b82e9e4bf4c6e1423144b78ef7183ed21e11e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4dea959-ee35-5629-96e9-b552fc2631a4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('32485aba-f439-5905-8c50-c6d5b5404190', 1), 'efd6146389f8fc07478401f5f35b82e9e4bf4c6e1423144b78ef7183ed21e11e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9008c4c204ebb308fd8c538a04b4108ea4d8c1f3e53f669cc48d17b1c98417be.mp3', 6112, '2026-09-13 10:22:02.301011', 'f45860a3c9d4a6cce5f5dd41cf60a71c07b2e0ad464d17f674d63692a345bb1b', 'validated', '{"audio_key":"9008c4c204ebb308fd8c538a04b4108ea4d8c1f3e53f669cc48d17b1c98417be","entity_key":"u_conflict_mediation_power_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f45860a3c9d4a6cce5f5dd41cf60a71c07b2e0ad464d17f674d63692a345bb1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9008c4c204ebb308fd8c538a04b4108ea4d8c1f3e53f669cc48d17b1c98417be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meeting_facilitation_06 -> audio/generated/de-DE/utterances/98f496f6baa852df6faa48c439d2d6ed012966a9031232eb01ecf4b6c1ad96c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fabe97a1-dcb4-554f-a31a-ccc27987b3e5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meeting_facilitation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1c6a434080fd7a59be9157be4947417f0495c57b387ccaaf59230ee18041a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f492031-fd0c-5bd9-b53d-b2297aff1a1c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fabe97a1-dcb4-554f-a31a-ccc27987b3e5', 1), '9e1c6a434080fd7a59be9157be4947417f0495c57b387ccaaf59230ee18041a1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/98f496f6baa852df6faa48c439d2d6ed012966a9031232eb01ecf4b6c1ad96c5.mp3', 5668, '2026-09-13 10:22:02.586702', '4733435f7449b064d33ef7ff0aa18b7a484910c93543de6c5ea0e91caf27fa1b', 'validated', '{"audio_key":"98f496f6baa852df6faa48c439d2d6ed012966a9031232eb01ecf4b6c1ad96c5","entity_key":"u_meeting_facilitation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4733435f7449b064d33ef7ff0aa18b7a484910c93543de6c5ea0e91caf27fa1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/98f496f6baa852df6faa48c439d2d6ed012966a9031232eb01ecf4b6c1ad96c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_interviews_03 -> audio/generated/de-DE/utterances/9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0a702c5f-aea1-5660-9daa-b3951da9c011', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_interviews_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d54364accbc625847d4b3102247b94fcf809601814925fa8cc8702e213beca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32c86a1a-9c37-50b7-9439-cebd0916eb39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0a702c5f-aea1-5660-9daa-b3951da9c011', 1), 'f2d54364accbc625847d4b3102247b94fcf809601814925fa8cc8702e213beca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2.mp3', 4493, '2026-09-13 10:22:03.652010', '7dca7f5e2a98b95aeccdd39d8975e98a04b2cb9a51fa61f0fcc30f663fcec963', 'validated', '{"audio_key":"9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2","entity_key":"u_expert_interviews_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dca7f5e2a98b95aeccdd39d8975e98a04b2cb9a51fa61f0fcc30f663fcec963","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_interviews_02_listen -> audio/generated/de-DE/utterances/9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cc6b221a-059f-569b-b520-e20af91dc1a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_interviews_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d54364accbc625847d4b3102247b94fcf809601814925fa8cc8702e213beca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85c3287d-955d-5fb7-85a5-7a041ae236d2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cc6b221a-059f-569b-b520-e20af91dc1a7', 1), 'f2d54364accbc625847d4b3102247b94fcf809601814925fa8cc8702e213beca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2.mp3', 4493, '2026-09-13 10:22:03.652010', '7dca7f5e2a98b95aeccdd39d8975e98a04b2cb9a51fa61f0fcc30f663fcec963', 'validated', '{"audio_key":"9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2","entity_key":"ex_expert_interviews_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dca7f5e2a98b95aeccdd39d8975e98a04b2cb9a51fa61f0fcc30f663fcec963","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9b68f6d2857b70255f69841d01a02c0c6da04a07cb436c5a6e33fdb5fb9a0db2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_executive_presentations_02 -> audio/generated/de-DE/utterances/9b7ad21b6f95f3ed3f141b4d7aa410871ac01d9cae0c2603abff0824a18c93fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('44cf2940-db23-5e18-a40b-ed2d22dc919c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_executive_presentations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96af941a99cd81cfd28455ed5475159015d4f89c268d6fae91f6b0b9a748b666'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1df822dd-c480-589b-b661-b1aa59898624', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('44cf2940-db23-5e18-a40b-ed2d22dc919c', 1), '96af941a99cd81cfd28455ed5475159015d4f89c268d6fae91f6b0b9a748b666',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9b7ad21b6f95f3ed3f141b4d7aa410871ac01d9cae0c2603abff0824a18c93fa.mp3', 6922, '2026-09-13 10:22:04.330999', '24c54f574e927c1e251aed71830035fb5e0c6c6a9722534a92b34c19c289e624', 'validated', '{"audio_key":"9b7ad21b6f95f3ed3f141b4d7aa410871ac01d9cae0c2603abff0824a18c93fa","entity_key":"u_executive_presentations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24c54f574e927c1e251aed71830035fb5e0c6c6a9722534a92b34c19c289e624","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9b7ad21b6f95f3ed3f141b4d7aa410871ac01d9cae0c2603abff0824a18c93fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_planning_01 -> audio/generated/de-DE/utterances/a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7aca2ff5-6995-5cf4-bd39-4e0bfc56fb91', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f0bc53e92d0a9ab1f261e354f940bb4ce7c2541660e739db89971103e842830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e112c455-a09a-50cc-bb73-4aa3831cbfee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7aca2ff5-6995-5cf4-bd39-4e0bfc56fb91', 1), '4f0bc53e92d0a9ab1f261e354f940bb4ce7c2541660e739db89971103e842830',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0.mp3', 4963, '2026-09-13 10:22:05.087115', 'db43c31b4ce9cbe6a5e6b72b5da59a1722df1ef08565d0b21c5a9e085ff022a1', 'validated', '{"audio_key":"a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0","entity_key":"u_scenario_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db43c31b4ce9cbe6a5e6b72b5da59a1722df1ef08565d0b21c5a9e085ff022a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scenario_planning_01_listen -> audio/generated/de-DE/utterances/a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e813368-4844-5713-a8ab-d1850ff34c42', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scenario_planning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f0bc53e92d0a9ab1f261e354f940bb4ce7c2541660e739db89971103e842830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66e94b79-fed8-59bf-ba78-4cc6bc2f733d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e813368-4844-5713-a8ab-d1850ff34c42', 1), '4f0bc53e92d0a9ab1f261e354f940bb4ce7c2541660e739db89971103e842830',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0.mp3', 4963, '2026-09-13 10:22:05.087115', 'db43c31b4ce9cbe6a5e6b72b5da59a1722df1ef08565d0b21c5a9e085ff022a1', 'validated', '{"audio_key":"a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0","entity_key":"ex_scenario_planning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db43c31b4ce9cbe6a5e6b72b5da59a1722df1ef08565d0b21c5a9e085ff022a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a30adabcec4a9efd5be761eb1ed6de39cce7ee1c6fa682aea30fadfa167f36a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_interviews_05 -> audio/generated/de-DE/utterances/a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d7469052-66e7-57ef-97a0-7710cc7f6f16', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_interviews_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4a9341394087347e969e9ba8af1d630bf675e1594aa0c5b80fda04a19757ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09eaa713-1182-5187-afb8-eeaef933ddaa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d7469052-66e7-57ef-97a0-7710cc7f6f16', 1), 'c4a9341394087347e969e9ba8af1d630bf675e1594aa0c5b80fda04a19757ded',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498.mp3', 4963, '2026-09-13 10:22:05.993388', '03c4d0d1c4044e4611bf4deb76d5df366cba00d21712f2a94121ecb8da5a1108', 'validated', '{"audio_key":"a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498","entity_key":"u_expert_interviews_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03c4d0d1c4044e4611bf4deb76d5df366cba00d21712f2a94121ecb8da5a1108","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_interviews_03_listen -> audio/generated/de-DE/utterances/a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b921c10a-c9ba-5edd-b192-458315ff0e88', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_interviews_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4a9341394087347e969e9ba8af1d630bf675e1594aa0c5b80fda04a19757ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93046a27-6510-57b9-a42c-14611f273f72', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b921c10a-c9ba-5edd-b192-458315ff0e88', 1), 'c4a9341394087347e969e9ba8af1d630bf675e1594aa0c5b80fda04a19757ded',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498.mp3', 4963, '2026-09-13 10:22:05.993388', '03c4d0d1c4044e4611bf4deb76d5df366cba00d21712f2a94121ecb8da5a1108', 'validated', '{"audio_key":"a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498","entity_key":"ex_expert_interviews_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03c4d0d1c4044e4611bf4deb76d5df366cba00d21712f2a94121ecb8da5a1108","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5282e637ce1969182686cec03b411786d38b7e154fa28a57341954898959498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_proposal_writing_02 -> audio/generated/de-DE/utterances/aa25fca90e3fa1ac4c33926db70eee1cc0f5752fa5286f9b4c9e9e6a0adadc1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8f74c900-0483-5cde-abfa-143576ec71e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_proposal_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fabb5d12d5abca6aec8db910d7e5d45ef65de8c65e0c9372ca258ac7b524f8c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c340a37-da66-5a65-aec6-c0e14ca137e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8f74c900-0483-5cde-abfa-143576ec71e2', 1), 'fabb5d12d5abca6aec8db910d7e5d45ef65de8c65e0c9372ca258ac7b524f8c1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aa25fca90e3fa1ac4c33926db70eee1cc0f5752fa5286f9b4c9e9e6a0adadc1c.mp3', 5146, '2026-09-13 10:22:06.599236', '26634e0657292a940d6670be0af5def2d811a92b5f2a74c3372cfb1919a6f577', 'validated', '{"audio_key":"aa25fca90e3fa1ac4c33926db70eee1cc0f5752fa5286f9b4c9e9e6a0adadc1c","entity_key":"u_proposal_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26634e0657292a940d6670be0af5def2d811a92b5f2a74c3372cfb1919a6f577","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aa25fca90e3fa1ac4c33926db70eee1cc0f5752fa5286f9b4c9e9e6a0adadc1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_communication_05 -> audio/generated/de-DE/utterances/aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6c66ebc5-cd82-501b-be32-77be0bdd1703', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '800c48c264c1726da7910d2a5741d6d46c43f9ade1f1eb91ed2185b82a78c0a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26b104e0-5b62-5b40-b2f5-e5d8721b8d49', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6c66ebc5-cd82-501b-be32-77be0bdd1703', 1), '800c48c264c1726da7910d2a5741d6d46c43f9ade1f1eb91ed2185b82a78c0a7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016.mp3', 5093, '2026-09-13 10:22:07.499406', '7d4a8da1c2bf8a0b232d2500dc18e8835951c56e28f02127b42a44d6386b0727', 'validated', '{"audio_key":"aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016","entity_key":"u_change_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4a8da1c2bf8a0b232d2500dc18e8835951c56e28f02127b42a44d6386b0727","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_change_communication_03_listen -> audio/generated/de-DE/utterances/aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('60a32efb-b0ad-5a74-bcaf-627bf19e97a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_change_communication_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '800c48c264c1726da7910d2a5741d6d46c43f9ade1f1eb91ed2185b82a78c0a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7a3378f-4813-5fd3-926b-d089f853e9e2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('60a32efb-b0ad-5a74-bcaf-627bf19e97a5', 1), '800c48c264c1726da7910d2a5741d6d46c43f9ade1f1eb91ed2185b82a78c0a7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016.mp3', 5093, '2026-09-13 10:22:07.499406', '7d4a8da1c2bf8a0b232d2500dc18e8835951c56e28f02127b42a44d6386b0727', 'validated', '{"audio_key":"aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016","entity_key":"ex_change_communication_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4a8da1c2bf8a0b232d2500dc18e8835951c56e28f02127b42a44d6386b0727","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aa57514a6667ac363f20ab9eb49488d79216e389d2853d8ff5636265fc703016.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meeting_facilitation_02 -> audio/generated/de-DE/utterances/aa6fda4cba41087cb746e49ce90a6fbaabdd032e3c7a6476139509af0df98e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2edcc5c4-44de-5760-be38-e7a4c37e4f81', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meeting_facilitation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7581de6baac0140deea6810c3f259cbc24199b91d64cc4dcf6b3272e7fc7406'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('791b779a-22e4-5b8f-b265-7d2f9fd8609a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2edcc5c4-44de-5760-be38-e7a4c37e4f81', 1), 'b7581de6baac0140deea6810c3f259cbc24199b91d64cc4dcf6b3272e7fc7406',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aa6fda4cba41087cb746e49ce90a6fbaabdd032e3c7a6476139509af0df98e87.mp3', 5198, '2026-09-13 10:22:08.078611', 'ef6b5576cf3cd49f08ea3e75dc326d8c69b4f6a0f16470cd2f435fda519a772a', 'validated', '{"audio_key":"aa6fda4cba41087cb746e49ce90a6fbaabdd032e3c7a6476139509af0df98e87","entity_key":"u_meeting_facilitation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef6b5576cf3cd49f08ea3e75dc326d8c69b4f6a0f16470cd2f435fda519a772a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aa6fda4cba41087cb746e49ce90a6fbaabdd032e3c7a6476139509af0df98e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_interpretation_01 -> audio/generated/de-DE/utterances/ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7a377614-517b-521f-b022-a564178ff863', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_interpretation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '607035823b748adb8c13c5061d542825c94a3f09a009e68bc4203662fd567ba1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01f14ac9-3965-56c9-b1e8-5bb440ec5678', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7a377614-517b-521f-b022-a564178ff863', 1), '607035823b748adb8c13c5061d542825c94a3f09a009e68bc4203662fd567ba1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187.mp3', 5276, '2026-09-13 10:22:09.130138', 'c836b2fd1a090cb360a8e10e1bc3608037412c5e7e58c1457b8b9207e9ded3d9', 'validated', '{"audio_key":"ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187","entity_key":"u_data_interpretation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c836b2fd1a090cb360a8e10e1bc3608037412c5e7e58c1457b8b9207e9ded3d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_data_interpretation_01_listen -> audio/generated/de-DE/utterances/ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5028cdb8-7d3b-5634-a63e-ec16b8dc3d06', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_data_interpretation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '607035823b748adb8c13c5061d542825c94a3f09a009e68bc4203662fd567ba1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdaba4be-63a4-54e9-9cdd-133e74980140', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5028cdb8-7d3b-5634-a63e-ec16b8dc3d06', 1), '607035823b748adb8c13c5061d542825c94a3f09a009e68bc4203662fd567ba1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187.mp3', 5276, '2026-09-13 10:22:09.130138', 'c836b2fd1a090cb360a8e10e1bc3608037412c5e7e58c1457b8b9207e9ded3d9', 'validated', '{"audio_key":"ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187","entity_key":"ex_data_interpretation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c836b2fd1a090cb360a8e10e1bc3608037412c5e7e58c1457b8b9207e9ded3d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad3ad70adefe5bfcd3b5f9c5da712e16d43f9fe4bd3d5bb066f754b8a7cba187.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_executive_presentations_01 -> audio/generated/de-DE/utterances/baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b20bb61-335c-5eab-bb5a-302065f32f98', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_executive_presentations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c544b480f8cc54ce6bfd6d40ac16508fb794f5d6e48bb92db4daff9e77a5883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1ae11cc-44a1-59d6-a81a-c7bb66046449', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b20bb61-335c-5eab-bb5a-302065f32f98', 1), '2c544b480f8cc54ce6bfd6d40ac16508fb794f5d6e48bb92db4daff9e77a5883',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981.mp3', 4075, '2026-09-13 10:22:09.453375', 'dca2c605d228120294852954f82470db445bf40f52d3967bb784b27e18aac83c', 'validated', '{"audio_key":"baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981","entity_key":"u_executive_presentations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dca2c605d228120294852954f82470db445bf40f52d3967bb784b27e18aac83c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_executive_presentations_01_listen -> audio/generated/de-DE/utterances/baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fbe3c1bf-c32a-5934-88db-9a8fe5179398', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_executive_presentations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c544b480f8cc54ce6bfd6d40ac16508fb794f5d6e48bb92db4daff9e77a5883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('571e8565-9405-59d1-9b27-3bf6f566c18e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fbe3c1bf-c32a-5934-88db-9a8fe5179398', 1), '2c544b480f8cc54ce6bfd6d40ac16508fb794f5d6e48bb92db4daff9e77a5883',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981.mp3', 4075, '2026-09-13 10:22:09.453375', 'dca2c605d228120294852954f82470db445bf40f52d3967bb784b27e18aac83c', 'validated', '{"audio_key":"baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981","entity_key":"ex_executive_presentations_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dca2c605d228120294852954f82470db445bf40f52d3967bb784b27e18aac83c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/baa152953525227f68bf8fb0eadbed29d86a2049c884579d719cb3c26b2ce981.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_alignment_capstone_02 -> audio/generated/de-DE/utterances/bb24e38996aac180efc6ddfe7d80e0500679b1aa276bd4c921b0db7ea148c658.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c105bca8-9b57-59d4-88bc-8196133cc559', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_alignment_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7226882d822a831abde0f54186c8fc4238252a65a9a8859beca528e9f407b156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaf4ac97-0364-52ac-b3fa-fcce54728382', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c105bca8-9b57-59d4-88bc-8196133cc559', 1), '7226882d822a831abde0f54186c8fc4238252a65a9a8859beca528e9f407b156',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb24e38996aac180efc6ddfe7d80e0500679b1aa276bd4c921b0db7ea148c658.mp3', 5381, '2026-09-13 10:22:10.628399', 'b5671b9ede20d0ac1e9fcefc380930ad5a680286b5110c0eb08ab41ef4ee5c40', 'validated', '{"audio_key":"bb24e38996aac180efc6ddfe7d80e0500679b1aa276bd4c921b0db7ea148c658","entity_key":"u_strategic_alignment_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5671b9ede20d0ac1e9fcefc380930ad5a680286b5110c0eb08ab41ef4ee5c40","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb24e38996aac180efc6ddfe7d80e0500679b1aa276bd4c921b0db7ea148c658.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_power_01 -> audio/generated/de-DE/utterances/be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('edd0d57c-1fed-5b5f-ac36-9f834f484ef0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_power_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6927bbed0b17105a1d012b012680ddc7e7555a6cf45eef255daeab2f86ae460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20fc5193-51b0-5cd8-81be-de776228c60c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('edd0d57c-1fed-5b5f-ac36-9f834f484ef0', 1), 'e6927bbed0b17105a1d012b012680ddc7e7555a6cf45eef255daeab2f86ae460',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622.mp3', 4362, '2026-09-13 10:22:10.823427', '4a4818dd20fd8e6b3fabc863c299e3d5c90888646b3f7590b04da54ed6e37ee8', 'validated', '{"audio_key":"be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622","entity_key":"u_conflict_mediation_power_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a4818dd20fd8e6b3fabc863c299e3d5c90888646b3f7590b04da54ed6e37ee8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_conflict_mediation_power_01_listen -> audio/generated/de-DE/utterances/be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b7a87a05-827b-54f4-b1c9-2f5f25ef0acd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_conflict_mediation_power_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6927bbed0b17105a1d012b012680ddc7e7555a6cf45eef255daeab2f86ae460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6f047a1-7c92-5225-ade5-a74dc741e692', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b7a87a05-827b-54f4-b1c9-2f5f25ef0acd', 1), 'e6927bbed0b17105a1d012b012680ddc7e7555a6cf45eef255daeab2f86ae460',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622.mp3', 4362, '2026-09-13 10:22:10.823427', '4a4818dd20fd8e6b3fabc863c299e3d5c90888646b3f7590b04da54ed6e37ee8', 'validated', '{"audio_key":"be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622","entity_key":"ex_conflict_mediation_power_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a4818dd20fd8e6b3fabc863c299e3d5c90888646b3f7590b04da54ed6e37ee8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/be97e7f7c6f4e700ff403e86736abe57df32dd67fa8f65461d7b0a231326b622.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_data_interpretation_04 -> audio/generated/de-DE/utterances/c84088cd9a402db91d2b0c264c8c36580498f7cba868b1eb64fe7c635bd7903e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('95ea5d76-fa27-52c3-ba29-7ef8dd8167de', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_data_interpretation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1a5d6a1d178d30f10f0a0c4a5c99e06d8b45ff55697e2cb0cc6d4177e03c324'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e58a4c08-dfd6-5045-b27e-10844bf84639', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('95ea5d76-fa27-52c3-ba29-7ef8dd8167de', 1), 'b1a5d6a1d178d30f10f0a0c4a5c99e06d8b45ff55697e2cb0cc6d4177e03c324',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c84088cd9a402db91d2b0c264c8c36580498f7cba868b1eb64fe7c635bd7903e.mp3', 5564, '2026-09-13 10:22:12.277822', 'c0a494bccde6ba8c609bed4610ceec9d83ea81ff2becd4e5139fb3be3b070c02', 'validated', '{"audio_key":"c84088cd9a402db91d2b0c264c8c36580498f7cba868b1eb64fe7c635bd7903e","entity_key":"u_data_interpretation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0a494bccde6ba8c609bed4610ceec9d83ea81ff2becd4e5139fb3be3b070c02","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c84088cd9a402db91d2b0c264c8c36580498f7cba868b1eb64fe7c635bd7903e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_alignment_capstone_06 -> audio/generated/de-DE/utterances/cccdb55b4c81084a2789c4cbfa75fa486980766ee0eabbb1459a7327b20958d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8a64f73a-02b5-5149-b9a5-b19e822f2f93', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_alignment_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '193bff08bb097cd5dfd6b4f21630aa280117b0ab8650bdf5b7c0f8cfa55e2a2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39db692a-b2e0-5b1c-a1b0-60d7e9278637', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8a64f73a-02b5-5149-b9a5-b19e822f2f93', 1), '193bff08bb097cd5dfd6b4f21630aa280117b0ab8650bdf5b7c0f8cfa55e2a2d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cccdb55b4c81084a2789c4cbfa75fa486980766ee0eabbb1459a7327b20958d1.mp3', 5276, '2026-09-13 10:22:12.307656', '81c5480d4b1fc288c7458ae1b31ac058a515ad4d87bfed3c841d73163cc4ec50', 'validated', '{"audio_key":"cccdb55b4c81084a2789c4cbfa75fa486980766ee0eabbb1459a7327b20958d1","entity_key":"u_strategic_alignment_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81c5480d4b1fc288c7458ae1b31ac058a515ad4d87bfed3c841d73163cc4ec50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cccdb55b4c81084a2789c4cbfa75fa486980766ee0eabbb1459a7327b20958d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_alignment_capstone_01 -> audio/generated/de-DE/utterances/ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('33dccc51-1bba-5eda-8b95-7495187a3e31', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_alignment_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6fa58e3fc1abaa42cd0ea2b4998f56a3d2a90fa6e7970b2f4294c0e90f6ef4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27599ab0-330d-5f58-a025-13c5dab13546', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('33dccc51-1bba-5eda-8b95-7495187a3e31', 1), 'f6fa58e3fc1abaa42cd0ea2b4998f56a3d2a90fa6e7970b2f4294c0e90f6ef4f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c.mp3', 5668, '2026-09-13 10:22:13.821281', '4d55f742487b38cb06312b979f5ed9899927bfcb7c3d52af2ac99dc0c72f20a9', 'validated', '{"audio_key":"ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c","entity_key":"u_strategic_alignment_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d55f742487b38cb06312b979f5ed9899927bfcb7c3d52af2ac99dc0c72f20a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_strategic_alignment_capstone_01_listen -> audio/generated/de-DE/utterances/ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2dcfa4a8-8880-5b0b-8ab9-a589460bb734', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_strategic_alignment_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6fa58e3fc1abaa42cd0ea2b4998f56a3d2a90fa6e7970b2f4294c0e90f6ef4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('614bdbc2-049c-5068-b71c-ab60db0380a8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2dcfa4a8-8880-5b0b-8ab9-a589460bb734', 1), 'f6fa58e3fc1abaa42cd0ea2b4998f56a3d2a90fa6e7970b2f4294c0e90f6ef4f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c.mp3', 5668, '2026-09-13 10:22:13.821281', '4d55f742487b38cb06312b979f5ed9899927bfcb7c3d52af2ac99dc0c72f20a9', 'validated', '{"audio_key":"ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c","entity_key":"ex_strategic_alignment_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d55f742487b38cb06312b979f5ed9899927bfcb7c3d52af2ac99dc0c72f20a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce6db4822194b95a6c3aa2f4f1b64477dd68fc261d46638a0b35745c481e5e0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_interviews_04 -> audio/generated/de-DE/utterances/d78be57182755f47316439ac30c43107a8d8de633bbfb93527345b26d89192b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e79fb132-3be6-5bec-9295-16502245d264', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_interviews_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7f8ebd3fce82121e826e0ad8a68c69f89d28d729dae928170b22907d98c177c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bce5a749-8a9f-5e9a-a468-a013978779ff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e79fb132-3be6-5bec-9295-16502245d264', 1), 'f7f8ebd3fce82121e826e0ad8a68c69f89d28d729dae928170b22907d98c177c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d78be57182755f47316439ac30c43107a8d8de633bbfb93527345b26d89192b0.mp3', 6295, '2026-09-13 10:22:13.950870', 'e19d2a25b7602d093e7c1e7a55f6cdc27e6f6cc6fcc5f500447f87fbdb10e8d0', 'validated', '{"audio_key":"d78be57182755f47316439ac30c43107a8d8de633bbfb93527345b26d89192b0","entity_key":"u_expert_interviews_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e19d2a25b7602d093e7c1e7a55f6cdc27e6f6cc6fcc5f500447f87fbdb10e8d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d78be57182755f47316439ac30c43107a8d8de633bbfb93527345b26d89192b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_change_communication_06 -> audio/generated/de-DE/utterances/db9ef5394d189cbd8c0f2272d304bce8b6f31d770f2db874281920d58a2990ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c7f64674-a587-5d33-aa30-7cb5f3838e64', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_change_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc45aaa840eac6fce190660aee9ffae3c316d9c305d574e1b84a91ac476bd3dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaa489cd-08bd-5286-8b5a-28b204902a08', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c7f64674-a587-5d33-aa30-7cb5f3838e64', 1), 'cc45aaa840eac6fce190660aee9ffae3c316d9c305d574e1b84a91ac476bd3dc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/db9ef5394d189cbd8c0f2272d304bce8b6f31d770f2db874281920d58a2990ef.mp3', 7235, '2026-09-13 10:22:15.554310', 'a3b321526f2b51623e83eae1c53e95c9adc070f04a7cfa54bd26f231eb5358ea', 'validated', '{"audio_key":"db9ef5394d189cbd8c0f2272d304bce8b6f31d770f2db874281920d58a2990ef","entity_key":"u_change_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3b321526f2b51623e83eae1c53e95c9adc070f04a7cfa54bd26f231eb5358ea","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/db9ef5394d189cbd8c0f2272d304bce8b6f31d770f2db874281920d58a2990ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_power_03 -> audio/generated/de-DE/utterances/ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18f136fa-2d22-5a0e-a759-d24fbab949a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_power_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7446f8ef7be311ae342787ef6b0d67d6e607f742fee3930b69c13100f51091d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3da5d111-ccec-574d-963e-1040d5e55cc4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18f136fa-2d22-5a0e-a759-d24fbab949a7', 1), '7446f8ef7be311ae342787ef6b0d67d6e607f742fee3930b69c13100f51091d3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3.mp3', 4832, '2026-09-13 10:22:15.406370', 'e9b4158d2d427a5b8157ef9134ae28e1ded898ec1618cddbf891a4f136fdd65f', 'validated', '{"audio_key":"ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3","entity_key":"u_conflict_mediation_power_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9b4158d2d427a5b8157ef9134ae28e1ded898ec1618cddbf891a4f136fdd65f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_conflict_mediation_power_02_listen -> audio/generated/de-DE/utterances/ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e8095007-67d9-55f1-8f3a-977587666b02', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_conflict_mediation_power_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7446f8ef7be311ae342787ef6b0d67d6e607f742fee3930b69c13100f51091d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03a6e889-f48c-5c09-ac23-83a52917f188', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e8095007-67d9-55f1-8f3a-977587666b02', 1), '7446f8ef7be311ae342787ef6b0d67d6e607f742fee3930b69c13100f51091d3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3.mp3', 4832, '2026-09-13 10:22:15.406370', 'e9b4158d2d427a5b8157ef9134ae28e1ded898ec1618cddbf891a4f136fdd65f', 'validated', '{"audio_key":"ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3","entity_key":"ex_conflict_mediation_power_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9b4158d2d427a5b8157ef9134ae28e1ded898ec1618cddbf891a4f136fdd65f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ee4747964ff2e4302fdbb191ddb286223e843d76c199a5489f295292ab368cc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_planning_04 -> audio/generated/de-DE/utterances/f1efa9a4fb7754630cc13968aab11338bca60b097059efa4dd7a1f1d86b17ff9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b705568-fbf0-5d86-a55a-8dd962b851ac', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0182b4b6fa50ae2d0057d748ff3fc0ad24d6d8db1bc3d71bf5e43aaff735fa65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5de62c6-bff4-569c-8cc9-1fdedb2dc6fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b705568-fbf0-5d86-a55a-8dd962b851ac', 1), '0182b4b6fa50ae2d0057d748ff3fc0ad24d6d8db1bc3d71bf5e43aaff735fa65',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f1efa9a4fb7754630cc13968aab11338bca60b097059efa4dd7a1f1d86b17ff9.mp3', 5746, '2026-09-13 10:22:16.963971', '745987583fa08f5929d75a4b2517cee348068aa5a8defb700fbcb62cd7088b0b', 'validated', '{"audio_key":"f1efa9a4fb7754630cc13968aab11338bca60b097059efa4dd7a1f1d86b17ff9","entity_key":"u_scenario_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"745987583fa08f5929d75a4b2517cee348068aa5a8defb700fbcb62cd7088b0b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f1efa9a4fb7754630cc13968aab11338bca60b097059efa4dd7a1f1d86b17ff9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_interviews_06 -> audio/generated/de-DE/utterances/f7bc5ed235547156b7c6e17f7be26ead0f585bb2e502660a334c796efff03b35.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b8d2ddc-d929-58a2-8058-baa17d689538', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_interviews_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e90a2f3ec32480c9e698a9eb907a031c9d952f8663c8e9219f6fe3dc39e09ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3aac9657-a810-5b9a-9b4c-1c069cf82a62', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b8d2ddc-d929-58a2-8058-baa17d689538', 1), '9e90a2f3ec32480c9e698a9eb907a031c9d952f8663c8e9219f6fe3dc39e09ca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f7bc5ed235547156b7c6e17f7be26ead0f585bb2e502660a334c796efff03b35.mp3', 4911, '2026-09-13 10:22:17.031465', '2ff69c449ff42c7955ed17b0ec338624ccdd9582a80a0857d5643a04e072afe5', 'validated', '{"audio_key":"f7bc5ed235547156b7c6e17f7be26ead0f585bb2e502660a334c796efff03b35","entity_key":"u_expert_interviews_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ff69c449ff42c7955ed17b0ec338624ccdd9582a80a0857d5643a04e072afe5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f7bc5ed235547156b7c6e17f7be26ead0f585bb2e502660a334c796efff03b35.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_partnership_negotiation_05 -> audio/generated/de-DE/utterances/fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c268417-c49f-56c0-872b-379712737912', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_partnership_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71a1aeeecfb04bdd961adf497079d6bf42a59d8dcf4189746ba3a9e4dc9d7468'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('295a4852-11c4-5fa2-b6e0-0e11f1f1f44a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c268417-c49f-56c0-872b-379712737912', 1), '71a1aeeecfb04bdd961adf497079d6bf42a59d8dcf4189746ba3a9e4dc9d7468',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19.mp3', 6086, '2026-09-13 10:22:18.568982', '51ac34f993b0971e7335522b8c1bc94b6afad6bb6948de6625d4ab72eb82b417', 'validated', '{"audio_key":"fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19","entity_key":"u_partnership_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51ac34f993b0971e7335522b8c1bc94b6afad6bb6948de6625d4ab72eb82b417","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_partnership_negotiation_03_listen -> audio/generated/de-DE/utterances/fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4e51e68f-989e-5d9e-bdee-504953243395', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_partnership_negotiation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71a1aeeecfb04bdd961adf497079d6bf42a59d8dcf4189746ba3a9e4dc9d7468'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f7690ad-3be4-54a0-b68f-4ea232d5b3bf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4e51e68f-989e-5d9e-bdee-504953243395', 1), '71a1aeeecfb04bdd961adf497079d6bf42a59d8dcf4189746ba3a9e4dc9d7468',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19.mp3', 6086, '2026-09-13 10:22:18.568982', '51ac34f993b0971e7335522b8c1bc94b6afad6bb6948de6625d4ab72eb82b417', 'validated', '{"audio_key":"fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19","entity_key":"ex_partnership_negotiation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51ac34f993b0971e7335522b8c1bc94b6afad6bb6948de6625d4ab72eb82b417","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fa61064f92fd465092d22872250efde3707ea3e56489a934d7af0ae4ae2b2d19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_meeting_facilitation_05 -> audio/generated/de-DE/utterances/fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cdebe477-ddb5-5bfd-8ee5-cd2768670146', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_meeting_facilitation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5b5cf49bb9110817d7e2d8cde4cb149fce2da0702140bf10198a77f2d9520b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b39d940f-cab8-5132-94b5-b349f57c0267', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cdebe477-ddb5-5bfd-8ee5-cd2768670146', 1), 'a5b5cf49bb9110817d7e2d8cde4cb149fce2da0702140bf10198a77f2d9520b4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98.mp3', 5250, '2026-09-13 10:22:18.568118', 'a51019451fb5406f2550cf3b111b49ee7477d71ef9041b5c73818250ccef4e76', 'validated', '{"audio_key":"fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98","entity_key":"u_meeting_facilitation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a51019451fb5406f2550cf3b111b49ee7477d71ef9041b5c73818250ccef4e76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_meeting_facilitation_03_listen -> audio/generated/de-DE/utterances/fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('45f8a5b0-cf58-57eb-a533-fdaf2e2b01aa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_meeting_facilitation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5b5cf49bb9110817d7e2d8cde4cb149fce2da0702140bf10198a77f2d9520b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10ab02ce-f795-53e0-a58a-3246016bab43', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('45f8a5b0-cf58-57eb-a533-fdaf2e2b01aa', 1), 'a5b5cf49bb9110817d7e2d8cde4cb149fce2da0702140bf10198a77f2d9520b4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98.mp3', 5250, '2026-09-13 10:22:18.568118', 'a51019451fb5406f2550cf3b111b49ee7477d71ef9041b5c73818250ccef4e76', 'validated', '{"audio_key":"fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98","entity_key":"ex_meeting_facilitation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a51019451fb5406f2550cf3b111b49ee7477d71ef9041b5c73818250ccef4e76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fac5e290622d6ad934926ed19cfbf3aa0d1acb6308dc2edd397db92904b75c98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_power_05 -> audio/generated/de-DE/utterances/fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5a38a183-4de1-58aa-a570-30128cb0f66e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_power_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b56f63aae507029c98ccece9970a6888b940aed4142da3dcceba229d54c4384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('565db4e2-3061-5526-80a3-657558f7a589', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5a38a183-4de1-58aa-a570-30128cb0f66e', 1), '5b56f63aae507029c98ccece9970a6888b940aed4142da3dcceba229d54c4384',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a.mp3', 4675, '2026-09-13 10:22:20.039368', '1096e400c8eacd408900bc23925bb75e9317ba7133e0e1f4583ae4cb38c3c8f2', 'validated', '{"audio_key":"fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a","entity_key":"u_conflict_mediation_power_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1096e400c8eacd408900bc23925bb75e9317ba7133e0e1f4583ae4cb38c3c8f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_conflict_mediation_power_03_listen -> audio/generated/de-DE/utterances/fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f12af183-c1c1-5057-9d6a-7edf5f7a18eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_conflict_mediation_power_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b56f63aae507029c98ccece9970a6888b940aed4142da3dcceba229d54c4384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66560b93-7f45-5eed-bc02-b08810ce9239', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f12af183-c1c1-5057-9d6a-7edf5f7a18eb', 1), '5b56f63aae507029c98ccece9970a6888b940aed4142da3dcceba229d54c4384',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a.mp3', 4675, '2026-09-13 10:22:20.039368', '1096e400c8eacd408900bc23925bb75e9317ba7133e0e1f4583ae4cb38c3c8f2', 'validated', '{"audio_key":"fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a","entity_key":"ex_conflict_mediation_power_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1096e400c8eacd408900bc23925bb75e9317ba7133e0e1f4583ae4cb38c3c8f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fc4ed94241a12d460b6ee569d85f67786b5f7a580ebc9871f151f761aa94495a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_proposal_writing_04 -> audio/generated/de-DE/utterances/fdb100c8e37170222d24ec933891263be2c82a647c3ac6ffcf4286eccadef06b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('258a05d9-625b-59e5-a1f5-e091c4230cb6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_proposal_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad8627ffa3849bc2330a689afbd0133a1ac3c83493fa69353c8256d3ad54c6fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86f1bb04-a570-5c88-8011-a2983a601243', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('258a05d9-625b-59e5-a1f5-e091c4230cb6', 1), 'ad8627ffa3849bc2330a689afbd0133a1ac3c83493fa69353c8256d3ad54c6fb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fdb100c8e37170222d24ec933891263be2c82a647c3ac6ffcf4286eccadef06b.mp3', 5015, '2026-09-13 10:22:20.019421', '97fc453e7eb0a3414633679fb5ea019b1cd53e05c1e8f4f56d5eb09b41c5023a', 'validated', '{"audio_key":"fdb100c8e37170222d24ec933891263be2c82a647c3ac6ffcf4286eccadef06b","entity_key":"u_proposal_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97fc453e7eb0a3414633679fb5ea019b1cd53e05c1e8f4f56d5eb09b41c5023a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fdb100c8e37170222d24ec933891263be2c82a647c3ac6ffcf4286eccadef06b.mp3"}'
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

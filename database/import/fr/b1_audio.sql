-- Generated audio link import for fr-FR B1
-- Source manifest: audio/manifests/fr/B1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'fr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'fr-FR' LIMIT 1);
START TRANSACTION;

-- d_medias_et_opinions_02:4 -> audio/generated/fr-FR/dialogues/00ec76c0300a7b4c4acc503d0718dcc09f1c998601f73dc03c3bb0370e1d6f2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b08953af-158c-563b-9c3a-1b0a232fdccd', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a05b6105f45b1842882a22b87421c82eff6bc75b6a87fee56184e8e878555c28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25f42626-22a8-5f41-9897-4a534a9629b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b08953af-158c-563b-9c3a-1b0a232fdccd', 1), 'a05b6105f45b1842882a22b87421c82eff6bc75b6a87fee56184e8e878555c28',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/00ec76c0300a7b4c4acc503d0718dcc09f1c998601f73dc03c3bb0370e1d6f2f.mp3', 2220, '2026-09-14 10:59:51.000821', 'bb62bd40cd6f70b07691c9d0db21f2aa359ac865909d6060b979faba157239f2', 'validated', '{"audio_key":"00ec76c0300a7b4c4acc503d0718dcc09f1c998601f73dc03c3bb0370e1d6f2f","entity_key":"d_medias_et_opinions_02:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb62bd40cd6f70b07691c9d0db21f2aa359ac865909d6060b979faba157239f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/00ec76c0300a7b4c4acc503d0718dcc09f1c998601f73dc03c3bb0370e1d6f2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_02:4 -> audio/generated/fr-FR/dialogues/019d748d1bace481b86fa00a81b63f63f8fa19762fbcf4a8abe8a2250d9d6a4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e53c2e13-2f83-5ed9-a830-65778937815a', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e092687675b3eba45441771cc9ee370d3b19c4eedbd41b3431b165ff4b241d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d434c35a-16ab-5036-8886-8637334e56f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e53c2e13-2f83-5ed9-a830-65778937815a', 1), '1e092687675b3eba45441771cc9ee370d3b19c4eedbd41b3431b165ff4b241d3',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/019d748d1bace481b86fa00a81b63f63f8fa19762fbcf4a8abe8a2250d9d6a4d.mp3', 2324, '2026-09-14 10:59:51.000951', 'dbfe6b5d087d9431a506cf3e1b9959e7a0ebf86b6b74bf9b39a3b0908bbe362d', 'validated', '{"audio_key":"019d748d1bace481b86fa00a81b63f63f8fa19762fbcf4a8abe8a2250d9d6a4d","entity_key":"d_logement_et_reclamations_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dbfe6b5d087d9431a506cf3e1b9959e7a0ebf86b6b74bf9b39a3b0908bbe362d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/019d748d1bace481b86fa00a81b63f63f8fa19762fbcf4a8abe8a2250d9d6a4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_02:3 -> audio/generated/fr-FR/dialogues/05ddf64f6fb34f20bd5d152b23697a6a05c748742ac81ce4bd141badc4e40f95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a7cb7e3-b454-5531-8ffc-2bbe0a7ba7a3', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fdd6f15346c7e7431784b7f6583ed7f4ed54d076a00dcc502e752f0a308f04a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58f97bc4-7e7e-5239-93ef-d097ec1bae52', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a7cb7e3-b454-5531-8ffc-2bbe0a7ba7a3', 1), '9fdd6f15346c7e7431784b7f6583ed7f4ed54d076a00dcc502e752f0a308f04a',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/05ddf64f6fb34f20bd5d152b23697a6a05c748742ac81ce4bd141badc4e40f95.mp3', 2925, '2026-09-14 10:59:52.276037', 'ec182705bd93157710bddc24b8eb8032f36b0f5edabe4c8cf45dd61de1b9c17d', 'validated', '{"audio_key":"05ddf64f6fb34f20bd5d152b23697a6a05c748742ac81ce4bd141badc4e40f95","entity_key":"d_voyages_et_imprevus_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ec182705bd93157710bddc24b8eb8032f36b0f5edabe4c8cf45dd61de1b9c17d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/05ddf64f6fb34f20bd5d152b23697a6a05c748742ac81ce4bd141badc4e40f95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_01:4 -> audio/generated/fr-FR/dialogues/0dd8ec4dcc4d9fd097f3743c2d6a27fd36e9573b49eb62e4a430d6872b254f4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d00958e4-3cd7-5eaf-ba6d-59392430aaed', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1909d73c38581a052a1e40c0e5db0ac8c0f710ebd18c6ee5d5a3bb3c68cef29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8bbb291-dc53-5422-93d6-c74ad3b4d42b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d00958e4-3cd7-5eaf-ba6d-59392430aaed', 1), 'b1909d73c38581a052a1e40c0e5db0ac8c0f710ebd18c6ee5d5a3bb3c68cef29',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0dd8ec4dcc4d9fd097f3743c2d6a27fd36e9573b49eb62e4a430d6872b254f4d.mp3', 2220, '2026-09-14 10:59:52.194391', 'cda579e6cde23f4b71b090a626e3d7f600ffd2bc7d97a88e3c938628c9ebbb9d', 'validated', '{"audio_key":"0dd8ec4dcc4d9fd097f3743c2d6a27fd36e9573b49eb62e4a430d6872b254f4d","entity_key":"d_voyages_et_imprevus_01:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"cda579e6cde23f4b71b090a626e3d7f600ffd2bc7d97a88e3c938628c9ebbb9d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/0dd8ec4dcc4d9fd097f3743c2d6a27fd36e9573b49eb62e4a430d6872b254f4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_01:2 -> audio/generated/fr-FR/dialogues/0fcffdf3388a93988113d20d0923a3be93b96843c6d4cc98d3f5a48c0b4aabfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6acf57b-60ac-5148-ba15-543974d7e6ac', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '756258526545eae8b25ed25e71b6414e68d1625a8d555a19ec9863d1aa2864c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc3eeb3e-79e7-5b75-9219-7fc5aa05a118', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6acf57b-60ac-5148-ba15-543974d7e6ac', 1), '756258526545eae8b25ed25e71b6414e68d1625a8d555a19ec9863d1aa2864c0',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0fcffdf3388a93988113d20d0923a3be93b96843c6d4cc98d3f5a48c0b4aabfa.mp3', 2037, '2026-09-14 10:59:53.351066', '84164c7e58ea8a8c7b5c948cda82abef35ac106dd43821e2cd85829d2b9eb3d7', 'validated', '{"audio_key":"0fcffdf3388a93988113d20d0923a3be93b96843c6d4cc98d3f5a48c0b4aabfa","entity_key":"d_souvenirs_et_recits_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84164c7e58ea8a8c7b5c948cda82abef35ac106dd43821e2cd85829d2b9eb3d7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/0fcffdf3388a93988113d20d0923a3be93b96843c6d4cc98d3f5a48c0b4aabfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_02:1 -> audio/generated/fr-FR/dialogues/114a520bb155dac9a8075d8dd2e61eb36d6cf55a9349162e681903a1a6d4a744.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4baf412-423d-50ec-ba00-4a437bd65f5f', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bdb6b75f6ab60c867a6d5ea6c3f7b95f25f9ad2ff4d58d228c9f2e30eb0a598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e8cc21d-04d6-535e-9c24-2ea904a41155', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4baf412-423d-50ec-ba00-4a437bd65f5f', 1), '1bdb6b75f6ab60c867a6d5ea6c3f7b95f25f9ad2ff4d58d228c9f2e30eb0a598',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/114a520bb155dac9a8075d8dd2e61eb36d6cf55a9349162e681903a1a6d4a744.mp3', 2220, '2026-09-14 10:59:53.454988', '4f4d2d9c4683ffd37ebd218167688a803edb25086dd1e2cb4fcd3d759175231b', 'validated', '{"audio_key":"114a520bb155dac9a8075d8dd2e61eb36d6cf55a9349162e681903a1a6d4a744","entity_key":"d_projets_et_avenir_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4f4d2d9c4683ffd37ebd218167688a803edb25086dd1e2cb4fcd3d759175231b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/114a520bb155dac9a8075d8dd2e61eb36d6cf55a9349162e681903a1a6d4a744.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_01:3 -> audio/generated/fr-FR/dialogues/11ad10face919bd86681dc8fd0bdc16471d70c524a9fbea24cda218a44d0f338.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3942597f-8462-5262-a269-78a850335757', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28e60e1a9c7ccb1b3ca184587fb0bf07b2c0339af942ebc7477b980317467f93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d7b872-2fab-57c4-ae1b-0d0da4be20f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3942597f-8462-5262-a269-78a850335757', 1), '28e60e1a9c7ccb1b3ca184587fb0bf07b2c0339af942ebc7477b980317467f93',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/11ad10face919bd86681dc8fd0bdc16471d70c524a9fbea24cda218a44d0f338.mp3', 1149, '2026-09-14 10:59:54.406135', 'e159d455bb66d91fb7b6aca27a4eb252cc4109837b336efd87e17b90cdd50ea5', 'validated', '{"audio_key":"11ad10face919bd86681dc8fd0bdc16471d70c524a9fbea24cda218a44d0f338","entity_key":"d_services_et_demarches_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e159d455bb66d91fb7b6aca27a4eb252cc4109837b336efd87e17b90cdd50ea5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/11ad10face919bd86681dc8fd0bdc16471d70c524a9fbea24cda218a44d0f338.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_01:3 -> audio/generated/fr-FR/dialogues/12d455988c1008da5125fec7b223d4d5fa82f8987e3d586b4dad825c217d5874.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7afb8ffa-81b6-5815-8505-962d2d0a28a9', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71e0bbffc2be4218eac260a6f3b7c45d559d7c38ea444301a01d204dac8348f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('571eee32-7da8-50b7-aa00-7468855a62fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7afb8ffa-81b6-5815-8505-962d2d0a28a9', 1), '71e0bbffc2be4218eac260a6f3b7c45d559d7c38ea444301a01d204dac8348f6',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/12d455988c1008da5125fec7b223d4d5fa82f8987e3d586b4dad825c217d5874.mp3', 2220, '2026-09-14 10:59:54.589085', 'e009bf8801b1555c7f4678d1f6e749f2f3597b0f460681d105ff23805d3f0582', 'validated', '{"audio_key":"12d455988c1008da5125fec7b223d4d5fa82f8987e3d586b4dad825c217d5874","entity_key":"d_voyages_et_imprevus_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e009bf8801b1555c7f4678d1f6e749f2f3597b0f460681d105ff23805d3f0582","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/12d455988c1008da5125fec7b223d4d5fa82f8987e3d586b4dad825c217d5874.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_02:3 -> audio/generated/fr-FR/dialogues/1b18f02669aa4c2547029491119c5b26e187ca87a3d9ca1348cb605cd5c0cb84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c623367-2fa1-5600-9e53-708f4905df17', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '961bc7572cccf02c3d4cd93e9551d12e574a14168a2291f674e9c418458a320f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd0ee3a2-c384-56cc-93e1-6705760bf602', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c623367-2fa1-5600-9e53-708f4905df17', 1), '961bc7572cccf02c3d4cd93e9551d12e574a14168a2291f674e9c418458a320f',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1b18f02669aa4c2547029491119c5b26e187ca87a3d9ca1348cb605cd5c0cb84.mp3', 1332, '2026-09-14 10:59:55.499939', 'd59dd80a0db715056dc96eb0a1de771b413e5cdc5c33bc3957ecfa16a09e3daf', 'validated', '{"audio_key":"1b18f02669aa4c2547029491119c5b26e187ca87a3d9ca1348cb605cd5c0cb84","entity_key":"d_souvenirs_et_recits_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d59dd80a0db715056dc96eb0a1de771b413e5cdc5c33bc3957ecfa16a09e3daf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/1b18f02669aa4c2547029491119c5b26e187ca87a3d9ca1348cb605cd5c0cb84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_02:2 -> audio/generated/fr-FR/dialogues/1eb30d5e15b0f535e169e0db6962317c524dc9547a5cd91d9036534e9874223a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d287c5a-f7d4-582d-ac8d-ef3dcec1ff45', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c304502de958ec92df3a4ea67cbbc4a16f3810f519945b806032ac0be429feb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31317317-238d-5c11-b2a9-6839e07bd312', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d287c5a-f7d4-582d-ac8d-ef3dcec1ff45', 1), 'c304502de958ec92df3a4ea67cbbc4a16f3810f519945b806032ac0be429feb4',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1eb30d5e15b0f535e169e0db6962317c524dc9547a5cd91d9036534e9874223a.mp3', 2768, '2026-09-14 10:59:55.751201', 'd99115f2f89e32a88c4280b9434f2b229a6463d2b3a8dab327c63d007060facd', 'validated', '{"audio_key":"1eb30d5e15b0f535e169e0db6962317c524dc9547a5cd91d9036534e9874223a","entity_key":"d_b1_capstone_decisions_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d99115f2f89e32a88c4280b9434f2b229a6463d2b3a8dab327c63d007060facd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/1eb30d5e15b0f535e169e0db6962317c524dc9547a5cd91d9036534e9874223a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_01:3 -> audio/generated/fr-FR/dialogues/20f352b803b942a9916058388997ef211971f87f48c82dfd322a62bd864e7018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47ff0ec2-0c19-58c5-912c-d38492a9d679', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ce764e16becd4f700410d370d71d3b1ffbb4ada5ad2b2287af7dddc41262dd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22284d32-242f-5f3c-a828-46f812a1d077', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47ff0ec2-0c19-58c5-912c-d38492a9d679', 1), '4ce764e16becd4f700410d370d71d3b1ffbb4ada5ad2b2287af7dddc41262dd5',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/20f352b803b942a9916058388997ef211971f87f48c82dfd322a62bd864e7018.mp3', 1802, '2026-09-14 10:59:56.583078', '5fc2b6bc1c0af6edf7dd24d3f5117037151d454cdb9b223ae6b6eb4175ba8dd8', 'validated', '{"audio_key":"20f352b803b942a9916058388997ef211971f87f48c82dfd322a62bd864e7018","entity_key":"d_relations_et_conseils_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fc2b6bc1c0af6edf7dd24d3f5117037151d454cdb9b223ae6b6eb4175ba8dd8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/20f352b803b942a9916058388997ef211971f87f48c82dfd322a62bd864e7018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_01:1 -> audio/generated/fr-FR/dialogues/26c0ef045fd1ef5628ec8b320f655d58b87894dd9f152dc67737db3395eaeebd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6cdf0048-5f58-5619-bb3b-f963175cec97', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59e252967f138bb1806e6b64b5d62d9c973cd2c496ceb6005220dab5eae60371'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80768ebf-b757-5cc7-abe0-0cdb10c8ee01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6cdf0048-5f58-5619-bb3b-f963175cec97', 1), '59e252967f138bb1806e6b64b5d62d9c973cd2c496ceb6005220dab5eae60371',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/26c0ef045fd1ef5628ec8b320f655d58b87894dd9f152dc67737db3395eaeebd.mp3', 2403, '2026-09-14 10:59:56.993214', '2505c305e1029d4fb5b7bfd657c7f1e0767a89491369e3efabcc3e2ac6c08517', 'validated', '{"audio_key":"26c0ef045fd1ef5628ec8b320f655d58b87894dd9f152dc67737db3395eaeebd","entity_key":"d_b1_capstone_decisions_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2505c305e1029d4fb5b7bfd657c7f1e0767a89491369e3efabcc3e2ac6c08517","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/26c0ef045fd1ef5628ec8b320f655d58b87894dd9f152dc67737db3395eaeebd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_02:4 -> audio/generated/fr-FR/dialogues/290687d8af830ad527ec9908074bf448587d3a274750827f25908c47eb95dfea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('917d74db-44ec-5a33-b996-8f7fd2222f0c', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e0ac326f724bbcf05988b1e4345f2ddbe1a868e7d6f88a04a77dc5f2d237a4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('505f3462-a755-59bc-bbd4-a8a2206ac753', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('917d74db-44ec-5a33-b996-8f7fd2222f0c', 1), '1e0ac326f724bbcf05988b1e4345f2ddbe1a868e7d6f88a04a77dc5f2d237a4e',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/290687d8af830ad527ec9908074bf448587d3a274750827f25908c47eb95dfea.mp3', 1697, '2026-09-14 10:59:57.764706', 'aa351e8ea163b95db1060fa56726d92a9ea37ee29a43e5452d983497837db327', 'validated', '{"audio_key":"290687d8af830ad527ec9908074bf448587d3a274750827f25908c47eb95dfea","entity_key":"d_souvenirs_et_recits_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aa351e8ea163b95db1060fa56726d92a9ea37ee29a43e5452d983497837db327","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/290687d8af830ad527ec9908074bf448587d3a274750827f25908c47eb95dfea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_02:4 -> audio/generated/fr-FR/dialogues/2c9d350444c2b3ec898c336f33eb8506759476202a0fd503dd22e47a58ccab67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fa34f84-785d-529b-9faf-4dbaa1b7340a', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90867dd3b61fb01caf43eb38d9f39d37fdda0b48ea5753417ae2b9809db355cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('233a2f37-7ee8-5fe2-9495-2e52fe51e98b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fa34f84-785d-529b-9faf-4dbaa1b7340a', 1), '90867dd3b61fb01caf43eb38d9f39d37fdda0b48ea5753417ae2b9809db355cd',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/2c9d350444c2b3ec898c336f33eb8506759476202a0fd503dd22e47a58ccab67.mp3', 1802, '2026-09-14 10:59:58.066992', 'b07f8557525f2f71ce17c9f40115cf86717649b1b9f909ba158c886bea7b28a0', 'validated', '{"audio_key":"2c9d350444c2b3ec898c336f33eb8506759476202a0fd503dd22e47a58ccab67","entity_key":"d_sante_et_bien_etre_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b07f8557525f2f71ce17c9f40115cf86717649b1b9f909ba158c886bea7b28a0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/2c9d350444c2b3ec898c336f33eb8506759476202a0fd503dd22e47a58ccab67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_01:4 -> audio/generated/fr-FR/dialogues/2f39a88fd638bb5129f7b222a0aa6ff717743f412ccd5cfc49d0739b2e1c872a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6ab908b-8682-501d-a408-26dc860be46f', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d246ce429424691bff68048e1028a49484209ad13a68726279e86db12e89f76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('072bff04-abef-52a8-8f3c-1ec192695685', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6ab908b-8682-501d-a408-26dc860be46f', 1), '8d246ce429424691bff68048e1028a49484209ad13a68726279e86db12e89f76',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/2f39a88fd638bb5129f7b222a0aa6ff717743f412ccd5cfc49d0739b2e1c872a.mp3', 2115, '2026-09-14 10:59:58.871040', '961c79910db4302fd2ded0f04ce9c4fe35a10fb1db08cc626da85bb787fddadc', 'validated', '{"audio_key":"2f39a88fd638bb5129f7b222a0aa6ff717743f412ccd5cfc49d0739b2e1c872a","entity_key":"d_services_et_demarches_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"961c79910db4302fd2ded0f04ce9c4fe35a10fb1db08cc626da85bb787fddadc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/2f39a88fd638bb5129f7b222a0aa6ff717743f412ccd5cfc49d0739b2e1c872a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_01:4 -> audio/generated/fr-FR/dialogues/339e0681666c7ba3ba25be87c933fa979bc273cc9e8c87124ccc251eae95ab89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5edd5acb-0364-53d0-ad9e-1b489b7f723f', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfac9168fabb48016736be14a9288ee8ae425e324ae8759263751b28b35fa567'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b79babe-3995-5fa4-8b22-4e0b845da2be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5edd5acb-0364-53d0-ad9e-1b489b7f723f', 1), 'cfac9168fabb48016736be14a9288ee8ae425e324ae8759263751b28b35fa567',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/339e0681666c7ba3ba25be87c933fa979bc273cc9e8c87124ccc251eae95ab89.mp3', 2089, '2026-09-14 10:59:59.180998', '933c344b4683e386568541d33eb2e5b0c23c5a83e0efb372eab2a22277a26fba', 'validated', '{"audio_key":"339e0681666c7ba3ba25be87c933fa979bc273cc9e8c87124ccc251eae95ab89","entity_key":"d_sante_et_bien_etre_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"933c344b4683e386568541d33eb2e5b0c23c5a83e0efb372eab2a22277a26fba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/339e0681666c7ba3ba25be87c933fa979bc273cc9e8c87124ccc251eae95ab89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_02:4 -> audio/generated/fr-FR/dialogues/354181d625301f4d50fa4a834cbd15c21b0d2c395a536d094f1dc90154bb429c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5611ec97-4b6c-56fe-82e8-84253dea5b6a', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20b65a0eb348d571da957d2d1dfe888df41004011c7e56c4f83a1b360dfea3a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94d82930-5180-546f-9ac0-93a1d88ffa37', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5611ec97-4b6c-56fe-82e8-84253dea5b6a', 1), '20b65a0eb348d571da957d2d1dfe888df41004011c7e56c4f83a1b360dfea3a9',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/354181d625301f4d50fa4a834cbd15c21b0d2c395a536d094f1dc90154bb429c.mp3', 2403, '2026-09-14 11:00:00.244121', '9e4670ee594fcd9e82642f0d4f6867162415f01b5b1b5d64586ecbf80cfd639b', 'validated', '{"audio_key":"354181d625301f4d50fa4a834cbd15c21b0d2c395a536d094f1dc90154bb429c","entity_key":"d_services_et_demarches_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e4670ee594fcd9e82642f0d4f6867162415f01b5b1b5d64586ecbf80cfd639b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/354181d625301f4d50fa4a834cbd15c21b0d2c395a536d094f1dc90154bb429c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_01:2 -> audio/generated/fr-FR/dialogues/3711823d7f8a745e57f10762301549edbbf73f9085a1b095bb4f67f9b5c43413.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('293c29c9-1127-5e62-a4af-51c356d6005b', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe2861f13b0abe008c0847cc1bb67811458a7eda1ddd066028fbf854147e0dac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('457569d2-e0db-5192-96a3-b322cbd07d4f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('293c29c9-1127-5e62-a4af-51c356d6005b', 1), 'fe2861f13b0abe008c0847cc1bb67811458a7eda1ddd066028fbf854147e0dac',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3711823d7f8a745e57f10762301549edbbf73f9085a1b095bb4f67f9b5c43413.mp3', 1567, '2026-09-14 11:00:00.306249', '3aef1d2d1f59f2515ec407f4c64ce3e750b7c6387fcc8ee5e5236dd202a1df5d', 'validated', '{"audio_key":"3711823d7f8a745e57f10762301549edbbf73f9085a1b095bb4f67f9b5c43413","entity_key":"d_logement_et_reclamations_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3aef1d2d1f59f2515ec407f4c64ce3e750b7c6387fcc8ee5e5236dd202a1df5d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/3711823d7f8a745e57f10762301549edbbf73f9085a1b095bb4f67f9b5c43413.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_02:3 -> audio/generated/fr-FR/dialogues/3a10e55def0ade2a40648fa3b62a87c8d86c9241ddc147ad08ff806898dc7f40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('805e9c5f-3d41-52d3-80a5-ce24f7245f25', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d6f19d453151010ca90c09ea3c1c6f2abc53adae87dd0b57dd65f3e91b3ce44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20883c4a-d8f3-52fc-8cdd-1261378d6669', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('805e9c5f-3d41-52d3-80a5-ce24f7245f25', 1), '3d6f19d453151010ca90c09ea3c1c6f2abc53adae87dd0b57dd65f3e91b3ce44',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3a10e55def0ade2a40648fa3b62a87c8d86c9241ddc147ad08ff806898dc7f40.mp3', 2690, '2026-09-14 11:00:01.410518', '59a7200f0488858e249681040c58e4bae5f204af0ad12c7caf49f4da2580d51e', 'validated', '{"audio_key":"3a10e55def0ade2a40648fa3b62a87c8d86c9241ddc147ad08ff806898dc7f40","entity_key":"d_logement_et_reclamations_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"59a7200f0488858e249681040c58e4bae5f204af0ad12c7caf49f4da2580d51e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/3a10e55def0ade2a40648fa3b62a87c8d86c9241ddc147ad08ff806898dc7f40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_02:3 -> audio/generated/fr-FR/dialogues/3d26d01ba6e9411b59307cfe32f0ff1b1772829152d6228a83ab470803de6638.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8adbd7b2-947c-53c0-8fe4-d7a0e48b5441', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85bdb8ae9b33a9cd452f600d284d6f96e0fc766f05d17a05d7e8a7f0b70cc3c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cac1e75-931b-58a9-ae02-c0370bfcf194', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8adbd7b2-947c-53c0-8fe4-d7a0e48b5441', 1), '85bdb8ae9b33a9cd452f600d284d6f96e0fc766f05d17a05d7e8a7f0b70cc3c5',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3d26d01ba6e9411b59307cfe32f0ff1b1772829152d6228a83ab470803de6638.mp3', 1802, '2026-09-14 11:00:01.436078', '11188fa85ebafc81424d68baf4ca4ea4b87568e984fe28a94eb1462712c09870', 'validated', '{"audio_key":"3d26d01ba6e9411b59307cfe32f0ff1b1772829152d6228a83ab470803de6638","entity_key":"d_travail_et_organisation_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"11188fa85ebafc81424d68baf4ca4ea4b87568e984fe28a94eb1462712c09870","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/3d26d01ba6e9411b59307cfe32f0ff1b1772829152d6228a83ab470803de6638.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_02:2 -> audio/generated/fr-FR/dialogues/48475631f386ea9d605d9e70dbe25c1a56ad0c9662531612a597154e0a277bd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53dbded5-1242-5617-9fb7-258348bce05f', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abc51f959b0f4f826c4febef67580866bdc91c0b671fc26fdb51b892b47af765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f005d20f-b1bf-5c17-b3c2-9e4583cb521e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53dbded5-1242-5617-9fb7-258348bce05f', 1), 'abc51f959b0f4f826c4febef67580866bdc91c0b671fc26fdb51b892b47af765',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/48475631f386ea9d605d9e70dbe25c1a56ad0c9662531612a597154e0a277bd8.mp3', 1436, '2026-09-14 11:00:02.501837', '16063bb48989b99fa902090f83c4520e34c4efcdf1669984fa96338d7542363b', 'validated', '{"audio_key":"48475631f386ea9d605d9e70dbe25c1a56ad0c9662531612a597154e0a277bd8","entity_key":"d_services_et_demarches_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16063bb48989b99fa902090f83c4520e34c4efcdf1669984fa96338d7542363b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/48475631f386ea9d605d9e70dbe25c1a56ad0c9662531612a597154e0a277bd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_02:4 -> audio/generated/fr-FR/dialogues/497ba390475cdbfd2369656d9a3358fe4badf0c3485bd074dc8a510732c4754a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11787928-388a-5bcd-bcab-4263e3a86ccf', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaa24eef99c0d9fb5522d1414183e40bf1fb3294824f9cf9351edfd2d91f5888'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eabf368e-a011-570d-8a51-65393fe41a72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11787928-388a-5bcd-bcab-4263e3a86ccf', 1), 'eaa24eef99c0d9fb5522d1414183e40bf1fb3294824f9cf9351edfd2d91f5888',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/497ba390475cdbfd2369656d9a3358fe4badf0c3485bd074dc8a510732c4754a.mp3', 2037, '2026-09-14 11:00:02.539897', 'b637e63d3739192e998134143e9231dfbc0ef6badcc4150e284fc9a49f72201a', 'validated', '{"audio_key":"497ba390475cdbfd2369656d9a3358fe4badf0c3485bd074dc8a510732c4754a","entity_key":"d_relations_et_conseils_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b637e63d3739192e998134143e9231dfbc0ef6badcc4150e284fc9a49f72201a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/497ba390475cdbfd2369656d9a3358fe4badf0c3485bd074dc8a510732c4754a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_02:3 -> audio/generated/fr-FR/dialogues/4a332c29744a8f6b04e2d127ef4b4b5518b9b4df8d7df28d09cf1caae857647f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c28188cc-c2c7-54c4-a561-237c061c9e66', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a259e6e011b06a7183f1802067e531dd76cf0276ca83d48e8faf7b68ffa55a2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b352a489-ce8e-5034-961a-6102d5ee5fbe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c28188cc-c2c7-54c4-a561-237c061c9e66', 1), 'a259e6e011b06a7183f1802067e531dd76cf0276ca83d48e8faf7b68ffa55a2b',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4a332c29744a8f6b04e2d127ef4b4b5518b9b4df8d7df28d09cf1caae857647f.mp3', 2220, '2026-09-14 11:00:03.589734', '21769050607d010bc1bfc22eaeff3345532534331ec616ddb7916c1f62738900', 'validated', '{"audio_key":"4a332c29744a8f6b04e2d127ef4b4b5518b9b4df8d7df28d09cf1caae857647f","entity_key":"d_services_et_demarches_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"21769050607d010bc1bfc22eaeff3345532534331ec616ddb7916c1f62738900","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/4a332c29744a8f6b04e2d127ef4b4b5518b9b4df8d7df28d09cf1caae857647f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_01:1 -> audio/generated/fr-FR/dialogues/4a9b18643476fcf2b000f4a9f37fbea3031b1ccd5f97c98ea98367096eb65897.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8b76ae4e-6032-58ea-b6d0-3261ce272a34', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16eff3d89676b5dc8daa0e10dc9b2ba401020bb6e9117350a7790aa996049dc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1218bb3f-979a-57df-8f95-23e236b467c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8b76ae4e-6032-58ea-b6d0-3261ce272a34', 1), '16eff3d89676b5dc8daa0e10dc9b2ba401020bb6e9117350a7790aa996049dc7',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4a9b18643476fcf2b000f4a9f37fbea3031b1ccd5f97c98ea98367096eb65897.mp3', 2324, '2026-09-14 11:00:03.730019', '5a2dd78710c7a4baeebfcc92c89516cb61d39a2be0cd34b073db1d3eff8dcf1b', 'validated', '{"audio_key":"4a9b18643476fcf2b000f4a9f37fbea3031b1ccd5f97c98ea98367096eb65897","entity_key":"d_voyages_et_imprevus_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a2dd78710c7a4baeebfcc92c89516cb61d39a2be0cd34b073db1d3eff8dcf1b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/4a9b18643476fcf2b000f4a9f37fbea3031b1ccd5f97c98ea98367096eb65897.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_01:2 -> audio/generated/fr-FR/dialogues/4b172034a687855a1be7aceef3bcf8d06b2eb2d2c070a0afcc57c265380bb3c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('230df64f-9497-5e99-8188-170abd602428', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cfd6d8a98ccdc465339bf9e867a97c32bd348ca3f6f751bf1a6a48fb4a914c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1b79d5f-9180-5866-9854-de71b566592f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('230df64f-9497-5e99-8188-170abd602428', 1), '2cfd6d8a98ccdc465339bf9e867a97c32bd348ca3f6f751bf1a6a48fb4a914c5',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4b172034a687855a1be7aceef3bcf8d06b2eb2d2c070a0afcc57c265380bb3c6.mp3', 2272, '2026-09-14 11:00:04.703839', '4cd899565b46b45e68531ce27a71e1ebefc1e0d95393b43e035a89737a39411b', 'validated', '{"audio_key":"4b172034a687855a1be7aceef3bcf8d06b2eb2d2c070a0afcc57c265380bb3c6","entity_key":"d_relations_et_conseils_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4cd899565b46b45e68531ce27a71e1ebefc1e0d95393b43e035a89737a39411b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/4b172034a687855a1be7aceef3bcf8d06b2eb2d2c070a0afcc57c265380bb3c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_01:3 -> audio/generated/fr-FR/dialogues/50820ece04de38083c789270dc1dacfde22aefdc7bbe91731184fdc4e7d5821d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49315dd3-a308-5545-b891-b7cb0be1e381', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b767b9abaf405668f60f5ade8f25247542847a3454e63a4fb6c3717f23e3bfb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14713832-23e1-518d-983e-e90430609418', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49315dd3-a308-5545-b891-b7cb0be1e381', 1), 'b767b9abaf405668f60f5ade8f25247542847a3454e63a4fb6c3717f23e3bfb7',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/50820ece04de38083c789270dc1dacfde22aefdc7bbe91731184fdc4e7d5821d.mp3', 1619, '2026-09-14 11:00:04.780910', 'cb092305c3ef8d02f5c5e7fe78d2023f6d8444c361eebe045910aa71407554b5', 'validated', '{"audio_key":"50820ece04de38083c789270dc1dacfde22aefdc7bbe91731184fdc4e7d5821d","entity_key":"d_projets_et_avenir_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb092305c3ef8d02f5c5e7fe78d2023f6d8444c361eebe045910aa71407554b5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/50820ece04de38083c789270dc1dacfde22aefdc7bbe91731184fdc4e7d5821d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_01:2 -> audio/generated/fr-FR/dialogues/54cd858974368fa8ee5f0bcff7a12722c79c38d4c7cfd5bb9135f5f17b4eaa11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68037288-ef36-5bb5-b3c1-be6e4a6408e9', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b02821fd86132abb3c67cf5aef7998bb65670de0750e0c6d25b3e165c7ed525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('709a20a4-2f2e-5aa4-9422-839edd2b26ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68037288-ef36-5bb5-b3c1-be6e4a6408e9', 1), '9b02821fd86132abb3c67cf5aef7998bb65670de0750e0c6d25b3e165c7ed525',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/54cd858974368fa8ee5f0bcff7a12722c79c38d4c7cfd5bb9135f5f17b4eaa11.mp3', 3291, '2026-09-14 11:00:05.981155', '5f6de683b97cc97973a4403d2d934f715d695bb838309ec03f883d858c74a46e', 'validated', '{"audio_key":"54cd858974368fa8ee5f0bcff7a12722c79c38d4c7cfd5bb9135f5f17b4eaa11","entity_key":"d_medias_et_opinions_01:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5f6de683b97cc97973a4403d2d934f715d695bb838309ec03f883d858c74a46e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/54cd858974368fa8ee5f0bcff7a12722c79c38d4c7cfd5bb9135f5f17b4eaa11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_01:2 -> audio/generated/fr-FR/dialogues/559801b9338ea43cb87431100f69565734240d6f5c4dcde526115fd28f4c1f72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4825ad03-2dc0-5f61-bbbd-01287eaee7ff', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a32f11cec3f619d63f8a87eefadedaff8db586f9d0311a547a6b8278d4a91fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58b5b706-9f86-5023-87a2-7312214d2af5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4825ad03-2dc0-5f61-bbbd-01287eaee7ff', 1), '3a32f11cec3f619d63f8a87eefadedaff8db586f9d0311a547a6b8278d4a91fa',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/559801b9338ea43cb87431100f69565734240d6f5c4dcde526115fd28f4c1f72.mp3', 2925, '2026-09-14 11:00:05.940812', '291fbcd9aab77fea2ce7e590dbb8103c0162dd89d62e4a8655a5d72f2d56ee27', 'validated', '{"audio_key":"559801b9338ea43cb87431100f69565734240d6f5c4dcde526115fd28f4c1f72","entity_key":"d_sante_et_bien_etre_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"291fbcd9aab77fea2ce7e590dbb8103c0162dd89d62e4a8655a5d72f2d56ee27","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/559801b9338ea43cb87431100f69565734240d6f5c4dcde526115fd28f4c1f72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_01:2 -> audio/generated/fr-FR/dialogues/5860d12232984162659194cbe11836f1c789b61e54cd0a04bb15c0c650c68330.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a1c23f6-cc3d-501e-84f2-45d3d7e81c34', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bff74249a729a992006c229d7b2e125fb495961f1dcb5547e16e572458aa700'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1a21a2e-3180-5c2b-a5c6-36daef04827a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a1c23f6-cc3d-501e-84f2-45d3d7e81c34', 1), '0bff74249a729a992006c229d7b2e125fb495961f1dcb5547e16e572458aa700',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5860d12232984162659194cbe11836f1c789b61e54cd0a04bb15c0c650c68330.mp3', 1933, '2026-09-14 11:00:07.044080', '4b4ed1834e5476bf724e0573e61b18e8d4c92263fde5fdf4a269d9df1b6810cb', 'validated', '{"audio_key":"5860d12232984162659194cbe11836f1c789b61e54cd0a04bb15c0c650c68330","entity_key":"d_services_et_demarches_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b4ed1834e5476bf724e0573e61b18e8d4c92263fde5fdf4a269d9df1b6810cb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/5860d12232984162659194cbe11836f1c789b61e54cd0a04bb15c0c650c68330.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_02:1 -> audio/generated/fr-FR/dialogues/5e83e500b3b1e96604cec49499bc790ad9ffed3c7640ffe0a0f00cb5dfabda38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bafb68b8-8e03-5717-b3bb-1f29f19fa13f', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08ba1ff1c94a452dea1be2acdb7350738b4a68e7e58b089a144fb2e1104aa8f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9462be83-cb76-5718-b843-872f9337b62f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bafb68b8-8e03-5717-b3bb-1f29f19fa13f', 1), '08ba1ff1c94a452dea1be2acdb7350738b4a68e7e58b089a144fb2e1104aa8f3',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5e83e500b3b1e96604cec49499bc790ad9ffed3c7640ffe0a0f00cb5dfabda38.mp3', 1933, '2026-09-14 11:00:07.105038', 'b5485c875dab614bdc71ea36e81083fb5de3ce29629e6074c859bfded220ce4c', 'validated', '{"audio_key":"5e83e500b3b1e96604cec49499bc790ad9ffed3c7640ffe0a0f00cb5dfabda38","entity_key":"d_souvenirs_et_recits_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b5485c875dab614bdc71ea36e81083fb5de3ce29629e6074c859bfded220ce4c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/5e83e500b3b1e96604cec49499bc790ad9ffed3c7640ffe0a0f00cb5dfabda38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_01:4 -> audio/generated/fr-FR/dialogues/5f2accd54c3d0a2edc970871199b94be1602888e17178737f23ca1e904e2cf70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6cd9fd64-7489-512d-bf84-2816b12c138d', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fff276b11a6552afd00164651c74d0bc9d8239662365185dd3bffdebe9b25dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ca255e-1d1c-56ba-bb96-10f4f7da8c4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6cd9fd64-7489-512d-bf84-2816b12c138d', 1), '7fff276b11a6552afd00164651c74d0bc9d8239662365185dd3bffdebe9b25dc',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5f2accd54c3d0a2edc970871199b94be1602888e17178737f23ca1e904e2cf70.mp3', 2220, '2026-09-14 11:00:08.159196', 'ecd93543124437f18d3f8e7c65b934117e8b88ad99f9a411fc3febde4cabb370', 'validated', '{"audio_key":"5f2accd54c3d0a2edc970871199b94be1602888e17178737f23ca1e904e2cf70","entity_key":"d_projets_et_avenir_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ecd93543124437f18d3f8e7c65b934117e8b88ad99f9a411fc3febde4cabb370","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/5f2accd54c3d0a2edc970871199b94be1602888e17178737f23ca1e904e2cf70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_02:1 -> audio/generated/fr-FR/dialogues/613a4d897babaddf94e3c7edd3f2d2f22f8e1c656ef5e464b661d11ca03cb3f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8aee2ea-18a5-532e-afe2-b3530d7bcdfb', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed190d2b6eb8d1eeb0bcfc01380e2b2cd7512dd8264ce5714eb659babbd8315d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ce96718-f688-583f-9b9d-caf8ec21c90e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8aee2ea-18a5-532e-afe2-b3530d7bcdfb', 1), 'ed190d2b6eb8d1eeb0bcfc01380e2b2cd7512dd8264ce5714eb659babbd8315d',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/613a4d897babaddf94e3c7edd3f2d2f22f8e1c656ef5e464b661d11ca03cb3f4.mp3', 2324, '2026-09-14 11:00:08.212790', 'e458a1ab2a85894ae50711328d390c0b41d7ea0dc064af8804e890ff9a3b3868', 'validated', '{"audio_key":"613a4d897babaddf94e3c7edd3f2d2f22f8e1c656ef5e464b661d11ca03cb3f4","entity_key":"d_logement_et_reclamations_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e458a1ab2a85894ae50711328d390c0b41d7ea0dc064af8804e890ff9a3b3868","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/613a4d897babaddf94e3c7edd3f2d2f22f8e1c656ef5e464b661d11ca03cb3f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_02:2 -> audio/generated/fr-FR/dialogues/6abfecea83886736180f85e621aaab640a3a39c0fe713bf1bc6bdd98e32cedb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da998ddd-0db6-5ed0-ac39-bb4f2d69d556', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff407ba844f266b452aff454176f77645dbf546d940024e277107d9f10b084bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ece4495f-aa56-5cd7-8543-5a9b41f5aacd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da998ddd-0db6-5ed0-ac39-bb4f2d69d556', 1), 'ff407ba844f266b452aff454176f77645dbf546d940024e277107d9f10b084bf',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6abfecea83886736180f85e621aaab640a3a39c0fe713bf1bc6bdd98e32cedb4.mp3', 2324, '2026-09-14 11:00:09.578061', 'b945c11c3f85db6c2039242d552633b08d46741cee26146df6259c067b07399e', 'validated', '{"audio_key":"6abfecea83886736180f85e621aaab640a3a39c0fe713bf1bc6bdd98e32cedb4","entity_key":"d_projets_et_avenir_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b945c11c3f85db6c2039242d552633b08d46741cee26146df6259c067b07399e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/6abfecea83886736180f85e621aaab640a3a39c0fe713bf1bc6bdd98e32cedb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_02:3 -> audio/generated/fr-FR/dialogues/6e9c4ef57cebd4059e3f50473dc2dac6bea379dda4281228bd344b5a05c219fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('626ff31a-8d39-5791-8364-dea9c431abd8', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36135fc422a95ae0d57d3c4ab006b852bfbd274d4f1a1eb9f81fb0810112c59c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('597aeb2f-7ce1-5df4-968d-e17ae3720ec9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('626ff31a-8d39-5791-8364-dea9c431abd8', 1), '36135fc422a95ae0d57d3c4ab006b852bfbd274d4f1a1eb9f81fb0810112c59c',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6e9c4ef57cebd4059e3f50473dc2dac6bea379dda4281228bd344b5a05c219fd.mp3', 2455, '2026-09-14 11:00:09.319401', 'df8964b09d3873c7d9db01690963e3833015307b1fa05ae272b44b2eb0b3b62d', 'validated', '{"audio_key":"6e9c4ef57cebd4059e3f50473dc2dac6bea379dda4281228bd344b5a05c219fd","entity_key":"d_relations_et_conseils_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"df8964b09d3873c7d9db01690963e3833015307b1fa05ae272b44b2eb0b3b62d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/6e9c4ef57cebd4059e3f50473dc2dac6bea379dda4281228bd344b5a05c219fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_01:3 -> audio/generated/fr-FR/dialogues/6fbd16e0ada9f0ebc20977cbda528378c8a5f93d4c4fff8680de330c638faf9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d90cf4ca-7182-5827-a0ce-40e5915e931f', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c18739140faea29a128f136ef9f3d8cc39625884353c315fd1d8ddb4ae4ff4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10c02742-062d-53fd-bf69-324390cb5580', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d90cf4ca-7182-5827-a0ce-40e5915e931f', 1), '6c18739140faea29a128f136ef9f3d8cc39625884353c315fd1d8ddb4ae4ff4f',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6fbd16e0ada9f0ebc20977cbda528378c8a5f93d4c4fff8680de330c638faf9b.mp3', 1567, '2026-09-14 11:00:10.359734', '5fa9dcb34b1970499c1fabbc880994d699c6da63592dac8f3a834d3b90d0fa61', 'validated', '{"audio_key":"6fbd16e0ada9f0ebc20977cbda528378c8a5f93d4c4fff8680de330c638faf9b","entity_key":"d_b1_capstone_decisions_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fa9dcb34b1970499c1fabbc880994d699c6da63592dac8f3a834d3b90d0fa61","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/6fbd16e0ada9f0ebc20977cbda528378c8a5f93d4c4fff8680de330c638faf9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_01:4 -> audio/generated/fr-FR/dialogues/78472f10d8bc1221d0547b4fc1574d80630f5d34f9777c24aeeb05af4ae7a685.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77d317ce-1894-5645-a286-ef960eadcc88', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1e0da20f22c37c30afc284ee92d203f76b3028c585704b39eedff860934eb8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1827789-c190-58c9-b3ee-55ffb498d110', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77d317ce-1894-5645-a286-ef960eadcc88', 1), 'c1e0da20f22c37c30afc284ee92d203f76b3028c585704b39eedff860934eb8d',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/78472f10d8bc1221d0547b4fc1574d80630f5d34f9777c24aeeb05af4ae7a685.mp3', 1985, '2026-09-14 11:00:10.648936', 'ed669dd5f1817142036f6835dca6b6d2904327abc76aba9349c7240286aa8433', 'validated', '{"audio_key":"78472f10d8bc1221d0547b4fc1574d80630f5d34f9777c24aeeb05af4ae7a685","entity_key":"d_travail_et_organisation_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ed669dd5f1817142036f6835dca6b6d2904327abc76aba9349c7240286aa8433","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/78472f10d8bc1221d0547b4fc1574d80630f5d34f9777c24aeeb05af4ae7a685.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_02:4 -> audio/generated/fr-FR/dialogues/7e71694034af6254114b302cfd0a17b3d87ecd402e2ed7d3814c169c699b2f9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60978cf8-86c4-52aa-bb26-682973f53dbf', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a50799004c0a9e92aaa87d449fb6018b56f91fb7fc8d942e5c32a817c60ea4a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7c5076a-ef88-524d-b455-c2cd4f59d0d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60978cf8-86c4-52aa-bb26-682973f53dbf', 1), 'a50799004c0a9e92aaa87d449fb6018b56f91fb7fc8d942e5c32a817c60ea4a5',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7e71694034af6254114b302cfd0a17b3d87ecd402e2ed7d3814c169c699b2f9c.mp3', 2821, '2026-09-14 11:00:11.508024', '0951e23861c97c000662b55f1c1fe92cc9ec6445e6d3798e89e74e623af9c6a4', 'validated', '{"audio_key":"7e71694034af6254114b302cfd0a17b3d87ecd402e2ed7d3814c169c699b2f9c","entity_key":"d_voyages_et_imprevus_02:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0951e23861c97c000662b55f1c1fe92cc9ec6445e6d3798e89e74e623af9c6a4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/7e71694034af6254114b302cfd0a17b3d87ecd402e2ed7d3814c169c699b2f9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_02:3 -> audio/generated/fr-FR/dialogues/7fb25f704719b5475cc818fbfe4adaee86074d933be6b346f14f200d76d61f67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8f3e016-8df2-50c3-8568-8c3dbf1950bb', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0fe4f1e66085ca19a31899ee3292a17dafef724864c5b06dc6da80e469e69f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5f51c8b-3865-5a41-8a44-65b1b0355c95', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8f3e016-8df2-50c3-8568-8c3dbf1950bb', 1), 'e0fe4f1e66085ca19a31899ee3292a17dafef724864c5b06dc6da80e469e69f4',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7fb25f704719b5475cc818fbfe4adaee86074d933be6b346f14f200d76d61f67.mp3', 2951, '2026-09-14 11:00:11.839000', 'd8439ddb4b704e02e7588a394ff9d631461b3a73124e2b1d4575f68830132a80', 'validated', '{"audio_key":"7fb25f704719b5475cc818fbfe4adaee86074d933be6b346f14f200d76d61f67","entity_key":"d_b1_capstone_decisions_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d8439ddb4b704e02e7588a394ff9d631461b3a73124e2b1d4575f68830132a80","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/7fb25f704719b5475cc818fbfe4adaee86074d933be6b346f14f200d76d61f67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_01:2 -> audio/generated/fr-FR/dialogues/85bdf77ee36e17e6091bff426a09c23014b719ae2905a603a69da98a2f29a36f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('acd2cc98-2241-5777-bdf1-9fbd096c86ab', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f757042a84ff60c34e22c7e1ffbe27900004b4ff005c3652c83e1248c492fef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a908bfcf-ef00-5338-8675-8e205cadc307', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('acd2cc98-2241-5777-bdf1-9fbd096c86ab', 1), 'f757042a84ff60c34e22c7e1ffbe27900004b4ff005c3652c83e1248c492fef6',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/85bdf77ee36e17e6091bff426a09c23014b719ae2905a603a69da98a2f29a36f.mp3', 2089, '2026-09-14 11:00:12.592039', 'd6fb0e23390f909a7397f744590c69e87c681f283254ef6269d77c83a4c7fe35', 'validated', '{"audio_key":"85bdf77ee36e17e6091bff426a09c23014b719ae2905a603a69da98a2f29a36f","entity_key":"d_projets_et_avenir_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d6fb0e23390f909a7397f744590c69e87c681f283254ef6269d77c83a4c7fe35","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/85bdf77ee36e17e6091bff426a09c23014b719ae2905a603a69da98a2f29a36f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_02:1 -> audio/generated/fr-FR/dialogues/8a37bfc42d826309e57d24d7fe37af4e69cc499c6a4419f7f61af9415e40eef3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40e69564-b6fb-5653-9cbd-292514c90dba', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93333ece7d5c613cfae787b44e5467db6a2e7dcecbfa7801b77cbfec656dd64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cee95837-0b08-5ec3-a885-d00f26f37cbc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40e69564-b6fb-5653-9cbd-292514c90dba', 1), 'f93333ece7d5c613cfae787b44e5467db6a2e7dcecbfa7801b77cbfec656dd64',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/8a37bfc42d826309e57d24d7fe37af4e69cc499c6a4419f7f61af9415e40eef3.mp3', 2951, '2026-09-14 11:00:12.998432', 'e8cfc6e5e2ec23d208110691402948cb60b212e4118efbb88f84602d4bb24d29', 'validated', '{"audio_key":"8a37bfc42d826309e57d24d7fe37af4e69cc499c6a4419f7f61af9415e40eef3","entity_key":"d_services_et_demarches_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e8cfc6e5e2ec23d208110691402948cb60b212e4118efbb88f84602d4bb24d29","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/8a37bfc42d826309e57d24d7fe37af4e69cc499c6a4419f7f61af9415e40eef3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_02:4 -> audio/generated/fr-FR/dialogues/8fc2ac75adebf31c8c9eb86c50d1cef69ddefdca782c1326f8f60fd04cd774d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28290a75-f573-504d-a353-27ea694fc724', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a285cc19f420df9ace860ada9b4a4ce482512ba50ad5188f6bb063b5a6e0f347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cea9454-63f9-5536-94e7-4ac9934e6cd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28290a75-f573-504d-a353-27ea694fc724', 1), 'a285cc19f420df9ace860ada9b4a4ce482512ba50ad5188f6bb063b5a6e0f347',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/8fc2ac75adebf31c8c9eb86c50d1cef69ddefdca782c1326f8f60fd04cd774d1.mp3', 2507, '2026-09-14 11:00:13.702274', '1cfe35b47cafe6a67f78b5cbbfa5f2c91bbeeecaab0f73c3795241eab5266605', 'validated', '{"audio_key":"8fc2ac75adebf31c8c9eb86c50d1cef69ddefdca782c1326f8f60fd04cd774d1","entity_key":"d_projets_et_avenir_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1cfe35b47cafe6a67f78b5cbbfa5f2c91bbeeecaab0f73c3795241eab5266605","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/8fc2ac75adebf31c8c9eb86c50d1cef69ddefdca782c1326f8f60fd04cd774d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_01:3 -> audio/generated/fr-FR/dialogues/9eb0c2e744150a0dea89de1b2c246d7f6d72be196bc070fd8e4f7335ac6710e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50776d89-8d25-535f-9a54-cfe0b4cc0ab0', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6369c1fd4a6b7a09cdd6e579dd049e345909d6460c38e0a27ca5d05233c9cc57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97ff9b02-6c9a-521a-82c6-382336a9864a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50776d89-8d25-535f-9a54-cfe0b4cc0ab0', 1), '6369c1fd4a6b7a09cdd6e579dd049e345909d6460c38e0a27ca5d05233c9cc57',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/9eb0c2e744150a0dea89de1b2c246d7f6d72be196bc070fd8e4f7335ac6710e9.mp3', 1985, '2026-09-14 11:00:14.073492', 'cf6f8e03ee8f4813e6443a71c8a86f39d372bbd0169176ae083f1ef0d2130f93', 'validated', '{"audio_key":"9eb0c2e744150a0dea89de1b2c246d7f6d72be196bc070fd8e4f7335ac6710e9","entity_key":"d_souvenirs_et_recits_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf6f8e03ee8f4813e6443a71c8a86f39d372bbd0169176ae083f1ef0d2130f93","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/9eb0c2e744150a0dea89de1b2c246d7f6d72be196bc070fd8e4f7335ac6710e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_02:1 -> audio/generated/fr-FR/dialogues/a1b30c76041053015e4e852fa3ff4bc00c41ff8479e974f926beb7ebf25806d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b79fd4b-8083-567f-8495-aa9d5be6d689', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19deff4173ac857806f60dbed42154151bd26dba3bae388786a5eea80413ef55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de02c5a7-40f9-53ca-baba-03886a170c40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b79fd4b-8083-567f-8495-aa9d5be6d689', 1), '19deff4173ac857806f60dbed42154151bd26dba3bae388786a5eea80413ef55',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a1b30c76041053015e4e852fa3ff4bc00c41ff8479e974f926beb7ebf25806d2.mp3', 2690, '2026-09-14 11:00:14.883453', 'd0b0d86222c02017dca2ce5b96b391ba8a968d9de659616f32905b45a9e5137c', 'validated', '{"audio_key":"a1b30c76041053015e4e852fa3ff4bc00c41ff8479e974f926beb7ebf25806d2","entity_key":"d_travail_et_organisation_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d0b0d86222c02017dca2ce5b96b391ba8a968d9de659616f32905b45a9e5137c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/a1b30c76041053015e4e852fa3ff4bc00c41ff8479e974f926beb7ebf25806d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_02:1 -> audio/generated/fr-FR/dialogues/a73e03b37b96321de95b661126f5a7f775b2646460861ab3d7dc295962604973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3d89ba8-17bb-56d4-a4fd-b6b7d8a2a410', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd11e4eaa3559a19b70690dd93d5c31b6c751402fe889239600ed905751698de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0897759-da2c-51fb-9cc0-e889e5bad1be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3d89ba8-17bb-56d4-a4fd-b6b7d8a2a410', 1), 'fd11e4eaa3559a19b70690dd93d5c31b6c751402fe889239600ed905751698de',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a73e03b37b96321de95b661126f5a7f775b2646460861ab3d7dc295962604973.mp3', 2272, '2026-09-14 11:00:15.191310', '0a697c6909222c5eb6603ef47292e68bf8c461e0a89d0a8fdc90be52b3a7c437', 'validated', '{"audio_key":"a73e03b37b96321de95b661126f5a7f775b2646460861ab3d7dc295962604973","entity_key":"d_sante_et_bien_etre_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a697c6909222c5eb6603ef47292e68bf8c461e0a89d0a8fdc90be52b3a7c437","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a73e03b37b96321de95b661126f5a7f775b2646460861ab3d7dc295962604973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_02:3 -> audio/generated/fr-FR/dialogues/a8adbb54293f4752874dc9bda1aaf805aecade7491141c5b2b00c466f715464c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29609d5f-056e-5c64-89a6-7f07434e1e20', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac518ce59e0ec6e838fd8e6db938020f3161c9686097e09ed5dfa324ea86d230'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('038f52cc-861d-5628-a784-084a4aa58cdd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29609d5f-056e-5c64-89a6-7f07434e1e20', 1), 'ac518ce59e0ec6e838fd8e6db938020f3161c9686097e09ed5dfa324ea86d230',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a8adbb54293f4752874dc9bda1aaf805aecade7491141c5b2b00c466f715464c.mp3', 2115, '2026-09-14 11:00:15.968289', '06183248d2ac726cd32023a5e533aa2161f654414d211e6c0e6f4bfa8120b962', 'validated', '{"audio_key":"a8adbb54293f4752874dc9bda1aaf805aecade7491141c5b2b00c466f715464c","entity_key":"d_medias_et_opinions_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"06183248d2ac726cd32023a5e533aa2161f654414d211e6c0e6f4bfa8120b962","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/a8adbb54293f4752874dc9bda1aaf805aecade7491141c5b2b00c466f715464c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_01:3 -> audio/generated/fr-FR/dialogues/ab716ed09b99cfcca1b7d8e4577999535551754499b2d9f10f824d424c840395.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e6fb90d-1d91-568e-b7dd-61e90834002b', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4309fd585f1dfa957963420f16c59f6584dea869fb003c7cf1a47673d8d7eab3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05f886ad-1e09-5d94-82cb-dbaf05ec1afa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e6fb90d-1d91-568e-b7dd-61e90834002b', 1), '4309fd585f1dfa957963420f16c59f6584dea869fb003c7cf1a47673d8d7eab3',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ab716ed09b99cfcca1b7d8e4577999535551754499b2d9f10f824d424c840395.mp3', 1933, '2026-09-14 11:00:16.281333', '774513a0f6a510562c8a3b66a6dbd73c24b767bf131a69a8c30d997d95f5f3ee', 'validated', '{"audio_key":"ab716ed09b99cfcca1b7d8e4577999535551754499b2d9f10f824d424c840395","entity_key":"d_logement_et_reclamations_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"774513a0f6a510562c8a3b66a6dbd73c24b767bf131a69a8c30d997d95f5f3ee","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ab716ed09b99cfcca1b7d8e4577999535551754499b2d9f10f824d424c840395.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_01:3 -> audio/generated/fr-FR/dialogues/ac304f8b819166e088296d6153626965914d0e37049ceed432d1221951f07da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc601e6f-d80d-5039-a1b9-a46686eb92ad', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95158e74b65aa4e5ef21deca08e8ba782fbb3b22cf8a9744bcdf4276409ed2d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8321c3c1-80f7-523f-94ed-19cdca6abd8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc601e6f-d80d-5039-a1b9-a46686eb92ad', 1), '95158e74b65aa4e5ef21deca08e8ba782fbb3b22cf8a9744bcdf4276409ed2d0',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ac304f8b819166e088296d6153626965914d0e37049ceed432d1221951f07da9.mp3', 2168, '2026-09-14 11:00:17.052412', '0b8ff3992f320d1106e603c0ba2eb194290a2e220745e9295609379b942f603b', 'validated', '{"audio_key":"ac304f8b819166e088296d6153626965914d0e37049ceed432d1221951f07da9","entity_key":"d_travail_et_organisation_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0b8ff3992f320d1106e603c0ba2eb194290a2e220745e9295609379b942f603b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ac304f8b819166e088296d6153626965914d0e37049ceed432d1221951f07da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_02:2 -> audio/generated/fr-FR/dialogues/ad9fca29aa922b76220cdc70cf3a251970ef4447f38758d1b5d1a291d4f6eea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc5365f4-e5e7-5dd3-ae85-b33fa811f455', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40e191b552918a755baadffcb2a32908df66ca93f1c653ff06d45588284f0687'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27d6feca-6dbb-562f-9be6-c591a0ad0238', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc5365f4-e5e7-5dd3-ae85-b33fa811f455', 1), '40e191b552918a755baadffcb2a32908df66ca93f1c653ff06d45588284f0687',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ad9fca29aa922b76220cdc70cf3a251970ef4447f38758d1b5d1a291d4f6eea6.mp3', 1697, '2026-09-14 11:00:17.353439', '43ad90a41fd7fd5908d04a71565072531de9ce6b3fa81910d7ce2515ced6f250', 'validated', '{"audio_key":"ad9fca29aa922b76220cdc70cf3a251970ef4447f38758d1b5d1a291d4f6eea6","entity_key":"d_logement_et_reclamations_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"43ad90a41fd7fd5908d04a71565072531de9ce6b3fa81910d7ce2515ced6f250","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/ad9fca29aa922b76220cdc70cf3a251970ef4447f38758d1b5d1a291d4f6eea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_01:1 -> audio/generated/fr-FR/dialogues/aef5204dfb46b0b5150d920b0f6d7d42d802b3d14d8073cc584c1250e1899480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9eb3f0b8-f407-5da5-ba8d-6c7896a026ee', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4931d5d7ec8c2969d4d96871f445aaab8553abc156d1bc0a0d05552c8dfa818'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4711dd66-351f-5cf1-bfe8-523e010638a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9eb3f0b8-f407-5da5-ba8d-6c7896a026ee', 1), 'd4931d5d7ec8c2969d4d96871f445aaab8553abc156d1bc0a0d05552c8dfa818',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/aef5204dfb46b0b5150d920b0f6d7d42d802b3d14d8073cc584c1250e1899480.mp3', 1802, '2026-09-14 11:00:18.125646', 'd08497b510bcf169369b7710a881fba9c8ac7f835be492aad38f228a5e441074', 'validated', '{"audio_key":"aef5204dfb46b0b5150d920b0f6d7d42d802b3d14d8073cc584c1250e1899480","entity_key":"d_travail_et_organisation_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d08497b510bcf169369b7710a881fba9c8ac7f835be492aad38f228a5e441074","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/aef5204dfb46b0b5150d920b0f6d7d42d802b3d14d8073cc584c1250e1899480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_01:4 -> audio/generated/fr-FR/dialogues/b39f68a621828dd8f1d027e05125980b4ed12f92638cb3229f380e5719666e70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38010ea9-2281-5862-ae4f-1b93c214fbff', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e08fa6ccb9ff0793026ae458d99dca8ab759d2e226b5ae27ad67711cdb25a951'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ca92df8-c92f-5b7a-ae4a-e20e0d5269cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38010ea9-2281-5862-ae4f-1b93c214fbff', 1), 'e08fa6ccb9ff0793026ae458d99dca8ab759d2e226b5ae27ad67711cdb25a951',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b39f68a621828dd8f1d027e05125980b4ed12f92638cb3229f380e5719666e70.mp3', 2324, '2026-09-14 11:00:18.459652', '2f3903a7e1eb78b3d424c8b05a1c7792b42c6b7034f20fa1080100958a248c1f', 'validated', '{"audio_key":"b39f68a621828dd8f1d027e05125980b4ed12f92638cb3229f380e5719666e70","entity_key":"d_relations_et_conseils_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f3903a7e1eb78b3d424c8b05a1c7792b42c6b7034f20fa1080100958a248c1f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/b39f68a621828dd8f1d027e05125980b4ed12f92638cb3229f380e5719666e70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_services_et_demarches_01:1 -> audio/generated/fr-FR/dialogues/b49cf966e973f29bb30a9e0b9c0519d85928576488edfddbfcbbce793a232d86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e45c79e-6286-53ba-a0c8-c64d671f5b27', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_services_et_demarches_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16b31ac7bafb3dbebfefc0312f4d1e99d29108cccc329b4dca7db77fcb830b99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b149b3e2-a0e8-55a8-8697-19d9f5c3881e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e45c79e-6286-53ba-a0c8-c64d671f5b27', 1), '16b31ac7bafb3dbebfefc0312f4d1e99d29108cccc329b4dca7db77fcb830b99',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b49cf966e973f29bb30a9e0b9c0519d85928576488edfddbfcbbce793a232d86.mp3', 2768, '2026-09-14 11:00:19.309791', '056d5ff60d7d076460e7bc307becce38c3d46aa698d4358a316c7cf2dae7946d', 'validated', '{"audio_key":"b49cf966e973f29bb30a9e0b9c0519d85928576488edfddbfcbbce793a232d86","entity_key":"d_services_et_demarches_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"056d5ff60d7d076460e7bc307becce38c3d46aa698d4358a316c7cf2dae7946d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/b49cf966e973f29bb30a9e0b9c0519d85928576488edfddbfcbbce793a232d86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_01:1 -> audio/generated/fr-FR/dialogues/b82084b489d078d79b77a999fc90969b9b7d6740a8a4e835dc5fb3e9bde5ee82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('84cccd32-1183-5e15-9dcc-d7497c8477bf', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '461035cba5ce8fd139b23f60996548cbf1c3a163d72a535b4017c2adefd48a8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a1e6b3e-d9eb-517b-8be7-5878420cd9b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('84cccd32-1183-5e15-9dcc-d7497c8477bf', 1), '461035cba5ce8fd139b23f60996548cbf1c3a163d72a535b4017c2adefd48a8c',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b82084b489d078d79b77a999fc90969b9b7d6740a8a4e835dc5fb3e9bde5ee82.mp3', 1697, '2026-09-14 11:00:19.510507', 'fd31ad695cb84ef0c78a703612db9eed3e9f0c00057b6b9266639eae88edfdb3', 'validated', '{"audio_key":"b82084b489d078d79b77a999fc90969b9b7d6740a8a4e835dc5fb3e9bde5ee82","entity_key":"d_sante_et_bien_etre_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd31ad695cb84ef0c78a703612db9eed3e9f0c00057b6b9266639eae88edfdb3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b82084b489d078d79b77a999fc90969b9b7d6740a8a4e835dc5fb3e9bde5ee82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_01:1 -> audio/generated/fr-FR/dialogues/b9141c1d43fbddd0e382bdc4248c11da0251273d1e25fc03c1ee879e3b0d5a56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1072fa71-30f8-5bd7-bf70-0f38b735bcd7', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d77a5e62e32a14ce20f4f70f5664241085bde1e89b42484b325ec1785a30b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e964e674-9abe-5fb6-b8e0-97d0a71ddbd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1072fa71-30f8-5bd7-bf70-0f38b735bcd7', 1), '5d77a5e62e32a14ce20f4f70f5664241085bde1e89b42484b325ec1785a30b63',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b9141c1d43fbddd0e382bdc4248c11da0251273d1e25fc03c1ee879e3b0d5a56.mp3', 2507, '2026-09-14 11:00:20.427288', '98b26bebac116bc9e1602f346456b1a9a06196abbb2ea084f1cf2a273252f204', 'validated', '{"audio_key":"b9141c1d43fbddd0e382bdc4248c11da0251273d1e25fc03c1ee879e3b0d5a56","entity_key":"d_souvenirs_et_recits_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"98b26bebac116bc9e1602f346456b1a9a06196abbb2ea084f1cf2a273252f204","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/b9141c1d43fbddd0e382bdc4248c11da0251273d1e25fc03c1ee879e3b0d5a56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_01:1 -> audio/generated/fr-FR/dialogues/ba5d87f58e9bd6a044b82fd48fd68435eb104f3f5d7fdfa6e684025807314f24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('354be15b-a521-5271-a211-fedd99b5a44e', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e74e501dbfebc671d8ddd7e95611cc77130318979185e78ff583f6a99f51eaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d83800b8-7793-5216-a187-767a83e8554b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('354be15b-a521-5271-a211-fedd99b5a44e', 1), '0e74e501dbfebc671d8ddd7e95611cc77130318979185e78ff583f6a99f51eaa',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ba5d87f58e9bd6a044b82fd48fd68435eb104f3f5d7fdfa6e684025807314f24.mp3', 2507, '2026-09-14 11:00:20.639320', '9c6661e78bdc0525bfbf901ce6439b4d9350530c384dab3d2e0c01a590b7fd47', 'validated', '{"audio_key":"ba5d87f58e9bd6a044b82fd48fd68435eb104f3f5d7fdfa6e684025807314f24","entity_key":"d_projets_et_avenir_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c6661e78bdc0525bfbf901ce6439b4d9350530c384dab3d2e0c01a590b7fd47","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/ba5d87f58e9bd6a044b82fd48fd68435eb104f3f5d7fdfa6e684025807314f24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_01:3 -> audio/generated/fr-FR/dialogues/be56f41c3b26a57fe3b8c201c33f2e4ba751df5a8cf02b93cf1e0d2f52d9781f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db3b9ef2-4895-59d8-beeb-b319df3e2f84', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d04823c72c9ff9d8579077ed602d2d3ca04cb7a9cdc388ffa106367c3fc6677'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e03230f0-d847-5832-ab45-7146b5ce1bca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db3b9ef2-4895-59d8-beeb-b319df3e2f84', 1), '8d04823c72c9ff9d8579077ed602d2d3ca04cb7a9cdc388ffa106367c3fc6677',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/be56f41c3b26a57fe3b8c201c33f2e4ba751df5a8cf02b93cf1e0d2f52d9781f.mp3', 1750, '2026-09-14 11:00:21.597532', '7bdc76f94b1783dfd997829246b1fe24cd5a0c465df9739d4d2680207b58cc59', 'validated', '{"audio_key":"be56f41c3b26a57fe3b8c201c33f2e4ba751df5a8cf02b93cf1e0d2f52d9781f","entity_key":"d_sante_et_bien_etre_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bdc76f94b1783dfd997829246b1fe24cd5a0c465df9739d4d2680207b58cc59","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/be56f41c3b26a57fe3b8c201c33f2e4ba751df5a8cf02b93cf1e0d2f52d9781f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_02:1 -> audio/generated/fr-FR/dialogues/c52ba0e733defaddb525e3cf34c872ebb38a626abae8f79c7eb23a5efc90a825.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec517fc0-e2e9-5d88-8354-a6a1849b7de3', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb8c8283b2db9a5866d004b75a49bfe994b82051a48d739e5e9461caa15ec476'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41cf53ed-ae71-5c12-85dc-d4437286eed2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec517fc0-e2e9-5d88-8354-a6a1849b7de3', 1), 'eb8c8283b2db9a5866d004b75a49bfe994b82051a48d739e5e9461caa15ec476',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c52ba0e733defaddb525e3cf34c872ebb38a626abae8f79c7eb23a5efc90a825.mp3', 2168, '2026-09-14 11:00:21.770221', '928503f469729be8ba8be00e171c57c06ed6c421051c2f018449a63a840412d6', 'validated', '{"audio_key":"c52ba0e733defaddb525e3cf34c872ebb38a626abae8f79c7eb23a5efc90a825","entity_key":"d_b1_capstone_decisions_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"928503f469729be8ba8be00e171c57c06ed6c421051c2f018449a63a840412d6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/c52ba0e733defaddb525e3cf34c872ebb38a626abae8f79c7eb23a5efc90a825.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_02:1 -> audio/generated/fr-FR/dialogues/c6ca1c7fbff8b5b8fe3d0491eb3c213dd60a65775cdbe7f3d8da5d695f46f12d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb8138b7-39a4-5ad2-8e9a-4b3a225efd50', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d8a915a94867c52c025c32d1e3cc8eb0c1c786cb54ad56054f4e213d415627f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62c6cc5c-ed9e-5672-9508-1d422743e012', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb8138b7-39a4-5ad2-8e9a-4b3a225efd50', 1), '0d8a915a94867c52c025c32d1e3cc8eb0c1c786cb54ad56054f4e213d415627f',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c6ca1c7fbff8b5b8fe3d0491eb3c213dd60a65775cdbe7f3d8da5d695f46f12d.mp3', 2324, '2026-09-14 11:00:22.730376', 'd416ffe66ebd5e58e9482973d3309a5ee3427ad9c3cb3ea14cd88d4c8e87c43b', 'validated', '{"audio_key":"c6ca1c7fbff8b5b8fe3d0491eb3c213dd60a65775cdbe7f3d8da5d695f46f12d","entity_key":"d_voyages_et_imprevus_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d416ffe66ebd5e58e9482973d3309a5ee3427ad9c3cb3ea14cd88d4c8e87c43b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/c6ca1c7fbff8b5b8fe3d0491eb3c213dd60a65775cdbe7f3d8da5d695f46f12d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_01:4 -> audio/generated/fr-FR/dialogues/c889180333430b79e29b1e6a32ca9f092579eab797f23c69fcb6862a4a2f1862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51124c51-352c-5f26-8fb7-4532643e149b', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9699ebc3f1ac8664e74cf4e8dd3637f865a094cb96b2e196bcb62ba91c1ea769'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d6f0cdb-91ce-59b6-b088-d06530b2bd3c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51124c51-352c-5f26-8fb7-4532643e149b', 1), '9699ebc3f1ac8664e74cf4e8dd3637f865a094cb96b2e196bcb62ba91c1ea769',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c889180333430b79e29b1e6a32ca9f092579eab797f23c69fcb6862a4a2f1862.mp3', 2403, '2026-09-14 11:00:22.889718', 'bd476970643a1cdfdc23ba4bb206e2fec336e6fbc5caa4f0948431e3fdd6d335', 'validated', '{"audio_key":"c889180333430b79e29b1e6a32ca9f092579eab797f23c69fcb6862a4a2f1862","entity_key":"d_souvenirs_et_recits_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd476970643a1cdfdc23ba4bb206e2fec336e6fbc5caa4f0948431e3fdd6d335","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/c889180333430b79e29b1e6a32ca9f092579eab797f23c69fcb6862a4a2f1862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_02:4 -> audio/generated/fr-FR/dialogues/c8e25c1c82bc056a7434a2a25bdf0e9b8ed7a223545f78c3e963779cecfe5df6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90e631c5-d1a6-574e-80e9-adf7e62e7bf5', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a863c6aade3e3d29d31ce28d7afe66771b30941f7156d7ddd95fd7da72435ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49c85188-b3f9-5c8f-8a14-be0d55257223', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90e631c5-d1a6-574e-80e9-adf7e62e7bf5', 1), '0a863c6aade3e3d29d31ce28d7afe66771b30941f7156d7ddd95fd7da72435ad',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c8e25c1c82bc056a7434a2a25bdf0e9b8ed7a223545f78c3e963779cecfe5df6.mp3', 2403, '2026-09-14 11:00:23.862762', '43d3d4cda25e82e507c0b9c4bac6a9dbfb52bf71888db10a2acbb5575fab5b41', 'validated', '{"audio_key":"c8e25c1c82bc056a7434a2a25bdf0e9b8ed7a223545f78c3e963779cecfe5df6","entity_key":"d_b1_capstone_decisions_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"43d3d4cda25e82e507c0b9c4bac6a9dbfb52bf71888db10a2acbb5575fab5b41","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/c8e25c1c82bc056a7434a2a25bdf0e9b8ed7a223545f78c3e963779cecfe5df6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_01:1 -> audio/generated/fr-FR/dialogues/c9323635691c6ef00a904043df875c327c486e300f87a2183387e8b8dae8550c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef3b356b-7e59-5de0-99bc-b1cbe02ba0a6', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18e0c577b5f084aa75ef7a561f548414a84f0e037b35bdcae096abb45436dca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4b3ed06-b03d-5a65-abc4-0bf9377d96de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef3b356b-7e59-5de0-99bc-b1cbe02ba0a6', 1), '18e0c577b5f084aa75ef7a561f548414a84f0e037b35bdcae096abb45436dca9',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c9323635691c6ef00a904043df875c327c486e300f87a2183387e8b8dae8550c.mp3', 2115, '2026-09-14 11:00:23.993634', 'd3948c03725963bcce9689437926eabfc8c5764d3292e39cd96cdbc2c4b6e11b', 'validated', '{"audio_key":"c9323635691c6ef00a904043df875c327c486e300f87a2183387e8b8dae8550c","entity_key":"d_medias_et_opinions_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3948c03725963bcce9689437926eabfc8c5764d3292e39cd96cdbc2c4b6e11b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/c9323635691c6ef00a904043df875c327c486e300f87a2183387e8b8dae8550c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_01:3 -> audio/generated/fr-FR/dialogues/c9ba63ac63add18a3b0ea03d667d26cb3283970d0d60cbe00f29bfda4aca0f00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73861509-252f-5eb9-8549-82acb1d8629f', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8ea5464f0aab70042d168949ccfd774f7382883feb3e6c5ad39f80101817b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89591692-512d-5ba6-9947-95176fab571c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73861509-252f-5eb9-8549-82acb1d8629f', 1), 'e8ea5464f0aab70042d168949ccfd774f7382883feb3e6c5ad39f80101817b7d',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c9ba63ac63add18a3b0ea03d667d26cb3283970d0d60cbe00f29bfda4aca0f00.mp3', 1332, '2026-09-14 11:00:24.921526', 'd827c8e9167c08c62533a20eac992ef9cf3edc67a4b03b58f8a7494d11ea5427', 'validated', '{"audio_key":"c9ba63ac63add18a3b0ea03d667d26cb3283970d0d60cbe00f29bfda4aca0f00","entity_key":"d_medias_et_opinions_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d827c8e9167c08c62533a20eac992ef9cf3edc67a4b03b58f8a7494d11ea5427","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/c9ba63ac63add18a3b0ea03d667d26cb3283970d0d60cbe00f29bfda4aca0f00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_02:4 -> audio/generated/fr-FR/dialogues/cb0c5a3eb13568169027533f990f77c1127744e92e3d4e9951c09cf9cf85db98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('971369e4-8c42-5d4a-811f-796368646bec', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61beb572403e964629a63400029f3f90240b0afc5a28abe4f199bc35ddf07251'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9df20982-d2af-5b93-b6ea-77d3e05cd46d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('971369e4-8c42-5d4a-811f-796368646bec', 1), '61beb572403e964629a63400029f3f90240b0afc5a28abe4f199bc35ddf07251',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/cb0c5a3eb13568169027533f990f77c1127744e92e3d4e9951c09cf9cf85db98.mp3', 1332, '2026-09-14 11:00:25.047419', '1eb1d01bdb5d6a86a2564c141be46028d49436769b3e4a0141b0f36609a48f2e', 'validated', '{"audio_key":"cb0c5a3eb13568169027533f990f77c1127744e92e3d4e9951c09cf9cf85db98","entity_key":"d_travail_et_organisation_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1eb1d01bdb5d6a86a2564c141be46028d49436769b3e4a0141b0f36609a48f2e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/cb0c5a3eb13568169027533f990f77c1127744e92e3d4e9951c09cf9cf85db98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_02:1 -> audio/generated/fr-FR/dialogues/d7e26d270844dd3a28e4fbf37b641c0344d375ec998d9aaa673d97efff5c956a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f3fac6b-77b8-5e02-89a5-b79037c1933e', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9846cce65cd20e39b3a8219994f1e8dafd43f5930aee91c888de447426be6975'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd2e1777-3809-57ea-b2f1-783f473620b7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f3fac6b-77b8-5e02-89a5-b79037c1933e', 1), '9846cce65cd20e39b3a8219994f1e8dafd43f5930aee91c888de447426be6975',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d7e26d270844dd3a28e4fbf37b641c0344d375ec998d9aaa673d97efff5c956a.mp3', 2873, '2026-09-14 11:00:26.154096', '300e05ad36a7c9ad90a582ae12adc949a106ace37b27028a0d5697b0959464ed', 'validated', '{"audio_key":"d7e26d270844dd3a28e4fbf37b641c0344d375ec998d9aaa673d97efff5c956a","entity_key":"d_relations_et_conseils_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"300e05ad36a7c9ad90a582ae12adc949a106ace37b27028a0d5697b0959464ed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/d7e26d270844dd3a28e4fbf37b641c0344d375ec998d9aaa673d97efff5c956a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_01:2 -> audio/generated/fr-FR/dialogues/d89fe6171511936a096fd09497f8f0d2abc26cb2958d541ae3eedf349a53b6dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('abecf8fb-f556-5909-b0a7-7d76285ddebb', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '973858f53369fd308f725f3cce80f2e268f762cd894802f3ab12d0f162de4b9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d47c67a7-c71b-5b5b-9af7-7a56acb62bad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('abecf8fb-f556-5909-b0a7-7d76285ddebb', 1), '973858f53369fd308f725f3cce80f2e268f762cd894802f3ab12d0f162de4b9d',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d89fe6171511936a096fd09497f8f0d2abc26cb2958d541ae3eedf349a53b6dd.mp3', 1906, '2026-09-14 11:00:26.124123', '2a2a982fb39b2215bb51eb61614ea72430c11bc342912f2e88f69bff19b9de65', 'validated', '{"audio_key":"d89fe6171511936a096fd09497f8f0d2abc26cb2958d541ae3eedf349a53b6dd","entity_key":"d_travail_et_organisation_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a2a982fb39b2215bb51eb61614ea72430c11bc342912f2e88f69bff19b9de65","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/d89fe6171511936a096fd09497f8f0d2abc26cb2958d541ae3eedf349a53b6dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_02:1 -> audio/generated/fr-FR/dialogues/d94bcc373b8e62fe9cfbc4e8abe6abddfd993e6f3b16b1f96c0cb57586dcd966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb8ef88f-3f90-534a-8e1e-48313775f861', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d45969764663f5511b9fd8b9c345f5fc3c1cf815ba4b6658da477d2bc717057'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ff6a0f8-adf4-5a4b-90c7-cd6b83965e66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb8ef88f-3f90-534a-8e1e-48313775f861', 1), '4d45969764663f5511b9fd8b9c345f5fc3c1cf815ba4b6658da477d2bc717057',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d94bcc373b8e62fe9cfbc4e8abe6abddfd993e6f3b16b1f96c0cb57586dcd966.mp3', 2351, '2026-09-14 11:00:27.215581', 'aada23187cebd0397dcb22e0e294e58fd3ec3a6cf3a5496b22618488f8a5fbb3', 'validated', '{"audio_key":"d94bcc373b8e62fe9cfbc4e8abe6abddfd993e6f3b16b1f96c0cb57586dcd966","entity_key":"d_medias_et_opinions_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"aada23187cebd0397dcb22e0e294e58fd3ec3a6cf3a5496b22618488f8a5fbb3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/d94bcc373b8e62fe9cfbc4e8abe6abddfd993e6f3b16b1f96c0cb57586dcd966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_02:3 -> audio/generated/fr-FR/dialogues/dd2fda734380d9282cc71f63320aefa060c57355d3a74ff0e22adaf8a3c9d9fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06384b7c-7f18-5942-a94b-c1f79d4b5535', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d97d205ecee14e79d781a52bc77c1a681dc1bcba4c552e032371b5a7ae6ca6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5fff76e-eb0f-55f3-b8fa-8c05d83146cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06384b7c-7f18-5942-a94b-c1f79d4b5535', 1), '0d97d205ecee14e79d781a52bc77c1a681dc1bcba4c552e032371b5a7ae6ca6b',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/dd2fda734380d9282cc71f63320aefa060c57355d3a74ff0e22adaf8a3c9d9fb.mp3', 1671, '2026-09-14 11:00:27.226610', '8abb35dccb7f4b8f34fc546265eb6f070a84759a3a076340308433e1df386c42', 'validated', '{"audio_key":"dd2fda734380d9282cc71f63320aefa060c57355d3a74ff0e22adaf8a3c9d9fb","entity_key":"d_sante_et_bien_etre_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8abb35dccb7f4b8f34fc546265eb6f070a84759a3a076340308433e1df386c42","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/dd2fda734380d9282cc71f63320aefa060c57355d3a74ff0e22adaf8a3c9d9fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projets_et_avenir_02:3 -> audio/generated/fr-FR/dialogues/dfa123ad273551768fe75309c76a9f1fadfbdb37d3974fbe1c1532daee43a81e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f140ffce-e439-504e-b21c-4c67909e9e78', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projets_et_avenir_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed513d4d2e0451a962f94dc4f108be855c30690b34e429a2f57e72dd80468fc2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('faf91e43-0537-5b63-a807-4a0cdbb96bfe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f140ffce-e439-504e-b21c-4c67909e9e78', 1), 'ed513d4d2e0451a962f94dc4f108be855c30690b34e429a2f57e72dd80468fc2',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/dfa123ad273551768fe75309c76a9f1fadfbdb37d3974fbe1c1532daee43a81e.mp3', 2351, '2026-09-14 11:00:28.319591', 'ce21f61f5b3e6d3724cecb48c89585e2e8fc272e27da77524cd0b106e69968bb', 'validated', '{"audio_key":"dfa123ad273551768fe75309c76a9f1fadfbdb37d3974fbe1c1532daee43a81e","entity_key":"d_projets_et_avenir_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ce21f61f5b3e6d3724cecb48c89585e2e8fc272e27da77524cd0b106e69968bb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/dfa123ad273551768fe75309c76a9f1fadfbdb37d3974fbe1c1532daee43a81e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_01:1 -> audio/generated/fr-FR/dialogues/dfdac3a683a7d9ce681d01e7cdaae759fbfa0cabb25d695c836998c099ab182a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c15a2323-34d5-5d2d-b858-45b29a7fa714', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16df62b0280bb211192475abf35124038d6aa16115eac7fceb02739dbee080ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7e49859-c7c0-5711-9ee3-6db2ae9acb23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c15a2323-34d5-5d2d-b858-45b29a7fa714', 1), '16df62b0280bb211192475abf35124038d6aa16115eac7fceb02739dbee080ab',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/dfdac3a683a7d9ce681d01e7cdaae759fbfa0cabb25d695c836998c099ab182a.mp3', 2220, '2026-09-14 11:00:28.371406', '872ac3b89072c66777e1197ac6f1196a019ed8880d8242113f23aa99390512bc', 'validated', '{"audio_key":"dfdac3a683a7d9ce681d01e7cdaae759fbfa0cabb25d695c836998c099ab182a","entity_key":"d_logement_et_reclamations_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"872ac3b89072c66777e1197ac6f1196a019ed8880d8242113f23aa99390512bc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/dfdac3a683a7d9ce681d01e7cdaae759fbfa0cabb25d695c836998c099ab182a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_02:2 -> audio/generated/fr-FR/dialogues/e35eac0cf41dc68ccedc69c596abb9bcf9b19bdce9fca03d2999b1f2547fbdcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e69c24ff-e9a6-5fb6-928a-6cee1b74a2bb', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00598494275d516df1753741fa674a596b31a4c0e20317a51d196112719082ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17928a5b-e283-56ee-9c59-220f69f8e1c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e69c24ff-e9a6-5fb6-928a-6cee1b74a2bb', 1), '00598494275d516df1753741fa674a596b31a4c0e20317a51d196112719082ae',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e35eac0cf41dc68ccedc69c596abb9bcf9b19bdce9fca03d2999b1f2547fbdcf.mp3', 2324, '2026-09-14 11:00:29.464034', '78833bf12091d9f7422639ad8025e689adb71977e883ac46371895ef2af86f21', 'validated', '{"audio_key":"e35eac0cf41dc68ccedc69c596abb9bcf9b19bdce9fca03d2999b1f2547fbdcf","entity_key":"d_medias_et_opinions_02:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78833bf12091d9f7422639ad8025e689adb71977e883ac46371895ef2af86f21","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/e35eac0cf41dc68ccedc69c596abb9bcf9b19bdce9fca03d2999b1f2547fbdcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travail_et_organisation_02:2 -> audio/generated/fr-FR/dialogues/e7cb544f9bc921119598233a9704ff4e0390955052771e4452bc5bb0c63a43f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8980195-d5e8-5cf1-bf1b-168cba7e7e43', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travail_et_organisation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '872101cf53b784fea06322f693e0d8f4cb2f4d9e002c3b319460cf9a71ace088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05107d47-92ee-52fc-b8d1-046bbccd010f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8980195-d5e8-5cf1-bf1b-168cba7e7e43', 1), '872101cf53b784fea06322f693e0d8f4cb2f4d9e002c3b319460cf9a71ace088',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e7cb544f9bc921119598233a9704ff4e0390955052771e4452bc5bb0c63a43f2.mp3', 2115, '2026-09-14 11:00:29.458631', '9660b16ce6d9e8f5d9507789900944830d863c9c30aa30d4d39e25e1e97b5125', 'validated', '{"audio_key":"e7cb544f9bc921119598233a9704ff4e0390955052771e4452bc5bb0c63a43f2","entity_key":"d_travail_et_organisation_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9660b16ce6d9e8f5d9507789900944830d863c9c30aa30d4d39e25e1e97b5125","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e7cb544f9bc921119598233a9704ff4e0390955052771e4452bc5bb0c63a43f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_logement_et_reclamations_01:4 -> audio/generated/fr-FR/dialogues/eab92fd759395432f1de64ceebaa32f93be9174d181a48b0ada2ebd4eca0a1a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22921714-9b24-536e-b4bb-04b089ad51df', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_logement_et_reclamations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6b310ed2f6b0aafe2a60d2ae4c9d19f74a0656932db5e6c78be076208223c31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b67b08c0-d547-5bec-b42e-a3b7f15e6598', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22921714-9b24-536e-b4bb-04b089ad51df', 1), 'b6b310ed2f6b0aafe2a60d2ae4c9d19f74a0656932db5e6c78be076208223c31',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/eab92fd759395432f1de64ceebaa32f93be9174d181a48b0ada2ebd4eca0a1a5.mp3', 2272, '2026-09-14 11:00:30.573168', 'ecd2881b88101a512d89611ce1b83be022291662e658e2c1691f346f58e19174', 'validated', '{"audio_key":"eab92fd759395432f1de64ceebaa32f93be9174d181a48b0ada2ebd4eca0a1a5","entity_key":"d_logement_et_reclamations_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ecd2881b88101a512d89611ce1b83be022291662e658e2c1691f346f58e19174","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/eab92fd759395432f1de64ceebaa32f93be9174d181a48b0ada2ebd4eca0a1a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_sante_et_bien_etre_02:2 -> audio/generated/fr-FR/dialogues/ebbf66386bda08906b763235ae429677357d25924c4a57f95fde3103d9d2af6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20d96063-da80-5bc8-8f6d-27dd2e455037', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_sante_et_bien_etre_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'feea9fc79c8c4523f6d270cd05993759b72f4cf69593c01580fc4b9810a192be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f991ff3-b299-5cf4-a3e9-cf4f9a938632', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20d96063-da80-5bc8-8f6d-27dd2e455037', 1), 'feea9fc79c8c4523f6d270cd05993759b72f4cf69593c01580fc4b9810a192be',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ebbf66386bda08906b763235ae429677357d25924c4a57f95fde3103d9d2af6c.mp3', 3186, '2026-09-14 11:00:30.708204', '071c977be06051ada0400553eb8cd887ef6174c0a13bb5e8ef8f797bed325fca', 'validated', '{"audio_key":"ebbf66386bda08906b763235ae429677357d25924c4a57f95fde3103d9d2af6c","entity_key":"d_sante_et_bien_etre_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"071c977be06051ada0400553eb8cd887ef6174c0a13bb5e8ef8f797bed325fca","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/ebbf66386bda08906b763235ae429677357d25924c4a57f95fde3103d9d2af6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_01:2 -> audio/generated/fr-FR/dialogues/ed3f8af0a8ae4865426f087d74dc09b52a662006f6034bebe151b98c743d414f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93b30ba9-962a-5c0a-b88d-fdf3a227cbc1', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c78a5a0dc10809cda2c1ae21a16ef3f94ce8afdcfa416c6236286106f3bb9c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16d721b2-c0bf-5784-a885-085c6ae5109a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93b30ba9-962a-5c0a-b88d-fdf3a227cbc1', 1), '2c78a5a0dc10809cda2c1ae21a16ef3f94ce8afdcfa416c6236286106f3bb9c2',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ed3f8af0a8ae4865426f087d74dc09b52a662006f6034bebe151b98c743d414f.mp3', 2768, '2026-09-14 11:00:31.740033', 'be61dd8e3c6df95a9d16dda221e851026546ddb08728f065b91617d378aaa1b0', 'validated', '{"audio_key":"ed3f8af0a8ae4865426f087d74dc09b52a662006f6034bebe151b98c743d414f","entity_key":"d_voyages_et_imprevus_01:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"be61dd8e3c6df95a9d16dda221e851026546ddb08728f065b91617d378aaa1b0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/ed3f8af0a8ae4865426f087d74dc09b52a662006f6034bebe151b98c743d414f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_01:4 -> audio/generated/fr-FR/dialogues/f0594e874173938f593ffc0f49e8e6a7c62ada98e2fbd3546c432b7d127db720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e759697-eee4-5c8e-80ad-ec20919fd829', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b789cd7c696df5955b169a0074d3ca294746eff7d873d3778e678914c09c5a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cfecb7a-925a-525d-bc9a-b6ae8cc87010', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e759697-eee4-5c8e-80ad-ec20919fd829', 1), '4b789cd7c696df5955b169a0074d3ca294746eff7d873d3778e678914c09c5a8',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f0594e874173938f593ffc0f49e8e6a7c62ada98e2fbd3546c432b7d127db720.mp3', 3343, '2026-09-14 11:00:31.956385', '47e22c3254884ced22ed849068572e6036e274eb52652876c0d5c64991cdc085', 'validated', '{"audio_key":"f0594e874173938f593ffc0f49e8e6a7c62ada98e2fbd3546c432b7d127db720","entity_key":"d_b1_capstone_decisions_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47e22c3254884ced22ed849068572e6036e274eb52652876c0d5c64991cdc085","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/f0594e874173938f593ffc0f49e8e6a7c62ada98e2fbd3546c432b7d127db720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_voyages_et_imprevus_02:2 -> audio/generated/fr-FR/dialogues/f09370eaf1a279d38ce522df3c33ca693d5334282323da261c0a3868b6a4504c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d52ba611-e2a0-5769-93b6-34fb0299c004', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_voyages_et_imprevus_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6413ee779384ba7ceb68d5c67bd198529b372f0725340a9302287e47f9921e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5079b47-52fd-5e3e-8791-8b0e1ad4429e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d52ba611-e2a0-5769-93b6-34fb0299c004', 1), 'b6413ee779384ba7ceb68d5c67bd198529b372f0725340a9302287e47f9921e0',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f09370eaf1a279d38ce522df3c33ca693d5334282323da261c0a3868b6a4504c.mp3', 1384, '2026-09-14 11:00:32.822458', '736d763035976661d907da5643526c8e0b7600a966d38c0f41f41fe691238742', 'validated', '{"audio_key":"f09370eaf1a279d38ce522df3c33ca693d5334282323da261c0a3868b6a4504c","entity_key":"d_voyages_et_imprevus_02:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"736d763035976661d907da5643526c8e0b7600a966d38c0f41f41fe691238742","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/f09370eaf1a279d38ce522df3c33ca693d5334282323da261c0a3868b6a4504c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_01:1 -> audio/generated/fr-FR/dialogues/f17fea21d00165b2529aedc01125aa4d3bbb4f66d4051d4801185dcbb33f6646.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cb83322-370b-5c57-9ef5-5e23739ccf55', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43543a5c386f91bf65da754a9904aad76c8f7c4700c164d09db4e431b4ef0370'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd183a5c-6879-587c-ab86-9547bc2b63aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cb83322-370b-5c57-9ef5-5e23739ccf55', 1), '43543a5c386f91bf65da754a9904aad76c8f7c4700c164d09db4e431b4ef0370',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f17fea21d00165b2529aedc01125aa4d3bbb4f66d4051d4801185dcbb33f6646.mp3', 2768, '2026-09-14 11:00:33.115736', '405fd803d07f86bfd06367445bcac896e0f8b2135f95f3e18f6fd88ccf2b0b1e', 'validated', '{"audio_key":"f17fea21d00165b2529aedc01125aa4d3bbb4f66d4051d4801185dcbb33f6646","entity_key":"d_relations_et_conseils_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"405fd803d07f86bfd06367445bcac896e0f8b2135f95f3e18f6fd88ccf2b0b1e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/f17fea21d00165b2529aedc01125aa4d3bbb4f66d4051d4801185dcbb33f6646.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_medias_et_opinions_01:4 -> audio/generated/fr-FR/dialogues/f247e2418ad2ad4e20c107e6fff53ff79d7965fb41e16da569d625a1ce1864b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a31a99a7-1cd5-5e70-b18b-be11aeb54acb', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_medias_et_opinions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70923fb5ec5cceebc64da75da3f23ea4b48441157a175a04d968b65f6cb64d7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfc7d487-a4a1-5908-ac79-ce12c7e636e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a31a99a7-1cd5-5e70-b18b-be11aeb54acb', 1), '70923fb5ec5cceebc64da75da3f23ea4b48441157a175a04d968b65f6cb64d7f',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f247e2418ad2ad4e20c107e6fff53ff79d7965fb41e16da569d625a1ce1864b6.mp3', 1671, '2026-09-14 11:00:33.974183', 'cc9b072781cf1ee03ac0159dd842e94e4c1b5a2a8c28b19b6313413f24a4d2e5', 'validated', '{"audio_key":"f247e2418ad2ad4e20c107e6fff53ff79d7965fb41e16da569d625a1ce1864b6","entity_key":"d_medias_et_opinions_01:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"cc9b072781cf1ee03ac0159dd842e94e4c1b5a2a8c28b19b6313413f24a4d2e5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/f247e2418ad2ad4e20c107e6fff53ff79d7965fb41e16da569d625a1ce1864b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relations_et_conseils_02:2 -> audio/generated/fr-FR/dialogues/f5e3aa1101ebfcc73523bba95140fd269aacb88c519967c8ef057d7fd97fff60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('900b3296-b40c-5b6a-9487-932eb724823e', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relations_et_conseils_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abaa158daadbe20ffb6a188a456e2fd36f7b75bf8a3ef5fec75e6fac9fdb64aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8299bdc-2a64-5231-b0eb-08c8b63404b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('900b3296-b40c-5b6a-9487-932eb724823e', 1), 'abaa158daadbe20ffb6a188a456e2fd36f7b75bf8a3ef5fec75e6fac9fdb64aa',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f5e3aa1101ebfcc73523bba95140fd269aacb88c519967c8ef057d7fd97fff60.mp3', 1671, '2026-09-14 11:00:34.152156', 'd3a9f768cb324711098c6d1758c5658853f1bf9fd09c32470d5f985334849e6e', 'validated', '{"audio_key":"f5e3aa1101ebfcc73523bba95140fd269aacb88c519967c8ef057d7fd97fff60","entity_key":"d_relations_et_conseils_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3a9f768cb324711098c6d1758c5658853f1bf9fd09c32470d5f985334849e6e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/f5e3aa1101ebfcc73523bba95140fd269aacb88c519967c8ef057d7fd97fff60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_capstone_decisions_01:2 -> audio/generated/fr-FR/dialogues/fcef671d9def41537a3288ca3ea773d5aa8521e93e12009bfd9d7108a85d8be8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('749509fe-8583-5c28-9c36-9cf240703d24', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_capstone_decisions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9de643a12c9d813c9f81cc84c9e64e1efe714b15c3a260d3724e74e47c8059b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d30e2d0-a45f-59d8-9bb0-85802f73b931', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('749509fe-8583-5c28-9c36-9cf240703d24', 1), '9de643a12c9d813c9f81cc84c9e64e1efe714b15c3a260d3724e74e47c8059b3',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/fcef671d9def41537a3288ca3ea773d5aa8521e93e12009bfd9d7108a85d8be8.mp3', 2220, '2026-09-14 11:00:35.145323', '2324a28c6b58fd25d30ce987406d05eff02da453e0b285c699033448e8ad8b88', 'validated', '{"audio_key":"fcef671d9def41537a3288ca3ea773d5aa8521e93e12009bfd9d7108a85d8be8","entity_key":"d_b1_capstone_decisions_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2324a28c6b58fd25d30ce987406d05eff02da453e0b285c699033448e8ad8b88","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/fcef671d9def41537a3288ca3ea773d5aa8521e93e12009bfd9d7108a85d8be8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_souvenirs_et_recits_02:2 -> audio/generated/fr-FR/dialogues/ffc8396fb4452c050ad8bc6d2bb3c875871a90b4326d9d54f3739e6477e69830.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42c3ee84-a32e-580c-9977-141a5bb341cd', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_souvenirs_et_recits_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18733289b8d0b1946bba377581c946409ba1000353536246060475364e7004b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4373375-c098-58b3-b6ac-74bb1f41e91d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42c3ee84-a32e-580c-9977-141a5bb341cd', 1), '18733289b8d0b1946bba377581c946409ba1000353536246060475364e7004b4',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ffc8396fb4452c050ad8bc6d2bb3c875871a90b4326d9d54f3739e6477e69830.mp3', 1985, '2026-09-14 11:00:35.256088', '8b134c1475b3f21f4fb76e7de38d5ab91651497be80ccb3b753f8d3d7b1dd29b', 'validated', '{"audio_key":"ffc8396fb4452c050ad8bc6d2bb3c875871a90b4326d9d54f3739e6477e69830","entity_key":"d_souvenirs_et_recits_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b134c1475b3f21f4fb76e7de38d5ab91651497be80ccb3b753f8d3d7b1dd29b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/ffc8396fb4452c050ad8bc6d2bb3c875871a90b4326d9d54f3739e6477e69830.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_souvenirs_et_recits_05 -> audio/generated/fr-FR/lexical/02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('23c92a9a-a9c6-53b2-ab36-061b9b01908e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_souvenirs_et_recits_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e89398a49452d37fea667cbe421c96d8d52ad5b145637a80bb4b2fdf8e553eb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('853d2205-5028-5808-8472-c0d2ae2682ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('23c92a9a-a9c6-53b2-ab36-061b9b01908e', 1), 'e89398a49452d37fea667cbe421c96d8d52ad5b145637a80bb4b2fdf8e553eb1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821.mp3', 1018, '2026-09-14 11:00:36.152550', '02f9951fc5d159e7cf12c97f9491e6e6c837036cc52243eb3a1a654970ccc247', 'validated', '{"audio_key":"02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821","entity_key":"lx_souvenirs_et_recits_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02f9951fc5d159e7cf12c97f9491e6e6c837036cc52243eb3a1a654970ccc247","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_souvenirs_et_recits_05 -> audio/generated/fr-FR/lexical/02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba889a39-b8aa-57a1-88e4-941e53425ce4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_souvenirs_et_recits_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e89398a49452d37fea667cbe421c96d8d52ad5b145637a80bb4b2fdf8e553eb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('466e0da7-483d-5a71-9a85-833a4cd711c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba889a39-b8aa-57a1-88e4-941e53425ce4', 1), 'e89398a49452d37fea667cbe421c96d8d52ad5b145637a80bb4b2fdf8e553eb1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821.mp3', 1018, '2026-09-14 11:00:36.152550', '02f9951fc5d159e7cf12c97f9491e6e6c837036cc52243eb3a1a654970ccc247', 'validated', '{"audio_key":"02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821","entity_key":"wf_souvenirs_et_recits_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02f9951fc5d159e7cf12c97f9491e6e6c837036cc52243eb3a1a654970ccc247","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/02fca5f7a3bddd414bbd5a4b86539cc8b7a251bd18fff63cbb530dc882a44821.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_services_et_demarches_01 -> audio/generated/fr-FR/lexical/044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('111dc3fb-9727-57e9-a6ca-e8c60e0e9c1e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_services_et_demarches_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd956eafa6f6ebebc7074033c7a39ad756f890d71ef4bb7e2a6ea343ffdb9b722'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eabe1934-9058-5ee0-9934-c6740b70df8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('111dc3fb-9727-57e9-a6ca-e8c60e0e9c1e', 1), 'd956eafa6f6ebebc7074033c7a39ad756f890d71ef4bb7e2a6ea343ffdb9b722',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213.mp3', 914, '2026-09-14 11:00:36.242223', 'aed32c13ea7f01a7b43ce150d2bc3c415d57bd99673095bfbc0fe9e47198092f', 'validated', '{"audio_key":"044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213","entity_key":"lx_services_et_demarches_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aed32c13ea7f01a7b43ce150d2bc3c415d57bd99673095bfbc0fe9e47198092f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_services_et_demarches_01 -> audio/generated/fr-FR/lexical/044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a265add-d467-50ce-9de2-2f3c5c57c37b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_services_et_demarches_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd956eafa6f6ebebc7074033c7a39ad756f890d71ef4bb7e2a6ea343ffdb9b722'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('668d6a07-4117-5fdf-9ec8-7abc39e81966', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a265add-d467-50ce-9de2-2f3c5c57c37b', 1), 'd956eafa6f6ebebc7074033c7a39ad756f890d71ef4bb7e2a6ea343ffdb9b722',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213.mp3', 914, '2026-09-14 11:00:36.242223', 'aed32c13ea7f01a7b43ce150d2bc3c415d57bd99673095bfbc0fe9e47198092f', 'validated', '{"audio_key":"044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213","entity_key":"wf_services_et_demarches_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aed32c13ea7f01a7b43ce150d2bc3c415d57bd99673095bfbc0fe9e47198092f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/044bdcf99fc1df08db18d4e8acd845aeaaf7f74f7c241d709c9d2d6f8db58213.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projets_et_avenir_05 -> audio/generated/fr-FR/lexical/0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdaea33c-713b-5456-ad51-fb9b8f3fcf33', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projets_et_avenir_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '775095d08531cebfeeba2721655abdd2f9a841b79ccc8c1046c1c3048c4a53d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8493ed7b-3a53-56e7-9e11-9b048c524b14', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdaea33c-713b-5456-ad51-fb9b8f3fcf33', 1), '775095d08531cebfeeba2721655abdd2f9a841b79ccc8c1046c1c3048c4a53d0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9.mp3', 1071, '2026-09-14 11:00:37.158834', '3b1fbac0368dee84cf5a70b731569fb5726cae17f9f98ef94028021673f5426b', 'validated', '{"audio_key":"0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9","entity_key":"lx_projets_et_avenir_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3b1fbac0368dee84cf5a70b731569fb5726cae17f9f98ef94028021673f5426b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projets_et_avenir_05 -> audio/generated/fr-FR/lexical/0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8e4a501-82fe-5bd6-91d1-5dc62b51988d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projets_et_avenir_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '775095d08531cebfeeba2721655abdd2f9a841b79ccc8c1046c1c3048c4a53d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d6ec38d-24b8-530b-86b5-ba0f426bb2ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8e4a501-82fe-5bd6-91d1-5dc62b51988d', 1), '775095d08531cebfeeba2721655abdd2f9a841b79ccc8c1046c1c3048c4a53d0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9.mp3', 1071, '2026-09-14 11:00:37.158834', '3b1fbac0368dee84cf5a70b731569fb5726cae17f9f98ef94028021673f5426b', 'validated', '{"audio_key":"0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9","entity_key":"wf_projets_et_avenir_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3b1fbac0368dee84cf5a70b731569fb5726cae17f9f98ef94028021673f5426b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0708a5dead0f05f8e227d9e363e26ad1631f198c8bd099a8f12cf62894833aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_medias_et_opinions_03 -> audio/generated/fr-FR/lexical/12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1301b4a8-b754-5d66-83fa-e0b44087caf8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_medias_et_opinions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dc96d8b083d344b2c1e732346d5742947ecf7367de01fca8651cd035654fb45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7089341-096d-5820-b757-2627e56be6aa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1301b4a8-b754-5d66-83fa-e0b44087caf8', 1), '2dc96d8b083d344b2c1e732346d5742947ecf7367de01fca8651cd035654fb45',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2.mp3', 1018, '2026-09-14 11:00:37.241376', '217d5be3ab81ccc1b3b932b13ad722fba1c84dee41bc8757dd73387532eec34d', 'validated', '{"audio_key":"12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2","entity_key":"lx_medias_et_opinions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"217d5be3ab81ccc1b3b932b13ad722fba1c84dee41bc8757dd73387532eec34d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_medias_et_opinions_03 -> audio/generated/fr-FR/lexical/12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10881040-a42a-5f3f-82e0-efa6fd96c3fd', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_medias_et_opinions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dc96d8b083d344b2c1e732346d5742947ecf7367de01fca8651cd035654fb45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35a05761-34e0-55c7-aa12-16cea4982f0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10881040-a42a-5f3f-82e0-efa6fd96c3fd', 1), '2dc96d8b083d344b2c1e732346d5742947ecf7367de01fca8651cd035654fb45',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2.mp3', 1018, '2026-09-14 11:00:37.241376', '217d5be3ab81ccc1b3b932b13ad722fba1c84dee41bc8757dd73387532eec34d', 'validated', '{"audio_key":"12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2","entity_key":"wf_medias_et_opinions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"217d5be3ab81ccc1b3b932b13ad722fba1c84dee41bc8757dd73387532eec34d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/12b48de854db3d8deea0ec90e1e840eac3b9e90158a426bec5c477f10c02e9b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_medias_et_opinions_04 -> audio/generated/fr-FR/lexical/14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fafc8b72-f492-596d-9945-d6ca3d989bfe', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_medias_et_opinions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '945b269dc51426f57ccbbc373e1fcdd4153df2527599a36ec1aa38c3c611377f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd117f7b-3aca-5a2e-94f1-bf28b69dfd01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fafc8b72-f492-596d-9945-d6ca3d989bfe', 1), '945b269dc51426f57ccbbc373e1fcdd4153df2527599a36ec1aa38c3c611377f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b.mp3', 966, '2026-09-14 11:00:38.150100', '3e71b8f1fb88b8d0c9d8f77fc006d44593f355148bf4682b0cee9f611426fabf', 'validated', '{"audio_key":"14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b","entity_key":"lx_medias_et_opinions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e71b8f1fb88b8d0c9d8f77fc006d44593f355148bf4682b0cee9f611426fabf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_medias_et_opinions_04 -> audio/generated/fr-FR/lexical/14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c4e7f8e6-5a11-5dce-bb7b-ed19584e44d9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_medias_et_opinions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '945b269dc51426f57ccbbc373e1fcdd4153df2527599a36ec1aa38c3c611377f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1565f2e-e61d-5d13-93c1-25fc26fa36ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c4e7f8e6-5a11-5dce-bb7b-ed19584e44d9', 1), '945b269dc51426f57ccbbc373e1fcdd4153df2527599a36ec1aa38c3c611377f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b.mp3', 966, '2026-09-14 11:00:38.150100', '3e71b8f1fb88b8d0c9d8f77fc006d44593f355148bf4682b0cee9f611426fabf', 'validated', '{"audio_key":"14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b","entity_key":"wf_medias_et_opinions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e71b8f1fb88b8d0c9d8f77fc006d44593f355148bf4682b0cee9f611426fabf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/14a63901bb72fa81424b031311720911f0ffec2e997c64b79cd466447af2e79b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_logement_et_reclamations_05 -> audio/generated/fr-FR/lexical/15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8ddae70f-e35c-5f0b-885e-7e662592d7a3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_logement_et_reclamations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b0c4c434091aaeb4aaf151decfa943dcd24a7a5e8ce3a1c07dc8b2e46daff46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('febd8b98-fb83-5608-84a5-d5eeb16ec88a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8ddae70f-e35c-5f0b-885e-7e662592d7a3', 1), '2b0c4c434091aaeb4aaf151decfa943dcd24a7a5e8ce3a1c07dc8b2e46daff46',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1.mp3', 966, '2026-09-14 11:00:38.219124', '3d8a34323c23fe8e4d288343e4b6b928787e63bc8a64531bfe1eff2e4ab0a37f', 'validated', '{"audio_key":"15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1","entity_key":"lx_logement_et_reclamations_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d8a34323c23fe8e4d288343e4b6b928787e63bc8a64531bfe1eff2e4ab0a37f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_logement_et_reclamations_05 -> audio/generated/fr-FR/lexical/15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f6ac343-7407-56e0-b2e8-53e2e23d7c48', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_logement_et_reclamations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b0c4c434091aaeb4aaf151decfa943dcd24a7a5e8ce3a1c07dc8b2e46daff46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0c31c34-59f0-5c93-af97-ce83cf8554b4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f6ac343-7407-56e0-b2e8-53e2e23d7c48', 1), '2b0c4c434091aaeb4aaf151decfa943dcd24a7a5e8ce3a1c07dc8b2e46daff46',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1.mp3', 966, '2026-09-14 11:00:38.219124', '3d8a34323c23fe8e4d288343e4b6b928787e63bc8a64531bfe1eff2e4ab0a37f', 'validated', '{"audio_key":"15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1","entity_key":"wf_logement_et_reclamations_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d8a34323c23fe8e4d288343e4b6b928787e63bc8a64531bfe1eff2e4ab0a37f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15518736280a1142b94e9e21ef03833a89fe42ea13259baf49858cf99c66f6b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relations_et_conseils_05 -> audio/generated/fr-FR/lexical/1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bafcb4f5-6fb5-5f1a-b2e6-026023ec390b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relations_et_conseils_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '055b4229dc50d64acba51e22a15047b52dc5b1b3fcae279e8705a327fb2763e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc05b56-1f65-528c-a051-3fc4f3de92a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bafcb4f5-6fb5-5f1a-b2e6-026023ec390b', 1), '055b4229dc50d64acba51e22a15047b52dc5b1b3fcae279e8705a327fb2763e9',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107.mp3', 966, '2026-09-14 11:00:39.119109', 'd45e88b7d27619657720cb7d6057f37d8d1b4b46bfc48fafa18e3e53f83f116f', 'validated', '{"audio_key":"1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107","entity_key":"lx_relations_et_conseils_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d45e88b7d27619657720cb7d6057f37d8d1b4b46bfc48fafa18e3e53f83f116f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relations_et_conseils_05 -> audio/generated/fr-FR/lexical/1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f98876bc-ec24-5c8d-afbc-2dbc8385c4e7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relations_et_conseils_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '055b4229dc50d64acba51e22a15047b52dc5b1b3fcae279e8705a327fb2763e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bacc3af0-a36c-5631-94b4-c146ad41269f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f98876bc-ec24-5c8d-afbc-2dbc8385c4e7', 1), '055b4229dc50d64acba51e22a15047b52dc5b1b3fcae279e8705a327fb2763e9',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107.mp3', 966, '2026-09-14 11:00:39.119109', 'd45e88b7d27619657720cb7d6057f37d8d1b4b46bfc48fafa18e3e53f83f116f', 'validated', '{"audio_key":"1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107","entity_key":"wf_relations_et_conseils_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d45e88b7d27619657720cb7d6057f37d8d1b4b46bfc48fafa18e3e53f83f116f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1796ec4c52b6002c0f7a589466d632164ad2da5b5bf18d17cba4e145f0d29107.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_logement_et_reclamations_01 -> audio/generated/fr-FR/lexical/1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fd8fdabd-1127-51c3-948b-477d5df5d05f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_logement_et_reclamations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7d3dd9d5e1f363224084303379aa7f52740fe0285365d76653a4d884faa2729'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e10bd14-3206-5689-9c56-f0528f751677', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fd8fdabd-1127-51c3-948b-477d5df5d05f', 1), 'f7d3dd9d5e1f363224084303379aa7f52740fe0285365d76653a4d884faa2729',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411.mp3', 966, '2026-09-14 11:00:39.203173', '079bffa7e5a5575bdeef05612f4fc5235d3a9d5f4f9f1b2dde5136c3c5019989', 'validated', '{"audio_key":"1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411","entity_key":"lx_logement_et_reclamations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"079bffa7e5a5575bdeef05612f4fc5235d3a9d5f4f9f1b2dde5136c3c5019989","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_logement_et_reclamations_01 -> audio/generated/fr-FR/lexical/1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a851882-72eb-5661-a8ba-ab67e672e4c5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_logement_et_reclamations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7d3dd9d5e1f363224084303379aa7f52740fe0285365d76653a4d884faa2729'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a83ffea-7d8a-5c68-9fba-3da4e1977994', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a851882-72eb-5661-a8ba-ab67e672e4c5', 1), 'f7d3dd9d5e1f363224084303379aa7f52740fe0285365d76653a4d884faa2729',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411.mp3', 966, '2026-09-14 11:00:39.203173', '079bffa7e5a5575bdeef05612f4fc5235d3a9d5f4f9f1b2dde5136c3c5019989', 'validated', '{"audio_key":"1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411","entity_key":"wf_logement_et_reclamations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"079bffa7e5a5575bdeef05612f4fc5235d3a9d5f4f9f1b2dde5136c3c5019989","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1bc76ebc003ec234ecddec9acc8e3dd5432e5f7f785701e2a40e06db20204411.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_services_et_demarches_06 -> audio/generated/fr-FR/lexical/1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c46db7f-df9a-5205-99f4-a79b75388f54', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_services_et_demarches_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8618718400b204956cf578e90c650c39ce936fbe3875e123229a0c3f42dc1c41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99e9744f-5888-516b-bb5a-62f316baf279', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c46db7f-df9a-5205-99f4-a79b75388f54', 1), '8618718400b204956cf578e90c650c39ce936fbe3875e123229a0c3f42dc1c41',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac.mp3', 1201, '2026-09-14 11:00:40.132092', '036267c05823eb400485936ccf2a7dc1f449ab01e51e9d4d3141d56eab4fcc47', 'validated', '{"audio_key":"1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac","entity_key":"lx_services_et_demarches_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"036267c05823eb400485936ccf2a7dc1f449ab01e51e9d4d3141d56eab4fcc47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_services_et_demarches_06 -> audio/generated/fr-FR/lexical/1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('21295745-e039-5415-84d2-ed6ec178f7b4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_services_et_demarches_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8618718400b204956cf578e90c650c39ce936fbe3875e123229a0c3f42dc1c41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d2a3a7b-3a62-5b82-8462-2e8982bf4f06', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('21295745-e039-5415-84d2-ed6ec178f7b4', 1), '8618718400b204956cf578e90c650c39ce936fbe3875e123229a0c3f42dc1c41',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac.mp3', 1201, '2026-09-14 11:00:40.132092', '036267c05823eb400485936ccf2a7dc1f449ab01e51e9d4d3141d56eab4fcc47', 'validated', '{"audio_key":"1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac","entity_key":"wf_services_et_demarches_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"036267c05823eb400485936ccf2a7dc1f449ab01e51e9d4d3141d56eab4fcc47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1cb48e96d25e2cfb8725d01cbce5e669d8cf39ea01ff516543a5f273ae1926ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_medias_et_opinions_01 -> audio/generated/fr-FR/lexical/1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fe979b17-4724-5933-8f96-4c1c2e28ef86', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_medias_et_opinions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84393add8c489d33569360efd1bcb5f70ed5a22408127d241c751e5ea345eb7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c098486-1f03-5035-9c61-afdc9523eb93', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fe979b17-4724-5933-8f96-4c1c2e28ef86', 1), '84393add8c489d33569360efd1bcb5f70ed5a22408127d241c751e5ea345eb7c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc.mp3', 966, '2026-09-14 11:00:40.175841', 'fc7885ade6c4b833022bc2f7faffaac9dede6a60e40307d666fc0448a5641895', 'validated', '{"audio_key":"1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc","entity_key":"lx_medias_et_opinions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fc7885ade6c4b833022bc2f7faffaac9dede6a60e40307d666fc0448a5641895","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_medias_et_opinions_01 -> audio/generated/fr-FR/lexical/1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('733154be-54dc-51b6-8194-1a79df063adb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_medias_et_opinions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84393add8c489d33569360efd1bcb5f70ed5a22408127d241c751e5ea345eb7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7eb9452-7053-568f-9bd9-a37ca3fa1cde', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('733154be-54dc-51b6-8194-1a79df063adb', 1), '84393add8c489d33569360efd1bcb5f70ed5a22408127d241c751e5ea345eb7c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc.mp3', 966, '2026-09-14 11:00:40.175841', 'fc7885ade6c4b833022bc2f7faffaac9dede6a60e40307d666fc0448a5641895', 'validated', '{"audio_key":"1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc","entity_key":"wf_medias_et_opinions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fc7885ade6c4b833022bc2f7faffaac9dede6a60e40307d666fc0448a5641895","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1d7551a3a7cd3310a5986990ebcd4339cb3b43f9af4494442618c9c3f100d2dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relations_et_conseils_04 -> audio/generated/fr-FR/lexical/2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8af5f654-274b-5940-9168-bee01469c5ba', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relations_et_conseils_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4625e2eb60ff3a53b63476aea5ebc8b62d334d7c280a559bf857ea4f6e86e911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5079b99a-0bf8-5e4d-9bcb-2e58799db1b7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8af5f654-274b-5940-9168-bee01469c5ba', 1), '4625e2eb60ff3a53b63476aea5ebc8b62d334d7c280a559bf857ea4f6e86e911',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef.mp3', 1149, '2026-09-14 11:00:41.139491', 'aaae230813688a548b5f60f37d1fb5d8a9d0a5d5b526ca176ce34f6d6dc9f83a', 'validated', '{"audio_key":"2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef","entity_key":"lx_relations_et_conseils_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aaae230813688a548b5f60f37d1fb5d8a9d0a5d5b526ca176ce34f6d6dc9f83a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relations_et_conseils_04 -> audio/generated/fr-FR/lexical/2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e7f600c-d7ce-55b5-90e2-3ee3da5b14e6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relations_et_conseils_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4625e2eb60ff3a53b63476aea5ebc8b62d334d7c280a559bf857ea4f6e86e911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6cd9e4d-aafe-5ff3-9bcb-408272bcab1f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e7f600c-d7ce-55b5-90e2-3ee3da5b14e6', 1), '4625e2eb60ff3a53b63476aea5ebc8b62d334d7c280a559bf857ea4f6e86e911',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef.mp3', 1149, '2026-09-14 11:00:41.139491', 'aaae230813688a548b5f60f37d1fb5d8a9d0a5d5b526ca176ce34f6d6dc9f83a', 'validated', '{"audio_key":"2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef","entity_key":"wf_relations_et_conseils_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aaae230813688a548b5f60f37d1fb5d8a9d0a5d5b526ca176ce34f6d6dc9f83a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2236fef06487e4a2a6e17b3186ba6d60da5e4b7371d48335d41af9bf26a6d2ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_medias_et_opinions_06 -> audio/generated/fr-FR/lexical/22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b9c883b4-c1b5-53e5-ba87-32eef7c53ac4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_medias_et_opinions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b74f83c9353b55cd27a6083e8a136486e5be81e8d2f9e83576c931d2400ceaa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de3c82e9-cc62-5c3c-a54d-f59cdc9b57c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b9c883b4-c1b5-53e5-ba87-32eef7c53ac4', 1), 'b74f83c9353b55cd27a6083e8a136486e5be81e8d2f9e83576c931d2400ceaa1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298.mp3', 1071, '2026-09-14 11:00:41.155554', '9dddd9c81e3ac5bc01c80cb48101fb75cd7fbe9472949c5f077d32d1442987e9', 'validated', '{"audio_key":"22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298","entity_key":"lx_medias_et_opinions_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9dddd9c81e3ac5bc01c80cb48101fb75cd7fbe9472949c5f077d32d1442987e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_medias_et_opinions_06 -> audio/generated/fr-FR/lexical/22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c28d5f58-0cfd-54d3-8f0a-16cca093ee24', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_medias_et_opinions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b74f83c9353b55cd27a6083e8a136486e5be81e8d2f9e83576c931d2400ceaa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94186a19-d6a9-57c0-87ee-b767df43eb96', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c28d5f58-0cfd-54d3-8f0a-16cca093ee24', 1), 'b74f83c9353b55cd27a6083e8a136486e5be81e8d2f9e83576c931d2400ceaa1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298.mp3', 1071, '2026-09-14 11:00:41.155554', '9dddd9c81e3ac5bc01c80cb48101fb75cd7fbe9472949c5f077d32d1442987e9', 'validated', '{"audio_key":"22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298","entity_key":"wf_medias_et_opinions_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9dddd9c81e3ac5bc01c80cb48101fb75cd7fbe9472949c5f077d32d1442987e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/22a067c639f24e1fb1ade51c92daf0ce07cc33e4891340f1c523103f58f30298.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_services_et_demarches_03 -> audio/generated/fr-FR/lexical/2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ffd1cd7-fffd-5de8-a2a6-6ed348ec6538', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_services_et_demarches_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50d0a3425ab24f4513e864658644536eb4d04168967ad462e53055222907bee3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa25cd76-4910-52c8-b837-c0841b90af55', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ffd1cd7-fffd-5de8-a2a6-6ed348ec6538', 1), '50d0a3425ab24f4513e864658644536eb4d04168967ad462e53055222907bee3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008.mp3', 1097, '2026-09-14 11:00:42.131465', '5c6696100db4086a2c78c15a0b121bf2ce331000607b89cebf8bf219ae24f1ca', 'validated', '{"audio_key":"2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008","entity_key":"lx_services_et_demarches_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5c6696100db4086a2c78c15a0b121bf2ce331000607b89cebf8bf219ae24f1ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_services_et_demarches_03 -> audio/generated/fr-FR/lexical/2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56cabeed-8dac-54e4-995b-0b80570fcd75', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_services_et_demarches_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50d0a3425ab24f4513e864658644536eb4d04168967ad462e53055222907bee3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4665efee-b588-561d-b802-b41e2d85ede5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56cabeed-8dac-54e4-995b-0b80570fcd75', 1), '50d0a3425ab24f4513e864658644536eb4d04168967ad462e53055222907bee3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008.mp3', 1097, '2026-09-14 11:00:42.131465', '5c6696100db4086a2c78c15a0b121bf2ce331000607b89cebf8bf219ae24f1ca', 'validated', '{"audio_key":"2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008","entity_key":"wf_services_et_demarches_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5c6696100db4086a2c78c15a0b121bf2ce331000607b89cebf8bf219ae24f1ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2956e5e4c3de0751ec7f12f2024a31aff66a5b21589c3a6f154ab9be2af49008.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sante_et_bien_etre_06 -> audio/generated/fr-FR/lexical/2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b8c05544-c2a6-507e-8d4d-dc3aac814eb7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sante_et_bien_etre_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '695c3a1c717eb3a0889a3202cecfde29eb7365b04a87ab21767f52ba3711879f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80a8b10d-ca72-5503-a8c7-5369b63d5739', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b8c05544-c2a6-507e-8d4d-dc3aac814eb7', 1), '695c3a1c717eb3a0889a3202cecfde29eb7365b04a87ab21767f52ba3711879f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98.mp3', 1097, '2026-09-14 11:00:42.167965', 'cbb91300c1056464b7d0682b68d4501e7b9a3ad4c52168e690d570910cd3bbbf', 'validated', '{"audio_key":"2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98","entity_key":"lx_sante_et_bien_etre_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cbb91300c1056464b7d0682b68d4501e7b9a3ad4c52168e690d570910cd3bbbf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sante_et_bien_etre_06 -> audio/generated/fr-FR/lexical/2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('177e9806-a374-59b1-91cb-9ad6e289c3d5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sante_et_bien_etre_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '695c3a1c717eb3a0889a3202cecfde29eb7365b04a87ab21767f52ba3711879f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('661ac78f-1144-5454-829b-a3620d054358', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('177e9806-a374-59b1-91cb-9ad6e289c3d5', 1), '695c3a1c717eb3a0889a3202cecfde29eb7365b04a87ab21767f52ba3711879f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98.mp3', 1097, '2026-09-14 11:00:42.167965', 'cbb91300c1056464b7d0682b68d4501e7b9a3ad4c52168e690d570910cd3bbbf', 'validated', '{"audio_key":"2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98","entity_key":"wf_sante_et_bien_etre_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cbb91300c1056464b7d0682b68d4501e7b9a3ad4c52168e690d570910cd3bbbf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2d806390b855994e5ffd41e290d5304f1f9c2ecdb08e85960f3a6a01d98bfe98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_capstone_decisions_02 -> audio/generated/fr-FR/lexical/310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5acec767-225d-5233-931a-cc0aa7aca298', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_capstone_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0a5254e5abb284e3c34eb0d4970636e82e66219a52c0576139742cffaf963cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4830ea9a-d373-52d5-a9f3-9f4bbb8571f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5acec767-225d-5233-931a-cc0aa7aca298', 1), 'e0a5254e5abb284e3c34eb0d4970636e82e66219a52c0576139742cffaf963cf',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2.mp3', 1071, '2026-09-14 11:00:43.123329', '7533a384104de055bd7fcc2e3dbb805fa8bb44182d10f9431f70b70998e5dc62', 'validated', '{"audio_key":"310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2","entity_key":"lx_b1_capstone_decisions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7533a384104de055bd7fcc2e3dbb805fa8bb44182d10f9431f70b70998e5dc62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_capstone_decisions_02 -> audio/generated/fr-FR/lexical/310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7473dd2d-59ac-5c0a-a7c1-45c85d4793af', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_capstone_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0a5254e5abb284e3c34eb0d4970636e82e66219a52c0576139742cffaf963cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93060574-c312-55a3-aed6-eb5d775531e1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7473dd2d-59ac-5c0a-a7c1-45c85d4793af', 1), 'e0a5254e5abb284e3c34eb0d4970636e82e66219a52c0576139742cffaf963cf',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2.mp3', 1071, '2026-09-14 11:00:43.123329', '7533a384104de055bd7fcc2e3dbb805fa8bb44182d10f9431f70b70998e5dc62', 'validated', '{"audio_key":"310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2","entity_key":"wf_b1_capstone_decisions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7533a384104de055bd7fcc2e3dbb805fa8bb44182d10f9431f70b70998e5dc62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/310567558b6bbe49e198e111d7546d769bb71f6169ec36f019f15898a28c4bb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projets_et_avenir_02 -> audio/generated/fr-FR/lexical/41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc69b977-fdd6-5304-89e4-e9cf7c2d5485', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projets_et_avenir_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af51f84571f301f25a73723b640ddd9c0fd796e4a3d69b7dd7025f7776ce39ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1b8d0f1-6d04-543e-acd5-fe072ebb9e19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc69b977-fdd6-5304-89e4-e9cf7c2d5485', 1), 'af51f84571f301f25a73723b640ddd9c0fd796e4a3d69b7dd7025f7776ce39ec',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae.mp3', 1097, '2026-09-14 11:00:43.217471', 'b3eda5e4340a6e904a2a34a721a215300fbb6176727614da3421ea420547fa60', 'validated', '{"audio_key":"41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae","entity_key":"lx_projets_et_avenir_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3eda5e4340a6e904a2a34a721a215300fbb6176727614da3421ea420547fa60","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projets_et_avenir_02 -> audio/generated/fr-FR/lexical/41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b8c8609c-94ad-5b64-b228-46da7b84d480', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projets_et_avenir_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af51f84571f301f25a73723b640ddd9c0fd796e4a3d69b7dd7025f7776ce39ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81d08521-7645-5cc9-9024-e590356d77b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b8c8609c-94ad-5b64-b228-46da7b84d480', 1), 'af51f84571f301f25a73723b640ddd9c0fd796e4a3d69b7dd7025f7776ce39ec',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae.mp3', 1097, '2026-09-14 11:00:43.217471', 'b3eda5e4340a6e904a2a34a721a215300fbb6176727614da3421ea420547fa60', 'validated', '{"audio_key":"41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae","entity_key":"wf_projets_et_avenir_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3eda5e4340a6e904a2a34a721a215300fbb6176727614da3421ea420547fa60","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/41d4b0404d1e5b3f573898ac0802bac8abd32fbf679519e88d5ea14fe8e636ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_souvenirs_et_recits_01 -> audio/generated/fr-FR/lexical/429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('841b9974-fd31-51e2-a0a3-84b2f9818260', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_souvenirs_et_recits_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15dacf6574831a1792937d7dc78d5b4b0e69d0868a62ab72f0cc1c7dad0facfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1f40cd5-a841-5bb4-928e-c9b0f64df3fa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('841b9974-fd31-51e2-a0a3-84b2f9818260', 1), '15dacf6574831a1792937d7dc78d5b4b0e69d0868a62ab72f0cc1c7dad0facfe',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1.mp3', 966, '2026-09-14 11:00:44.089991', '2de329d94b947604af66f6ab546756c7ef9d12e9b85646eeebf675f4bedb7f5f', 'validated', '{"audio_key":"429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1","entity_key":"lx_souvenirs_et_recits_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2de329d94b947604af66f6ab546756c7ef9d12e9b85646eeebf675f4bedb7f5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_souvenirs_et_recits_01 -> audio/generated/fr-FR/lexical/429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6624e5e6-7a86-52ea-b3f0-4a0b689c4942', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_souvenirs_et_recits_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15dacf6574831a1792937d7dc78d5b4b0e69d0868a62ab72f0cc1c7dad0facfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a72af3c-4932-5ce9-854d-44a84e32e086', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6624e5e6-7a86-52ea-b3f0-4a0b689c4942', 1), '15dacf6574831a1792937d7dc78d5b4b0e69d0868a62ab72f0cc1c7dad0facfe',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1.mp3', 966, '2026-09-14 11:00:44.089991', '2de329d94b947604af66f6ab546756c7ef9d12e9b85646eeebf675f4bedb7f5f', 'validated', '{"audio_key":"429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1","entity_key":"wf_souvenirs_et_recits_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2de329d94b947604af66f6ab546756c7ef9d12e9b85646eeebf675f4bedb7f5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/429c08cb9944e5f9b849226280afdf816fde55a28a1bba2a32f6bc584aed0ed1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_voyages_et_imprevus_05 -> audio/generated/fr-FR/lexical/4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('365259f0-02e4-548f-8401-ad4fcb9199df', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_voyages_et_imprevus_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef76f00a6f28f018b72f8ec1a0a17858d727967664a1b15c67bd0f9195d1731'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6245c156-367a-580c-8920-d878739f7291', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('365259f0-02e4-548f-8401-ad4fcb9199df', 1), '7ef76f00a6f28f018b72f8ec1a0a17858d727967664a1b15c67bd0f9195d1731',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60.mp3', 1097, '2026-09-14 11:00:44.217391', '0dc8b61eda0a23b8c98932c1577425148e9afdd2c7b0d1976c7e5b236c6f9631', 'validated', '{"audio_key":"4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60","entity_key":"lx_voyages_et_imprevus_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0dc8b61eda0a23b8c98932c1577425148e9afdd2c7b0d1976c7e5b236c6f9631","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_voyages_et_imprevus_05 -> audio/generated/fr-FR/lexical/4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf704477-6b55-5b66-928c-d44bed0ba836', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_voyages_et_imprevus_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef76f00a6f28f018b72f8ec1a0a17858d727967664a1b15c67bd0f9195d1731'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19e003d6-a235-566f-8a80-72bba6b0989f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf704477-6b55-5b66-928c-d44bed0ba836', 1), '7ef76f00a6f28f018b72f8ec1a0a17858d727967664a1b15c67bd0f9195d1731',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60.mp3', 1097, '2026-09-14 11:00:44.217391', '0dc8b61eda0a23b8c98932c1577425148e9afdd2c7b0d1976c7e5b236c6f9631', 'validated', '{"audio_key":"4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60","entity_key":"wf_voyages_et_imprevus_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0dc8b61eda0a23b8c98932c1577425148e9afdd2c7b0d1976c7e5b236c6f9631","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4b06fea683d8493f415fa8b1fb68c6528abddece2e741292d6a6fb4a1bb49f60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projets_et_avenir_06 -> audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af71a3ab-33ba-5346-bf79-86593e7addc1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projets_et_avenir_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9233e44-1e19-5ee7-977a-46f3329c1365', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af71a3ab-33ba-5346-bf79-86593e7addc1', 1), 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3', 1071, '2026-09-14 10:38:55.390197', '32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1', 'validated', '{"audio_key":"54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47","entity_key":"lx_projets_et_avenir_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projets_et_avenir_06 -> audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c6425444-3241-51d1-b23d-0f27d649d5e4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projets_et_avenir_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('230f91f5-edac-54d0-92ed-fd2664f018e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c6425444-3241-51d1-b23d-0f27d649d5e4', 1), 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3', 1071, '2026-09-14 10:38:55.390197', '32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1', 'validated', '{"audio_key":"54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47","entity_key":"wf_projets_et_avenir_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_voyages_et_imprevus_03 -> audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b49dbea-c75c-5ae1-ad8e-e56271fae386', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_voyages_et_imprevus_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68faa1b8-53f1-5b83-aefc-7932aefac7c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b49dbea-c75c-5ae1-ad8e-e56271fae386', 1), '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3', 914, '2026-09-14 10:38:56.029997', 'd3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5', 'validated', '{"audio_key":"58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a","entity_key":"lx_voyages_et_imprevus_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_voyages_et_imprevus_03 -> audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2bc9b51f-feda-5d2d-a200-772647f3805b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_voyages_et_imprevus_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('056b5e8f-f96b-51e3-bde1-a9227a469db4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2bc9b51f-feda-5d2d-a200-772647f3805b', 1), '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3', 914, '2026-09-14 10:38:56.029997', 'd3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5', 'validated', '{"audio_key":"58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a","entity_key":"wf_voyages_et_imprevus_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_capstone_decisions_06 -> audio/generated/fr-FR/lexical/59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fea5ca14-0497-594a-9e68-87735c6fe08b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_capstone_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fefb8496189a8b085e2fb3851de15b53d2dd8eea3bee63e19b06c4bcca83e5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6223ca72-b7f2-5994-a1e5-2fbe200ef3d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fea5ca14-0497-594a-9e68-87735c6fe08b', 1), '2fefb8496189a8b085e2fb3851de15b53d2dd8eea3bee63e19b06c4bcca83e5a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86.mp3', 1097, '2026-09-14 11:00:45.097812', '282db37d17d8477a6dd0534d4f7f208ceedd1830a0142b36f39a81d7c1f01dc9', 'validated', '{"audio_key":"59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86","entity_key":"lx_b1_capstone_decisions_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"282db37d17d8477a6dd0534d4f7f208ceedd1830a0142b36f39a81d7c1f01dc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_capstone_decisions_06 -> audio/generated/fr-FR/lexical/59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1ec32e7-d84d-5318-9164-def0ea287685', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_capstone_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fefb8496189a8b085e2fb3851de15b53d2dd8eea3bee63e19b06c4bcca83e5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f310411-bb1f-5f5a-b91f-9b95aea0b16e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1ec32e7-d84d-5318-9164-def0ea287685', 1), '2fefb8496189a8b085e2fb3851de15b53d2dd8eea3bee63e19b06c4bcca83e5a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86.mp3', 1097, '2026-09-14 11:00:45.097812', '282db37d17d8477a6dd0534d4f7f208ceedd1830a0142b36f39a81d7c1f01dc9', 'validated', '{"audio_key":"59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86","entity_key":"wf_b1_capstone_decisions_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"282db37d17d8477a6dd0534d4f7f208ceedd1830a0142b36f39a81d7c1f01dc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/59176805829bfe50057c69eab41eb274cd6a0032140d815034980d46b57a6e86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_services_et_demarches_05 -> audio/generated/fr-FR/lexical/6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e1eddb06-55e0-5b32-a585-11f0df028aec', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_services_et_demarches_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9caed7a84a9c6d19b54ab663bc7105e9d91178c281e0f188c57adaa8855832ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f914a767-6b99-56e9-b189-1848a745743e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e1eddb06-55e0-5b32-a585-11f0df028aec', 1), '9caed7a84a9c6d19b54ab663bc7105e9d91178c281e0f188c57adaa8855832ae',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd.mp3', 1018, '2026-09-14 11:00:45.193965', '2fbe77958aad2894a21db657fb4e39f69ebd3b69bcff0db38afed9ec37fe4e95', 'validated', '{"audio_key":"6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd","entity_key":"lx_services_et_demarches_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2fbe77958aad2894a21db657fb4e39f69ebd3b69bcff0db38afed9ec37fe4e95","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_services_et_demarches_05 -> audio/generated/fr-FR/lexical/6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b861c855-bd81-5299-8aa5-5152cd949e82', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_services_et_demarches_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9caed7a84a9c6d19b54ab663bc7105e9d91178c281e0f188c57adaa8855832ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43a83c6e-1f57-55a8-8749-f9ccb9b79dfc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b861c855-bd81-5299-8aa5-5152cd949e82', 1), '9caed7a84a9c6d19b54ab663bc7105e9d91178c281e0f188c57adaa8855832ae',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd.mp3', 1018, '2026-09-14 11:00:45.193965', '2fbe77958aad2894a21db657fb4e39f69ebd3b69bcff0db38afed9ec37fe4e95', 'validated', '{"audio_key":"6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd","entity_key":"wf_services_et_demarches_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2fbe77958aad2894a21db657fb4e39f69ebd3b69bcff0db38afed9ec37fe4e95","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6039253b5c3388d11bca08b86b5c23fe015fd2687f988a1529cebf1485ae6cdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projets_et_avenir_03 -> audio/generated/fr-FR/lexical/60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('726097c2-6e70-55aa-b62d-428dee8021f3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projets_et_avenir_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '147b00b4626505b0225edef6505d91002321785d2118542da1a6f9a2a4280f6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e596db9-cdd7-5f8b-9054-7d596a12ad87', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('726097c2-6e70-55aa-b62d-428dee8021f3', 1), '147b00b4626505b0225edef6505d91002321785d2118542da1a6f9a2a4280f6b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b.mp3', 1149, '2026-09-14 11:00:46.092102', '249bfca6c760e1ae60ce5d1b8f59cd0c25887582c0fedfb7ae1ee6397be80ada', 'validated', '{"audio_key":"60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b","entity_key":"lx_projets_et_avenir_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"249bfca6c760e1ae60ce5d1b8f59cd0c25887582c0fedfb7ae1ee6397be80ada","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projets_et_avenir_03 -> audio/generated/fr-FR/lexical/60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dee676f6-9aa6-5ed8-b61c-3507275082bc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projets_et_avenir_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '147b00b4626505b0225edef6505d91002321785d2118542da1a6f9a2a4280f6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4c39059-d00a-5f6f-b28f-9796945cd51c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dee676f6-9aa6-5ed8-b61c-3507275082bc', 1), '147b00b4626505b0225edef6505d91002321785d2118542da1a6f9a2a4280f6b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b.mp3', 1149, '2026-09-14 11:00:46.092102', '249bfca6c760e1ae60ce5d1b8f59cd0c25887582c0fedfb7ae1ee6397be80ada', 'validated', '{"audio_key":"60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b","entity_key":"wf_projets_et_avenir_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"249bfca6c760e1ae60ce5d1b8f59cd0c25887582c0fedfb7ae1ee6397be80ada","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/60c83722f3197ecb8fe0caf79ccc273396aa88c4d8390a78d8dcead807f9ac0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sante_et_bien_etre_01 -> audio/generated/fr-FR/lexical/63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('53b4fd2d-7ff0-5e86-917a-b0ea3deaa27b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sante_et_bien_etre_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4064e6a9a434b058fcae69eb01a5374e91705380e2f4b9fd940120c6696fc050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69479fdd-3013-580f-99b8-46dbcf3389f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('53b4fd2d-7ff0-5e86-917a-b0ea3deaa27b', 1), '4064e6a9a434b058fcae69eb01a5374e91705380e2f4b9fd940120c6696fc050',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262.mp3', 1071, '2026-09-14 11:00:46.289673', '1cd8900d6106b10dd816f8ca741fc73893e7bf95b10dd5740d28fcf63b6dc248', 'validated', '{"audio_key":"63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262","entity_key":"lx_sante_et_bien_etre_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cd8900d6106b10dd816f8ca741fc73893e7bf95b10dd5740d28fcf63b6dc248","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sante_et_bien_etre_01 -> audio/generated/fr-FR/lexical/63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('997d8edd-1d6d-523c-99b6-0cdf5560b4a8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sante_et_bien_etre_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4064e6a9a434b058fcae69eb01a5374e91705380e2f4b9fd940120c6696fc050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84b17237-ca3e-577e-a060-0a857ab65e33', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('997d8edd-1d6d-523c-99b6-0cdf5560b4a8', 1), '4064e6a9a434b058fcae69eb01a5374e91705380e2f4b9fd940120c6696fc050',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262.mp3', 1071, '2026-09-14 11:00:46.289673', '1cd8900d6106b10dd816f8ca741fc73893e7bf95b10dd5740d28fcf63b6dc248', 'validated', '{"audio_key":"63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262","entity_key":"wf_sante_et_bien_etre_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cd8900d6106b10dd816f8ca741fc73893e7bf95b10dd5740d28fcf63b6dc248","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/63eac5983dd5239af62540a5a47a5b40e7000c30b7502d19f3a54bc30b91e262.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travail_et_organisation_05 -> audio/generated/fr-FR/lexical/6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2a5c1dc3-04a7-5545-b06e-2eba1fe8653c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travail_et_organisation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b63463ab5a4b51d1cd55a4b7fed161544ecb92a332be8449b4860cb2768f194'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b45ace8-25ea-57ef-9977-76797d75bc2a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2a5c1dc3-04a7-5545-b06e-2eba1fe8653c', 1), '6b63463ab5a4b51d1cd55a4b7fed161544ecb92a332be8449b4860cb2768f194',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348.mp3', 1018, '2026-09-14 11:00:47.090554', 'c1a30b46ebe8cb69192947464feccf5ddcd60107d5eb830e6818fe84d43f7b21', 'validated', '{"audio_key":"6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348","entity_key":"lx_travail_et_organisation_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1a30b46ebe8cb69192947464feccf5ddcd60107d5eb830e6818fe84d43f7b21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travail_et_organisation_05 -> audio/generated/fr-FR/lexical/6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ae3262a-62bf-5a2b-8886-41bbddcb13fb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travail_et_organisation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b63463ab5a4b51d1cd55a4b7fed161544ecb92a332be8449b4860cb2768f194'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a19f1ef-5c9e-5036-8c69-f9ed9da0746c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ae3262a-62bf-5a2b-8886-41bbddcb13fb', 1), '6b63463ab5a4b51d1cd55a4b7fed161544ecb92a332be8449b4860cb2768f194',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348.mp3', 1018, '2026-09-14 11:00:47.090554', 'c1a30b46ebe8cb69192947464feccf5ddcd60107d5eb830e6818fe84d43f7b21', 'validated', '{"audio_key":"6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348","entity_key":"wf_travail_et_organisation_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1a30b46ebe8cb69192947464feccf5ddcd60107d5eb830e6818fe84d43f7b21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6e851090bc92d3c422cd558f7b6f556045780b9c9fe94c966b8d98232f8ad348.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_voyages_et_imprevus_02 -> audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddaa47c9-ccb8-58df-b90a-cc0b87d1b56a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_voyages_et_imprevus_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8884a7f-2b27-580c-ab3b-3264e5d8d71e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddaa47c9-ccb8-58df-b90a-cc0b87d1b56a', 1), '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3', 1018, '2026-09-14 10:38:58.825022', '24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201', 'validated', '{"audio_key":"6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e","entity_key":"lx_voyages_et_imprevus_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_voyages_et_imprevus_02 -> audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abb7cd6c-2685-5266-9cc0-1bc924143e5a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_voyages_et_imprevus_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bde95532-8a97-5a12-887c-d3d9136e57d1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abb7cd6c-2685-5266-9cc0-1bc924143e5a', 1), '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3', 1018, '2026-09-14 10:38:58.825022', '24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201', 'validated', '{"audio_key":"6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e","entity_key":"wf_voyages_et_imprevus_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projets_et_avenir_01 -> audio/generated/fr-FR/lexical/6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cae9833b-9e6d-5078-bc0e-8beb7c7d9c06', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projets_et_avenir_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aeb9242ae15486171491c912c19cef97d55285b42403b145e828933010a10742'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf05dce4-65de-5ce3-8478-8f963c58d89b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cae9833b-9e6d-5078-bc0e-8beb7c7d9c06', 1), 'aeb9242ae15486171491c912c19cef97d55285b42403b145e828933010a10742',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867.mp3', 1071, '2026-09-14 11:00:47.270939', 'b8174be198403d97f6e0c3a511f7a4ee2689dbab7508a34a3bec4abf02a7d4a5', 'validated', '{"audio_key":"6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867","entity_key":"lx_projets_et_avenir_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8174be198403d97f6e0c3a511f7a4ee2689dbab7508a34a3bec4abf02a7d4a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projets_et_avenir_01 -> audio/generated/fr-FR/lexical/6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ef420bc7-27d5-5caa-bc03-23100403b250', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projets_et_avenir_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aeb9242ae15486171491c912c19cef97d55285b42403b145e828933010a10742'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba578856-3f98-57ca-ba4e-316bcc543f6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ef420bc7-27d5-5caa-bc03-23100403b250', 1), 'aeb9242ae15486171491c912c19cef97d55285b42403b145e828933010a10742',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867.mp3', 1071, '2026-09-14 11:00:47.270939', 'b8174be198403d97f6e0c3a511f7a4ee2689dbab7508a34a3bec4abf02a7d4a5', 'validated', '{"audio_key":"6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867","entity_key":"wf_projets_et_avenir_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8174be198403d97f6e0c3a511f7a4ee2689dbab7508a34a3bec4abf02a7d4a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6f26b3bbe40560f2a012ab028ecb20f193afed38f49efb9553bad11123f98867.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relations_et_conseils_03 -> audio/generated/fr-FR/lexical/7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('067cfe4e-002e-5293-a865-aa70bd62808f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relations_et_conseils_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0ce1367e8c07ea0cd38821ae85e7d7d097571dbcdd2686c13c264297019ac49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('737be501-83c8-53d4-80aa-46a4eb5b7cb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('067cfe4e-002e-5293-a865-aa70bd62808f', 1), 'c0ce1367e8c07ea0cd38821ae85e7d7d097571dbcdd2686c13c264297019ac49',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8.mp3', 1018, '2026-09-14 11:00:48.106118', '2eddfe92fbe8a51423436e8cb52ea226e42150b0a627fafc50ba7b88ad1feb23', 'validated', '{"audio_key":"7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8","entity_key":"lx_relations_et_conseils_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2eddfe92fbe8a51423436e8cb52ea226e42150b0a627fafc50ba7b88ad1feb23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relations_et_conseils_03 -> audio/generated/fr-FR/lexical/7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0a4fdb0-e82a-512d-847e-e5ff24f5b332', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relations_et_conseils_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0ce1367e8c07ea0cd38821ae85e7d7d097571dbcdd2686c13c264297019ac49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0018fb27-1e73-50d3-a3db-df94bd6bd01d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0a4fdb0-e82a-512d-847e-e5ff24f5b332', 1), 'c0ce1367e8c07ea0cd38821ae85e7d7d097571dbcdd2686c13c264297019ac49',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8.mp3', 1018, '2026-09-14 11:00:48.106118', '2eddfe92fbe8a51423436e8cb52ea226e42150b0a627fafc50ba7b88ad1feb23', 'validated', '{"audio_key":"7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8","entity_key":"wf_relations_et_conseils_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2eddfe92fbe8a51423436e8cb52ea226e42150b0a627fafc50ba7b88ad1feb23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7d3407a5484667a6b07e6f7bd96650ade585892ff824507897a6639aa1d322c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_voyages_et_imprevus_04 -> audio/generated/fr-FR/lexical/7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('76d86f15-1784-5b9c-87a6-cc8bbd262ac2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_voyages_et_imprevus_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bb7b58b496dcaa6b9708b7ee20ff2425a6e3b80df551a267f2df1fa8ab0f428'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54bfb7f4-7077-5a10-a236-21e8cdf2b07d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('76d86f15-1784-5b9c-87a6-cc8bbd262ac2', 1), '7bb7b58b496dcaa6b9708b7ee20ff2425a6e3b80df551a267f2df1fa8ab0f428',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab.mp3', 1253, '2026-09-14 11:00:48.282073', '3336101a2303df0d6c92b6edd9980accd64d8b0be22cef756e7e4351503c6978', 'validated', '{"audio_key":"7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab","entity_key":"lx_voyages_et_imprevus_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3336101a2303df0d6c92b6edd9980accd64d8b0be22cef756e7e4351503c6978","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_voyages_et_imprevus_04 -> audio/generated/fr-FR/lexical/7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('612c4848-0c73-51d3-86e2-0bd051d715c4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_voyages_et_imprevus_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bb7b58b496dcaa6b9708b7ee20ff2425a6e3b80df551a267f2df1fa8ab0f428'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c26659be-79e8-5295-a0bd-4d2d92ed9161', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('612c4848-0c73-51d3-86e2-0bd051d715c4', 1), '7bb7b58b496dcaa6b9708b7ee20ff2425a6e3b80df551a267f2df1fa8ab0f428',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab.mp3', 1253, '2026-09-14 11:00:48.282073', '3336101a2303df0d6c92b6edd9980accd64d8b0be22cef756e7e4351503c6978', 'validated', '{"audio_key":"7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab","entity_key":"wf_voyages_et_imprevus_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3336101a2303df0d6c92b6edd9980accd64d8b0be22cef756e7e4351503c6978","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7d4051ae1f92294aa0edc947d0ca896ffa79b3175fc0516348c78c0f81c3acab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_capstone_decisions_04 -> audio/generated/fr-FR/lexical/7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d70f1809-5c7c-5f94-a6fd-baea478c64b4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_capstone_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '705467558e9b055c379b57406315544deacc785c63539da61c64160cd5397161'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cd197ac-de9c-5493-b12a-a4ce49177506', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d70f1809-5c7c-5f94-a6fd-baea478c64b4', 1), '705467558e9b055c379b57406315544deacc785c63539da61c64160cd5397161',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc.mp3', 1071, '2026-09-14 11:00:49.075562', 'f1dd6f746f0622ef543f13b7dfa58ea8a9740859f310ac41c34f94533a3f679c', 'validated', '{"audio_key":"7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc","entity_key":"lx_b1_capstone_decisions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1dd6f746f0622ef543f13b7dfa58ea8a9740859f310ac41c34f94533a3f679c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_capstone_decisions_04 -> audio/generated/fr-FR/lexical/7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('79420783-a31f-5246-a413-2a4a8c4f95ff', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_capstone_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '705467558e9b055c379b57406315544deacc785c63539da61c64160cd5397161'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b070b4e-5bcd-5ee5-8f73-8496707b1781', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('79420783-a31f-5246-a413-2a4a8c4f95ff', 1), '705467558e9b055c379b57406315544deacc785c63539da61c64160cd5397161',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc.mp3', 1071, '2026-09-14 11:00:49.075562', 'f1dd6f746f0622ef543f13b7dfa58ea8a9740859f310ac41c34f94533a3f679c', 'validated', '{"audio_key":"7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc","entity_key":"wf_b1_capstone_decisions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1dd6f746f0622ef543f13b7dfa58ea8a9740859f310ac41c34f94533a3f679c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7fb31406b35a09ad96c197ed2259d394d86f36609ec3b16e490ee22e239381bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sante_et_bien_etre_04 -> audio/generated/fr-FR/lexical/836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08b0eee8-3587-520b-8fa5-fd7a98d80d6c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sante_et_bien_etre_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35969fac6f6c7dc3722aace3ec14d0bd93923d9ddc0d49ab10864d81055ed01f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aac24608-aa1c-586c-81e9-4b1ba71356b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08b0eee8-3587-520b-8fa5-fd7a98d80d6c', 1), '35969fac6f6c7dc3722aace3ec14d0bd93923d9ddc0d49ab10864d81055ed01f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1.mp3', 1071, '2026-09-14 11:00:49.266797', 'f61f5fd611023646d4bb8d2a0c972bc2c498dea54773c3463e665258bcddfd9d', 'validated', '{"audio_key":"836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1","entity_key":"lx_sante_et_bien_etre_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f61f5fd611023646d4bb8d2a0c972bc2c498dea54773c3463e665258bcddfd9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sante_et_bien_etre_04 -> audio/generated/fr-FR/lexical/836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('113c159e-369a-566d-9af5-1d12311bfd80', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sante_et_bien_etre_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35969fac6f6c7dc3722aace3ec14d0bd93923d9ddc0d49ab10864d81055ed01f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('facae864-6162-5559-9947-b836037dbc75', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('113c159e-369a-566d-9af5-1d12311bfd80', 1), '35969fac6f6c7dc3722aace3ec14d0bd93923d9ddc0d49ab10864d81055ed01f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1.mp3', 1071, '2026-09-14 11:00:49.266797', 'f61f5fd611023646d4bb8d2a0c972bc2c498dea54773c3463e665258bcddfd9d', 'validated', '{"audio_key":"836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1","entity_key":"wf_sante_et_bien_etre_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f61f5fd611023646d4bb8d2a0c972bc2c498dea54773c3463e665258bcddfd9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/836b175ed061d599f4fd65a08ea803c2f24264445d59511531d1b5582546edb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_souvenirs_et_recits_02 -> audio/generated/fr-FR/lexical/874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('056ddc18-ee5f-5e84-828a-13eea4013f4d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_souvenirs_et_recits_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82889cc7292c6a7dd9badd76ea8dfd66053140366ad6dcfaace3379fd0f067c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3b0634c-f367-56ca-a9f6-f82d7b295e2e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('056ddc18-ee5f-5e84-828a-13eea4013f4d', 1), '82889cc7292c6a7dd9badd76ea8dfd66053140366ad6dcfaace3379fd0f067c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228.mp3', 1071, '2026-09-14 11:00:50.078940', '9d50bd229f2654aab97ed2cc548f30dc9e460364bf1a5091e3cbd0062166dc3b', 'validated', '{"audio_key":"874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228","entity_key":"lx_souvenirs_et_recits_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d50bd229f2654aab97ed2cc548f30dc9e460364bf1a5091e3cbd0062166dc3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_souvenirs_et_recits_02 -> audio/generated/fr-FR/lexical/874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('88beb38a-0ab4-57d5-bf5c-993dcdc45085', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_souvenirs_et_recits_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82889cc7292c6a7dd9badd76ea8dfd66053140366ad6dcfaace3379fd0f067c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a1102b3-f64e-5166-a4f6-4a360dfb87ef', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('88beb38a-0ab4-57d5-bf5c-993dcdc45085', 1), '82889cc7292c6a7dd9badd76ea8dfd66053140366ad6dcfaace3379fd0f067c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228.mp3', 1071, '2026-09-14 11:00:50.078940', '9d50bd229f2654aab97ed2cc548f30dc9e460364bf1a5091e3cbd0062166dc3b', 'validated', '{"audio_key":"874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228","entity_key":"wf_souvenirs_et_recits_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d50bd229f2654aab97ed2cc548f30dc9e460364bf1a5091e3cbd0062166dc3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/874c01891eea8285ca33048dfac867285b5abaf069c8249c4db0b5f6a90f5228.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_voyages_et_imprevus_01 -> audio/generated/fr-FR/lexical/8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54dca4e4-8c02-5b3c-9ab0-bd01d1e37d23', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_voyages_et_imprevus_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60a743a7381aed7dc0c463975b0aa8dc895ea1441c24e8fa0cf689179691158b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3643a6fa-6458-5bff-ada7-bd66d0da69a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54dca4e4-8c02-5b3c-9ab0-bd01d1e37d23', 1), '60a743a7381aed7dc0c463975b0aa8dc895ea1441c24e8fa0cf689179691158b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095.mp3', 1071, '2026-09-14 11:00:50.260954', '44be485f79813ab3c87fec9eb65d96ad6bd88ad0580e4e5819b7bbacdf4f42bc', 'validated', '{"audio_key":"8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095","entity_key":"lx_voyages_et_imprevus_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"44be485f79813ab3c87fec9eb65d96ad6bd88ad0580e4e5819b7bbacdf4f42bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_voyages_et_imprevus_01 -> audio/generated/fr-FR/lexical/8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ddd9cee-119e-57a4-8ac5-9207333e8f09', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_voyages_et_imprevus_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60a743a7381aed7dc0c463975b0aa8dc895ea1441c24e8fa0cf689179691158b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('991668ef-09c1-5490-83a1-e8257d1d1bcc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ddd9cee-119e-57a4-8ac5-9207333e8f09', 1), '60a743a7381aed7dc0c463975b0aa8dc895ea1441c24e8fa0cf689179691158b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095.mp3', 1071, '2026-09-14 11:00:50.260954', '44be485f79813ab3c87fec9eb65d96ad6bd88ad0580e4e5819b7bbacdf4f42bc', 'validated', '{"audio_key":"8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095","entity_key":"wf_voyages_et_imprevus_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"44be485f79813ab3c87fec9eb65d96ad6bd88ad0580e4e5819b7bbacdf4f42bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/8815b83927b1e196fef78963fd77273e4c930f2e7477bed7db99df091cbe4095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_souvenirs_et_recits_03 -> audio/generated/fr-FR/lexical/95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36778259-2996-561c-ba4a-276fee9f1930', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_souvenirs_et_recits_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e94def9881fd3cb9e167e2a59484c24286d61bcac1881555a1f0c305f0fae24b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47fc6d7c-3951-557b-8210-bc580ea66334', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36778259-2996-561c-ba4a-276fee9f1930', 1), 'e94def9881fd3cb9e167e2a59484c24286d61bcac1881555a1f0c305f0fae24b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131.mp3', 1018, '2026-09-14 11:00:51.043166', 'a60067ac5ed26f61d9d4146ca2a7cd2d962add103810df9b3708bc20faaab585', 'validated', '{"audio_key":"95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131","entity_key":"lx_souvenirs_et_recits_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a60067ac5ed26f61d9d4146ca2a7cd2d962add103810df9b3708bc20faaab585","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_souvenirs_et_recits_03 -> audio/generated/fr-FR/lexical/95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa8f17fb-7097-5d25-a7e4-55e7037cd327', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_souvenirs_et_recits_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e94def9881fd3cb9e167e2a59484c24286d61bcac1881555a1f0c305f0fae24b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9602c4d3-f917-57b5-8fe3-477297cf4628', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa8f17fb-7097-5d25-a7e4-55e7037cd327', 1), 'e94def9881fd3cb9e167e2a59484c24286d61bcac1881555a1f0c305f0fae24b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131.mp3', 1018, '2026-09-14 11:00:51.043166', 'a60067ac5ed26f61d9d4146ca2a7cd2d962add103810df9b3708bc20faaab585', 'validated', '{"audio_key":"95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131","entity_key":"wf_souvenirs_et_recits_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a60067ac5ed26f61d9d4146ca2a7cd2d962add103810df9b3708bc20faaab585","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/95235581ed28699064c06edd7715984c42da171776376f7d1f353ce4d41ed131.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_logement_et_reclamations_04 -> audio/generated/fr-FR/lexical/99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d815783-c146-5f13-ba8a-8d3c5d748113', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_logement_et_reclamations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e0facd7a44462b2e39f88124a74b831ccdb9f01d77f5bf549c35995b182b26a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d2da790-1bfb-56f4-b058-af4dfcf8a99f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d815783-c146-5f13-ba8a-8d3c5d748113', 1), '6e0facd7a44462b2e39f88124a74b831ccdb9f01d77f5bf549c35995b182b26a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976.mp3', 1097, '2026-09-14 11:00:51.275452', '382c3e902090c0b5e00b3c445225f08d61598a804ca2233a838b156a1c38b33b', 'validated', '{"audio_key":"99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976","entity_key":"lx_logement_et_reclamations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"382c3e902090c0b5e00b3c445225f08d61598a804ca2233a838b156a1c38b33b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_logement_et_reclamations_04 -> audio/generated/fr-FR/lexical/99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('025bd6f1-3593-5cb9-a36d-cdf828db6fa8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_logement_et_reclamations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e0facd7a44462b2e39f88124a74b831ccdb9f01d77f5bf549c35995b182b26a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86ccbd24-962f-51f6-8ad9-015bfd05244c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('025bd6f1-3593-5cb9-a36d-cdf828db6fa8', 1), '6e0facd7a44462b2e39f88124a74b831ccdb9f01d77f5bf549c35995b182b26a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976.mp3', 1097, '2026-09-14 11:00:51.275452', '382c3e902090c0b5e00b3c445225f08d61598a804ca2233a838b156a1c38b33b', 'validated', '{"audio_key":"99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976","entity_key":"wf_logement_et_reclamations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"382c3e902090c0b5e00b3c445225f08d61598a804ca2233a838b156a1c38b33b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/99c2bdbb1af946f86a8314288e5ccdc196646528519d13846d85413cfe8bf976.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_voyages_et_imprevus_06 -> audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43b209c0-7fc5-5ca8-9fd4-ae3d67bea134', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_voyages_et_imprevus_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a512774e-9f3f-54e3-9a5e-d69222aac4e6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43b209c0-7fc5-5ca8-9fd4-ae3d67bea134', 1), '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3', 1071, '2026-09-14 10:39:03.530987', '7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83', 'validated', '{"audio_key":"9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a","entity_key":"lx_voyages_et_imprevus_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_voyages_et_imprevus_06 -> audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('60e7d8b9-e872-5fb0-a49a-e587a8f8fdf8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_voyages_et_imprevus_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('648d87c6-44d5-5550-808f-53493ff5f5b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('60e7d8b9-e872-5fb0-a49a-e587a8f8fdf8', 1), '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3', 1071, '2026-09-14 10:39:03.530987', '7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83', 'validated', '{"audio_key":"9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a","entity_key":"wf_voyages_et_imprevus_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_capstone_decisions_05 -> audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d6513d5-5222-5a18-bedf-56f0ba01fa38', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_capstone_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a291471-9193-52f4-8ba6-fe29425d9324', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d6513d5-5222-5a18-bedf-56f0ba01fa38', 1), '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3', 966, '2026-09-14 10:39:04.460836', '0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f', 'validated', '{"audio_key":"9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3","entity_key":"lx_b1_capstone_decisions_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_capstone_decisions_05 -> audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2d1acfeb-1da5-5a92-b7cd-0273c0445f86', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_capstone_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb6a819d-7a35-5f61-bc87-797a6b9ab737', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2d1acfeb-1da5-5a92-b7cd-0273c0445f86', 1), '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3', 966, '2026-09-14 10:39:04.460836', '0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f', 'validated', '{"audio_key":"9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3","entity_key":"wf_b1_capstone_decisions_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_capstone_decisions_01 -> audio/generated/fr-FR/lexical/9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8ce0feb3-0963-5481-96cc-66f01ce45c47', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_capstone_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6dc715f0ed3d74d7957ed1bb4dbeb3aed682996d6bda52826a0950cec9f76d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3030c189-a5d6-5d5c-b64c-7d6f6f4c1e37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8ce0feb3-0963-5481-96cc-66f01ce45c47', 1), 'c6dc715f0ed3d74d7957ed1bb4dbeb3aed682996d6bda52826a0950cec9f76d2',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9.mp3', 966, '2026-09-14 11:00:52.010065', 'e5169b100b7cb797509ccf502429184b47e28b92a51524e2972c4dab93d0725b', 'validated', '{"audio_key":"9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9","entity_key":"lx_b1_capstone_decisions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e5169b100b7cb797509ccf502429184b47e28b92a51524e2972c4dab93d0725b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_capstone_decisions_01 -> audio/generated/fr-FR/lexical/9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6a767ac-8699-58a9-87fd-aaefda866337', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_capstone_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6dc715f0ed3d74d7957ed1bb4dbeb3aed682996d6bda52826a0950cec9f76d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('921fd090-bac8-5227-b2f8-d08df069fae2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6a767ac-8699-58a9-87fd-aaefda866337', 1), 'c6dc715f0ed3d74d7957ed1bb4dbeb3aed682996d6bda52826a0950cec9f76d2',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9.mp3', 966, '2026-09-14 11:00:52.010065', 'e5169b100b7cb797509ccf502429184b47e28b92a51524e2972c4dab93d0725b', 'validated', '{"audio_key":"9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9","entity_key":"wf_b1_capstone_decisions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e5169b100b7cb797509ccf502429184b47e28b92a51524e2972c4dab93d0725b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9fa48bbc8af83357cfe66b4ff0ef279444a0a04de14f44064fbcc54a7def06b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_souvenirs_et_recits_04 -> audio/generated/fr-FR/lexical/aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6aa5f083-7d86-58e0-a2fb-b321152aab48', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_souvenirs_et_recits_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec93ba2b8253b84e29655c99b656fc108c8328d03054069910545f13fbe82508'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a69291d5-9dfb-5da4-add6-fd068c48190c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6aa5f083-7d86-58e0-a2fb-b321152aab48', 1), 'ec93ba2b8253b84e29655c99b656fc108c8328d03054069910545f13fbe82508',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f.mp3', 835, '2026-09-14 11:00:52.250343', '2bf6dec4920d4150e6249b730b2d84cbc72b2fd79a55e04ff9b9d76e88aef574', 'validated', '{"audio_key":"aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f","entity_key":"lx_souvenirs_et_recits_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2bf6dec4920d4150e6249b730b2d84cbc72b2fd79a55e04ff9b9d76e88aef574","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_souvenirs_et_recits_04 -> audio/generated/fr-FR/lexical/aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b2eda02-1219-57d6-bf69-d234d2a59af4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_souvenirs_et_recits_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec93ba2b8253b84e29655c99b656fc108c8328d03054069910545f13fbe82508'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54a369d3-91a7-5cf4-8b6b-6cc234065978', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b2eda02-1219-57d6-bf69-d234d2a59af4', 1), 'ec93ba2b8253b84e29655c99b656fc108c8328d03054069910545f13fbe82508',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f.mp3', 835, '2026-09-14 11:00:52.250343', '2bf6dec4920d4150e6249b730b2d84cbc72b2fd79a55e04ff9b9d76e88aef574', 'validated', '{"audio_key":"aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f","entity_key":"wf_souvenirs_et_recits_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2bf6dec4920d4150e6249b730b2d84cbc72b2fd79a55e04ff9b9d76e88aef574","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/aafecae1f185cfb95a256ca308aa998c31c2d38866e41ba662654ed0a3c5309f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_logement_et_reclamations_03 -> audio/generated/fr-FR/lexical/b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f53e4f2a-f773-5921-849b-90890cf6e505', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_logement_et_reclamations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b99ce225dabff47f276298878321a726b67a4d50f24c11980c9ba3b44b4268da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0ba1474-26ee-5066-9d1e-6a0f5b01453f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f53e4f2a-f773-5921-849b-90890cf6e505', 1), 'b99ce225dabff47f276298878321a726b67a4d50f24c11980c9ba3b44b4268da',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b.mp3', 1018, '2026-09-14 11:00:52.996585', 'e8d823e5f424e76d7260253a44e2acaebd9e21c0f7a527aaf338ba77491dc5f3', 'validated', '{"audio_key":"b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b","entity_key":"lx_logement_et_reclamations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e8d823e5f424e76d7260253a44e2acaebd9e21c0f7a527aaf338ba77491dc5f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_logement_et_reclamations_03 -> audio/generated/fr-FR/lexical/b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a5f6a447-bea8-5f85-b946-9ee696b369a9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_logement_et_reclamations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b99ce225dabff47f276298878321a726b67a4d50f24c11980c9ba3b44b4268da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58e7f0f7-b201-5ea2-9aea-ccdb364c4588', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a5f6a447-bea8-5f85-b946-9ee696b369a9', 1), 'b99ce225dabff47f276298878321a726b67a4d50f24c11980c9ba3b44b4268da',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b.mp3', 1018, '2026-09-14 11:00:52.996585', 'e8d823e5f424e76d7260253a44e2acaebd9e21c0f7a527aaf338ba77491dc5f3', 'validated', '{"audio_key":"b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b","entity_key":"wf_logement_et_reclamations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e8d823e5f424e76d7260253a44e2acaebd9e21c0f7a527aaf338ba77491dc5f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b56784239d5e1c4816f62fa7d1f6fa26e9b1c3349e622a7d059d6d00d8dc1b0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_logement_et_reclamations_06 -> audio/generated/fr-FR/lexical/b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55ed7d2e-9b52-5d61-a064-609ced3ac47d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_logement_et_reclamations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9d37c23fcc0f03c15a86aba71dce01dd0baa7a1568180e60c2347a5863151bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('471331bf-fc21-5529-a3c6-ee07e6b501c1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55ed7d2e-9b52-5d61-a064-609ced3ac47d', 1), 'f9d37c23fcc0f03c15a86aba71dce01dd0baa7a1568180e60c2347a5863151bc',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72.mp3', 862, '2026-09-14 11:00:53.258341', '7aaacd35e267c1cbcf9ec7a60caf19182387f300c43ab898385eee3a74c82744', 'validated', '{"audio_key":"b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72","entity_key":"lx_logement_et_reclamations_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aaacd35e267c1cbcf9ec7a60caf19182387f300c43ab898385eee3a74c82744","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_logement_et_reclamations_06 -> audio/generated/fr-FR/lexical/b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c282a21a-83ea-59cd-a02b-31bb1cfa9023', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_logement_et_reclamations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9d37c23fcc0f03c15a86aba71dce01dd0baa7a1568180e60c2347a5863151bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee524e85-cd7c-57aa-95c2-fdaef297afa0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c282a21a-83ea-59cd-a02b-31bb1cfa9023', 1), 'f9d37c23fcc0f03c15a86aba71dce01dd0baa7a1568180e60c2347a5863151bc',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72.mp3', 862, '2026-09-14 11:00:53.258341', '7aaacd35e267c1cbcf9ec7a60caf19182387f300c43ab898385eee3a74c82744', 'validated', '{"audio_key":"b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72","entity_key":"wf_logement_et_reclamations_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aaacd35e267c1cbcf9ec7a60caf19182387f300c43ab898385eee3a74c82744","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b840d13bce50c1fadb7b7ef87e6ab12ea1e716a9f96d11563454134fbc296b72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_capstone_decisions_03 -> audio/generated/fr-FR/lexical/ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8061ff1-61e6-59ca-a96a-054ab52b8ab2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_capstone_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2255b309f3fd42099b65f200481db91447d2fb9dd0a9573504b12eb3ff839ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bca16981-947c-579f-bd07-4ff36fb525eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8061ff1-61e6-59ca-a96a-054ab52b8ab2', 1), 'a2255b309f3fd42099b65f200481db91447d2fb9dd0a9573504b12eb3ff839ea',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db.mp3', 1018, '2026-09-14 11:00:53.977161', '64eba972b6ee44d78d8234df2a24fa79d9348809922af5da643ea4c26fd19686', 'validated', '{"audio_key":"ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db","entity_key":"lx_b1_capstone_decisions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64eba972b6ee44d78d8234df2a24fa79d9348809922af5da643ea4c26fd19686","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_capstone_decisions_03 -> audio/generated/fr-FR/lexical/ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dcf868b0-396b-5665-89ab-73e9378527c6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_capstone_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2255b309f3fd42099b65f200481db91447d2fb9dd0a9573504b12eb3ff839ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e5fb7d8-b409-5106-a432-0143f616c4c8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dcf868b0-396b-5665-89ab-73e9378527c6', 1), 'a2255b309f3fd42099b65f200481db91447d2fb9dd0a9573504b12eb3ff839ea',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db.mp3', 1018, '2026-09-14 11:00:53.977161', '64eba972b6ee44d78d8234df2a24fa79d9348809922af5da643ea4c26fd19686', 'validated', '{"audio_key":"ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db","entity_key":"wf_b1_capstone_decisions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64eba972b6ee44d78d8234df2a24fa79d9348809922af5da643ea4c26fd19686","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ba23719b943605007fde76446411aad3fc1c729c7d9d6b9b1c8b5b0c8627f0db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relations_et_conseils_01 -> audio/generated/fr-FR/lexical/bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db2dd2a7-0848-5916-91da-87841c0213ca', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relations_et_conseils_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c402ce64afcd85e6a86fa527b3837128821f2d5a1df86e1b8cb4259334991761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e15252f4-a4d4-5cf7-9a84-ff1c67c9d87a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db2dd2a7-0848-5916-91da-87841c0213ca', 1), 'c402ce64afcd85e6a86fa527b3837128821f2d5a1df86e1b8cb4259334991761',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36.mp3', 1071, '2026-09-14 11:00:54.271790', 'cb32651d685bbe9afcb58a1e11a4cf726f47fb22ed06228cbaf0e8186b39245f', 'validated', '{"audio_key":"bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36","entity_key":"lx_relations_et_conseils_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb32651d685bbe9afcb58a1e11a4cf726f47fb22ed06228cbaf0e8186b39245f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relations_et_conseils_01 -> audio/generated/fr-FR/lexical/bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a84657d4-a8a9-5af1-8b0a-6749533c6219', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relations_et_conseils_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c402ce64afcd85e6a86fa527b3837128821f2d5a1df86e1b8cb4259334991761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80201511-aa0f-58be-9267-909b6eccb445', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a84657d4-a8a9-5af1-8b0a-6749533c6219', 1), 'c402ce64afcd85e6a86fa527b3837128821f2d5a1df86e1b8cb4259334991761',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36.mp3', 1071, '2026-09-14 11:00:54.271790', 'cb32651d685bbe9afcb58a1e11a4cf726f47fb22ed06228cbaf0e8186b39245f', 'validated', '{"audio_key":"bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36","entity_key":"wf_relations_et_conseils_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb32651d685bbe9afcb58a1e11a4cf726f47fb22ed06228cbaf0e8186b39245f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bb711168fe05393a1128ac31545e338e0dd4f1d2577db86bed5f99611f4ada36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travail_et_organisation_02 -> audio/generated/fr-FR/lexical/bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f710be8-c18a-5131-a980-5f45bb843903', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travail_et_organisation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8caf821ef26c06970126a5f3c097da2cb9904122f7b27f9fe77207db30ceb4ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b76d4d4a-c0f5-50b0-bb62-d5b7c138d396', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f710be8-c18a-5131-a980-5f45bb843903', 1), '8caf821ef26c06970126a5f3c097da2cb9904122f7b27f9fe77207db30ceb4ee',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6.mp3', 914, '2026-09-14 11:00:55.156971', '5d52d80e2dbcf1a84debed97e5c2f928fff0e2561312fc9046ef83d340838236', 'validated', '{"audio_key":"bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6","entity_key":"lx_travail_et_organisation_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5d52d80e2dbcf1a84debed97e5c2f928fff0e2561312fc9046ef83d340838236","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travail_et_organisation_02 -> audio/generated/fr-FR/lexical/bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4ce9c808-1d3d-5730-a42e-8df123f20493', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travail_et_organisation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8caf821ef26c06970126a5f3c097da2cb9904122f7b27f9fe77207db30ceb4ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1a165af-0a10-51cc-9d4a-383899eadbfa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4ce9c808-1d3d-5730-a42e-8df123f20493', 1), '8caf821ef26c06970126a5f3c097da2cb9904122f7b27f9fe77207db30ceb4ee',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6.mp3', 914, '2026-09-14 11:00:55.156971', '5d52d80e2dbcf1a84debed97e5c2f928fff0e2561312fc9046ef83d340838236', 'validated', '{"audio_key":"bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6","entity_key":"wf_travail_et_organisation_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5d52d80e2dbcf1a84debed97e5c2f928fff0e2561312fc9046ef83d340838236","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bb8c2a87d94ff864c9c752d4832a3f1edbc9658387ecc30575b91020effdd9b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sante_et_bien_etre_02 -> audio/generated/fr-FR/lexical/bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c3762f9-50db-54e0-8410-b2b84d9754ca', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sante_et_bien_etre_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d3bccc986c0727eb9fa7bd76662e40f31e8e36f9a1250d363ace3a853f662e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f13b3ac-67f5-564b-b1eb-f5b686dd11b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c3762f9-50db-54e0-8410-b2b84d9754ca', 1), '1d3bccc986c0727eb9fa7bd76662e40f31e8e36f9a1250d363ace3a853f662e4',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9.mp3', 914, '2026-09-14 11:00:55.299188', 'bbead77eeec2448fd6deac5a8a09827b687e466a7ac79ca7c499aae0929ed353', 'validated', '{"audio_key":"bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9","entity_key":"lx_sante_et_bien_etre_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbead77eeec2448fd6deac5a8a09827b687e466a7ac79ca7c499aae0929ed353","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sante_et_bien_etre_02 -> audio/generated/fr-FR/lexical/bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ecda3f7b-a72c-59d3-9ae7-56427e21a1a3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sante_et_bien_etre_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d3bccc986c0727eb9fa7bd76662e40f31e8e36f9a1250d363ace3a853f662e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ffeab4c-d08d-59e8-84f0-64ffeeb9fb5d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ecda3f7b-a72c-59d3-9ae7-56427e21a1a3', 1), '1d3bccc986c0727eb9fa7bd76662e40f31e8e36f9a1250d363ace3a853f662e4',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9.mp3', 914, '2026-09-14 11:00:55.299188', 'bbead77eeec2448fd6deac5a8a09827b687e466a7ac79ca7c499aae0929ed353', 'validated', '{"audio_key":"bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9","entity_key":"wf_sante_et_bien_etre_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbead77eeec2448fd6deac5a8a09827b687e466a7ac79ca7c499aae0929ed353","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bdcc50b0e9df402652b44b32710567f345d6d9b7f556d076d9706b60e52987c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relations_et_conseils_02 -> audio/generated/fr-FR/lexical/c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f26262ba-2a20-55b8-b928-af4826064837', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relations_et_conseils_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e114a22c4d0168682b14ab34d73fff8042ffe7285bfe9c39116a411fc5aa0348'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac985b80-df63-5352-84c2-abea21dd2791', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f26262ba-2a20-55b8-b928-af4826064837', 1), 'e114a22c4d0168682b14ab34d73fff8042ffe7285bfe9c39116a411fc5aa0348',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23.mp3', 1071, '2026-09-14 11:00:56.144506', '2b792458f9572b7a97d1349a3c2bb9f7bf34f79bb78db05a049491a785b8d0c6', 'validated', '{"audio_key":"c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23","entity_key":"lx_relations_et_conseils_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2b792458f9572b7a97d1349a3c2bb9f7bf34f79bb78db05a049491a785b8d0c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relations_et_conseils_02 -> audio/generated/fr-FR/lexical/c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7647c4b-3e64-59d7-af7a-160e91a4f397', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relations_et_conseils_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e114a22c4d0168682b14ab34d73fff8042ffe7285bfe9c39116a411fc5aa0348'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8573c40a-6da6-5373-a7af-92ba9a4aca54', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7647c4b-3e64-59d7-af7a-160e91a4f397', 1), 'e114a22c4d0168682b14ab34d73fff8042ffe7285bfe9c39116a411fc5aa0348',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23.mp3', 1071, '2026-09-14 11:00:56.144506', '2b792458f9572b7a97d1349a3c2bb9f7bf34f79bb78db05a049491a785b8d0c6', 'validated', '{"audio_key":"c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23","entity_key":"wf_relations_et_conseils_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2b792458f9572b7a97d1349a3c2bb9f7bf34f79bb78db05a049491a785b8d0c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c30c171613041ec201d737068a7a05fca53c8743fd93ff6f0c95632eb1c96f23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sante_et_bien_etre_05 -> audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('127b3709-6c13-5f35-9328-b1d4a2aba1ff', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sante_et_bien_etre_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c164af4-fa0f-50a7-a4c5-6818e4b6501c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('127b3709-6c13-5f35-9328-b1d4a2aba1ff', 1), 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3', 1097, '2026-09-14 10:39:07.859943', 'ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4', 'validated', '{"audio_key":"c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d","entity_key":"lx_sante_et_bien_etre_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sante_et_bien_etre_05 -> audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0fdc2ae1-c9fb-5c25-822d-c0699dc2d73c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sante_et_bien_etre_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a44ddd7-265d-519d-9f4f-1ff6066d0642', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0fdc2ae1-c9fb-5c25-822d-c0699dc2d73c', 1), 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3', 1097, '2026-09-14 10:39:07.859943', 'ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4', 'validated', '{"audio_key":"c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d","entity_key":"wf_sante_et_bien_etre_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travail_et_organisation_03 -> audio/generated/fr-FR/lexical/c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b9c78bc5-9254-54ca-ba36-5607d82b6948', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travail_et_organisation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04b91c2f6e21ef0560d9a7c5340db2fe554f557cd142cb222ef1c40751786f5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('232a3ed8-0921-54aa-9bca-4e647d743d67', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b9c78bc5-9254-54ca-ba36-5607d82b6948', 1), '04b91c2f6e21ef0560d9a7c5340db2fe554f557cd142cb222ef1c40751786f5d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727.mp3', 835, '2026-09-14 11:00:56.287849', '711fa9746088a10a652aa373ee3b3dcca237abe3aaabf84a4e6b2689e09ea918', 'validated', '{"audio_key":"c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727","entity_key":"lx_travail_et_organisation_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"711fa9746088a10a652aa373ee3b3dcca237abe3aaabf84a4e6b2689e09ea918","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travail_et_organisation_03 -> audio/generated/fr-FR/lexical/c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a9d25ef4-ab2a-5746-8507-85aac2415182', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travail_et_organisation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04b91c2f6e21ef0560d9a7c5340db2fe554f557cd142cb222ef1c40751786f5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14f62414-7e2b-5a42-a5bd-216ca346a323', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a9d25ef4-ab2a-5746-8507-85aac2415182', 1), '04b91c2f6e21ef0560d9a7c5340db2fe554f557cd142cb222ef1c40751786f5d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727.mp3', 835, '2026-09-14 11:00:56.287849', '711fa9746088a10a652aa373ee3b3dcca237abe3aaabf84a4e6b2689e09ea918', 'validated', '{"audio_key":"c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727","entity_key":"wf_travail_et_organisation_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"711fa9746088a10a652aa373ee3b3dcca237abe3aaabf84a4e6b2689e09ea918","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c4d8f836009fcdfc54fd9cf7fc68115773f78ec8b3d8d49d11f091cc6d41e727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_services_et_demarches_04 -> audio/generated/fr-FR/lexical/d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ac8b2ad6-2071-5b95-aae8-6484c0f3d414', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_services_et_demarches_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20720028ce50ff387e3a573beec030cbfbf96e314aaa0db62e2ad5cf8679fb3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0852726e-04fd-5303-b59f-88d470c0ee12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ac8b2ad6-2071-5b95-aae8-6484c0f3d414', 1), '20720028ce50ff387e3a573beec030cbfbf96e314aaa0db62e2ad5cf8679fb3b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9.mp3', 966, '2026-09-14 11:00:57.133066', '5f5afa832254e896dbcdbb13c9bca0a2547c00eb321abe4c878fa11ced255ced', 'validated', '{"audio_key":"d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9","entity_key":"lx_services_et_demarches_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f5afa832254e896dbcdbb13c9bca0a2547c00eb321abe4c878fa11ced255ced","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_services_et_demarches_04 -> audio/generated/fr-FR/lexical/d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45ee89d9-b6ad-5634-ac1a-4829f0dcd17e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_services_et_demarches_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20720028ce50ff387e3a573beec030cbfbf96e314aaa0db62e2ad5cf8679fb3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51b38288-d310-53a6-bf64-7e684c206625', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45ee89d9-b6ad-5634-ac1a-4829f0dcd17e', 1), '20720028ce50ff387e3a573beec030cbfbf96e314aaa0db62e2ad5cf8679fb3b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9.mp3', 966, '2026-09-14 11:00:57.133066', '5f5afa832254e896dbcdbb13c9bca0a2547c00eb321abe4c878fa11ced255ced', 'validated', '{"audio_key":"d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9","entity_key":"wf_services_et_demarches_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f5afa832254e896dbcdbb13c9bca0a2547c00eb321abe4c878fa11ced255ced","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d102c49666dfed1c335b41f4c5fa542a85ee023ea2c2108d69149261f0f28bf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_medias_et_opinions_05 -> audio/generated/fr-FR/lexical/d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9351be54-42d9-5bee-94e0-971cfc97e5a0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_medias_et_opinions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f8fbc6fe2df55bc35feb00f6aa7909efea06b73ee6705d61ba82ddb45f85a92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1390cb73-af31-5ce0-8961-d8815b2158e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9351be54-42d9-5bee-94e0-971cfc97e5a0', 1), '4f8fbc6fe2df55bc35feb00f6aa7909efea06b73ee6705d61ba82ddb45f85a92',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15.mp3', 1071, '2026-09-14 11:00:57.286191', 'c62602c247c86bf7f77e82162b5e430601a2fcaa17fd44a97598f953c3dfe350', 'validated', '{"audio_key":"d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15","entity_key":"lx_medias_et_opinions_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c62602c247c86bf7f77e82162b5e430601a2fcaa17fd44a97598f953c3dfe350","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_medias_et_opinions_05 -> audio/generated/fr-FR/lexical/d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dfc7fd7a-0a0c-5725-b66a-bba6a2f1703c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_medias_et_opinions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f8fbc6fe2df55bc35feb00f6aa7909efea06b73ee6705d61ba82ddb45f85a92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47a840d9-7af6-5521-9ec3-8a35dc71f6f1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dfc7fd7a-0a0c-5725-b66a-bba6a2f1703c', 1), '4f8fbc6fe2df55bc35feb00f6aa7909efea06b73ee6705d61ba82ddb45f85a92',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15.mp3', 1071, '2026-09-14 11:00:57.286191', 'c62602c247c86bf7f77e82162b5e430601a2fcaa17fd44a97598f953c3dfe350', 'validated', '{"audio_key":"d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15","entity_key":"wf_medias_et_opinions_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c62602c247c86bf7f77e82162b5e430601a2fcaa17fd44a97598f953c3dfe350","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d24402cd73231c4cedfd647a94dfa1b596e37acc6995f6ea203d11ecd864ed15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_souvenirs_et_recits_06 -> audio/generated/fr-FR/lexical/d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3868f77-ac23-540b-a23b-87e6d3374d5f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_souvenirs_et_recits_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fe4b91f714d6e7cbf75ae389e911b53763c5571bca54a83b79a9f2f1ba88123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09d0293f-467c-5242-84e6-e472cad893f1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3868f77-ac23-540b-a23b-87e6d3374d5f', 1), '4fe4b91f714d6e7cbf75ae389e911b53763c5571bca54a83b79a9f2f1ba88123',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636.mp3', 1097, '2026-09-14 11:00:58.139023', '46101c309431e23646b4a0bdf3af0129bd8b1d9c06bf789b5dbe199d020bb3eb', 'validated', '{"audio_key":"d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636","entity_key":"lx_souvenirs_et_recits_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"46101c309431e23646b4a0bdf3af0129bd8b1d9c06bf789b5dbe199d020bb3eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_souvenirs_et_recits_06 -> audio/generated/fr-FR/lexical/d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('950e3ba4-35e6-5fc6-b563-984bd430e1fa', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_souvenirs_et_recits_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fe4b91f714d6e7cbf75ae389e911b53763c5571bca54a83b79a9f2f1ba88123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed66ca9a-e5d4-54ea-838d-6e90003afbd2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('950e3ba4-35e6-5fc6-b563-984bd430e1fa', 1), '4fe4b91f714d6e7cbf75ae389e911b53763c5571bca54a83b79a9f2f1ba88123',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636.mp3', 1097, '2026-09-14 11:00:58.139023', '46101c309431e23646b4a0bdf3af0129bd8b1d9c06bf789b5dbe199d020bb3eb', 'validated', '{"audio_key":"d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636","entity_key":"wf_souvenirs_et_recits_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"46101c309431e23646b4a0bdf3af0129bd8b1d9c06bf789b5dbe199d020bb3eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d6299d839346e5e7d805a09e7913df13993e4bdf363c3c1595e1315f4cc45636.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relations_et_conseils_06 -> audio/generated/fr-FR/lexical/d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('61b8691d-bb58-5119-87da-ab50cc2f629a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relations_et_conseils_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7124aa6ea3693f4ec4e26ff8f32c491098436842965e30559a0d3f676f1bc4bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3464a0c-c932-5d8e-9c50-0d0bc12ae8e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('61b8691d-bb58-5119-87da-ab50cc2f629a', 1), '7124aa6ea3693f4ec4e26ff8f32c491098436842965e30559a0d3f676f1bc4bd',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7.mp3', 966, '2026-09-14 11:00:58.277241', 'c203c9a42690ec8bcfdcd26553581cb7065629e4317d699a4ac027fe4114026d', 'validated', '{"audio_key":"d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7","entity_key":"lx_relations_et_conseils_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c203c9a42690ec8bcfdcd26553581cb7065629e4317d699a4ac027fe4114026d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relations_et_conseils_06 -> audio/generated/fr-FR/lexical/d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('36814c3d-e7c8-5dfc-b5db-f6df9f4ad0d9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relations_et_conseils_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7124aa6ea3693f4ec4e26ff8f32c491098436842965e30559a0d3f676f1bc4bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('318f7123-1be1-5e04-af88-af50ea77ab55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('36814c3d-e7c8-5dfc-b5db-f6df9f4ad0d9', 1), '7124aa6ea3693f4ec4e26ff8f32c491098436842965e30559a0d3f676f1bc4bd',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7.mp3', 966, '2026-09-14 11:00:58.277241', 'c203c9a42690ec8bcfdcd26553581cb7065629e4317d699a4ac027fe4114026d', 'validated', '{"audio_key":"d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7","entity_key":"wf_relations_et_conseils_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c203c9a42690ec8bcfdcd26553581cb7065629e4317d699a4ac027fe4114026d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d6ab67baf1e2366290b93a40f714d33c638df14ffc42d03b92f09337ee9848a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travail_et_organisation_04 -> audio/generated/fr-FR/lexical/dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cf9716e9-195b-5e01-a8f7-19a5d18d54c5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travail_et_organisation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffecb4c163eecddd8643acf15ff45b691e1f2e7bbb4c175a950f33cd598d9ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0090e3c6-bb9b-5094-9101-9fe964191df9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cf9716e9-195b-5e01-a8f7-19a5d18d54c5', 1), 'ffecb4c163eecddd8643acf15ff45b691e1f2e7bbb4c175a950f33cd598d9ef6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7.mp3', 1071, '2026-09-14 11:00:59.130973', 'e070a470d1aa8f0f56bba493eedf8df4ddc9a531365e0472c1feea154fa23ac0', 'validated', '{"audio_key":"dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7","entity_key":"lx_travail_et_organisation_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e070a470d1aa8f0f56bba493eedf8df4ddc9a531365e0472c1feea154fa23ac0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travail_et_organisation_04 -> audio/generated/fr-FR/lexical/dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89ee12c1-3945-5ea1-81d5-b28583c654a6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travail_et_organisation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffecb4c163eecddd8643acf15ff45b691e1f2e7bbb4c175a950f33cd598d9ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0739961e-a377-5f0f-8284-5dbcbceebd70', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89ee12c1-3945-5ea1-81d5-b28583c654a6', 1), 'ffecb4c163eecddd8643acf15ff45b691e1f2e7bbb4c175a950f33cd598d9ef6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7.mp3', 1071, '2026-09-14 11:00:59.130973', 'e070a470d1aa8f0f56bba493eedf8df4ddc9a531365e0472c1feea154fa23ac0', 'validated', '{"audio_key":"dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7","entity_key":"wf_travail_et_organisation_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e070a470d1aa8f0f56bba493eedf8df4ddc9a531365e0472c1feea154fa23ac0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/dc4752d928de2c76a65155a096231a18f0aa54c2eda47005517c437aa925aff7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travail_et_organisation_06 -> audio/generated/fr-FR/lexical/e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f2c4310-5b2a-5e4e-a0a1-1c5dbd80ddc5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travail_et_organisation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97afd6dca565286a57e5219d78423ea1b9ffbe14ba7f9b8476aa446431dec8df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81bd2887-6bc9-5629-89f3-28c05db511a2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f2c4310-5b2a-5e4e-a0a1-1c5dbd80ddc5', 1), '97afd6dca565286a57e5219d78423ea1b9ffbe14ba7f9b8476aa446431dec8df',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52.mp3', 1097, '2026-09-14 11:00:59.279473', '36edeafc18bfbcfc8ddeb0eb1e5e6f6f313a359f33300d45a898f1991fda981d', 'validated', '{"audio_key":"e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52","entity_key":"lx_travail_et_organisation_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36edeafc18bfbcfc8ddeb0eb1e5e6f6f313a359f33300d45a898f1991fda981d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travail_et_organisation_06 -> audio/generated/fr-FR/lexical/e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff0d1077-e29e-596f-93f6-4fd82bb2ee11', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travail_et_organisation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97afd6dca565286a57e5219d78423ea1b9ffbe14ba7f9b8476aa446431dec8df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3d300cb-8690-5f6e-a8fe-3a2175a3526f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff0d1077-e29e-596f-93f6-4fd82bb2ee11', 1), '97afd6dca565286a57e5219d78423ea1b9ffbe14ba7f9b8476aa446431dec8df',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52.mp3', 1097, '2026-09-14 11:00:59.279473', '36edeafc18bfbcfc8ddeb0eb1e5e6f6f313a359f33300d45a898f1991fda981d', 'validated', '{"audio_key":"e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52","entity_key":"wf_travail_et_organisation_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36edeafc18bfbcfc8ddeb0eb1e5e6f6f313a359f33300d45a898f1991fda981d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e436a473218cf6d6a41240b49865232d809c692a2fc71a8c9efe08db38036b52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_sante_et_bien_etre_03 -> audio/generated/fr-FR/lexical/e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b033252b-5ebb-56c2-961c-007e550d4727', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_sante_et_bien_etre_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f43dc8790ed6215684924d362753e3864cb66c0f06084e89ad36b57e15986c6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29a6e9b5-c6ce-51b1-8d71-b85df25f2e0c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b033252b-5ebb-56c2-961c-007e550d4727', 1), 'f43dc8790ed6215684924d362753e3864cb66c0f06084e89ad36b57e15986c6e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b.mp3', 862, '2026-09-14 11:01:00.156150', '095fc80ec0530abf27e8b4684aad1bcbbff63dc8490cccb6fd981e1918511a7b', 'validated', '{"audio_key":"e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b","entity_key":"lx_sante_et_bien_etre_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"095fc80ec0530abf27e8b4684aad1bcbbff63dc8490cccb6fd981e1918511a7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_sante_et_bien_etre_03 -> audio/generated/fr-FR/lexical/e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c180e0d5-d081-505d-8129-f69792f3ec71', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_sante_et_bien_etre_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f43dc8790ed6215684924d362753e3864cb66c0f06084e89ad36b57e15986c6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7f016d3-bd61-5974-bbd1-8e8dacb74902', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c180e0d5-d081-505d-8129-f69792f3ec71', 1), 'f43dc8790ed6215684924d362753e3864cb66c0f06084e89ad36b57e15986c6e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b.mp3', 862, '2026-09-14 11:01:00.156150', '095fc80ec0530abf27e8b4684aad1bcbbff63dc8490cccb6fd981e1918511a7b', 'validated', '{"audio_key":"e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b","entity_key":"wf_sante_et_bien_etre_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"095fc80ec0530abf27e8b4684aad1bcbbff63dc8490cccb6fd981e1918511a7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e8e4c87ea88d0d99a08985bd8e0929d91e7a67c9ac138a4a8f1a2585a266ae2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travail_et_organisation_01 -> audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f41a8e58-c99e-5245-95b5-7b20d9855a83', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travail_et_organisation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64f6cacb-4181-58c4-a5fb-29d6bc1189b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f41a8e58-c99e-5245-95b5-7b20d9855a83', 1), 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3', 966, '2026-09-14 10:39:11.644797', 'a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff', 'validated', '{"audio_key":"e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a","entity_key":"lx_travail_et_organisation_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travail_et_organisation_01 -> audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7c0f92a7-6d90-575c-8acc-d7b23430d177', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travail_et_organisation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c1db73b-9f71-51a3-a58d-cf02cd5e9fad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7c0f92a7-6d90-575c-8acc-d7b23430d177', 1), 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3', 966, '2026-09-14 10:39:11.644797', 'a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff', 'validated', '{"audio_key":"e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a","entity_key":"wf_travail_et_organisation_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_logement_et_reclamations_02 -> audio/generated/fr-FR/lexical/eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e08e2f0f-89f0-5150-8f7a-8b21a16584c4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_logement_et_reclamations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '674733e83a0ca31e45e491d8fdf073d6481e0ead5b753541b0b10dfa86446dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4ebb8dc-b1b5-588d-88fa-35bac70f9213', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e08e2f0f-89f0-5150-8f7a-8b21a16584c4', 1), '674733e83a0ca31e45e491d8fdf073d6481e0ead5b753541b0b10dfa86446dc8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f.mp3', 1149, '2026-09-14 11:01:00.281051', 'ac1f0cf886d7cfedbd65feb0f3acf71b787b956e9a8d2f686e6c96a083a13c9b', 'validated', '{"audio_key":"eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f","entity_key":"lx_logement_et_reclamations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ac1f0cf886d7cfedbd65feb0f3acf71b787b956e9a8d2f686e6c96a083a13c9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_logement_et_reclamations_02 -> audio/generated/fr-FR/lexical/eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0b12dde0-8400-5f1b-8148-6c8a46ff89e0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_logement_et_reclamations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '674733e83a0ca31e45e491d8fdf073d6481e0ead5b753541b0b10dfa86446dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fc80cfe-6f52-54ca-a542-4c57661cc907', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0b12dde0-8400-5f1b-8148-6c8a46ff89e0', 1), '674733e83a0ca31e45e491d8fdf073d6481e0ead5b753541b0b10dfa86446dc8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f.mp3', 1149, '2026-09-14 11:01:00.281051', 'ac1f0cf886d7cfedbd65feb0f3acf71b787b956e9a8d2f686e6c96a083a13c9b', 'validated', '{"audio_key":"eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f","entity_key":"wf_logement_et_reclamations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ac1f0cf886d7cfedbd65feb0f3acf71b787b956e9a8d2f686e6c96a083a13c9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/eb41bd8a46ff2126014d19462766b81f440f11cf78979d8110678873b96d4d3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_services_et_demarches_02 -> audio/generated/fr-FR/lexical/edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5346db72-7e38-5282-b7c8-e009fa896407', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_services_et_demarches_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c67759ad4ad032f1279d38fe1ca85f7898f0883ccb2f64a1f431847d501acb8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bafcc85-b9ac-5c8b-9940-34162731f502', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5346db72-7e38-5282-b7c8-e009fa896407', 1), 'c67759ad4ad032f1279d38fe1ca85f7898f0883ccb2f64a1f431847d501acb8d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e.mp3', 1280, '2026-09-14 11:01:01.188204', '2a7b152e88665778670b62eaae7d9310913243102e1b5978c75a26c3dd17c3e3', 'validated', '{"audio_key":"edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e","entity_key":"lx_services_et_demarches_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a7b152e88665778670b62eaae7d9310913243102e1b5978c75a26c3dd17c3e3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_services_et_demarches_02 -> audio/generated/fr-FR/lexical/edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d21f69c-b5e5-56f9-9bed-0aa0d2ce193a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_services_et_demarches_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c67759ad4ad032f1279d38fe1ca85f7898f0883ccb2f64a1f431847d501acb8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cae5a12b-5db2-5d83-b566-df777487500b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d21f69c-b5e5-56f9-9bed-0aa0d2ce193a', 1), 'c67759ad4ad032f1279d38fe1ca85f7898f0883ccb2f64a1f431847d501acb8d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e.mp3', 1280, '2026-09-14 11:01:01.188204', '2a7b152e88665778670b62eaae7d9310913243102e1b5978c75a26c3dd17c3e3', 'validated', '{"audio_key":"edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e","entity_key":"wf_services_et_demarches_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a7b152e88665778670b62eaae7d9310913243102e1b5978c75a26c3dd17c3e3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/edc485a91a94b6fe7cf590f47bfe331b24dd71714bb5d503e6dfa36175fea44e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_medias_et_opinions_02 -> audio/generated/fr-FR/lexical/fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('487d1e81-85dd-569d-a518-92e55cd46fda', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_medias_et_opinions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f857b369159e9425aab49a82face02403543052a098b92227a109569b412321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21ff9cce-4487-54ad-a317-5b78f45f2cfc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('487d1e81-85dd-569d-a518-92e55cd46fda', 1), '6f857b369159e9425aab49a82face02403543052a098b92227a109569b412321',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b.mp3', 1149, '2026-09-14 11:01:01.276522', 'e0774139ae9ada725c6306e7b8414de75185f318f4660adcff465f44abe22a66', 'validated', '{"audio_key":"fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b","entity_key":"lx_medias_et_opinions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0774139ae9ada725c6306e7b8414de75185f318f4660adcff465f44abe22a66","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_medias_et_opinions_02 -> audio/generated/fr-FR/lexical/fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cf5afaba-1127-5ad5-bd94-96ef68d37d07', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_medias_et_opinions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f857b369159e9425aab49a82face02403543052a098b92227a109569b412321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26084505-e1a5-5d6b-87b0-c989171e9d67', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cf5afaba-1127-5ad5-bd94-96ef68d37d07', 1), '6f857b369159e9425aab49a82face02403543052a098b92227a109569b412321',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b.mp3', 1149, '2026-09-14 11:01:01.276522', 'e0774139ae9ada725c6306e7b8414de75185f318f4660adcff465f44abe22a66', 'validated', '{"audio_key":"fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b","entity_key":"wf_medias_et_opinions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0774139ae9ada725c6306e7b8414de75185f318f4660adcff465f44abe22a66","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fbc3a5dc97a07cc1603522790219253f1087cb73a241c9bd5480acba33a7dc5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projets_et_avenir_04 -> audio/generated/fr-FR/lexical/ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fca29601-38bd-5747-bc04-bb856e237ffa', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projets_et_avenir_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6386f2b9d2e7db8f33e1d9d726855b4a4bdb8a89a02d76140d714d4ef40fc88c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('958a0edd-8c41-5379-8bb6-cf07b49fad4a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fca29601-38bd-5747-bc04-bb856e237ffa', 1), '6386f2b9d2e7db8f33e1d9d726855b4a4bdb8a89a02d76140d714d4ef40fc88c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69.mp3', 1149, '2026-09-14 11:01:02.199291', '65d2cc703b9941356391ab68202196ca868241c293e6b9df223666bcd686a827', 'validated', '{"audio_key":"ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69","entity_key":"lx_projets_et_avenir_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65d2cc703b9941356391ab68202196ca868241c293e6b9df223666bcd686a827","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projets_et_avenir_04 -> audio/generated/fr-FR/lexical/ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e6a9c38-ff7f-546c-b80b-4e0470649f91', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projets_et_avenir_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6386f2b9d2e7db8f33e1d9d726855b4a4bdb8a89a02d76140d714d4ef40fc88c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaf6118e-09b3-5972-8e3e-fe53d4a20da0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e6a9c38-ff7f-546c-b80b-4e0470649f91', 1), '6386f2b9d2e7db8f33e1d9d726855b4a4bdb8a89a02d76140d714d4ef40fc88c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69.mp3', 1149, '2026-09-14 11:01:02.199291', '65d2cc703b9941356391ab68202196ca868241c293e6b9df223666bcd686a827', 'validated', '{"audio_key":"ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69","entity_key":"wf_projets_et_avenir_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65d2cc703b9941356391ab68202196ca868241c293e6b9df223666bcd686a827","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ff54fede83b03429733a3d53d354ae4a3322c4165035ffdef6a32021b707ae69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_services_et_demarches_02 -> audio/generated/fr-FR/utterances/03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9528d1da-ac9a-546e-9c5c-1074798ca802', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_services_et_demarches_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1431815f33055757ecbe4bd635538855e32aa0cb561f6d476b3eefee2f69e1dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caff5d33-0a8b-5b20-828c-7b8ee3e474f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9528d1da-ac9a-546e-9c5c-1074798ca802', 1), '1431815f33055757ecbe4bd635538855e32aa0cb561f6d476b3eefee2f69e1dd',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5.mp3', 3056, '2026-09-14 11:01:02.486772', '1964157155d6b15cd21482399ea23867a33602c1d6dc63a029c9cc2e632c7b1b', 'validated', '{"audio_key":"03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5","entity_key":"u_services_et_demarches_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1964157155d6b15cd21482399ea23867a33602c1d6dc63a029c9cc2e632c7b1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_services_et_demarches_01_listen -> audio/generated/fr-FR/utterances/03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1556b1f2-16f3-5748-8988-4d0b3836d123', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_services_et_demarches_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1431815f33055757ecbe4bd635538855e32aa0cb561f6d476b3eefee2f69e1dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0dbf1dd3-b340-57a9-b05e-5918e1c48a82', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1556b1f2-16f3-5748-8988-4d0b3836d123', 1), '1431815f33055757ecbe4bd635538855e32aa0cb561f6d476b3eefee2f69e1dd',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5.mp3', 3056, '2026-09-14 11:01:02.486772', '1964157155d6b15cd21482399ea23867a33602c1d6dc63a029c9cc2e632c7b1b', 'validated', '{"audio_key":"03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5","entity_key":"e_services_et_demarches_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1964157155d6b15cd21482399ea23867a33602c1d6dc63a029c9cc2e632c7b1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/03ba8559a54800462e1c1e359fa1d3848a343b06043151a5560570df18c6dcc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travail_et_organisation_01 -> audio/generated/fr-FR/utterances/084ca00c8c9204243045d33af4423279a8f095eabceaac2d54b40b1b1f6b65ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('34f7453b-752b-5118-9f37-bb291879352f', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travail_et_organisation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a04c7b1494515b93b1f596c181001bc316360df8a430786de2204a94e8cb0034'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b0be6d6-d222-51d1-b19d-651826a07f18', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('34f7453b-752b-5118-9f37-bb291879352f', 1), 'a04c7b1494515b93b1f596c181001bc316360df8a430786de2204a94e8cb0034',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/084ca00c8c9204243045d33af4423279a8f095eabceaac2d54b40b1b1f6b65ea.mp3', 2089, '2026-09-14 11:01:03.290584', '5919eae5314ed98431abebd8d49747b77b6e6a0f18029346936bff5f575b1f52', 'validated', '{"audio_key":"084ca00c8c9204243045d33af4423279a8f095eabceaac2d54b40b1b1f6b65ea","entity_key":"u_travail_et_organisation_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5919eae5314ed98431abebd8d49747b77b6e6a0f18029346936bff5f575b1f52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/084ca00c8c9204243045d33af4423279a8f095eabceaac2d54b40b1b1f6b65ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_services_et_demarches_04 -> audio/generated/fr-FR/utterances/11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bdfa9233-0377-58a1-b371-2547e2fd8c14', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_services_et_demarches_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a39102fb7dac7bdf26911ecdc3171d1e7f60dd41e5090400be6a4305c55b5d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fd20b9a-9b89-5f23-a9d4-282528e7da2c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bdfa9233-0377-58a1-b371-2547e2fd8c14', 1), '5a39102fb7dac7bdf26911ecdc3171d1e7f60dd41e5090400be6a4305c55b5d2',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768.mp3', 2533, '2026-09-14 11:01:03.599760', '49847648e4c15ee03473a1506c2255633a82a289e253524c55ee810d5ac455ca', 'validated', '{"audio_key":"11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768","entity_key":"u_services_et_demarches_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"49847648e4c15ee03473a1506c2255633a82a289e253524c55ee810d5ac455ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_services_et_demarches_02_listen -> audio/generated/fr-FR/utterances/11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6540c0e8-92c8-5281-8db4-1c3a97e3c834', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_services_et_demarches_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a39102fb7dac7bdf26911ecdc3171d1e7f60dd41e5090400be6a4305c55b5d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('979d9149-3bac-5df9-b539-f4ad232b1cc4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6540c0e8-92c8-5281-8db4-1c3a97e3c834', 1), '5a39102fb7dac7bdf26911ecdc3171d1e7f60dd41e5090400be6a4305c55b5d2',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768.mp3', 2533, '2026-09-14 11:01:03.599760', '49847648e4c15ee03473a1506c2255633a82a289e253524c55ee810d5ac455ca', 'validated', '{"audio_key":"11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768","entity_key":"e_services_et_demarches_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"49847648e4c15ee03473a1506c2255633a82a289e253524c55ee810d5ac455ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/11d16f4413ef235825926ec22620fde5df25eef5822bc1e254de7f93f6948768.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_medias_et_opinions_02 -> audio/generated/fr-FR/utterances/181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8119b4c9-461b-5d13-848b-5eca972682af', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_medias_et_opinions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '082226ac4292f859aa58ef0d9a5e2b00f17f7199ca7844f3eee6c2361c15c9af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7607ffea-19ce-53f1-8abd-230d5dc86eb7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8119b4c9-461b-5d13-848b-5eca972682af', 1), '082226ac4292f859aa58ef0d9a5e2b00f17f7199ca7844f3eee6c2361c15c9af',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af.mp3', 3996, '2026-09-14 11:01:04.652932', 'b8479231e8d23070191f0b9740682b9b4ef9ab69a7d22de1f9ed0a3447f9db23', 'validated', '{"audio_key":"181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af","entity_key":"u_medias_et_opinions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8479231e8d23070191f0b9740682b9b4ef9ab69a7d22de1f9ed0a3447f9db23","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_medias_et_opinions_01_listen -> audio/generated/fr-FR/utterances/181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1ec0bc54-7604-5b32-bb47-cfaf3ea047b5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_medias_et_opinions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '082226ac4292f859aa58ef0d9a5e2b00f17f7199ca7844f3eee6c2361c15c9af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33c98264-6fb8-5c68-bc78-c929cc7f6102', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1ec0bc54-7604-5b32-bb47-cfaf3ea047b5', 1), '082226ac4292f859aa58ef0d9a5e2b00f17f7199ca7844f3eee6c2361c15c9af',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af.mp3', 3996, '2026-09-14 11:01:04.652932', 'b8479231e8d23070191f0b9740682b9b4ef9ab69a7d22de1f9ed0a3447f9db23', 'validated', '{"audio_key":"181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af","entity_key":"e_medias_et_opinions_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8479231e8d23070191f0b9740682b9b4ef9ab69a7d22de1f9ed0a3447f9db23","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/181287833b8038341e516464cc54e89468fa958fcd49dae62b5b9b1bce1ef8af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_capstone_decisions_03 -> audio/generated/fr-FR/utterances/1f40972565ad9ce8ad8e45ed2dae55e1579899072ec0fe4f002e3fccec4d5f0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5683242b-c5df-5faf-8347-5cc3eb7bd71e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_capstone_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc92697cb2c81b6cfddc73b0d90c6046e91ead7dd8af0ae4e2b4a53323072d5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53f8b886-8f69-5cde-9a6a-d28f386e5f55', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5683242b-c5df-5faf-8347-5cc3eb7bd71e', 1), 'cc92697cb2c81b6cfddc73b0d90c6046e91ead7dd8af0ae4e2b4a53323072d5d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/1f40972565ad9ce8ad8e45ed2dae55e1579899072ec0fe4f002e3fccec4d5f0e.mp3', 2873, '2026-09-14 11:01:04.788412', '523253bd707bc610420cac478886850bc54c681faf8c373e856ae674f3c962cf', 'validated', '{"audio_key":"1f40972565ad9ce8ad8e45ed2dae55e1579899072ec0fe4f002e3fccec4d5f0e","entity_key":"u_b1_capstone_decisions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"523253bd707bc610420cac478886850bc54c681faf8c373e856ae674f3c962cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/1f40972565ad9ce8ad8e45ed2dae55e1579899072ec0fe4f002e3fccec4d5f0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_souvenirs_et_recits_01 -> audio/generated/fr-FR/utterances/29184b95ac1b41e25980b92a167df64485f668acf05e94b934138319570ea656.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dabfa639-8d17-5916-94ca-8ad4b832b779', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_souvenirs_et_recits_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6354c407ed20da693b2f83974213384c15a4e114991076016e06f01ec01c316'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('200e6225-33e4-52d9-9cd2-276032820829', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dabfa639-8d17-5916-94ca-8ad4b832b779', 1), 'c6354c407ed20da693b2f83974213384c15a4e114991076016e06f01ec01c316',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/29184b95ac1b41e25980b92a167df64485f668acf05e94b934138319570ea656.mp3', 2455, '2026-09-14 11:01:05.768390', '83e1e795409356563c19fb5a3776ae7bd5cc144617457927705d834ccee2166b', 'validated', '{"audio_key":"29184b95ac1b41e25980b92a167df64485f668acf05e94b934138319570ea656","entity_key":"u_souvenirs_et_recits_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"83e1e795409356563c19fb5a3776ae7bd5cc144617457927705d834ccee2166b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/29184b95ac1b41e25980b92a167df64485f668acf05e94b934138319570ea656.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relations_et_conseils_03 -> audio/generated/fr-FR/utterances/34b9e94dfef3a0a06b78a978c33a13d39c7fa26e1eb02fde04f7e7422ee8acd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('04b03b73-0250-5ba2-b373-ac50769023ab', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relations_et_conseils_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '553a3cd64ac4ad38ee2dd492536629b82447749a05822466c4a929266f5e31ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fb8523d-cef3-5a39-ad64-fd2d4f915fdf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('04b03b73-0250-5ba2-b373-ac50769023ab', 1), '553a3cd64ac4ad38ee2dd492536629b82447749a05822466c4a929266f5e31ca',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/34b9e94dfef3a0a06b78a978c33a13d39c7fa26e1eb02fde04f7e7422ee8acd0.mp3', 2037, '2026-09-14 11:01:05.876363', 'ca5d59bc91fb42b3c9768c5cf9de65c0f4cc0a2b347de551f5e0a37c264ad36f', 'validated', '{"audio_key":"34b9e94dfef3a0a06b78a978c33a13d39c7fa26e1eb02fde04f7e7422ee8acd0","entity_key":"u_relations_et_conseils_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca5d59bc91fb42b3c9768c5cf9de65c0f4cc0a2b347de551f5e0a37c264ad36f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/34b9e94dfef3a0a06b78a978c33a13d39c7fa26e1eb02fde04f7e7422ee8acd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_souvenirs_et_recits_04 -> audio/generated/fr-FR/utterances/370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de6ab5a7-e44c-5fef-a8a9-0d6b37cd17e9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_souvenirs_et_recits_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5d50bdaf38f80d90b9c5a2c41157d76bde502acf0e67a9984cc2492ad3149b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c1f9d08-3856-5530-8ab5-3f90ab9f3c1c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de6ab5a7-e44c-5fef-a8a9-0d6b37cd17e9', 1), 'f5d50bdaf38f80d90b9c5a2c41157d76bde502acf0e67a9984cc2492ad3149b4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d.mp3', 2586, '2026-09-14 11:01:06.915728', 'd4d9e2f35739e3b2482ab0c1481ddb3e0f4d5f3cf9af57ef406dce3241317f7f', 'validated', '{"audio_key":"370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d","entity_key":"u_souvenirs_et_recits_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d4d9e2f35739e3b2482ab0c1481ddb3e0f4d5f3cf9af57ef406dce3241317f7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_souvenirs_et_recits_02_listen -> audio/generated/fr-FR/utterances/370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('076c4616-1b79-58a8-80bb-9f0aba949066', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_souvenirs_et_recits_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5d50bdaf38f80d90b9c5a2c41157d76bde502acf0e67a9984cc2492ad3149b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('decae50f-a692-5c92-b743-eb4f638efc95', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('076c4616-1b79-58a8-80bb-9f0aba949066', 1), 'f5d50bdaf38f80d90b9c5a2c41157d76bde502acf0e67a9984cc2492ad3149b4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d.mp3', 2586, '2026-09-14 11:01:06.915728', 'd4d9e2f35739e3b2482ab0c1481ddb3e0f4d5f3cf9af57ef406dce3241317f7f', 'validated', '{"audio_key":"370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d","entity_key":"e_souvenirs_et_recits_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d4d9e2f35739e3b2482ab0c1481ddb3e0f4d5f3cf9af57ef406dce3241317f7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/370d6e4ea9a6db25cc48110f3d8e4b7b681eaa7d76c5bfbafb27b8b5bca71e7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_services_et_demarches_01 -> audio/generated/fr-FR/utterances/38e594aaef12275247956603e75581eedb5db2d2eec3fa83055f12f6cff59e9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ad7f1b12-e86b-535f-8e7e-d05d711ac729', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_services_et_demarches_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44dd537bb31afeb8d3a86c3c5bb91185af2a36cf47c6738013d9e33914c19e4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84ddcbf0-2b4e-506f-9848-ebd382a2f4db', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ad7f1b12-e86b-535f-8e7e-d05d711ac729', 1), '44dd537bb31afeb8d3a86c3c5bb91185af2a36cf47c6738013d9e33914c19e4f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/38e594aaef12275247956603e75581eedb5db2d2eec3fa83055f12f6cff59e9e.mp3', 2272, '2026-09-14 11:01:07.258861', '51e384ddeee535f250b9c9320e35559c92f9cf8997ec27bd35f00c02d4493455', 'validated', '{"audio_key":"38e594aaef12275247956603e75581eedb5db2d2eec3fa83055f12f6cff59e9e","entity_key":"u_services_et_demarches_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"51e384ddeee535f250b9c9320e35559c92f9cf8997ec27bd35f00c02d4493455","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/38e594aaef12275247956603e75581eedb5db2d2eec3fa83055f12f6cff59e9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travail_et_organisation_02 -> audio/generated/fr-FR/utterances/3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cb067956-ce39-562b-84e0-dd867bf229f9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travail_et_organisation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '682f8c60d6cba2d4dd8a98e946cd21ad2bac1088a8686a2eb1510d324b04b796'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('162a66c2-ddc3-5091-baea-0c7fd2dd7025', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cb067956-ce39-562b-84e0-dd867bf229f9', 1), '682f8c60d6cba2d4dd8a98e946cd21ad2bac1088a8686a2eb1510d324b04b796',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a.mp3', 2586, '2026-09-14 11:01:08.058254', '0d671e7c9b5f94776fa046440065de932e38c1c9168a0ff8a55d721ac4a29a55', 'validated', '{"audio_key":"3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a","entity_key":"u_travail_et_organisation_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d671e7c9b5f94776fa046440065de932e38c1c9168a0ff8a55d721ac4a29a55","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travail_et_organisation_01_listen -> audio/generated/fr-FR/utterances/3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('abf52287-efce-5d38-b992-2238424bc9eb', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travail_et_organisation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '682f8c60d6cba2d4dd8a98e946cd21ad2bac1088a8686a2eb1510d324b04b796'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cacd352e-3b0d-51a6-93c2-24d432519876', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('abf52287-efce-5d38-b992-2238424bc9eb', 1), '682f8c60d6cba2d4dd8a98e946cd21ad2bac1088a8686a2eb1510d324b04b796',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a.mp3', 2586, '2026-09-14 11:01:08.058254', '0d671e7c9b5f94776fa046440065de932e38c1c9168a0ff8a55d721ac4a29a55', 'validated', '{"audio_key":"3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a","entity_key":"e_travail_et_organisation_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d671e7c9b5f94776fa046440065de932e38c1c9168a0ff8a55d721ac4a29a55","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/3adb7a77174d4b911baad42b985a3bcce81280a37182a26d9242c1d124493d4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_logement_et_reclamations_01 -> audio/generated/fr-FR/utterances/4360bf3b158246002052e5ccb9f843157176ff45a58413ce73019f950d19d455.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fc5b7b77-e241-55b8-a850-c0f8eda64b3c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_logement_et_reclamations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4be92d591b141e4dc60ce71101917d59e4ae3b4238dda14be122994c38d18ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93831f76-accb-5d50-91e6-117115ae40fd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fc5b7b77-e241-55b8-a850-c0f8eda64b3c', 1), 'f4be92d591b141e4dc60ce71101917d59e4ae3b4238dda14be122994c38d18ce',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/4360bf3b158246002052e5ccb9f843157176ff45a58413ce73019f950d19d455.mp3', 2533, '2026-09-14 11:01:08.571653', '41d6a97b7b32a9705247f63f0ef32b9242c602fcbc9ec9240c37f4f2b326f5b1', 'validated', '{"audio_key":"4360bf3b158246002052e5ccb9f843157176ff45a58413ce73019f950d19d455","entity_key":"u_logement_et_reclamations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"41d6a97b7b32a9705247f63f0ef32b9242c602fcbc9ec9240c37f4f2b326f5b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/4360bf3b158246002052e5ccb9f843157176ff45a58413ce73019f950d19d455.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relations_et_conseils_01 -> audio/generated/fr-FR/utterances/4436d25138e7338737abd90632c4c8241250f41fc85e4c4ce88a74cf24904fd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd6a9eae-4b94-5860-9868-87c83d9b59f3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relations_et_conseils_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4e6566739b8537cbd5fc6c75a5b82e94b2bae30d55531de2b4db368761dc574'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df4c829d-553b-5770-8ae2-db79a0ca2f39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd6a9eae-4b94-5860-9868-87c83d9b59f3', 1), 'b4e6566739b8537cbd5fc6c75a5b82e94b2bae30d55531de2b4db368761dc574',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/4436d25138e7338737abd90632c4c8241250f41fc85e4c4ce88a74cf24904fd7.mp3', 2324, '2026-09-14 11:01:09.164735', 'ef454f9ba7018aebdf04c7eeefb898c3ad5af89fda0e229ada16b840566ba111', 'validated', '{"audio_key":"4436d25138e7338737abd90632c4c8241250f41fc85e4c4ce88a74cf24904fd7","entity_key":"u_relations_et_conseils_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef454f9ba7018aebdf04c7eeefb898c3ad5af89fda0e229ada16b840566ba111","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/4436d25138e7338737abd90632c4c8241250f41fc85e4c4ce88a74cf24904fd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_voyages_et_imprevus_03 -> audio/generated/fr-FR/utterances/4bd2a7dbc345fbe97c58a4f4c0899cd4c1bfa0d333cc8eaff2d164a424731d4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ddb30eff-4cf9-50de-8095-b05c50262617', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_voyages_et_imprevus_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7091b6a2bd7afe2505cc34df87a31dc678bbd1f3a98006c9f8651837bb2144c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55627bc2-9eba-5fbc-8afa-ba0449589755', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ddb30eff-4cf9-50de-8095-b05c50262617', 1), 'e7091b6a2bd7afe2505cc34df87a31dc678bbd1f3a98006c9f8651837bb2144c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/4bd2a7dbc345fbe97c58a4f4c0899cd4c1bfa0d333cc8eaff2d164a424731d4e.mp3', 2586, '2026-09-14 11:01:09.717962', 'eb69d38dfdf3ec034d63564b0ac896fd4a1abc127a4c53e21b41c7e1cb86a3ae', 'validated', '{"audio_key":"4bd2a7dbc345fbe97c58a4f4c0899cd4c1bfa0d333cc8eaff2d164a424731d4e","entity_key":"u_voyages_et_imprevus_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb69d38dfdf3ec034d63564b0ac896fd4a1abc127a4c53e21b41c7e1cb86a3ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/4bd2a7dbc345fbe97c58a4f4c0899cd4c1bfa0d333cc8eaff2d164a424731d4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projets_et_avenir_02 -> audio/generated/fr-FR/utterances/4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('992b9d3d-0872-50c7-ad61-39ab489da73b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projets_et_avenir_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c512ba9919cb5d522b9eb58d9e67be3bdaa3d8f65dbdc70b2aa8defd43f7205e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e6a77dd-99a3-5bad-9a7a-ad523f3d4508', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('992b9d3d-0872-50c7-ad61-39ab489da73b', 1), 'c512ba9919cb5d522b9eb58d9e67be3bdaa3d8f65dbdc70b2aa8defd43f7205e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3.mp3', 2507, '2026-09-14 11:01:10.297965', '0c061ee9305f17eda5cd90bce0866603b696ea5ced0bb2cd4021e8b66cee49f2', 'validated', '{"audio_key":"4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3","entity_key":"u_projets_et_avenir_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c061ee9305f17eda5cd90bce0866603b696ea5ced0bb2cd4021e8b66cee49f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_projets_et_avenir_01_listen -> audio/generated/fr-FR/utterances/4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e12daf41-08d6-5374-9a3b-4a86742b67c1', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_projets_et_avenir_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c512ba9919cb5d522b9eb58d9e67be3bdaa3d8f65dbdc70b2aa8defd43f7205e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('142a7398-d2d0-59d4-9e03-78fb8fd095fc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e12daf41-08d6-5374-9a3b-4a86742b67c1', 1), 'c512ba9919cb5d522b9eb58d9e67be3bdaa3d8f65dbdc70b2aa8defd43f7205e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3.mp3', 2507, '2026-09-14 11:01:10.297965', '0c061ee9305f17eda5cd90bce0866603b696ea5ced0bb2cd4021e8b66cee49f2', 'validated', '{"audio_key":"4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3","entity_key":"e_projets_et_avenir_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c061ee9305f17eda5cd90bce0866603b696ea5ced0bb2cd4021e8b66cee49f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/4d9736e356e27a85f5d338162d18964b815d681e0d2919ad40759b328deebeb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_logement_et_reclamations_02 -> audio/generated/fr-FR/utterances/54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('918de633-5396-5219-b484-8415223953ce', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_logement_et_reclamations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e093be7475299e3ad346d30802e5790eb8268813b55721a0adc4323b75f1b7e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('555cbbbd-7188-5014-85f6-63faca52f393', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('918de633-5396-5219-b484-8415223953ce', 1), 'e093be7475299e3ad346d30802e5790eb8268813b55721a0adc4323b75f1b7e4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571.mp3', 2925, '2026-09-14 11:01:10.883938', 'dfeed145c3be4174f57a6eb0151ecc40412f184c83a48fc185cc996ce990cdd5', 'validated', '{"audio_key":"54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571","entity_key":"u_logement_et_reclamations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dfeed145c3be4174f57a6eb0151ecc40412f184c83a48fc185cc996ce990cdd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_logement_et_reclamations_01_listen -> audio/generated/fr-FR/utterances/54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('00d0cb23-4b9f-58c0-bea1-243869690bd5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_logement_et_reclamations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e093be7475299e3ad346d30802e5790eb8268813b55721a0adc4323b75f1b7e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45814e64-9537-5cbe-8bb3-1e7e9d3fca10', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('00d0cb23-4b9f-58c0-bea1-243869690bd5', 1), 'e093be7475299e3ad346d30802e5790eb8268813b55721a0adc4323b75f1b7e4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571.mp3', 2925, '2026-09-14 11:01:10.883938', 'dfeed145c3be4174f57a6eb0151ecc40412f184c83a48fc185cc996ce990cdd5', 'validated', '{"audio_key":"54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571","entity_key":"e_logement_et_reclamations_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dfeed145c3be4174f57a6eb0151ecc40412f184c83a48fc185cc996ce990cdd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/54b59ca55c8b07f6b6d21490ce2cee52a21b3f5371c097b53527397ec0f0c571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projets_et_avenir_03 -> audio/generated/fr-FR/utterances/63f2bf961e70c1380574e81e83f9791903d2c950812ee78c6297ced9be07f32d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8be9905a-5cf9-542c-b384-73336d2ccb5e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projets_et_avenir_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1023c03e2ca89ada8456d42d508921906f6648d6118e868e4a35ff58e9fbf79c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a943466d-101d-5ea8-842d-940074b85e63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8be9905a-5cf9-542c-b384-73336d2ccb5e', 1), '1023c03e2ca89ada8456d42d508921906f6648d6118e868e4a35ff58e9fbf79c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/63f2bf961e70c1380574e81e83f9791903d2c950812ee78c6297ced9be07f32d.mp3', 2873, '2026-09-14 11:01:11.450115', 'ac298c4360cb24a79cd572dc9c0725c6748ef474eef2add43c59844d038cd4c8', 'validated', '{"audio_key":"63f2bf961e70c1380574e81e83f9791903d2c950812ee78c6297ced9be07f32d","entity_key":"u_projets_et_avenir_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ac298c4360cb24a79cd572dc9c0725c6748ef474eef2add43c59844d038cd4c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/63f2bf961e70c1380574e81e83f9791903d2c950812ee78c6297ced9be07f32d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_services_et_demarches_03 -> audio/generated/fr-FR/utterances/6d7311497213bef1aa248c7ff60c2af018408aa85638e78362fb11fe5825d5cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('98986593-565f-5043-8d10-745662256eb8', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_services_et_demarches_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b13482f59b144dd9849eefdf286e67ffba442094d542eab60ddff9979579cf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f29c5b87-8281-51b4-ad83-6a876a35c0fd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('98986593-565f-5043-8d10-745662256eb8', 1), '0b13482f59b144dd9849eefdf286e67ffba442094d542eab60ddff9979579cf7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6d7311497213bef1aa248c7ff60c2af018408aa85638e78362fb11fe5825d5cc.mp3', 3239, '2026-09-14 11:01:12.164666', '90a42f7e54e4bc2c2a8c5a5ebc93155899abc9a82077042e5e59129a9bfbc022', 'validated', '{"audio_key":"6d7311497213bef1aa248c7ff60c2af018408aa85638e78362fb11fe5825d5cc","entity_key":"u_services_et_demarches_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90a42f7e54e4bc2c2a8c5a5ebc93155899abc9a82077042e5e59129a9bfbc022","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6d7311497213bef1aa248c7ff60c2af018408aa85638e78362fb11fe5825d5cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_souvenirs_et_recits_03 -> audio/generated/fr-FR/utterances/6e0753b1a55dafca29179459e19e779e88ef22998c85e6d89c8708139216491a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('51b13309-d542-511d-92dd-0c5b831f74cb', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_souvenirs_et_recits_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea333b1c404effbdbd5af076552c64cefdac44b39b5154f4110da10924a04854'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('baa4862a-ec84-5ff0-921b-ae3515c3e040', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('51b13309-d542-511d-92dd-0c5b831f74cb', 1), 'ea333b1c404effbdbd5af076552c64cefdac44b39b5154f4110da10924a04854',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6e0753b1a55dafca29179459e19e779e88ef22998c85e6d89c8708139216491a.mp3', 2507, '2026-09-14 11:01:12.803712', 'e4977be01df7972dfa7bf52296d8f071ae50c1e7066383c78c90ea21a661ec62', 'validated', '{"audio_key":"6e0753b1a55dafca29179459e19e779e88ef22998c85e6d89c8708139216491a","entity_key":"u_souvenirs_et_recits_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e4977be01df7972dfa7bf52296d8f071ae50c1e7066383c78c90ea21a661ec62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6e0753b1a55dafca29179459e19e779e88ef22998c85e6d89c8708139216491a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sante_et_bien_etre_04 -> audio/generated/fr-FR/utterances/74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('75c81521-3c58-5c33-9cce-668526a991c2', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sante_et_bien_etre_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '672e00e340ad4e5d33877928fb0c6330926d10494b04050f84bfd3f9986063c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b428058-1289-5116-b947-38d1e53e4c03', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('75c81521-3c58-5c33-9cce-668526a991c2', 1), '672e00e340ad4e5d33877928fb0c6330926d10494b04050f84bfd3f9986063c2',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1.mp3', 3108, '2026-09-14 11:01:13.387046', '3fbf24d109c456ef4d39ee56b381111ed1e20f50714f73d3c10780173208788f', 'validated', '{"audio_key":"74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1","entity_key":"u_sante_et_bien_etre_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3fbf24d109c456ef4d39ee56b381111ed1e20f50714f73d3c10780173208788f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_sante_et_bien_etre_02_listen -> audio/generated/fr-FR/utterances/74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('383305cd-61f6-569d-86d0-0375b354e932', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_sante_et_bien_etre_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '672e00e340ad4e5d33877928fb0c6330926d10494b04050f84bfd3f9986063c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05d08b68-5cca-553b-92b2-1b10e9767b75', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('383305cd-61f6-569d-86d0-0375b354e932', 1), '672e00e340ad4e5d33877928fb0c6330926d10494b04050f84bfd3f9986063c2',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1.mp3', 3108, '2026-09-14 11:01:13.387046', '3fbf24d109c456ef4d39ee56b381111ed1e20f50714f73d3c10780173208788f', 'validated', '{"audio_key":"74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1","entity_key":"e_sante_et_bien_etre_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3fbf24d109c456ef4d39ee56b381111ed1e20f50714f73d3c10780173208788f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/74460d5fbb9fac027a42c7de962e5f3ac6de139d6824673abd0e8c004312e3c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_voyages_et_imprevus_02 -> audio/generated/fr-FR/utterances/753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c37203e-8f3e-5311-bd9c-f6956676de70', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_voyages_et_imprevus_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ff3bd8930c3c2082bcdbc56176d19fef20432842cb5107ee024e81dc327acb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d9e8c71-be7d-5de3-be32-771fe7095f0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c37203e-8f3e-5311-bd9c-f6956676de70', 1), '1ff3bd8930c3c2082bcdbc56176d19fef20432842cb5107ee024e81dc327acb0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f.mp3', 2873, '2026-09-14 11:01:13.977795', '3d303ed5abd5fdfcaebc4c26f092f59728ca9d5e32ce565dd1128865a11363da', 'validated', '{"audio_key":"753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f","entity_key":"u_voyages_et_imprevus_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d303ed5abd5fdfcaebc4c26f092f59728ca9d5e32ce565dd1128865a11363da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_voyages_et_imprevus_01_listen -> audio/generated/fr-FR/utterances/753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e599f19b-0447-51cc-a425-a80ec2774d74', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_voyages_et_imprevus_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ff3bd8930c3c2082bcdbc56176d19fef20432842cb5107ee024e81dc327acb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('797c0252-ebf4-576f-85e3-ae27d69ebdee', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e599f19b-0447-51cc-a425-a80ec2774d74', 1), '1ff3bd8930c3c2082bcdbc56176d19fef20432842cb5107ee024e81dc327acb0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f.mp3', 2873, '2026-09-14 11:01:13.977795', '3d303ed5abd5fdfcaebc4c26f092f59728ca9d5e32ce565dd1128865a11363da', 'validated', '{"audio_key":"753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f","entity_key":"e_voyages_et_imprevus_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d303ed5abd5fdfcaebc4c26f092f59728ca9d5e32ce565dd1128865a11363da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/753bc28976b8bc2fb1915b13da9307e1f87840915b4bc6cda51552a9f469ae0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travail_et_organisation_04 -> audio/generated/fr-FR/utterances/7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ed04b69-64d8-5dae-bffe-3dae3347e170', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travail_et_organisation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1412091e0f01bee68445e2d7f7d96542c4e7f5ded5a6c836501beccc6377e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('576b811b-284a-5a68-b003-96c694e015c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ed04b69-64d8-5dae-bffe-3dae3347e170', 1), '9e1412091e0f01bee68445e2d7f7d96542c4e7f5ded5a6c836501beccc6377e4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657.mp3', 3004, '2026-09-14 11:01:14.549153', 'f80006f162f17ad4a0bc86d379d01f36b9f83daefcda0242fc0b14ba5a844855', 'validated', '{"audio_key":"7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657","entity_key":"u_travail_et_organisation_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f80006f162f17ad4a0bc86d379d01f36b9f83daefcda0242fc0b14ba5a844855","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travail_et_organisation_02_listen -> audio/generated/fr-FR/utterances/7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5b2e5697-eb20-5fc6-bce1-5e4826746b07', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travail_et_organisation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1412091e0f01bee68445e2d7f7d96542c4e7f5ded5a6c836501beccc6377e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f741d9f-633f-51aa-8fe9-96ced106267e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5b2e5697-eb20-5fc6-bce1-5e4826746b07', 1), '9e1412091e0f01bee68445e2d7f7d96542c4e7f5ded5a6c836501beccc6377e4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657.mp3', 3004, '2026-09-14 11:01:14.549153', 'f80006f162f17ad4a0bc86d379d01f36b9f83daefcda0242fc0b14ba5a844855', 'validated', '{"audio_key":"7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657","entity_key":"e_travail_et_organisation_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f80006f162f17ad4a0bc86d379d01f36b9f83daefcda0242fc0b14ba5a844855","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7a071199d98e81cd036cd1173a3a1a28b11fd6b4a5c3df07217a9eccf7ec0657.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_medias_et_opinions_03 -> audio/generated/fr-FR/utterances/7b99a4b2071847a91d46bf84d806328b6ffab4683c2953e1c7d0a3e1911fee38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f85d43ed-b3d9-504b-bb4a-cf377cf39c52', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_medias_et_opinions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c81cb5ed1758dde8a3ada702722e782ea844025671e8a1a4aaee7da4af53c0ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('905b73ac-043c-5130-851b-4c56fc567bf2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f85d43ed-b3d9-504b-bb4a-cf377cf39c52', 1), 'c81cb5ed1758dde8a3ada702722e782ea844025671e8a1a4aaee7da4af53c0ed',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7b99a4b2071847a91d46bf84d806328b6ffab4683c2953e1c7d0a3e1911fee38.mp3', 2351, '2026-09-14 11:01:15.096800', '24ce344f35627bbce707d2b639e2c2f421db9578508d9427ccb12860a34b4fa6', 'validated', '{"audio_key":"7b99a4b2071847a91d46bf84d806328b6ffab4683c2953e1c7d0a3e1911fee38","entity_key":"u_medias_et_opinions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24ce344f35627bbce707d2b639e2c2f421db9578508d9427ccb12860a34b4fa6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7b99a4b2071847a91d46bf84d806328b6ffab4683c2953e1c7d0a3e1911fee38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relations_et_conseils_04 -> audio/generated/fr-FR/utterances/80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('333fb42d-c1ce-547e-bc68-f495c7bcdfec', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relations_et_conseils_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '937e8084036151d87cbaa33ad7961417175999685c0db47cda698933e61041d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afaad321-6882-5868-bfc3-67645a227cb5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('333fb42d-c1ce-547e-bc68-f495c7bcdfec', 1), '937e8084036151d87cbaa33ad7961417175999685c0db47cda698933e61041d6',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67.mp3', 2690, '2026-09-14 11:01:15.683130', '1012468a8ce29890bcc386722de1bd61e2c99d120948bee9445b63199dcafaf6', 'validated', '{"audio_key":"80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67","entity_key":"u_relations_et_conseils_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1012468a8ce29890bcc386722de1bd61e2c99d120948bee9445b63199dcafaf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_relations_et_conseils_02_listen -> audio/generated/fr-FR/utterances/80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4be2005b-9ec3-5c1a-b31a-f3aeb1c71b29', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_relations_et_conseils_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '937e8084036151d87cbaa33ad7961417175999685c0db47cda698933e61041d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a04d3770-2935-5ac8-a8ba-f180072f0b9b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4be2005b-9ec3-5c1a-b31a-f3aeb1c71b29', 1), '937e8084036151d87cbaa33ad7961417175999685c0db47cda698933e61041d6',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67.mp3', 2690, '2026-09-14 11:01:15.683130', '1012468a8ce29890bcc386722de1bd61e2c99d120948bee9445b63199dcafaf6', 'validated', '{"audio_key":"80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67","entity_key":"e_relations_et_conseils_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1012468a8ce29890bcc386722de1bd61e2c99d120948bee9445b63199dcafaf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/80f67f54932c8ec1b58aa13d3229d11df50d62d56813448fabb98a86b1938a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sante_et_bien_etre_01 -> audio/generated/fr-FR/utterances/903be1fd028bdd1c9be1df57c57284a4590b9973c99a1985aa87061e7d7ece07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1c830b2a-8495-500c-9319-9853f4b9c38e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sante_et_bien_etre_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f8c5598a45e27caf9f47f4e92bb51f3dba8e2ee11c51056e9c1adb47eda316d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e7ff4c0-29a3-54ab-aa73-5d8e4ae92275', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1c830b2a-8495-500c-9319-9853f4b9c38e', 1), '1f8c5598a45e27caf9f47f4e92bb51f3dba8e2ee11c51056e9c1adb47eda316d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/903be1fd028bdd1c9be1df57c57284a4590b9973c99a1985aa87061e7d7ece07.mp3', 3422, '2026-09-14 11:01:16.422264', '623bdbecbc799ee886f1b3b849499d54d578f931e41df9056d951330a424bbc4', 'validated', '{"audio_key":"903be1fd028bdd1c9be1df57c57284a4590b9973c99a1985aa87061e7d7ece07","entity_key":"u_sante_et_bien_etre_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"623bdbecbc799ee886f1b3b849499d54d578f931e41df9056d951330a424bbc4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/903be1fd028bdd1c9be1df57c57284a4590b9973c99a1985aa87061e7d7ece07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sante_et_bien_etre_03 -> audio/generated/fr-FR/utterances/955d1d36897c7902159baf3b8075e7e41dad7935ea7e0f8790ad6c836fa5a8f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce2317df-3aef-5de8-b1e7-ebbeed44c4e7', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sante_et_bien_etre_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51928096e0d9e1e77cdb1b7050ef3bba66d48a1cb1c3a102e16ee4a51e692551'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d912be2-4bbe-565e-bec7-8bad8622fc92', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce2317df-3aef-5de8-b1e7-ebbeed44c4e7', 1), '51928096e0d9e1e77cdb1b7050ef3bba66d48a1cb1c3a102e16ee4a51e692551',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/955d1d36897c7902159baf3b8075e7e41dad7935ea7e0f8790ad6c836fa5a8f7.mp3', 2586, '2026-09-14 11:01:16.819748', 'b16edce9a2855f6997a2d4aca2dceaefdfa2dec9dc95b05cc28bdbf84af4f92f', 'validated', '{"audio_key":"955d1d36897c7902159baf3b8075e7e41dad7935ea7e0f8790ad6c836fa5a8f7","entity_key":"u_sante_et_bien_etre_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b16edce9a2855f6997a2d4aca2dceaefdfa2dec9dc95b05cc28bdbf84af4f92f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/955d1d36897c7902159baf3b8075e7e41dad7935ea7e0f8790ad6c836fa5a8f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travail_et_organisation_03 -> audio/generated/fr-FR/utterances/97e82eb8ef998fe532adc82dda94c84d195b674df21e4e42af32fea692dd0c56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f90e29db-e078-5689-b16c-1031ccc108e6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travail_et_organisation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5db0c0fa63efa51d933d01387035a208044491333a0162ec902f01292bb7ea8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd6791d7-3830-5a0b-b489-0c72b717a6d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f90e29db-e078-5689-b16c-1031ccc108e6', 1), 'e5db0c0fa63efa51d933d01387035a208044491333a0162ec902f01292bb7ea8',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/97e82eb8ef998fe532adc82dda94c84d195b674df21e4e42af32fea692dd0c56.mp3', 2951, '2026-09-14 11:01:17.638971', 'ab2fba2d7b37e3c14b0c7cd83f948a665850beb34cf96155b4fd23c60c4b0ea3', 'validated', '{"audio_key":"97e82eb8ef998fe532adc82dda94c84d195b674df21e4e42af32fea692dd0c56","entity_key":"u_travail_et_organisation_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab2fba2d7b37e3c14b0c7cd83f948a665850beb34cf96155b4fd23c60c4b0ea3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/97e82eb8ef998fe532adc82dda94c84d195b674df21e4e42af32fea692dd0c56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_capstone_decisions_02 -> audio/generated/fr-FR/utterances/a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7cb27e8d-3646-5205-b744-fdd0603fef94', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_capstone_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6b1895ec53f622601b773c91767aea31c99ab81786012ef5f96873b2efddb44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e1c1171-3624-5cef-bb9b-0222b46f0bbf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7cb27e8d-3646-5205-b744-fdd0603fef94', 1), 'b6b1895ec53f622601b773c91767aea31c99ab81786012ef5f96873b2efddb44',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383.mp3', 3369, '2026-09-14 11:01:18.060610', '583f7c0c1e4859e6e7a2c7cee7fda2726e7049fd4b4d7a9ad81f3ed11db657a6', 'validated', '{"audio_key":"a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383","entity_key":"u_b1_capstone_decisions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"583f7c0c1e4859e6e7a2c7cee7fda2726e7049fd4b4d7a9ad81f3ed11db657a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_capstone_decisions_01_listen -> audio/generated/fr-FR/utterances/a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1f177a58-695b-535f-a8f1-46f520f88886', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_capstone_decisions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6b1895ec53f622601b773c91767aea31c99ab81786012ef5f96873b2efddb44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d71b19d-9e9e-552a-ab1b-b76346ac375e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1f177a58-695b-535f-a8f1-46f520f88886', 1), 'b6b1895ec53f622601b773c91767aea31c99ab81786012ef5f96873b2efddb44',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383.mp3', 3369, '2026-09-14 11:01:18.060610', '583f7c0c1e4859e6e7a2c7cee7fda2726e7049fd4b4d7a9ad81f3ed11db657a6', 'validated', '{"audio_key":"a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383","entity_key":"e_b1_capstone_decisions_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"583f7c0c1e4859e6e7a2c7cee7fda2726e7049fd4b4d7a9ad81f3ed11db657a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a779e146b80c66d4d4ca80df6cf9c106633defe16ce81d6605d2b68276424383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relations_et_conseils_02 -> audio/generated/fr-FR/utterances/be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a29661a5-dc42-5ea5-a424-1c64dcc6b6dd', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relations_et_conseils_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313c606ec2f7c822858dbfa139b1aeabb706af45707bf346abf0c6285dd4dc2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9197b09-af44-58ef-abb3-65ecb8f9b99c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a29661a5-dc42-5ea5-a424-1c64dcc6b6dd', 1), '313c606ec2f7c822858dbfa139b1aeabb706af45707bf346abf0c6285dd4dc2b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3.mp3', 2638, '2026-09-14 11:01:18.808767', '04c25e5845b67d4f3395fd3937900d990ec70a71efc663e1ee732e20228c8d29', 'validated', '{"audio_key":"be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3","entity_key":"u_relations_et_conseils_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04c25e5845b67d4f3395fd3937900d990ec70a71efc663e1ee732e20228c8d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_relations_et_conseils_01_listen -> audio/generated/fr-FR/utterances/be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('73d4202f-565f-5dbe-a6fa-e20969d27d3d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_relations_et_conseils_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313c606ec2f7c822858dbfa139b1aeabb706af45707bf346abf0c6285dd4dc2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e9c4315-c9e6-56ff-8e0c-1f3a4345767c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('73d4202f-565f-5dbe-a6fa-e20969d27d3d', 1), '313c606ec2f7c822858dbfa139b1aeabb706af45707bf346abf0c6285dd4dc2b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3.mp3', 2638, '2026-09-14 11:01:18.808767', '04c25e5845b67d4f3395fd3937900d990ec70a71efc663e1ee732e20228c8d29', 'validated', '{"audio_key":"be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3","entity_key":"e_relations_et_conseils_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04c25e5845b67d4f3395fd3937900d990ec70a71efc663e1ee732e20228c8d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/be42058ad1b0455862758c48543e18f95c5a0596ef7597854f8cc3ddd3e343e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_voyages_et_imprevus_01 -> audio/generated/fr-FR/utterances/be6489c68922c3fc0ea18a2477035f172cf3894b62f48071528715bd07a5c418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d56f5380-6fd4-5f70-8421-07ad0920bfc9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_voyages_et_imprevus_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ccb3d9c488477f9347373d2db425a6257874b09ebe8f7c67a49973a13064a59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7fa2a0f-d2c3-56ac-8c7e-028f13d5120f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d56f5380-6fd4-5f70-8421-07ad0920bfc9', 1), '7ccb3d9c488477f9347373d2db425a6257874b09ebe8f7c67a49973a13064a59',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/be6489c68922c3fc0ea18a2477035f172cf3894b62f48071528715bd07a5c418.mp3', 3186, '2026-09-14 11:01:19.331670', 'eb4a1fe2b7ef7b3634f9e8a9e2f4c42041b2d268b1c1ccaf10d1ec082dcde799', 'validated', '{"audio_key":"be6489c68922c3fc0ea18a2477035f172cf3894b62f48071528715bd07a5c418","entity_key":"u_voyages_et_imprevus_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb4a1fe2b7ef7b3634f9e8a9e2f4c42041b2d268b1c1ccaf10d1ec082dcde799","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/be6489c68922c3fc0ea18a2477035f172cf3894b62f48071528715bd07a5c418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_medias_et_opinions_01 -> audio/generated/fr-FR/utterances/c0d3022730f7b09134d4aa6802679cf585d91f719ef6ad9a3574ac838b8ab298.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1ced4c38-1c05-5649-bcc1-ed321c5cfa0d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_medias_et_opinions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bfdec056b0afe58bb11e9ff29fef79532fb95dc441bafbe3b9e7cb89dee63a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('470db163-ca09-50b5-8fb1-7148be8ecfd0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1ced4c38-1c05-5649-bcc1-ed321c5cfa0d', 1), '1bfdec056b0afe58bb11e9ff29fef79532fb95dc441bafbe3b9e7cb89dee63a6',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/c0d3022730f7b09134d4aa6802679cf585d91f719ef6ad9a3574ac838b8ab298.mp3', 2690, '2026-09-14 11:01:19.958918', '16c1a26ec7fb1cd76f0b323c3e76740c94a2cf23e11ebe6e4f607787fe8b82c0', 'validated', '{"audio_key":"c0d3022730f7b09134d4aa6802679cf585d91f719ef6ad9a3574ac838b8ab298","entity_key":"u_medias_et_opinions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16c1a26ec7fb1cd76f0b323c3e76740c94a2cf23e11ebe6e4f607787fe8b82c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/c0d3022730f7b09134d4aa6802679cf585d91f719ef6ad9a3574ac838b8ab298.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_logement_et_reclamations_03 -> audio/generated/fr-FR/utterances/c6bc64af0847bcf36d8a8569ddd8e597a374782d24b4cef30e5f53c5328c246e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('82dc61cb-4ac3-510c-aa23-24cc27aa41ad', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_logement_et_reclamations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41fc85fab6b100a9ad5374b154a9d992793ecf5b04e5f2753083f95761e613a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d12b830-0d89-54d5-82c2-9b7e44238ce2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('82dc61cb-4ac3-510c-aa23-24cc27aa41ad', 1), '41fc85fab6b100a9ad5374b154a9d992793ecf5b04e5f2753083f95761e613a4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/c6bc64af0847bcf36d8a8569ddd8e597a374782d24b4cef30e5f53c5328c246e.mp3', 2089, '2026-09-14 11:01:20.481614', '28fb4ca804a0267c3db2c3aa447178f610bf10358079e93d73f8c1324a4c94d6', 'validated', '{"audio_key":"c6bc64af0847bcf36d8a8569ddd8e597a374782d24b4cef30e5f53c5328c246e","entity_key":"u_logement_et_reclamations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28fb4ca804a0267c3db2c3aa447178f610bf10358079e93d73f8c1324a4c94d6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/c6bc64af0847bcf36d8a8569ddd8e597a374782d24b4cef30e5f53c5328c246e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_sante_et_bien_etre_02 -> audio/generated/fr-FR/utterances/d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e136bd0-ea1e-5d9f-bf71-06ec626f564b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_sante_et_bien_etre_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb02e7147fd1dd72cdd3d27c9f4dc3ef7a8c4d87635aa138660922e96641c8b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d25cffec-7544-5de4-8507-87c3d2078635', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e136bd0-ea1e-5d9f-bf71-06ec626f564b', 1), 'bb02e7147fd1dd72cdd3d27c9f4dc3ef7a8c4d87635aa138660922e96641c8b4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca.mp3', 2324, '2026-09-14 11:01:21.095743', 'fe6c31ff2d569609083c1277b5906bf5352475841aab18492b4257d78351d6f6', 'validated', '{"audio_key":"d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca","entity_key":"u_sante_et_bien_etre_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe6c31ff2d569609083c1277b5906bf5352475841aab18492b4257d78351d6f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_sante_et_bien_etre_01_listen -> audio/generated/fr-FR/utterances/d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('93cead2c-234f-5f3c-847e-b062018effd2', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_sante_et_bien_etre_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb02e7147fd1dd72cdd3d27c9f4dc3ef7a8c4d87635aa138660922e96641c8b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ffd52b8-4933-59ef-8a1e-ef30cbcc4065', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('93cead2c-234f-5f3c-847e-b062018effd2', 1), 'bb02e7147fd1dd72cdd3d27c9f4dc3ef7a8c4d87635aa138660922e96641c8b4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca.mp3', 2324, '2026-09-14 11:01:21.095743', 'fe6c31ff2d569609083c1277b5906bf5352475841aab18492b4257d78351d6f6', 'validated', '{"audio_key":"d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca","entity_key":"e_sante_et_bien_etre_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe6c31ff2d569609083c1277b5906bf5352475841aab18492b4257d78351d6f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d0b3a19126dd690a416908fcfd0df08d9bf5e5d3446917b039f46f0fe13e43ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projets_et_avenir_04 -> audio/generated/fr-FR/utterances/d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('12345342-1538-5832-abc9-68e8f5376390', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projets_et_avenir_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e7f1de2e3469dbea82dcdbb3732cb846bc44165c4ebcf7b18baf385fc645ba5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e6955e3-fe9f-53da-822f-5a6984408176', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('12345342-1538-5832-abc9-68e8f5376390', 1), '3e7f1de2e3469dbea82dcdbb3732cb846bc44165c4ebcf7b18baf385fc645ba5',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65.mp3', 2586, '2026-09-14 11:01:21.968724', '92a207b55eaeafff9b04c84d763cdab5d007edcc3cf9c20317d05d117feadc7f', 'validated', '{"audio_key":"d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65","entity_key":"u_projets_et_avenir_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"92a207b55eaeafff9b04c84d763cdab5d007edcc3cf9c20317d05d117feadc7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_projets_et_avenir_02_listen -> audio/generated/fr-FR/utterances/d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('117b07b1-0a1b-553d-bc88-83c530492cc3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_projets_et_avenir_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e7f1de2e3469dbea82dcdbb3732cb846bc44165c4ebcf7b18baf385fc645ba5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3f2d3b1-28cb-52f8-9ee4-05f00497f5bf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('117b07b1-0a1b-553d-bc88-83c530492cc3', 1), '3e7f1de2e3469dbea82dcdbb3732cb846bc44165c4ebcf7b18baf385fc645ba5',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65.mp3', 2586, '2026-09-14 11:01:21.968724', '92a207b55eaeafff9b04c84d763cdab5d007edcc3cf9c20317d05d117feadc7f', 'validated', '{"audio_key":"d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65","entity_key":"e_projets_et_avenir_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"92a207b55eaeafff9b04c84d763cdab5d007edcc3cf9c20317d05d117feadc7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d59b3656b35823cf237e58f510238220cf9c0d2a00a46c96b0c053a1f152ef65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_capstone_decisions_04 -> audio/generated/fr-FR/utterances/dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1375a237-5522-54f2-9cae-e12ca85e5370', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_capstone_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31ee87b843592c04eadab3bfd16d501d5a342a27f1fa689e1ce0ac7a81e8e71b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93194f3d-fdd2-51d3-9d45-f66bdfbbdf64', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1375a237-5522-54f2-9cae-e12ca85e5370', 1), '31ee87b843592c04eadab3bfd16d501d5a342a27f1fa689e1ce0ac7a81e8e71b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f.mp3', 3186, '2026-09-14 11:01:22.300102', '93891bfab37f9610c8adff13a9ee1e4aa500f7032735a74ca98cead7e7c3fc05', 'validated', '{"audio_key":"dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f","entity_key":"u_b1_capstone_decisions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"93891bfab37f9610c8adff13a9ee1e4aa500f7032735a74ca98cead7e7c3fc05","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_capstone_decisions_02_listen -> audio/generated/fr-FR/utterances/dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d44620b5-a5f0-5880-8738-1d0f8f8b210c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_capstone_decisions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31ee87b843592c04eadab3bfd16d501d5a342a27f1fa689e1ce0ac7a81e8e71b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('470167dc-8cd4-57db-a5f2-6868b892e557', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d44620b5-a5f0-5880-8738-1d0f8f8b210c', 1), '31ee87b843592c04eadab3bfd16d501d5a342a27f1fa689e1ce0ac7a81e8e71b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f.mp3', 3186, '2026-09-14 11:01:22.300102', '93891bfab37f9610c8adff13a9ee1e4aa500f7032735a74ca98cead7e7c3fc05', 'validated', '{"audio_key":"dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f","entity_key":"e_b1_capstone_decisions_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"93891bfab37f9610c8adff13a9ee1e4aa500f7032735a74ca98cead7e7c3fc05","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/dc4a396a3ec501b41c912376b6011ca3f2453e9c5adf987565cc3f1bedc91b6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_medias_et_opinions_04 -> audio/generated/fr-FR/utterances/ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('727cac05-cac2-561c-a806-ecace2cf1fa9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_medias_et_opinions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e419b069d0d683ae34557af6b8cc8aea1634a6c781a3f85710434a4fc1588c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b918af9b-41ea-570d-bc44-0281fe79a7ba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('727cac05-cac2-561c-a806-ecace2cf1fa9', 1), '1e419b069d0d683ae34557af6b8cc8aea1634a6c781a3f85710434a4fc1588c9',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944.mp3', 2742, '2026-09-14 11:01:23.111567', '0cc59ccade6789ba9128d733ccb0e53f6feae301a9079673d61e83e94daf9e07', 'validated', '{"audio_key":"ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944","entity_key":"u_medias_et_opinions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cc59ccade6789ba9128d733ccb0e53f6feae301a9079673d61e83e94daf9e07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_medias_et_opinions_02_listen -> audio/generated/fr-FR/utterances/ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c7afcd5f-dae1-55b1-9500-4f389e5b27f2', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_medias_et_opinions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e419b069d0d683ae34557af6b8cc8aea1634a6c781a3f85710434a4fc1588c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efbb398d-e11a-5b74-a0fe-60745baf9f97', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c7afcd5f-dae1-55b1-9500-4f389e5b27f2', 1), '1e419b069d0d683ae34557af6b8cc8aea1634a6c781a3f85710434a4fc1588c9',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944.mp3', 2742, '2026-09-14 11:01:23.111567', '0cc59ccade6789ba9128d733ccb0e53f6feae301a9079673d61e83e94daf9e07', 'validated', '{"audio_key":"ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944","entity_key":"e_medias_et_opinions_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cc59ccade6789ba9128d733ccb0e53f6feae301a9079673d61e83e94daf9e07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ebe27b4f4425f73ea8505689c813100ad0eb199c1d72554ad981a3d9bddeb944.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projets_et_avenir_01 -> audio/generated/fr-FR/utterances/ec4cfed9c0851e029632f1dddb8cf6a1b274d0821e8b56aa792ef23c6b4133b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03fae526-0beb-5fdf-8143-551ddb4980d0', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projets_et_avenir_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ea71db438709bb099afc063a2c76b3d6a6302f460f0c9539b8f37b2b44f1f93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e801a35c-1e5f-5764-bb69-e82b97920bc8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03fae526-0beb-5fdf-8143-551ddb4980d0', 1), '8ea71db438709bb099afc063a2c76b3d6a6302f460f0c9539b8f37b2b44f1f93',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ec4cfed9c0851e029632f1dddb8cf6a1b274d0821e8b56aa792ef23c6b4133b4.mp3', 2742, '2026-09-14 11:01:23.458762', '0165a7e2d04a358ae3b93bd825834c942f1a61be7e3f23cf8d62a12c7d7c9a38', 'validated', '{"audio_key":"ec4cfed9c0851e029632f1dddb8cf6a1b274d0821e8b56aa792ef23c6b4133b4","entity_key":"u_projets_et_avenir_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0165a7e2d04a358ae3b93bd825834c942f1a61be7e3f23cf8d62a12c7d7c9a38","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ec4cfed9c0851e029632f1dddb8cf6a1b274d0821e8b56aa792ef23c6b4133b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_logement_et_reclamations_04 -> audio/generated/fr-FR/utterances/f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f8bcc33-e975-56da-9942-0374138cc624', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_logement_et_reclamations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb9a1e33a36bc5ab3b337eda3da0317bdc2deebb5c9e09e243c173e047dbfd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8779f7ef-6d4d-5b59-9cc1-5e400d5e1234', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f8bcc33-e975-56da-9942-0374138cc624', 1), '2cb9a1e33a36bc5ab3b337eda3da0317bdc2deebb5c9e09e243c173e047dbfd0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264.mp3', 2873, '2026-09-14 11:01:24.288074', '5ef675ae35ac7273ba4d75223910a4c7f5524dd695f63350bf0b78e2fe995269', 'validated', '{"audio_key":"f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264","entity_key":"u_logement_et_reclamations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ef675ae35ac7273ba4d75223910a4c7f5524dd695f63350bf0b78e2fe995269","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_logement_et_reclamations_02_listen -> audio/generated/fr-FR/utterances/f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2fb1ce14-0c9b-50d7-9a2a-b968e67e286e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_logement_et_reclamations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb9a1e33a36bc5ab3b337eda3da0317bdc2deebb5c9e09e243c173e047dbfd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7d00309-d9f3-5b1a-b44d-5ec52d50e2f7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2fb1ce14-0c9b-50d7-9a2a-b968e67e286e', 1), '2cb9a1e33a36bc5ab3b337eda3da0317bdc2deebb5c9e09e243c173e047dbfd0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264.mp3', 2873, '2026-09-14 11:01:24.288074', '5ef675ae35ac7273ba4d75223910a4c7f5524dd695f63350bf0b78e2fe995269', 'validated', '{"audio_key":"f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264","entity_key":"e_logement_et_reclamations_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ef675ae35ac7273ba4d75223910a4c7f5524dd695f63350bf0b78e2fe995269","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f2aa502c927331767395511065c2fdca47c8f99c8fe1d920ab7b2dd75a9f6264.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_voyages_et_imprevus_04 -> audio/generated/fr-FR/utterances/f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('35b50efa-ff6b-5af4-91e4-6965a733dacb', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_voyages_et_imprevus_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df6b8e6b339ee64607e0a90cd9ae5b1119b3fa5f4e038198cf6456f904286e68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4e98741-37ac-557b-b3c8-c950d25c2393', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('35b50efa-ff6b-5af4-91e4-6965a733dacb', 1), 'df6b8e6b339ee64607e0a90cd9ae5b1119b3fa5f4e038198cf6456f904286e68',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa.mp3', 2533, '2026-09-14 11:01:24.595030', '9355013d264ab7fad6411344558720a17bd931c3f0c9bcb1aa9b9dd96018fdff', 'validated', '{"audio_key":"f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa","entity_key":"u_voyages_et_imprevus_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9355013d264ab7fad6411344558720a17bd931c3f0c9bcb1aa9b9dd96018fdff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_voyages_et_imprevus_02_listen -> audio/generated/fr-FR/utterances/f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e825e775-249b-5006-a37b-73e25ca621f4', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_voyages_et_imprevus_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df6b8e6b339ee64607e0a90cd9ae5b1119b3fa5f4e038198cf6456f904286e68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd15a844-8cd8-5ac4-aab2-45f848fd15ba', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e825e775-249b-5006-a37b-73e25ca621f4', 1), 'df6b8e6b339ee64607e0a90cd9ae5b1119b3fa5f4e038198cf6456f904286e68',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa.mp3', 2533, '2026-09-14 11:01:24.595030', '9355013d264ab7fad6411344558720a17bd931c3f0c9bcb1aa9b9dd96018fdff', 'validated', '{"audio_key":"f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa","entity_key":"e_voyages_et_imprevus_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9355013d264ab7fad6411344558720a17bd931c3f0c9bcb1aa9b9dd96018fdff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f386e9c4b2136c48427a4ab5abee6eddd4644d812d3dbcf95b595a34dd0e76fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_capstone_decisions_01 -> audio/generated/fr-FR/utterances/faaca01fecf427d6b1298ddd518a7ccf23897db3c7caf11eabf8ca79e79d900a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8229ac06-4674-501e-aa00-8ad327788180', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_capstone_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abadcf094c78d9455ff689ea5a764f79ab2ccaa41fae474d4b586a52a398134d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bee33bc9-e843-59df-af99-ebfe3c2d65c2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8229ac06-4674-501e-aa00-8ad327788180', 1), 'abadcf094c78d9455ff689ea5a764f79ab2ccaa41fae474d4b586a52a398134d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/faaca01fecf427d6b1298ddd518a7ccf23897db3c7caf11eabf8ca79e79d900a.mp3', 4623, '2026-09-14 11:01:25.762439', '426a7eafe740e2406ecfb6323e1b4f6d217d4fc80be8a8975b296df3391d8c56', 'validated', '{"audio_key":"faaca01fecf427d6b1298ddd518a7ccf23897db3c7caf11eabf8ca79e79d900a","entity_key":"u_b1_capstone_decisions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"426a7eafe740e2406ecfb6323e1b4f6d217d4fc80be8a8975b296df3391d8c56","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/faaca01fecf427d6b1298ddd518a7ccf23897db3c7caf11eabf8ca79e79d900a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_souvenirs_et_recits_02 -> audio/generated/fr-FR/utterances/fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b8a820fe-f687-5a46-9a37-23147546fc3e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_souvenirs_et_recits_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35c2dcd5104c98a75b4eb63dbe798e0b49ecda242a9290d9ffb11dd6f20f0364'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f60d384-e0fe-5bf7-805a-801be55c2d64', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b8a820fe-f687-5a46-9a37-23147546fc3e', 1), '35c2dcd5104c98a75b4eb63dbe798e0b49ecda242a9290d9ffb11dd6f20f0364',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322.mp3', 2455, '2026-09-14 11:01:25.765167', '505804d0add0aaaa88aa24ca3c26b4b0023d6cf147ec4349e334fa1f32d52329', 'validated', '{"audio_key":"fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322","entity_key":"u_souvenirs_et_recits_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"505804d0add0aaaa88aa24ca3c26b4b0023d6cf147ec4349e334fa1f32d52329","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_souvenirs_et_recits_01_listen -> audio/generated/fr-FR/utterances/fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('828ae2bd-8867-5284-bd30-5a271e2bc1a0', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_souvenirs_et_recits_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35c2dcd5104c98a75b4eb63dbe798e0b49ecda242a9290d9ffb11dd6f20f0364'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('475a09d5-99b0-5e0b-87bd-647fddd6b675', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('828ae2bd-8867-5284-bd30-5a271e2bc1a0', 1), '35c2dcd5104c98a75b4eb63dbe798e0b49ecda242a9290d9ffb11dd6f20f0364',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322.mp3', 2455, '2026-09-14 11:01:25.765167', '505804d0add0aaaa88aa24ca3c26b4b0023d6cf147ec4349e334fa1f32d52329', 'validated', '{"audio_key":"fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322","entity_key":"e_souvenirs_et_recits_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"505804d0add0aaaa88aa24ca3c26b4b0023d6cf147ec4349e334fa1f32d52329","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fd0eead56ac54594a47f5808ea1e0de2b216d478e3999d6b3b57d82515ec0322.mp3"}'
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

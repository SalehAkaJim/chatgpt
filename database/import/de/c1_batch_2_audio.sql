-- Generated audio link import for de-DE C1
-- Source manifest: audio/manifests/de/C1-batch-2.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_objections_counterarguments_02:1 -> audio/generated/de-DE/dialogues/0270b930b3356831bbd3a15681fccb71e88b6b120b723bd4bdf82be19f50187a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3169a9e5-e3a1-5ae9-8f2e-477648b1609d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9c5f0f657c55e3d6f74e93f01314a949203105bd2b470933d19e7cd809a952f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36087fee-b0b2-5b5d-aeb9-08deb42960cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3169a9e5-e3a1-5ae9-8f2e-477648b1609d', 1), 'b9c5f0f657c55e3d6f74e93f01314a949203105bd2b470933d19e7cd809a952f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0270b930b3356831bbd3a15681fccb71e88b6b120b723bd4bdf82be19f50187a.mp3', 4127, '2026-09-13 09:59:38.499536', '80a10de2e3a74d264897199d93382911e1201ee061ee741123814224555e21cd', 'validated', '{"audio_key":"0270b930b3356831bbd3a15681fccb71e88b6b120b723bd4bdf82be19f50187a","entity_key":"d_objections_counterarguments_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"80a10de2e3a74d264897199d93382911e1201ee061ee741123814224555e21cd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0270b930b3356831bbd3a15681fccb71e88b6b120b723bd4bdf82be19f50187a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_01:2 -> audio/generated/de-DE/dialogues/06a9402c3dfff64d86d7ea6346cee9389dcb6cdf0f86ba6e115a4f9dbde2664d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6fd6f30f-8535-5db4-84c1-6f5acce81ff5', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '601a1e27a336f17e9305ab7f113f2c9e61b3219e65faa3e4faddadb6f823e2e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eae92ec3-5a4d-57ac-bed0-7bfa350ab3c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6fd6f30f-8535-5db4-84c1-6f5acce81ff5', 1), '601a1e27a336f17e9305ab7f113f2c9e61b3219e65faa3e4faddadb6f823e2e2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/06a9402c3dfff64d86d7ea6346cee9389dcb6cdf0f86ba6e115a4f9dbde2664d.mp3', 4911, '2026-09-13 09:59:38.641830', '3af6b4fd5db90df32bbfd0de9677653b99edf505176c162d21f34e1158955e62', 'validated', '{"audio_key":"06a9402c3dfff64d86d7ea6346cee9389dcb6cdf0f86ba6e115a4f9dbde2664d","entity_key":"d_objections_counterarguments_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3af6b4fd5db90df32bbfd0de9677653b99edf505176c162d21f34e1158955e62","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/06a9402c3dfff64d86d7ea6346cee9389dcb6cdf0f86ba6e115a4f9dbde2664d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_01:3 -> audio/generated/de-DE/dialogues/09fe8073d9e0870ea0b9aa05140f4eb548fb9eed58a891d2a123c0c794fe9d91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52e86c34-e5e2-58c5-9f21-9e6ab4cf641c', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64e223516dfe884a2d76900990fdef683f6d24b3aff4a3d8a507be68a57dc8a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c369df0-bba2-5d42-9fa0-8ae64bdacf22', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52e86c34-e5e2-58c5-9f21-9e6ab4cf641c', 1), '64e223516dfe884a2d76900990fdef683f6d24b3aff4a3d8a507be68a57dc8a8',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/09fe8073d9e0870ea0b9aa05140f4eb548fb9eed58a891d2a123c0c794fe9d91.mp3', 2821, '2026-09-13 09:59:39.634256', '65d7d7a5387d6f79eed83fac39c47b0634b4fe7a9229f4b55c6e795fbc7f126b', 'validated', '{"audio_key":"09fe8073d9e0870ea0b9aa05140f4eb548fb9eed58a891d2a123c0c794fe9d91","entity_key":"d_stakeholder_requirements_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"65d7d7a5387d6f79eed83fac39c47b0634b4fe7a9229f4b55c6e795fbc7f126b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/09fe8073d9e0870ea0b9aa05140f4eb548fb9eed58a891d2a123c0c794fe9d91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_02:2 -> audio/generated/de-DE/dialogues/0c0bf934f4624494c96fa74c9c1219cf4e575f95f673b7f177926298aedc8ae3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4b70104-8ef2-5e15-8127-7e2725a74cb2', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c117a3ce60c0a51e7332f57faafeece8b0293ad2f086b86d6f383da39162f4a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3c7ae66-9a3d-5766-ad91-773210bd4033', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4b70104-8ef2-5e15-8127-7e2725a74cb2', 1), 'c117a3ce60c0a51e7332f57faafeece8b0293ad2f086b86d6f383da39162f4a8',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c0bf934f4624494c96fa74c9c1219cf4e575f95f673b7f177926298aedc8ae3.mp3', 4179, '2026-09-13 09:59:39.956785', '04eb9baa7565e6040b49efc3b0cfff6638aa029aeb6019bc6f61b53129cf3e10', 'validated', '{"audio_key":"0c0bf934f4624494c96fa74c9c1219cf4e575f95f673b7f177926298aedc8ae3","entity_key":"d_formal_escalation_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"04eb9baa7565e6040b49efc3b0cfff6638aa029aeb6019bc6f61b53129cf3e10","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0c0bf934f4624494c96fa74c9c1219cf4e575f95f673b7f177926298aedc8ae3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_02:3 -> audio/generated/de-DE/dialogues/0c706cafc0d03c13e8be98ac1a3547ab70501e140e0ec1bb106428a50e63fe18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1f61378-58e5-5875-8b80-3e3e4c527c09', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89d7693f1c9ee053dc7ce6e6f1c2e6c39e79b6ca34bf215e3f1e8cd5bb1631cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e8fe792-a58b-5bfc-becc-99cc88d0cf75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1f61378-58e5-5875-8b80-3e3e4c527c09', 1), '89d7693f1c9ee053dc7ce6e6f1c2e6c39e79b6ca34bf215e3f1e8cd5bb1631cc',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c706cafc0d03c13e8be98ac1a3547ab70501e140e0ec1bb106428a50e63fe18.mp3', 6347, '2026-09-13 09:59:41.242222', 'a02e6d29f6c4ec43ca57bfc878b4eb57c68c337ec0e821db509fff8ca4a5d770', 'validated', '{"audio_key":"0c706cafc0d03c13e8be98ac1a3547ab70501e140e0ec1bb106428a50e63fe18","entity_key":"d_feedback_coaching_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a02e6d29f6c4ec43ca57bfc878b4eb57c68c337ec0e821db509fff8ca4a5d770","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0c706cafc0d03c13e8be98ac1a3547ab70501e140e0ec1bb106428a50e63fe18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_02:2 -> audio/generated/de-DE/dialogues/0f2cb9c6202aa58083132354cce45fb6b3c55d2f1b296645a222c6d858c32560.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5c64d06-4623-5d77-8f18-01a49d35b199', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a38eb9d01b61ba907a0eb4e11552dd2d01cffd02234faa20b5ba066dece75ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23010b3e-b2e5-59b2-8003-16c90f60de0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5c64d06-4623-5d77-8f18-01a49d35b199', 1), '1a38eb9d01b61ba907a0eb4e11552dd2d01cffd02234faa20b5ba066dece75ac',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0f2cb9c6202aa58083132354cce45fb6b3c55d2f1b296645a222c6d858c32560.mp3', 2768, '2026-09-13 09:59:41.131671', '5d7ee031ec963d1a074401a7d0cef4390dd76ed395d56367d269436032c9e77a', 'validated', '{"audio_key":"0f2cb9c6202aa58083132354cce45fb6b3c55d2f1b296645a222c6d858c32560","entity_key":"d_delegation_accountability_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"5d7ee031ec963d1a074401a7d0cef4390dd76ed395d56367d269436032c9e77a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0f2cb9c6202aa58083132354cce45fb6b3c55d2f1b296645a222c6d858c32560.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_03:1 -> audio/generated/de-DE/dialogues/0fd03154c558c7dc19ecbf76c8fef2135459302970834319b0be9996ee3b2eb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a425683-4496-5c70-9610-4c70529c3e77', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '462184a63158dbc3a7cfad6d60fce060784a4be4225bd7da7f12abe69eb52388'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e2caff9-c92c-5a7f-8b5f-0b3bf6878e88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a425683-4496-5c70-9610-4c70529c3e77', 1), '462184a63158dbc3a7cfad6d60fce060784a4be4225bd7da7f12abe69eb52388',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0fd03154c558c7dc19ecbf76c8fef2135459302970834319b0be9996ee3b2eb9.mp3', 4597, '2026-09-13 09:59:42.676683', 'ad4ea7a999fbe3456f6c871d0ed2f44d9c97298159e5fbbbff72f0cd688bf5ba', 'validated', '{"audio_key":"0fd03154c558c7dc19ecbf76c8fef2135459302970834319b0be9996ee3b2eb9","entity_key":"d_collaboration_capstone_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad4ea7a999fbe3456f6c871d0ed2f44d9c97298159e5fbbbff72f0cd688bf5ba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0fd03154c558c7dc19ecbf76c8fef2135459302970834319b0be9996ee3b2eb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_02:3 -> audio/generated/de-DE/dialogues/11c5d2a62a68c9bae19849c1ffcfdd66e96403fc5c07e7baf94f0746fcf58866.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb2bcfd5-95a6-58f1-8a33-9a169bce6455', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '120a66e2e39e1c79f8a9474b16483c09adc8beb1a10dae9f62a0397a8bc1a13f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c85ca305-f7bd-5286-ae23-cbd1ea5c2fb8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb2bcfd5-95a6-58f1-8a33-9a169bce6455', 1), '120a66e2e39e1c79f8a9474b16483c09adc8beb1a10dae9f62a0397a8bc1a13f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/11c5d2a62a68c9bae19849c1ffcfdd66e96403fc5c07e7baf94f0746fcf58866.mp3', 3996, '2026-09-13 09:59:42.641268', '43751fa9e82f6ffebab9888cf9f5dc0cfbefe79a310668d9dd3fecee866425e6', 'validated', '{"audio_key":"11c5d2a62a68c9bae19849c1ffcfdd66e96403fc5c07e7baf94f0746fcf58866","entity_key":"d_objections_counterarguments_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43751fa9e82f6ffebab9888cf9f5dc0cfbefe79a310668d9dd3fecee866425e6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/11c5d2a62a68c9bae19849c1ffcfdd66e96403fc5c07e7baf94f0746fcf58866.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_03:1 -> audio/generated/de-DE/dialogues/13050fa2ec3e317504a97e055c9789fb7637f1b12741cefb04583442c5e44515.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('867f29bb-f2f5-542f-9bc6-e818eb82990a', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0f7951f7102a084cc655f8484aabc978b6b99b853be7555b92a87c9e60108d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('945c9496-1a0e-52b6-902a-a07ea3baf250', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('867f29bb-f2f5-542f-9bc6-e818eb82990a', 1), 'a0f7951f7102a084cc655f8484aabc978b6b99b853be7555b92a87c9e60108d1',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/13050fa2ec3e317504a97e055c9789fb7637f1b12741cefb04583442c5e44515.mp3', 4257, '2026-09-13 09:59:43.951507', '820631a3a72ebe0d6105707b9bfac45dbb46fdb0022a03fc41503c439372ff02', 'validated', '{"audio_key":"13050fa2ec3e317504a97e055c9789fb7637f1b12741cefb04583442c5e44515","entity_key":"d_cross_cultural_pragmatics_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"820631a3a72ebe0d6105707b9bfac45dbb46fdb0022a03fc41503c439372ff02","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/13050fa2ec3e317504a97e055c9789fb7637f1b12741cefb04583442c5e44515.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_02:4 -> audio/generated/de-DE/dialogues/136a9fe84a707523208fe7d3ebdf9af0c2c98770442830662a65fc5665ed6047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42836395-3b36-5a23-b6c4-64058a2c90ee', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a0614373de476cc02f61262ebe08c57158bd1922565984a77f2e5fbf794f366'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6c9465e-9827-5eb4-acf2-c4e4b99f2fe7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42836395-3b36-5a23-b6c4-64058a2c90ee', 1), '1a0614373de476cc02f61262ebe08c57158bd1922565984a77f2e5fbf794f366',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/136a9fe84a707523208fe7d3ebdf9af0c2c98770442830662a65fc5665ed6047.mp3', 4075, '2026-09-13 09:59:44.066726', 'efbaa5af9e2ae5dacbb91eeffde04c5603ac3df7716f837ed15deceb4babbc97', 'validated', '{"audio_key":"136a9fe84a707523208fe7d3ebdf9af0c2c98770442830662a65fc5665ed6047","entity_key":"d_scope_negotiation_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"efbaa5af9e2ae5dacbb91eeffde04c5603ac3df7716f837ed15deceb4babbc97","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/136a9fe84a707523208fe7d3ebdf9af0c2c98770442830662a65fc5665ed6047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_02:4 -> audio/generated/de-DE/dialogues/13e31c486220acffa6018fc3d90be7ee72be1a2e8472767ee6d8fcd75f88a31a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('855e0cb2-e19a-50df-9fb2-1eb5723e348f', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00ae101890238095a104f3c7e0934ec983e686ba7544547ec1e3f7e03bb21265'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1259010-6fe1-50b3-9d44-9f987413611b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('855e0cb2-e19a-50df-9fb2-1eb5723e348f', 1), '00ae101890238095a104f3c7e0934ec983e686ba7544547ec1e3f7e03bb21265',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/13e31c486220acffa6018fc3d90be7ee72be1a2e8472767ee6d8fcd75f88a31a.mp3', 4310, '2026-09-13 09:59:45.258225', '74a90ad81a17372e9b95bc84ed01fa8a07756af0cdefc69370af06fd9c419a28', 'validated', '{"audio_key":"13e31c486220acffa6018fc3d90be7ee72be1a2e8472767ee6d8fcd75f88a31a","entity_key":"d_delegation_accountability_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"74a90ad81a17372e9b95bc84ed01fa8a07756af0cdefc69370af06fd9c419a28","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/13e31c486220acffa6018fc3d90be7ee72be1a2e8472767ee6d8fcd75f88a31a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_01:3 -> audio/generated/de-DE/dialogues/142b0c50d0312947b383b6762f99bcbc5915254df807b49816c27fa05f9ef04a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67e0b85f-08b7-5deb-995f-b92d33a82c71', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd68a6d8d75533afd62d1643a544f4b0e804da9bf06aa7cf5ca10559871a6e0e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d93a2616-3b3f-5509-b578-7ca94c732572', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67e0b85f-08b7-5deb-995f-b92d33a82c71', 1), 'd68a6d8d75533afd62d1643a544f4b0e804da9bf06aa7cf5ca10559871a6e0e5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/142b0c50d0312947b383b6762f99bcbc5915254df807b49816c27fa05f9ef04a.mp3', 2821, '2026-09-13 09:59:45.156461', 'dcd842dea50724a62d1dcd0d00b9cd3caff7412fc746e7c8cbf873221cc81c2f', 'validated', '{"audio_key":"142b0c50d0312947b383b6762f99bcbc5915254df807b49816c27fa05f9ef04a","entity_key":"d_cross_cultural_pragmatics_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"dcd842dea50724a62d1dcd0d00b9cd3caff7412fc746e7c8cbf873221cc81c2f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/142b0c50d0312947b383b6762f99bcbc5915254df807b49816c27fa05f9ef04a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_01:1 -> audio/generated/de-DE/dialogues/163af2396b901c843dc7e702c42b3cf7c238c0e72f62b3220d3b571b26db7893.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77956978-0c5c-5055-83aa-dca70a7f1460', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e01906c5b8c7c06602fea924281edbc0bbc9b903320e335cd656613307956078'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77e5cde4-41ee-5fb1-86bd-a98d7875d273', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77956978-0c5c-5055-83aa-dca70a7f1460', 1), 'e01906c5b8c7c06602fea924281edbc0bbc9b903320e335cd656613307956078',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/163af2396b901c843dc7e702c42b3cf7c238c0e72f62b3220d3b571b26db7893.mp3', 3892, '2026-09-13 09:59:46.531049', 'c054c56d7142c97b363f986b86f78fc97fd025bd5df737335ee26eeb9dc16444', 'validated', '{"audio_key":"163af2396b901c843dc7e702c42b3cf7c238c0e72f62b3220d3b571b26db7893","entity_key":"d_objections_counterarguments_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c054c56d7142c97b363f986b86f78fc97fd025bd5df737335ee26eeb9dc16444","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/163af2396b901c843dc7e702c42b3cf7c238c0e72f62b3220d3b571b26db7893.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_03:1 -> audio/generated/de-DE/dialogues/17701085cf469f8a0b0e02d9ca4cab5f64939e5d5cffc235f1ab366eb2ec0230.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94c61186-eb5a-51a5-83a8-381e239718a4', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62ce514e0ed00cb20c9cbf133a00423f52dd5616744a5354d8ac0c971f38ca68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d4f728c-0434-5f8d-a832-d7b8a0c69ec6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94c61186-eb5a-51a5-83a8-381e239718a4', 1), '62ce514e0ed00cb20c9cbf133a00423f52dd5616744a5354d8ac0c971f38ca68',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17701085cf469f8a0b0e02d9ca4cab5f64939e5d5cffc235f1ab366eb2ec0230.mp3', 3474, '2026-09-13 09:59:46.565476', '88a34b87860fdcbf3ec2643d35dec773c13fc40fae9f9ee21ffbf309e69840fb', 'validated', '{"audio_key":"17701085cf469f8a0b0e02d9ca4cab5f64939e5d5cffc235f1ab366eb2ec0230","entity_key":"d_feedback_coaching_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"88a34b87860fdcbf3ec2643d35dec773c13fc40fae9f9ee21ffbf309e69840fb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/17701085cf469f8a0b0e02d9ca4cab5f64939e5d5cffc235f1ab366eb2ec0230.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_02:1 -> audio/generated/de-DE/dialogues/17b6aead9c06c25b8e8c835571d7f19c7bf1982e6cb8c008adfd6196370fd03a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3add04fa-78e2-5eec-8933-08fa07a7523d', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44fc1fe9646a8c3eef913b82f9b8d8f3555e2156338870cda706c7adcbbb58b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('512bc446-68e6-5fbf-be1d-fa7a77bf839a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3add04fa-78e2-5eec-8933-08fa07a7523d', 1), '44fc1fe9646a8c3eef913b82f9b8d8f3555e2156338870cda706c7adcbbb58b1',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17b6aead9c06c25b8e8c835571d7f19c7bf1982e6cb8c008adfd6196370fd03a.mp3', 2951, '2026-09-13 09:59:47.788777', 'a8416b943ceee65bb782ef3886ee450c5588d788db2ad0d9572917cc9f1ba6d2', 'validated', '{"audio_key":"17b6aead9c06c25b8e8c835571d7f19c7bf1982e6cb8c008adfd6196370fd03a","entity_key":"d_formal_escalation_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a8416b943ceee65bb782ef3886ee450c5588d788db2ad0d9572917cc9f1ba6d2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/17b6aead9c06c25b8e8c835571d7f19c7bf1982e6cb8c008adfd6196370fd03a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_01:1 -> audio/generated/de-DE/dialogues/180fa7398f041218ad120246f7b617faf497bbe7012750a955a761ea19271d5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cdd2efc5-ccdd-596b-b7c5-bce6fcb15582', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ddc441a17aa4490e5b1bc034dc7e3bc4ea308a03cf1693c965fcf24aa8ed489'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c036c4d5-41a1-58ef-9cb7-18c9cb7d2f7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cdd2efc5-ccdd-596b-b7c5-bce6fcb15582', 1), '6ddc441a17aa4490e5b1bc034dc7e3bc4ea308a03cf1693c965fcf24aa8ed489',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/180fa7398f041218ad120246f7b617faf497bbe7012750a955a761ea19271d5d.mp3', 4440, '2026-09-13 09:59:48.012630', '62fd8793c826ef445e5cd5de806ad9b2fc5239f3ccf152430619d9a5a96ddc0e', 'validated', '{"audio_key":"180fa7398f041218ad120246f7b617faf497bbe7012750a955a761ea19271d5d","entity_key":"d_cross_cultural_pragmatics_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"62fd8793c826ef445e5cd5de806ad9b2fc5239f3ccf152430619d9a5a96ddc0e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/180fa7398f041218ad120246f7b617faf497bbe7012750a955a761ea19271d5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_01:4 -> audio/generated/de-DE/dialogues/187896076630ffa29ca6459ba228e8bc84aa5962856f006eb87e6ce44d999029.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9877d9cb-9d1c-5883-b168-ff8998539a38', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a200fd580394ae55bca48b00e156da22232d1eb8de732e1daf64dedd8fcc802'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c565194d-8570-5695-8e1b-90f373f419e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9877d9cb-9d1c-5883-b168-ff8998539a38', 1), '5a200fd580394ae55bca48b00e156da22232d1eb8de732e1daf64dedd8fcc802',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/187896076630ffa29ca6459ba228e8bc84aa5962856f006eb87e6ce44d999029.mp3', 4545, '2026-09-13 09:59:49.197136', '68083e8c8ea7c544c3c7642e04d78dab055dbebd3d20f5976fe117847a139651', 'validated', '{"audio_key":"187896076630ffa29ca6459ba228e8bc84aa5962856f006eb87e6ce44d999029","entity_key":"d_delegation_accountability_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"68083e8c8ea7c544c3c7642e04d78dab055dbebd3d20f5976fe117847a139651","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/187896076630ffa29ca6459ba228e8bc84aa5962856f006eb87e6ce44d999029.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_03:2 -> audio/generated/de-DE/dialogues/187fc18f8594bbbdd5d45149595181b2c54426fe347189865a9718c7020e81e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8f25bb40-5d49-5c94-b5f5-460809cb5b89', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e44a3b9104028ab2262d4ba9abd867b82e60d5a495986c10c7b1b681261299bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22dd3eef-239e-5df0-99ab-2fb9ff080a49', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8f25bb40-5d49-5c94-b5f5-460809cb5b89', 1), 'e44a3b9104028ab2262d4ba9abd867b82e60d5a495986c10c7b1b681261299bc',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/187fc18f8594bbbdd5d45149595181b2c54426fe347189865a9718c7020e81e8.mp3', 4675, '2026-09-13 09:59:49.343749', 'bfa134fb3449c3e825d2e2752ca346fcf9611a2d21e7dc2b932c31a3d5a37f2f', 'validated', '{"audio_key":"187fc18f8594bbbdd5d45149595181b2c54426fe347189865a9718c7020e81e8","entity_key":"d_cross_cultural_pragmatics_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"bfa134fb3449c3e825d2e2752ca346fcf9611a2d21e7dc2b932c31a3d5a37f2f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/187fc18f8594bbbdd5d45149595181b2c54426fe347189865a9718c7020e81e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_01:4 -> audio/generated/de-DE/dialogues/199a48eb6e753be77bf081784adb55c3a0b805f540489e21f7d874ae80d7b2b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29a1cecb-fa17-5b11-b13e-e7bc87e705cf', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3009b24509bb55af260758f770785834191728f9a7c84aa08858e6f3ab8370b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df0810f5-7eb0-5941-b91a-7224e92e665d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29a1cecb-fa17-5b11-b13e-e7bc87e705cf', 1), '3009b24509bb55af260758f770785834191728f9a7c84aa08858e6f3ab8370b9',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/199a48eb6e753be77bf081784adb55c3a0b805f540489e21f7d874ae80d7b2b4.mp3', 4911, '2026-09-13 09:59:50.581547', 'cbdc86ad9b9106d2d28a056568d0f00705f7a975b9b95a7172ab61b24e8bd9cf', 'validated', '{"audio_key":"199a48eb6e753be77bf081784adb55c3a0b805f540489e21f7d874ae80d7b2b4","entity_key":"d_collaboration_capstone_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cbdc86ad9b9106d2d28a056568d0f00705f7a975b9b95a7172ab61b24e8bd9cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/199a48eb6e753be77bf081784adb55c3a0b805f540489e21f7d874ae80d7b2b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_02:1 -> audio/generated/de-DE/dialogues/19da8dfaa1e107f508bd5691f1c907c75d7e17d02f21ed5c98a8b6ae0abb2e9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eadc02f9-372e-5cf3-a8d4-700a4ce8d2b7', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09a4807ffed4dbbee56f0ad360caeb7854fd4e338a2c840be9b5f43ed54adaa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dae741eb-d83c-5f96-a308-a2c7e43b58a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eadc02f9-372e-5cf3-a8d4-700a4ce8d2b7', 1), '09a4807ffed4dbbee56f0ad360caeb7854fd4e338a2c840be9b5f43ed54adaa7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/19da8dfaa1e107f508bd5691f1c907c75d7e17d02f21ed5c98a8b6ae0abb2e9e.mp3', 3108, '2026-09-13 09:59:50.524644', '28682e5d90eaaf7edd815a2cc68cc019a6c0fb9e4acd97e383674bcfc7b3fe5e', 'validated', '{"audio_key":"19da8dfaa1e107f508bd5691f1c907c75d7e17d02f21ed5c98a8b6ae0abb2e9e","entity_key":"d_ambiguity_clarification_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"28682e5d90eaaf7edd815a2cc68cc019a6c0fb9e4acd97e383674bcfc7b3fe5e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/19da8dfaa1e107f508bd5691f1c907c75d7e17d02f21ed5c98a8b6ae0abb2e9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_02:2 -> audio/generated/de-DE/dialogues/19dc8c9b1ebf534b4635d5ed8d629f84fa303037fae6a73d229ed909272da679.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab1d863c-5245-5f15-b057-37bf9c05f168', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b06c3d3dac9ff45bec4c7a3d90c18c8c584777abdfbd0c10e8fc6d399ab24a88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6718602f-3dd6-5682-9891-48a8208e39d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab1d863c-5245-5f15-b057-37bf9c05f168', 1), 'b06c3d3dac9ff45bec4c7a3d90c18c8c584777abdfbd0c10e8fc6d399ab24a88',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/19dc8c9b1ebf534b4635d5ed8d629f84fa303037fae6a73d229ed909272da679.mp3', 8019, '2026-09-13 09:59:52.307260', '04aa0d269bb3104d684a4b068d87fc78964bf5c74838207fd29d281c70b6347b', 'validated', '{"audio_key":"19dc8c9b1ebf534b4635d5ed8d629f84fa303037fae6a73d229ed909272da679","entity_key":"d_knowledge_transfer_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"04aa0d269bb3104d684a4b068d87fc78964bf5c74838207fd29d281c70b6347b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/19dc8c9b1ebf534b4635d5ed8d629f84fa303037fae6a73d229ed909272da679.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_02:3 -> audio/generated/de-DE/dialogues/1f90533c6f2a9bc9e68eabc73502d2f2baf6f8bb39e358514ca56bf5dbaced73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d9bdac8-1397-50c3-b639-13d2c903465f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d3e15094233da126ffa688a6f6b13505aa15ecfce3f61a6fb7d5439d180fc7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bc3b989-b67b-53c9-9f1b-99f041d80b25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d9bdac8-1397-50c3-b639-13d2c903465f', 1), '5d3e15094233da126ffa688a6f6b13505aa15ecfce3f61a6fb7d5439d180fc7c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1f90533c6f2a9bc9e68eabc73502d2f2baf6f8bb39e358514ca56bf5dbaced73.mp3', 3369, '2026-09-13 09:59:51.821668', '49af23e473a8793d7aef3206e16e96f8c42d617c4f4873e019c02c7fa21f5f3b', 'validated', '{"audio_key":"1f90533c6f2a9bc9e68eabc73502d2f2baf6f8bb39e358514ca56bf5dbaced73","entity_key":"d_ambiguity_clarification_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"49af23e473a8793d7aef3206e16e96f8c42d617c4f4873e019c02c7fa21f5f3b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1f90533c6f2a9bc9e68eabc73502d2f2baf6f8bb39e358514ca56bf5dbaced73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_01:2 -> audio/generated/de-DE/dialogues/209026e1f8423078b6dfd147bcc77c7a234c822a4220862a08a5e50813748f73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('184ea0c2-3ae5-5274-976a-0f78ecbb8d46', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efbd01e4337cbe596fe2faece14ec0e7cc4a47f2fd9b70fd63d906e4135ff33a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99688add-6f9d-53c0-8af6-4bf535e1af9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('184ea0c2-3ae5-5274-976a-0f78ecbb8d46', 1), 'efbd01e4337cbe596fe2faece14ec0e7cc4a47f2fd9b70fd63d906e4135ff33a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/209026e1f8423078b6dfd147bcc77c7a234c822a4220862a08a5e50813748f73.mp3', 3996, '2026-09-13 09:59:53.115141', 'f99fe8a098df8b5c3afbc480151d34a94cc3bc7c73ecfffdc5b04c2e3bbf301e', 'validated', '{"audio_key":"209026e1f8423078b6dfd147bcc77c7a234c822a4220862a08a5e50813748f73","entity_key":"d_knowledge_transfer_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f99fe8a098df8b5c3afbc480151d34a94cc3bc7c73ecfffdc5b04c2e3bbf301e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/209026e1f8423078b6dfd147bcc77c7a234c822a4220862a08a5e50813748f73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_02:3 -> audio/generated/de-DE/dialogues/25062abcba6c187610cd63e395aca8bfed3f900ef05ce89f3b59e961045c581c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38a258c2-123a-5f1a-b77b-75b154c81a3b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71949aa8d3b367938855d0d183b0873197f64f594a8a7bf71216c189bae93263'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e74ff926-9ea7-5e4e-a015-2a20c1040ed8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38a258c2-123a-5f1a-b77b-75b154c81a3b', 1), '71949aa8d3b367938855d0d183b0873197f64f594a8a7bf71216c189bae93263',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/25062abcba6c187610cd63e395aca8bfed3f900ef05ce89f3b59e961045c581c.mp3', 2951, '2026-09-13 09:59:53.462717', '448e36a5de84f837b039d47157bb0b981dd29243a3ad315d1775f3c7b275c6be', 'validated', '{"audio_key":"25062abcba6c187610cd63e395aca8bfed3f900ef05ce89f3b59e961045c581c","entity_key":"d_cross_cultural_pragmatics_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"448e36a5de84f837b039d47157bb0b981dd29243a3ad315d1775f3c7b275c6be","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/25062abcba6c187610cd63e395aca8bfed3f900ef05ce89f3b59e961045c581c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_03:3 -> audio/generated/de-DE/dialogues/25dfbe50f9c20839cfc29488dc332da2a245a7f50687c1ab79251e2c0c904342.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1507883d-d749-594a-8229-db6242cb30c4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fccbd66299efaffc9d00c0e49d2dd00c98a208959b30a2a09d6dd0d2ca90283d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3352e093-df91-5307-8fce-494f6323ca8c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1507883d-d749-594a-8229-db6242cb30c4', 1), 'fccbd66299efaffc9d00c0e49d2dd00c98a208959b30a2a09d6dd0d2ca90283d',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/25dfbe50f9c20839cfc29488dc332da2a245a7f50687c1ab79251e2c0c904342.mp3', 4127, '2026-09-13 09:59:54.464051', '31cb241fa243d896021c8966c80a4f9c02566294abd69fe0382af5a2a0376685', 'validated', '{"audio_key":"25dfbe50f9c20839cfc29488dc332da2a245a7f50687c1ab79251e2c0c904342","entity_key":"d_objections_counterarguments_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"31cb241fa243d896021c8966c80a4f9c02566294abd69fe0382af5a2a0376685","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/25dfbe50f9c20839cfc29488dc332da2a245a7f50687c1ab79251e2c0c904342.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_02:2 -> audio/generated/de-DE/dialogues/26d2799f3dfd7ade9360a96a9ba66dde532881210f8f87820cf63e5c8e75daa3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34808e9f-1d2d-5d38-9555-cb995f36f147', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '416ad6131da621defcdfaca51f0a692e5e4e696c534933426565e26e49ae178e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29aa074e-fcf1-5183-9958-9a8dd9e4e2ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34808e9f-1d2d-5d38-9555-cb995f36f147', 1), '416ad6131da621defcdfaca51f0a692e5e4e696c534933426565e26e49ae178e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/26d2799f3dfd7ade9360a96a9ba66dde532881210f8f87820cf63e5c8e75daa3.mp3', 5198, '2026-09-13 09:59:54.918083', 'f4130d1688d067468993c170ca093acfce03bcffc11840c6e7821e3762e8eb7a', 'validated', '{"audio_key":"26d2799f3dfd7ade9360a96a9ba66dde532881210f8f87820cf63e5c8e75daa3","entity_key":"d_collaboration_capstone_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f4130d1688d067468993c170ca093acfce03bcffc11840c6e7821e3762e8eb7a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/26d2799f3dfd7ade9360a96a9ba66dde532881210f8f87820cf63e5c8e75daa3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_01:1 -> audio/generated/de-DE/dialogues/27198b16c536fa4d5528f3ea597e39c4867d4b67ccde0afaa7d945eaeb67c1e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d1793cf-126b-5fc4-b405-537da8f58f21', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2bbee8b8dcbf780fa6fe771fc7bb9dc0c2c6d6a9a8c0a04d3073eb5f5788ef3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b9e87cf-7f05-55ca-b10f-ebd80d68e853', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d1793cf-126b-5fc4-b405-537da8f58f21', 1), 'f2bbee8b8dcbf780fa6fe771fc7bb9dc0c2c6d6a9a8c0a04d3073eb5f5788ef3',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27198b16c536fa4d5528f3ea597e39c4867d4b67ccde0afaa7d945eaeb67c1e1.mp3', 3186, '2026-09-13 09:59:55.705251', 'cc96a1fec65dde1768d68452cb1296eeeaea7d7225eb457103e76b519d2e360b', 'validated', '{"audio_key":"27198b16c536fa4d5528f3ea597e39c4867d4b67ccde0afaa7d945eaeb67c1e1","entity_key":"d_delegation_accountability_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cc96a1fec65dde1768d68452cb1296eeeaea7d7225eb457103e76b519d2e360b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/27198b16c536fa4d5528f3ea597e39c4867d4b67ccde0afaa7d945eaeb67c1e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_01:3 -> audio/generated/de-DE/dialogues/2cc69718dbf1f39c49a1fbf5174f6da2692d4cd522fb8c5225c7e84f5232c9e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d89d819e-3495-542f-957f-e723b1a7028e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d128528e608e7ce6f68962eccbaed4dcc37ab90054a8a8d1e1e5a59f4e1ab82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e17b89fb-e7b0-5699-b39f-81c2b53d5261', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d89d819e-3495-542f-957f-e723b1a7028e', 1), '8d128528e608e7ce6f68962eccbaed4dcc37ab90054a8a8d1e1e5a59f4e1ab82',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2cc69718dbf1f39c49a1fbf5174f6da2692d4cd522fb8c5225c7e84f5232c9e2.mp3', 6530, '2026-09-13 09:59:56.506892', 'af10b6a0a17e8ae1a7e67b4e1f87002e20d0fb4d5d4000fc34e3baf76c0bb9ce', 'validated', '{"audio_key":"2cc69718dbf1f39c49a1fbf5174f6da2692d4cd522fb8c5225c7e84f5232c9e2","entity_key":"d_delegation_accountability_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"af10b6a0a17e8ae1a7e67b4e1f87002e20d0fb4d5d4000fc34e3baf76c0bb9ce","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2cc69718dbf1f39c49a1fbf5174f6da2692d4cd522fb8c5225c7e84f5232c9e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_03:1 -> audio/generated/de-DE/dialogues/2d612e96024879d46d251f30de45685a89bda59d77362e9c8bf5bc94327ede14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5be0daef-f04f-57fa-aba9-d22c98f940ef', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04032a5cfa0d59870a94a2ce124552871c11ef1f38a3f55f4dd47bf94802e2f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f0e5355-1c89-5481-ad32-422628b66355', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5be0daef-f04f-57fa-aba9-d22c98f940ef', 1), '04032a5cfa0d59870a94a2ce124552871c11ef1f38a3f55f4dd47bf94802e2f6',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d612e96024879d46d251f30de45685a89bda59d77362e9c8bf5bc94327ede14.mp3', 3186, '2026-09-13 09:59:56.919006', '8d08df15ac7b10cd01fce9f05cd582a9480ac8aa091fae0bc82267180dc9310b', 'validated', '{"audio_key":"2d612e96024879d46d251f30de45685a89bda59d77362e9c8bf5bc94327ede14","entity_key":"d_formal_escalation_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8d08df15ac7b10cd01fce9f05cd582a9480ac8aa091fae0bc82267180dc9310b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2d612e96024879d46d251f30de45685a89bda59d77362e9c8bf5bc94327ede14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_03:3 -> audio/generated/de-DE/dialogues/30e978d2288ffc41999b6bbe4b583121871325590676f4492d8325d962013c4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('551f3bf4-eaac-587d-8358-363ca66281e3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48b5c1a81079ae78ec956b1c49fdeff6e4eb3bd0cd861a26b2162aa2be4d4ac5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4532379c-3703-548f-bf27-d68ae76383d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('551f3bf4-eaac-587d-8358-363ca66281e3', 1), '48b5c1a81079ae78ec956b1c49fdeff6e4eb3bd0cd861a26b2162aa2be4d4ac5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30e978d2288ffc41999b6bbe4b583121871325590676f4492d8325d962013c4a.mp3', 6400, '2026-09-13 09:59:58.150397', 'e91d2e25f986eaac1b48fb04307a260fb6c5d0f5a5e4753668f804021160b927', 'validated', '{"audio_key":"30e978d2288ffc41999b6bbe4b583121871325590676f4492d8325d962013c4a","entity_key":"d_feedback_coaching_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e91d2e25f986eaac1b48fb04307a260fb6c5d0f5a5e4753668f804021160b927","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/30e978d2288ffc41999b6bbe4b583121871325590676f4492d8325d962013c4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_03:2 -> audio/generated/de-DE/dialogues/324157a2811fdb99d539822f0ac668ad983fb98fbe38e957c9a0a1d90511d068.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1feab7e5-d71d-5cf3-8fb1-971a0f3a95d4', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '278617cf9cf77f768b04b544e2439a54e5c0f65d506749578c92d4730e37b886'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccae47d5-9934-54eb-a6b8-295d229ccf2d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1feab7e5-d71d-5cf3-8fb1-971a0f3a95d4', 1), '278617cf9cf77f768b04b544e2439a54e5c0f65d506749578c92d4730e37b886',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/324157a2811fdb99d539822f0ac668ad983fb98fbe38e957c9a0a1d90511d068.mp3', 4545, '2026-09-13 09:59:58.295541', '7b9e186b83f797b4d06bd80db5c1bf78533a603d9102f65220b2a2ef6fda9394', 'validated', '{"audio_key":"324157a2811fdb99d539822f0ac668ad983fb98fbe38e957c9a0a1d90511d068","entity_key":"d_stakeholder_requirements_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7b9e186b83f797b4d06bd80db5c1bf78533a603d9102f65220b2a2ef6fda9394","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/324157a2811fdb99d539822f0ac668ad983fb98fbe38e957c9a0a1d90511d068.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_02:2 -> audio/generated/de-DE/dialogues/32f83fcf03d01c58d570b7c52c2c20fde20d42adf667bfe3aaa9961397fd20e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fab0d454-94d1-59c9-8004-70ff534e57e6', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f692cbfefca74d0211bafc47eb0fc68d4cb1f6806802d2e5bc245c442c613f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f251987e-544e-5410-87fc-84257073684a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fab0d454-94d1-59c9-8004-70ff534e57e6', 1), '5f692cbfefca74d0211bafc47eb0fc68d4cb1f6806802d2e5bc245c442c613f1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/32f83fcf03d01c58d570b7c52c2c20fde20d42adf667bfe3aaa9961397fd20e3.mp3', 4545, '2026-09-13 09:59:59.497162', '64f4b9accc47de6e48cb65388095e329ae218d955c44e66e01d1e66866502cfe', 'validated', '{"audio_key":"32f83fcf03d01c58d570b7c52c2c20fde20d42adf667bfe3aaa9961397fd20e3","entity_key":"d_cross_cultural_pragmatics_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"64f4b9accc47de6e48cb65388095e329ae218d955c44e66e01d1e66866502cfe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/32f83fcf03d01c58d570b7c52c2c20fde20d42adf667bfe3aaa9961397fd20e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_01:3 -> audio/generated/de-DE/dialogues/33f2c4a8aa50fc78a01321f20dfe711d241d1f83df4eb2956ff1d7206fd574de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7da0ae98-1d11-5315-90f5-f4774fc8209a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53ab310f2835afa1e20ff4bdb19449c5501b56d0fcd02b0199a2c580f9f921bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('514229d9-f159-58e3-b6f4-7747cc2f6756', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7da0ae98-1d11-5315-90f5-f4774fc8209a', 1), '53ab310f2835afa1e20ff4bdb19449c5501b56d0fcd02b0199a2c580f9f921bc',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/33f2c4a8aa50fc78a01321f20dfe711d241d1f83df4eb2956ff1d7206fd574de.mp3', 3239, '2026-09-13 09:59:59.533576', '59c7e17df6ddf262c860f11f491e42e9d075d716d0511717408ae5c3e5805ee2', 'validated', '{"audio_key":"33f2c4a8aa50fc78a01321f20dfe711d241d1f83df4eb2956ff1d7206fd574de","entity_key":"d_knowledge_transfer_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"59c7e17df6ddf262c860f11f491e42e9d075d716d0511717408ae5c3e5805ee2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/33f2c4a8aa50fc78a01321f20dfe711d241d1f83df4eb2956ff1d7206fd574de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_03:4 -> audio/generated/de-DE/dialogues/35f9ff4ff9f9276b5e2e65c301e1fe9e73f63a9bb51d6dc87d0f75266295bb05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03a9b340-d42b-5a46-9e35-0c617d0a778a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4be98057b1bd1a09c000cea0e228899ee9cbb399f09452d518185f09c2816d1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('602f407c-e5b5-53c3-ada3-f9beb6ee14ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03a9b340-d42b-5a46-9e35-0c617d0a778a', 1), '4be98057b1bd1a09c000cea0e228899ee9cbb399f09452d518185f09c2816d1c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/35f9ff4ff9f9276b5e2e65c301e1fe9e73f63a9bb51d6dc87d0f75266295bb05.mp3', 4179, '2026-09-13 10:00:00.753970', '237bea180222371085cfef25e94d40026f90592afdd56c8e6026bae5309c048f', 'validated', '{"audio_key":"35f9ff4ff9f9276b5e2e65c301e1fe9e73f63a9bb51d6dc87d0f75266295bb05","entity_key":"d_cross_cultural_pragmatics_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"237bea180222371085cfef25e94d40026f90592afdd56c8e6026bae5309c048f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/35f9ff4ff9f9276b5e2e65c301e1fe9e73f63a9bb51d6dc87d0f75266295bb05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_02:2 -> audio/generated/de-DE/dialogues/372483bbb1f332f12af87bcbd47dbd14c022126e9852b55ffdd63598eea06205.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdaf1ee0-9ba1-50df-a54c-ddac56ac9373', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fca9b0ff22ec9b82732663fd02ed549cd34947d8a82a231d2643b54b91266cdb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e169ce4-5042-59a0-8753-8a88276a42b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdaf1ee0-9ba1-50df-a54c-ddac56ac9373', 1), 'fca9b0ff22ec9b82732663fd02ed549cd34947d8a82a231d2643b54b91266cdb',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/372483bbb1f332f12af87bcbd47dbd14c022126e9852b55ffdd63598eea06205.mp3', 4127, '2026-09-13 10:00:00.805362', 'aaf714c4bfd8292b77b6483c94a50f0f285fb7be8ea7829d992b94ea48ef3eb0', 'validated', '{"audio_key":"372483bbb1f332f12af87bcbd47dbd14c022126e9852b55ffdd63598eea06205","entity_key":"d_feedback_coaching_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aaf714c4bfd8292b77b6483c94a50f0f285fb7be8ea7829d992b94ea48ef3eb0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/372483bbb1f332f12af87bcbd47dbd14c022126e9852b55ffdd63598eea06205.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_03:4 -> audio/generated/de-DE/dialogues/3796d9f5e816ab3437f0d5d234c2ef623b81ddaefb7597d8f84bec62fbca2ee2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a07e805c-1930-57bf-897a-b8aa87ab0dca', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a56ec991f37710167ad3a283213f7ed9c6a010b3255628e2959b2133c7e553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9db370be-8adc-5cf7-bb7d-1b4d006b9d75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a07e805c-1930-57bf-897a-b8aa87ab0dca', 1), '73a56ec991f37710167ad3a283213f7ed9c6a010b3255628e2959b2133c7e553',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3796d9f5e816ab3437f0d5d234c2ef623b81ddaefb7597d8f84bec62fbca2ee2.mp3', 2821, '2026-09-13 10:00:01.874666', 'f6154a912915143fc53c7c1ca88d3388d8ade7eb2b655af67a15d14889148ab0', 'validated', '{"audio_key":"3796d9f5e816ab3437f0d5d234c2ef623b81ddaefb7597d8f84bec62fbca2ee2","entity_key":"d_knowledge_transfer_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f6154a912915143fc53c7c1ca88d3388d8ade7eb2b655af67a15d14889148ab0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3796d9f5e816ab3437f0d5d234c2ef623b81ddaefb7597d8f84bec62fbca2ee2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_03:1 -> audio/generated/de-DE/dialogues/3875c60f8eb234fbd73ddb6fe51da8578c14030aada54e6e63fe8ef68dcddee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f984b6be-ab0f-59cf-b83d-6372e0739e13', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f4ac37bcd982296a1a19d23f18ebcf600dfe63d31b06ecb39b8de6c05d22c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('865d3592-f0ef-5e50-b4ac-4a4d4d32f3d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f984b6be-ab0f-59cf-b83d-6372e0739e13', 1), '55f4ac37bcd982296a1a19d23f18ebcf600dfe63d31b06ecb39b8de6c05d22c1',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3875c60f8eb234fbd73ddb6fe51da8578c14030aada54e6e63fe8ef68dcddee3.mp3', 4414, '2026-09-13 10:00:02.113440', 'dab7740bc7a32402aac1a81f4995457d67f10a77605706be502587cc608cf443', 'validated', '{"audio_key":"3875c60f8eb234fbd73ddb6fe51da8578c14030aada54e6e63fe8ef68dcddee3","entity_key":"d_delegation_accountability_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dab7740bc7a32402aac1a81f4995457d67f10a77605706be502587cc608cf443","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3875c60f8eb234fbd73ddb6fe51da8578c14030aada54e6e63fe8ef68dcddee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_02:3 -> audio/generated/de-DE/dialogues/38d2cab957b96e2a106f99da350d0ed55e739f23481e92c95dfa67b3c7ae243c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58d3b1dd-1767-5f86-b746-287ed9149fdf', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b1419bab090c2cf17045a75e3bf4a10968824ee573dc529f699cbbe0bd05d77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04ae0c5c-2652-5815-abe6-a3c979203855', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58d3b1dd-1767-5f86-b746-287ed9149fdf', 1), '8b1419bab090c2cf17045a75e3bf4a10968824ee573dc529f699cbbe0bd05d77',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/38d2cab957b96e2a106f99da350d0ed55e739f23481e92c95dfa67b3c7ae243c.mp3', 3343, '2026-09-13 10:00:03.186495', 'cd2f7f02a2247376a875bfbbda50c6128aae938c481ccb494169fa887f75528f', 'validated', '{"audio_key":"38d2cab957b96e2a106f99da350d0ed55e739f23481e92c95dfa67b3c7ae243c","entity_key":"d_knowledge_transfer_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cd2f7f02a2247376a875bfbbda50c6128aae938c481ccb494169fa887f75528f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/38d2cab957b96e2a106f99da350d0ed55e739f23481e92c95dfa67b3c7ae243c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_02:3 -> audio/generated/de-DE/dialogues/3b4a9531b0d0064ff072caa2c7335a99f22b48fb5b99dbd9ea98acf1da4cdfbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f46b3c98-472b-51a7-abfb-db1351da61e3', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71a072eed376ae47f0164a4874aabb4d24a846bf5955d0b6f489610c11f1dee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d67cdd7-e678-5030-a9ff-ad765834c138', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f46b3c98-472b-51a7-abfb-db1351da61e3', 1), '71a072eed376ae47f0164a4874aabb4d24a846bf5955d0b6f489610c11f1dee5',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3b4a9531b0d0064ff072caa2c7335a99f22b48fb5b99dbd9ea98acf1da4cdfbd.mp3', 3186, '2026-09-13 10:00:03.391878', '9c3eeb49e7d4a089884e2eb9b879eb18c7bc71a4eeb6d91a73e0ff4636bbe180', 'validated', '{"audio_key":"3b4a9531b0d0064ff072caa2c7335a99f22b48fb5b99dbd9ea98acf1da4cdfbd","entity_key":"d_scope_negotiation_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9c3eeb49e7d4a089884e2eb9b879eb18c7bc71a4eeb6d91a73e0ff4636bbe180","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3b4a9531b0d0064ff072caa2c7335a99f22b48fb5b99dbd9ea98acf1da4cdfbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_02:3 -> audio/generated/de-DE/dialogues/3c224b2e89391fcaeff929b94904b573ab44f586d9cd39f1d248de4f2b18e430.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dfb0ddc8-bd27-5ce0-9911-889a3cdd058b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0df89ef38c0b11a03d9a194e789bb2946f52094b5238a1d629a63323324e499d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77599b20-34eb-557f-be4b-d8f2b1ba4f81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dfb0ddc8-bd27-5ce0-9911-889a3cdd058b', 1), '0df89ef38c0b11a03d9a194e789bb2946f52094b5238a1d629a63323324e499d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3c224b2e89391fcaeff929b94904b573ab44f586d9cd39f1d248de4f2b18e430.mp3', 4623, '2026-09-13 10:00:04.542211', '5ecd47c3a2ca3132d6730b0f4f7569d3a635a1591dd6fa37e0bf9fb7051c5e88', 'validated', '{"audio_key":"3c224b2e89391fcaeff929b94904b573ab44f586d9cd39f1d248de4f2b18e430","entity_key":"d_collaboration_capstone_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5ecd47c3a2ca3132d6730b0f4f7569d3a635a1591dd6fa37e0bf9fb7051c5e88","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3c224b2e89391fcaeff929b94904b573ab44f586d9cd39f1d248de4f2b18e430.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_03:3 -> audio/generated/de-DE/dialogues/3dbe11320a8a0da4e85b4baa516f7063a28c0c62cae9aca258a5547a8212a976.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2dd64290-86fc-5ea4-9796-90b61d43ebae', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85d6df7f500f8dd0ffba5c436c84537b22fdf6da650255defd5f8460dfcbd769'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c177d58a-6174-5c08-9057-72eed6cd56ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2dd64290-86fc-5ea4-9796-90b61d43ebae', 1), '85d6df7f500f8dd0ffba5c436c84537b22fdf6da650255defd5f8460dfcbd769',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3dbe11320a8a0da4e85b4baa516f7063a28c0c62cae9aca258a5547a8212a976.mp3', 1488, '2026-09-13 10:00:04.443007', '21c58f21575a3d84cc0fb199ef620eca246e6653b07bfa741dabb2f84247a0d3', 'validated', '{"audio_key":"3dbe11320a8a0da4e85b4baa516f7063a28c0c62cae9aca258a5547a8212a976","entity_key":"d_ambiguity_clarification_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21c58f21575a3d84cc0fb199ef620eca246e6653b07bfa741dabb2f84247a0d3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3dbe11320a8a0da4e85b4baa516f7063a28c0c62cae9aca258a5547a8212a976.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_02:1 -> audio/generated/de-DE/dialogues/3e3ca532a1b723b09efaf79602ab38d390aab7a02ef0602e0503eca7a7444c2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04f326d0-0e14-50d3-bc39-aa6d1eede780', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6830508309e67b9965e1e5fdf6ce615b65102e2082980da729c63dd63a5b5a22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1edd1fd-15b5-5b53-b06d-37c8df687f5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04f326d0-0e14-50d3-bc39-aa6d1eede780', 1), '6830508309e67b9965e1e5fdf6ce615b65102e2082980da729c63dd63a5b5a22',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e3ca532a1b723b09efaf79602ab38d390aab7a02ef0602e0503eca7a7444c2a.mp3', 5276, '2026-09-13 10:00:05.929585', 'ba4a7034a74a7be1a1124ed39ca2fa5a53b64ba51e2d44f0516ff24a72728f44', 'validated', '{"audio_key":"3e3ca532a1b723b09efaf79602ab38d390aab7a02ef0602e0503eca7a7444c2a","entity_key":"d_stakeholder_requirements_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ba4a7034a74a7be1a1124ed39ca2fa5a53b64ba51e2d44f0516ff24a72728f44","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3e3ca532a1b723b09efaf79602ab38d390aab7a02ef0602e0503eca7a7444c2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_02:4 -> audio/generated/de-DE/dialogues/4103fe9ac9f37f117a47c68e61bc2e37965aa0577368fad3b2ea244169ee8ce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ac30caa-3f84-5e08-a3f4-8e7f0424ed81', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afbb022733dcc5e6fb2040b7293f731940f4b359b5716335aa0b0840ea4f55a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e62e09d-51ec-5820-b23b-9430ba6af9f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ac30caa-3f84-5e08-a3f4-8e7f0424ed81', 1), 'afbb022733dcc5e6fb2040b7293f731940f4b359b5716335aa0b0840ea4f55a8',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4103fe9ac9f37f117a47c68e61bc2e37965aa0577368fad3b2ea244169ee8ce2.mp3', 3004, '2026-09-13 10:00:05.652864', '6dee392304c6d4e11841cffee401aa122af7f6438b16210f3b082a1bc404122a', 'validated', '{"audio_key":"4103fe9ac9f37f117a47c68e61bc2e37965aa0577368fad3b2ea244169ee8ce2","entity_key":"d_formal_escalation_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6dee392304c6d4e11841cffee401aa122af7f6438b16210f3b082a1bc404122a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4103fe9ac9f37f117a47c68e61bc2e37965aa0577368fad3b2ea244169ee8ce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_01:2 -> audio/generated/de-DE/dialogues/4255fbda7ade19064e84844c04e873db0841035693927aea3d9a3cace1bed9f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('025785cb-f075-52ca-b38e-b3b6b4e0106f', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16e63f8f677a22451ce983d83577ccbadcec70dd079e3151a5c91dc125fd9422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('220466f5-d970-5bb2-9d35-57d87f1a5148', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('025785cb-f075-52ca-b38e-b3b6b4e0106f', 1), '16e63f8f677a22451ce983d83577ccbadcec70dd079e3151a5c91dc125fd9422',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4255fbda7ade19064e84844c04e873db0841035693927aea3d9a3cace1bed9f5.mp3', 3474, '2026-09-13 10:00:06.925055', '335e8f9fd2196959a4af6abeefbaf34802d3dfd8c258d97bcf4f6d9929b380b7', 'validated', '{"audio_key":"4255fbda7ade19064e84844c04e873db0841035693927aea3d9a3cace1bed9f5","entity_key":"d_feedback_coaching_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"335e8f9fd2196959a4af6abeefbaf34802d3dfd8c258d97bcf4f6d9929b380b7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4255fbda7ade19064e84844c04e873db0841035693927aea3d9a3cace1bed9f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_03:1 -> audio/generated/de-DE/dialogues/447cd44f307efabda3f93857feccab27e64462dcdc9a147e580f1cce355c0a9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('036859d4-404d-5069-80ac-8eda40283659', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b8a78e53ee2192d55c8c567e0e8062e63779f1ca8b5784d262c1e2abbb972d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ff61236-2118-5bfa-a82c-519c48d8ede3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('036859d4-404d-5069-80ac-8eda40283659', 1), '4b8a78e53ee2192d55c8c567e0e8062e63779f1ca8b5784d262c1e2abbb972d5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/447cd44f307efabda3f93857feccab27e64462dcdc9a147e580f1cce355c0a9b.mp3', 3291, '2026-09-13 10:00:07.134327', '9c8ad7bcf21ed8b375f0a129590c41fe6e0d344ce2c20f5805e01f64345b59c6', 'validated', '{"audio_key":"447cd44f307efabda3f93857feccab27e64462dcdc9a147e580f1cce355c0a9b","entity_key":"d_knowledge_transfer_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9c8ad7bcf21ed8b375f0a129590c41fe6e0d344ce2c20f5805e01f64345b59c6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/447cd44f307efabda3f93857feccab27e64462dcdc9a147e580f1cce355c0a9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_03:4 -> audio/generated/de-DE/dialogues/45bde0b4e755b1c69283af7332f672187b0b7d42cb2e67ac7c6f08533311cc5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4511e299-8ee7-5b0c-9653-1ae6b0b52574', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67ad31b4d045bae0fd227d7de14a15f8a534a54d4f0bdcc17c8d870936ec12fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ac004f1-5631-51e7-9faa-e2ab5b5c5874', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4511e299-8ee7-5b0c-9653-1ae6b0b52574', 1), '67ad31b4d045bae0fd227d7de14a15f8a534a54d4f0bdcc17c8d870936ec12fd',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/45bde0b4e755b1c69283af7332f672187b0b7d42cb2e67ac7c6f08533311cc5a.mp3', 3892, '2026-09-13 10:00:08.181344', 'e3fd370e29be0bc0b9c9236b08d9ee78fdb5c041b3e2540f2e3c5c0afb661da7', 'validated', '{"audio_key":"45bde0b4e755b1c69283af7332f672187b0b7d42cb2e67ac7c6f08533311cc5a","entity_key":"d_objections_counterarguments_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"e3fd370e29be0bc0b9c9236b08d9ee78fdb5c041b3e2540f2e3c5c0afb661da7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/45bde0b4e755b1c69283af7332f672187b0b7d42cb2e67ac7c6f08533311cc5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_01:1 -> audio/generated/de-DE/dialogues/48b672c7c607f5bdd0b942af31eb74e7e58a9e887b3ff6e4ca062076597851c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6fd7969-f3fb-5786-ad0b-0b8f9c9a3b52', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22ffa3309f47a87e88a51019476dcac012f6247ab4d39f46ec071fe6e9253081'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cad417c-c779-50b5-ba72-dda0128e87bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6fd7969-f3fb-5786-ad0b-0b8f9c9a3b52', 1), '22ffa3309f47a87e88a51019476dcac012f6247ab4d39f46ec071fe6e9253081',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/48b672c7c607f5bdd0b942af31eb74e7e58a9e887b3ff6e4ca062076597851c5.mp3', 5564, '2026-09-13 10:00:08.583321', '39a203617cd9a254ab99bb80caf846dc35c6c8f2bdc2411294488889d0bf3979', 'validated', '{"audio_key":"48b672c7c607f5bdd0b942af31eb74e7e58a9e887b3ff6e4ca062076597851c5","entity_key":"d_knowledge_transfer_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"39a203617cd9a254ab99bb80caf846dc35c6c8f2bdc2411294488889d0bf3979","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/48b672c7c607f5bdd0b942af31eb74e7e58a9e887b3ff6e4ca062076597851c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_01:2 -> audio/generated/de-DE/dialogues/48e9739abdb1082b24eced9f632012f2f732d7d5ff6b133bab44b6e7e4d13c06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a38f724-664a-50c0-abbc-b887f3632961', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2ec3f2f06f532f1b2b67ba89365d802d8f577a18f70e04cec496ef39b27bf46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f38f5ec-aa90-51e7-a41e-e261095479a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a38f724-664a-50c0-abbc-b887f3632961', 1), 'f2ec3f2f06f532f1b2b67ba89365d802d8f577a18f70e04cec496ef39b27bf46',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/48e9739abdb1082b24eced9f632012f2f732d7d5ff6b133bab44b6e7e4d13c06.mp3', 4310, '2026-09-13 10:00:09.497733', '2caf18b1e36ac65503934288f3a4b9a038df29646d30f8adeb49e9059b07c4af', 'validated', '{"audio_key":"48e9739abdb1082b24eced9f632012f2f732d7d5ff6b133bab44b6e7e4d13c06","entity_key":"d_delegation_accountability_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2caf18b1e36ac65503934288f3a4b9a038df29646d30f8adeb49e9059b07c4af","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/48e9739abdb1082b24eced9f632012f2f732d7d5ff6b133bab44b6e7e4d13c06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_03:4 -> audio/generated/de-DE/dialogues/492b557392b747522a58ae14f8a75b354529d3df1dfc093ea17587d37db6e0a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdf24514-d08b-583d-b50f-4dea23369d7d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36bfce303a78db5c2d4c97c0f86227222b2f149063dc5f1f223d6ffaa1e54c61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afb6bbfb-3684-51e9-972e-5a9f48f26662', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdf24514-d08b-583d-b50f-4dea23369d7d', 1), '36bfce303a78db5c2d4c97c0f86227222b2f149063dc5f1f223d6ffaa1e54c61',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/492b557392b747522a58ae14f8a75b354529d3df1dfc093ea17587d37db6e0a3.mp3', 3343, '2026-09-13 10:00:09.786548', '9a6813b48165de7e5599ed148f8cd1dfb5782e3e3919805d0639928be14ccf3e', 'validated', '{"audio_key":"492b557392b747522a58ae14f8a75b354529d3df1dfc093ea17587d37db6e0a3","entity_key":"d_stakeholder_requirements_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9a6813b48165de7e5599ed148f8cd1dfb5782e3e3919805d0639928be14ccf3e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/492b557392b747522a58ae14f8a75b354529d3df1dfc093ea17587d37db6e0a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_03:4 -> audio/generated/de-DE/dialogues/499394ca438d2cd259c66f5199e6b9a36a1de1823cbc262986767c05cd7b68b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b994b74f-d941-5898-96b5-6b5a51997d51', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85bb6d6e37830e020f7353afe534a3c2751bdffe97e60ee6542d54f325901882'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17b2ec0f-ca80-58f7-a230-6edce2d52db3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b994b74f-d941-5898-96b5-6b5a51997d51', 1), '85bb6d6e37830e020f7353afe534a3c2751bdffe97e60ee6542d54f325901882',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/499394ca438d2cd259c66f5199e6b9a36a1de1823cbc262986767c05cd7b68b4.mp3', 5877, '2026-09-13 10:00:11.017540', '72c259b06beb70c2a5f83fc20d81ad68313e3e552ab2dc68360f592ceeea438c', 'validated', '{"audio_key":"499394ca438d2cd259c66f5199e6b9a36a1de1823cbc262986767c05cd7b68b4","entity_key":"d_ambiguity_clarification_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"72c259b06beb70c2a5f83fc20d81ad68313e3e552ab2dc68360f592ceeea438c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/499394ca438d2cd259c66f5199e6b9a36a1de1823cbc262986767c05cd7b68b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_01:1 -> audio/generated/de-DE/dialogues/4ae4e0546aea795d40f0269e2e0d8024f869b31222461d7abfaba611bd1655e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5adca1c4-25fd-5fa9-8127-75030bbda61a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe1422b479afc05195a1a7a3ba5d849f0159d9892d8bdb865ed3bacb2e2c2af7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f06ef884-d1d8-5862-bc69-8c41ffa79546', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5adca1c4-25fd-5fa9-8127-75030bbda61a', 1), 'fe1422b479afc05195a1a7a3ba5d849f0159d9892d8bdb865ed3bacb2e2c2af7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ae4e0546aea795d40f0269e2e0d8024f869b31222461d7abfaba611bd1655e6.mp3', 2455, '2026-09-13 10:00:10.848222', '802801af63b08143e95d7324c8eab4776f28e245df9007a6b34739a9467cdf51', 'validated', '{"audio_key":"4ae4e0546aea795d40f0269e2e0d8024f869b31222461d7abfaba611bd1655e6","entity_key":"d_feedback_coaching_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"802801af63b08143e95d7324c8eab4776f28e245df9007a6b34739a9467cdf51","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ae4e0546aea795d40f0269e2e0d8024f869b31222461d7abfaba611bd1655e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_03:2 -> audio/generated/de-DE/dialogues/4b5359f7fca9201917b3681c35804cce933b2ca403af45f74ff841e6eafa9122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e244a839-479a-5bd9-8017-21a07d22d2bf', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac72a46b2db5f103e3e74d29d114144b7781fc5fb2a701dd31c9eb43e75ce41d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39bd218a-77d1-5830-b9f1-ef9e63c595fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e244a839-479a-5bd9-8017-21a07d22d2bf', 1), 'ac72a46b2db5f103e3e74d29d114144b7781fc5fb2a701dd31c9eb43e75ce41d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b5359f7fca9201917b3681c35804cce933b2ca403af45f74ff841e6eafa9122.mp3', 4440, '2026-09-13 10:00:12.164091', '29c3e2795b31ba737932084673e991e0db6950d575fd587adfd1e472097206ff', 'validated', '{"audio_key":"4b5359f7fca9201917b3681c35804cce933b2ca403af45f74ff841e6eafa9122","entity_key":"d_scope_negotiation_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"29c3e2795b31ba737932084673e991e0db6950d575fd587adfd1e472097206ff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4b5359f7fca9201917b3681c35804cce933b2ca403af45f74ff841e6eafa9122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_02:1 -> audio/generated/de-DE/dialogues/4d42c0c289ef02d3d139c07b99cddfa30db9cc44493b58dc759ed3b5b84447a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af471196-ac6a-508c-9e72-5172951bfb09', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f82ef5ab01bef55a581f64d03a3c4e3ab37dd6773bd7196b468c37cf7bf7351'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a24801f9-96bd-516d-8259-b0587739cb55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af471196-ac6a-508c-9e72-5172951bfb09', 1), '5f82ef5ab01bef55a581f64d03a3c4e3ab37dd6773bd7196b468c37cf7bf7351',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4d42c0c289ef02d3d139c07b99cddfa30db9cc44493b58dc759ed3b5b84447a9.mp3', 5041, '2026-09-13 10:00:12.446275', 'd24692a402ccfa5817695a06c7f9120bb86ad0d2ad15e22b84741581aa6e32d4', 'validated', '{"audio_key":"4d42c0c289ef02d3d139c07b99cddfa30db9cc44493b58dc759ed3b5b84447a9","entity_key":"d_cross_cultural_pragmatics_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d24692a402ccfa5817695a06c7f9120bb86ad0d2ad15e22b84741581aa6e32d4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4d42c0c289ef02d3d139c07b99cddfa30db9cc44493b58dc759ed3b5b84447a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_02:3 -> audio/generated/de-DE/dialogues/4ee0aaeac713d0ca377c75053bd10c7d934dbbd18d2d032920bfa7704fe99df4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb88d92e-d30c-577f-a5fe-038734dbab3b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0bc2270e4e66b1286801b57c748294c3895f767d06759c14c9afab5d53b442d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5b5ff36-04ed-5fa5-a343-f3ae6e62a66c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb88d92e-d30c-577f-a5fe-038734dbab3b', 1), 'd0bc2270e4e66b1286801b57c748294c3895f767d06759c14c9afab5d53b442d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ee0aaeac713d0ca377c75053bd10c7d934dbbd18d2d032920bfa7704fe99df4.mp3', 4911, '2026-09-13 10:00:13.564629', 'e3a4c93bfb6276a545be9245bced4514513750a8158baf5db03c6a1f847eb35d', 'validated', '{"audio_key":"4ee0aaeac713d0ca377c75053bd10c7d934dbbd18d2d032920bfa7704fe99df4","entity_key":"d_formal_escalation_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e3a4c93bfb6276a545be9245bced4514513750a8158baf5db03c6a1f847eb35d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ee0aaeac713d0ca377c75053bd10c7d934dbbd18d2d032920bfa7704fe99df4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_01:3 -> audio/generated/de-DE/dialogues/4ee6c0b0b1e23b344e6ae05066315676896997fc377a4daa35c3338ff8f046cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c216fdeb-b6d7-5d70-8778-795fcdc20d31', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a941ea6a29d5ef20d3140da96499a1f56603799e5c1064e33ad571740b823933'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a661c1b2-7ebc-5f16-857d-60e5c8097bbc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c216fdeb-b6d7-5d70-8778-795fcdc20d31', 1), 'a941ea6a29d5ef20d3140da96499a1f56603799e5c1064e33ad571740b823933',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ee6c0b0b1e23b344e6ae05066315676896997fc377a4daa35c3338ff8f046cf.mp3', 4728, '2026-09-13 10:00:13.876770', 'ba36060cdd10cdfb2effdc56d2ddfdf61d5e29f86e226ef59766874aa29fab0e', 'validated', '{"audio_key":"4ee6c0b0b1e23b344e6ae05066315676896997fc377a4daa35c3338ff8f046cf","entity_key":"d_formal_escalation_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ba36060cdd10cdfb2effdc56d2ddfdf61d5e29f86e226ef59766874aa29fab0e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ee6c0b0b1e23b344e6ae05066315676896997fc377a4daa35c3338ff8f046cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_03:2 -> audio/generated/de-DE/dialogues/4fd78a1914a32ec4a9f96d84d44a5af5918d97c5a3f4334667594bc954c02f63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b370b843-9ae2-5c30-a0d3-522b9c94876b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78721d248723d6e2fda7ceb2a4a9bfc5c0331d5865e65e9e82fc3a08bf3c3e31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b94c708f-0b50-5bdf-8239-7a91b1788d17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b370b843-9ae2-5c30-a0d3-522b9c94876b', 1), '78721d248723d6e2fda7ceb2a4a9bfc5c0331d5865e65e9e82fc3a08bf3c3e31',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4fd78a1914a32ec4a9f96d84d44a5af5918d97c5a3f4334667594bc954c02f63.mp3', 6347, '2026-09-13 10:00:15.131395', 'a0c4b63bb99a2875fc4310e64e638d50638a6d2194e118209993e04d122e4f45', 'validated', '{"audio_key":"4fd78a1914a32ec4a9f96d84d44a5af5918d97c5a3f4334667594bc954c02f63","entity_key":"d_collaboration_capstone_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a0c4b63bb99a2875fc4310e64e638d50638a6d2194e118209993e04d122e4f45","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4fd78a1914a32ec4a9f96d84d44a5af5918d97c5a3f4334667594bc954c02f63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_02:2 -> audio/generated/de-DE/dialogues/50a8bfd42a6fee286080632cee1b8724abccd712e9559daf49d483aa0593020e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce8fc913-c048-51f1-8058-8a026473b8fe', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94e573ebef846684913c3ec4922f96cd4121825db59b7d6153266e47d5198617'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd5ea568-3069-5a86-b78e-21960df370c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce8fc913-c048-51f1-8058-8a026473b8fe', 1), '94e573ebef846684913c3ec4922f96cd4121825db59b7d6153266e47d5198617',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50a8bfd42a6fee286080632cee1b8724abccd712e9559daf49d483aa0593020e.mp3', 4545, '2026-09-13 10:00:15.240244', '298d4f557bb2dc8f0424a390d083d6de19a19fb06a1903364d89c396a823a6cc', 'validated', '{"audio_key":"50a8bfd42a6fee286080632cee1b8724abccd712e9559daf49d483aa0593020e","entity_key":"d_stakeholder_requirements_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"298d4f557bb2dc8f0424a390d083d6de19a19fb06a1903364d89c396a823a6cc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/50a8bfd42a6fee286080632cee1b8724abccd712e9559daf49d483aa0593020e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_03:1 -> audio/generated/de-DE/dialogues/55ba3b4010b53bd6dc2caacf7d5c2273aa9bbc31a4095d6e3a8102e4a1780f8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5ff4f91-ebd7-5a4d-94f7-477482f4bef0', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e7a87a694ae34e45e44c3c31061c8ed37f916cd24387dcd165f5c0032ea4e07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3c89e67-7f02-5a7d-aa87-35bf9a2f3792', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5ff4f91-ebd7-5a4d-94f7-477482f4bef0', 1), '0e7a87a694ae34e45e44c3c31061c8ed37f916cd24387dcd165f5c0032ea4e07',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/55ba3b4010b53bd6dc2caacf7d5c2273aa9bbc31a4095d6e3a8102e4a1780f8f.mp3', 2821, '2026-09-13 10:00:16.289515', '289bb3532fcfb3742e9601bd8419a005569dbe67172fbb945a58155c324a82db', 'validated', '{"audio_key":"55ba3b4010b53bd6dc2caacf7d5c2273aa9bbc31a4095d6e3a8102e4a1780f8f","entity_key":"d_objections_counterarguments_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"289bb3532fcfb3742e9601bd8419a005569dbe67172fbb945a58155c324a82db","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/55ba3b4010b53bd6dc2caacf7d5c2273aa9bbc31a4095d6e3a8102e4a1780f8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_02:2 -> audio/generated/de-DE/dialogues/5ca3611496426a08a31142705a9192b44e38bdf13dae52fc495ec39d3ad3930f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('316a741a-f094-55d9-bd59-4abb787f211d', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3488935f317ecfcd012a516b3d10378b934a90c6418b12ce54800f3313027a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c50ee25-1b2b-560a-996f-07bed9201bbd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('316a741a-f094-55d9-bd59-4abb787f211d', 1), '3488935f317ecfcd012a516b3d10378b934a90c6418b12ce54800f3313027a8e',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5ca3611496426a08a31142705a9192b44e38bdf13dae52fc495ec39d3ad3930f.mp3', 4440, '2026-09-13 10:00:16.551819', '1ad7617cb750d5f5a648bc30a753fd1ab2379c497e7295bfd9a2cb5d637c6b3e', 'validated', '{"audio_key":"5ca3611496426a08a31142705a9192b44e38bdf13dae52fc495ec39d3ad3930f","entity_key":"d_objections_counterarguments_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1ad7617cb750d5f5a648bc30a753fd1ab2379c497e7295bfd9a2cb5d637c6b3e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5ca3611496426a08a31142705a9192b44e38bdf13dae52fc495ec39d3ad3930f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_01:1 -> audio/generated/de-DE/dialogues/5d9a7b76f9e1a0e10700ef1466d644874e72be13dcbf2a7f3742a6ec9f25cce6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96368cac-568d-54e3-a715-f54ad3b0a482', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '488b2ee7b808d8b1be4ea220c803f6501a9ac33ad897d642fe418412aba57ee2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07c04c14-64de-59dd-a1cd-ae84ff58853a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96368cac-568d-54e3-a715-f54ad3b0a482', 1), '488b2ee7b808d8b1be4ea220c803f6501a9ac33ad897d642fe418412aba57ee2',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d9a7b76f9e1a0e10700ef1466d644874e72be13dcbf2a7f3742a6ec9f25cce6.mp3', 7131, '2026-09-13 10:00:17.935566', 'f6f5df459be60047bfbc363fe6330230d19ca5297749bf70203da14f02afceb1', 'validated', '{"audio_key":"5d9a7b76f9e1a0e10700ef1466d644874e72be13dcbf2a7f3742a6ec9f25cce6","entity_key":"d_collaboration_capstone_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f6f5df459be60047bfbc363fe6330230d19ca5297749bf70203da14f02afceb1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5d9a7b76f9e1a0e10700ef1466d644874e72be13dcbf2a7f3742a6ec9f25cce6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_01:4 -> audio/generated/de-DE/dialogues/5fdf6453c33e70c229eb50cf846e59be9b1ab927abcdb2b2e9b96b492a99663f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('156f318e-a5f9-518a-9cc6-9c3ccd82f84e', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1289d8f1f5c65e46ff7a40b21b44d8d09f725e3f12d820e8048b05a0ea500358'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('762d5249-4dee-5174-8f90-523399a6a8c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('156f318e-a5f9-518a-9cc6-9c3ccd82f84e', 1), '1289d8f1f5c65e46ff7a40b21b44d8d09f725e3f12d820e8048b05a0ea500358',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5fdf6453c33e70c229eb50cf846e59be9b1ab927abcdb2b2e9b96b492a99663f.mp3', 2768, '2026-09-13 10:00:17.697464', '9001eb088cc603ab0b9014d480b6937080534a6302e4f1e600037f9f40246619', 'validated', '{"audio_key":"5fdf6453c33e70c229eb50cf846e59be9b1ab927abcdb2b2e9b96b492a99663f","entity_key":"d_knowledge_transfer_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9001eb088cc603ab0b9014d480b6937080534a6302e4f1e600037f9f40246619","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5fdf6453c33e70c229eb50cf846e59be9b1ab927abcdb2b2e9b96b492a99663f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_03:4 -> audio/generated/de-DE/dialogues/63e595770f3d942657e4161efc46cb77482a0571905d53aec9cefed61f71ccec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ee186527-f989-55dc-b38c-cf9b971019bb', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7e44956ebdf1a2fa5e24927926bfc19dd2252171c2ead0b0311be20ce891b97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b75c5d9-eaed-5456-9474-76b6d910c089', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ee186527-f989-55dc-b38c-cf9b971019bb', 1), 'f7e44956ebdf1a2fa5e24927926bfc19dd2252171c2ead0b0311be20ce891b97',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/63e595770f3d942657e4161efc46cb77482a0571905d53aec9cefed61f71ccec.mp3', 4858, '2026-09-13 10:00:19.021668', '8b51b1eb9d9eb43b14fc333e134c4952688f63d4c49d86fc570ab70b64b0e004', 'validated', '{"audio_key":"63e595770f3d942657e4161efc46cb77482a0571905d53aec9cefed61f71ccec","entity_key":"d_collaboration_capstone_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8b51b1eb9d9eb43b14fc333e134c4952688f63d4c49d86fc570ab70b64b0e004","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/63e595770f3d942657e4161efc46cb77482a0571905d53aec9cefed61f71ccec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_02:2 -> audio/generated/de-DE/dialogues/641e765ecffbc9c3de2ad2639bd59f700183cc75c965b46427199ead074ee0d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5152686-eeb3-5826-9838-2883cf77093f', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2fb202d4e43a05b9603700c01db8251a6dbe6e89b860238612ca82d105406c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b861360b-1195-502f-b641-d866e15bb559', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5152686-eeb3-5826-9838-2883cf77093f', 1), 'c2fb202d4e43a05b9603700c01db8251a6dbe6e89b860238612ca82d105406c8',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/641e765ecffbc9c3de2ad2639bd59f700183cc75c965b46427199ead074ee0d1.mp3', 4597, '2026-09-13 10:00:19.332923', 'bd8cc092b0ac0978392311d4a7b0a35d9ae989fa970eaf661ae22cb0dc75c80d', 'validated', '{"audio_key":"641e765ecffbc9c3de2ad2639bd59f700183cc75c965b46427199ead074ee0d1","entity_key":"d_scope_negotiation_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bd8cc092b0ac0978392311d4a7b0a35d9ae989fa970eaf661ae22cb0dc75c80d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/641e765ecffbc9c3de2ad2639bd59f700183cc75c965b46427199ead074ee0d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_02:3 -> audio/generated/de-DE/dialogues/64e792717bbb2be1e72193461002f3575de62b292bd2136beff4048237838eaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca56de98-52a2-53e3-b054-91fa07ff526c', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '418d7e60decd58980ea0f8dcf000788b18c7b6a2adecd0fc49253ff7e55bd80d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8dfd1ee8-d934-5e75-8261-1ed532048df4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca56de98-52a2-53e3-b054-91fa07ff526c', 1), '418d7e60decd58980ea0f8dcf000788b18c7b6a2adecd0fc49253ff7e55bd80d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/64e792717bbb2be1e72193461002f3575de62b292bd2136beff4048237838eaf.mp3', 3604, '2026-09-13 10:00:20.246920', '26e48cb97fbf1a01d077b4b63aecc4a53a52fe85a976fb3b436c712ef1dbb3ed', 'validated', '{"audio_key":"64e792717bbb2be1e72193461002f3575de62b292bd2136beff4048237838eaf","entity_key":"d_delegation_accountability_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"26e48cb97fbf1a01d077b4b63aecc4a53a52fe85a976fb3b436c712ef1dbb3ed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/64e792717bbb2be1e72193461002f3575de62b292bd2136beff4048237838eaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_03:3 -> audio/generated/de-DE/dialogues/6bfedbd0f0057032d7345b3ac58d79a8a24b0a110f362378aeb20dbc64a93e11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd36bd4e-71f4-5066-9d58-fc9c6c95eb0e', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55687ef7e09f2fe17562d6e35c3be18f56bd3535dc7be735cefd3b870a71c493'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ac9289b-64e4-5b9a-bd31-09c771fc2e03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd36bd4e-71f4-5066-9d58-fc9c6c95eb0e', 1), '55687ef7e09f2fe17562d6e35c3be18f56bd3535dc7be735cefd3b870a71c493',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6bfedbd0f0057032d7345b3ac58d79a8a24b0a110f362378aeb20dbc64a93e11.mp3', 2951, '2026-09-13 10:00:20.469936', '73741867d2764ba75aede7f3ce1f8f1e15302f680279d298943c4c2f371fb229', 'validated', '{"audio_key":"6bfedbd0f0057032d7345b3ac58d79a8a24b0a110f362378aeb20dbc64a93e11","entity_key":"d_knowledge_transfer_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"73741867d2764ba75aede7f3ce1f8f1e15302f680279d298943c4c2f371fb229","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6bfedbd0f0057032d7345b3ac58d79a8a24b0a110f362378aeb20dbc64a93e11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_01:4 -> audio/generated/de-DE/dialogues/730332edb17dfc890c210952b4e7452ee712967d1e0de5c583c1c476f7eb849d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aeafbf6a-9ad8-5e9a-b2c9-d0d8306588ee', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40f461068d147249031a0b426a91ab1edfcd7a1f39643257d003e01219ec879f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c02714de-4093-55b0-8d98-2dd2799bb20a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aeafbf6a-9ad8-5e9a-b2c9-d0d8306588ee', 1), '40f461068d147249031a0b426a91ab1edfcd7a1f39643257d003e01219ec879f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/730332edb17dfc890c210952b4e7452ee712967d1e0de5c583c1c476f7eb849d.mp3', 3369, '2026-09-13 10:00:21.466289', '44e9a4f9004b7dbd90899141c0d2e0d52ef52e96b7f38ddb55d71c8f310d8dda', 'validated', '{"audio_key":"730332edb17dfc890c210952b4e7452ee712967d1e0de5c583c1c476f7eb849d","entity_key":"d_cross_cultural_pragmatics_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"44e9a4f9004b7dbd90899141c0d2e0d52ef52e96b7f38ddb55d71c8f310d8dda","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/730332edb17dfc890c210952b4e7452ee712967d1e0de5c583c1c476f7eb849d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_02:4 -> audio/generated/de-DE/dialogues/735434aca69780cd8431ec7d1f6f383bb2c7ec545823eb16eb0b20b9c14c5aad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c0a18d2-4c23-59b5-a3da-d9c3bce325d5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11144f90d49b6a555a7b9399a54eb8a9f3b6ff8f599119b12faf0b46a42fc637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('551f689f-e88b-5205-b8d0-ded45599e445', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c0a18d2-4c23-59b5-a3da-d9c3bce325d5', 1), '11144f90d49b6a555a7b9399a54eb8a9f3b6ff8f599119b12faf0b46a42fc637',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/735434aca69780cd8431ec7d1f6f383bb2c7ec545823eb16eb0b20b9c14c5aad.mp3', 3709, '2026-09-13 10:00:21.729286', '671a68ae16226bd21ab3bdfd575369e0d0da14d59bfa24e8f1c14f78e502db35', 'validated', '{"audio_key":"735434aca69780cd8431ec7d1f6f383bb2c7ec545823eb16eb0b20b9c14c5aad","entity_key":"d_knowledge_transfer_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"671a68ae16226bd21ab3bdfd575369e0d0da14d59bfa24e8f1c14f78e502db35","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/735434aca69780cd8431ec7d1f6f383bb2c7ec545823eb16eb0b20b9c14c5aad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_01:1 -> audio/generated/de-DE/dialogues/75b1ac8f5c12cd6aad85b06e3e014f3427fbfba977812dc3829e416c12d4e511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8b07e74-67f3-527f-b1d1-ce55d16a2fe1', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b49aaee5b51ef879e8cf307ca635a60b2f80adf7e8ca359b9c4ab986fdcbb92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77d54c25-2f99-5aec-9268-a2248fc1a1cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8b07e74-67f3-527f-b1d1-ce55d16a2fe1', 1), '1b49aaee5b51ef879e8cf307ca635a60b2f80adf7e8ca359b9c4ab986fdcbb92',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/75b1ac8f5c12cd6aad85b06e3e014f3427fbfba977812dc3829e416c12d4e511.mp3', 3343, '2026-09-13 10:00:22.681186', 'a1a3b0c2f3da15f5a2a905e5b2c69dd0fd64c7d95f88fa9c903937f55b5072bd', 'validated', '{"audio_key":"75b1ac8f5c12cd6aad85b06e3e014f3427fbfba977812dc3829e416c12d4e511","entity_key":"d_stakeholder_requirements_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a1a3b0c2f3da15f5a2a905e5b2c69dd0fd64c7d95f88fa9c903937f55b5072bd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/75b1ac8f5c12cd6aad85b06e3e014f3427fbfba977812dc3829e416c12d4e511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_01:4 -> audio/generated/de-DE/dialogues/79f956ae5d6f4d69782473033a9ac71ce1b11b56ea81b9d5ba38956071a10d41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d60bd156-db0d-5468-89c2-f2605b5ca825', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4779323bafa1a0d42e88238604987d00f1b196640769eaa8c1822355d8364e5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40f45c10-e8aa-570b-ad38-c85b2af403fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d60bd156-db0d-5468-89c2-f2605b5ca825', 1), '4779323bafa1a0d42e88238604987d00f1b196640769eaa8c1822355d8364e5d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/79f956ae5d6f4d69782473033a9ac71ce1b11b56ea81b9d5ba38956071a10d41.mp3', 4022, '2026-09-13 10:00:23.017629', '0b6b1abba0da8e4d7d0652dafa3fab15536ed222481d933c8e4086adf98095f8', 'validated', '{"audio_key":"79f956ae5d6f4d69782473033a9ac71ce1b11b56ea81b9d5ba38956071a10d41","entity_key":"d_scope_negotiation_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0b6b1abba0da8e4d7d0652dafa3fab15536ed222481d933c8e4086adf98095f8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/79f956ae5d6f4d69782473033a9ac71ce1b11b56ea81b9d5ba38956071a10d41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_02:1 -> audio/generated/de-DE/dialogues/7a6dfedeed1999d5b83a517af742837824630d02995a3f15bce602259fdb0570.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6a47e79-7acb-53e4-a406-af36e6caca2e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71b6fad42a520140cad8a12913066f4a2219f236b3ea049e32a3ac5508857fef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3e5481c-be0a-5f36-9491-52778e4f754f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6a47e79-7acb-53e4-a406-af36e6caca2e', 1), '71b6fad42a520140cad8a12913066f4a2219f236b3ea049e32a3ac5508857fef',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a6dfedeed1999d5b83a517af742837824630d02995a3f15bce602259fdb0570.mp3', 3108, '2026-09-13 10:00:23.872909', '853edc8edb089149980d485d2e99de5f3a6fb6a1ff0a0d0388ee887ae0180421', 'validated', '{"audio_key":"7a6dfedeed1999d5b83a517af742837824630d02995a3f15bce602259fdb0570","entity_key":"d_knowledge_transfer_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"853edc8edb089149980d485d2e99de5f3a6fb6a1ff0a0d0388ee887ae0180421","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7a6dfedeed1999d5b83a517af742837824630d02995a3f15bce602259fdb0570.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_02:4 -> audio/generated/de-DE/dialogues/7da7018d927b3c9cdf35467154c61e33644c30d42eb0ee137d0969cf2c80cedb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86cde709-f948-5871-bb37-1a29ed0baf7a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66b77f681f7c33505e1f803748dd7d82177fa5830e66e80b4932d9285dda6fbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cea721f5-7325-588b-b651-57a0f0409553', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86cde709-f948-5871-bb37-1a29ed0baf7a', 1), '66b77f681f7c33505e1f803748dd7d82177fa5830e66e80b4932d9285dda6fbd',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7da7018d927b3c9cdf35467154c61e33644c30d42eb0ee137d0969cf2c80cedb.mp3', 3186, '2026-09-13 10:00:24.385428', '93fda5723b7021fafbd4633975559c51a31e89fbbb28607003cfe07b636219be', 'validated', '{"audio_key":"7da7018d927b3c9cdf35467154c61e33644c30d42eb0ee137d0969cf2c80cedb","entity_key":"d_feedback_coaching_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"93fda5723b7021fafbd4633975559c51a31e89fbbb28607003cfe07b636219be","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7da7018d927b3c9cdf35467154c61e33644c30d42eb0ee137d0969cf2c80cedb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_03:2 -> audio/generated/de-DE/dialogues/815401524c61477624a242c1b3537b73e49b1d0abd1363e31a9a34c23016a503.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6eeff0fe-b2e2-5395-b4ea-a7a6f7a7a5d4', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '427ee32544be2ff3949326de002c843e83f831d6b1cd61d464b6f2684a05f538'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0489906-ea5d-5e96-a008-df908be58d22', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6eeff0fe-b2e2-5395-b4ea-a7a6f7a7a5d4', 1), '427ee32544be2ff3949326de002c843e83f831d6b1cd61d464b6f2684a05f538',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/815401524c61477624a242c1b3537b73e49b1d0abd1363e31a9a34c23016a503.mp3', 7183, '2026-09-13 10:00:25.496194', '6ad434ea650426783895e88567b93b1b873cf1f204248817c10219de9dbb8bd6', 'validated', '{"audio_key":"815401524c61477624a242c1b3537b73e49b1d0abd1363e31a9a34c23016a503","entity_key":"d_ambiguity_clarification_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6ad434ea650426783895e88567b93b1b873cf1f204248817c10219de9dbb8bd6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/815401524c61477624a242c1b3537b73e49b1d0abd1363e31a9a34c23016a503.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_03:3 -> audio/generated/de-DE/dialogues/81bbf6903801a252fdbb211dd436649a4a4e8bf4907dba03d9b29f352416d900.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('69846fe3-10ad-5506-b308-419b979b68ac', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9108793b5baabb42d2a1791e4ee1abe2db6cbfc62d2b895824fd0c60cddbc84b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce3b8f44-ae45-53b5-9293-b17f45ba93a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('69846fe3-10ad-5506-b308-419b979b68ac', 1), '9108793b5baabb42d2a1791e4ee1abe2db6cbfc62d2b895824fd0c60cddbc84b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81bbf6903801a252fdbb211dd436649a4a4e8bf4907dba03d9b29f352416d900.mp3', 3422, '2026-09-13 10:00:25.598144', '73f9bf7d72ff6ff2eac6a12a8c6973ade49dcc1ad39807dcc47c9e3642e4b740', 'validated', '{"audio_key":"81bbf6903801a252fdbb211dd436649a4a4e8bf4907dba03d9b29f352416d900","entity_key":"d_stakeholder_requirements_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"73f9bf7d72ff6ff2eac6a12a8c6973ade49dcc1ad39807dcc47c9e3642e4b740","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/81bbf6903801a252fdbb211dd436649a4a4e8bf4907dba03d9b29f352416d900.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_01:3 -> audio/generated/de-DE/dialogues/8455e62ad55392ced76882eb9c8e4b7ab6953c46ea66ced82bd44cacec15c12b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cfe0da02-99ab-5000-bd0e-2ef7044ec89d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9985e7c1634f3ff7bfe4770141bb1ee0817ff2193a6fd01b601274046bb6c0ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25be096d-084e-5af3-9572-a83b53e94415', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cfe0da02-99ab-5000-bd0e-2ef7044ec89d', 1), '9985e7c1634f3ff7bfe4770141bb1ee0817ff2193a6fd01b601274046bb6c0ed',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8455e62ad55392ced76882eb9c8e4b7ab6953c46ea66ced82bd44cacec15c12b.mp3', 3474, '2026-09-13 10:00:26.722276', '063741ec2794bda7b578894a6ecbb50cae226060935ea5918b8b2674691e9d12', 'validated', '{"audio_key":"8455e62ad55392ced76882eb9c8e4b7ab6953c46ea66ced82bd44cacec15c12b","entity_key":"d_objections_counterarguments_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"063741ec2794bda7b578894a6ecbb50cae226060935ea5918b8b2674691e9d12","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8455e62ad55392ced76882eb9c8e4b7ab6953c46ea66ced82bd44cacec15c12b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_01:2 -> audio/generated/de-DE/dialogues/87b4fbaa8c7150fe38cbd67662a39ebe4e3dca1860b3d9bd18fe34dc3ed2893e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d55bb11f-885e-525e-a476-702487aaeaca', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '682caee41a4db10d7488c0eea43f5c6875eab20c2b5b5af4144dee9a0b878684'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5e95fe8-55d0-53b7-9579-35e0a1ac995c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d55bb11f-885e-525e-a476-702487aaeaca', 1), '682caee41a4db10d7488c0eea43f5c6875eab20c2b5b5af4144dee9a0b878684',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87b4fbaa8c7150fe38cbd67662a39ebe4e3dca1860b3d9bd18fe34dc3ed2893e.mp3', 4780, '2026-09-13 10:00:26.975379', 'a9e8c3a4cc7d094b9f1ca49a05490a98dd53dc42524feab5a8d3a3446b5bdc99', 'validated', '{"audio_key":"87b4fbaa8c7150fe38cbd67662a39ebe4e3dca1860b3d9bd18fe34dc3ed2893e","entity_key":"d_collaboration_capstone_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a9e8c3a4cc7d094b9f1ca49a05490a98dd53dc42524feab5a8d3a3446b5bdc99","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/87b4fbaa8c7150fe38cbd67662a39ebe4e3dca1860b3d9bd18fe34dc3ed2893e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_02:1 -> audio/generated/de-DE/dialogues/87e1dfa69b45796d97db8d44331aead21aea3e58dcebea1b77a9c0b45990c3cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a1b29610-3e8a-5af8-b18a-95d244a4f541', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40a2ca403506a545456845c69da60fd7c1cbac50e56e7055f9541f3bdc381541'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('752afa34-c748-5def-8a6c-94b1f7d1ead7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a1b29610-3e8a-5af8-b18a-95d244a4f541', 1), '40a2ca403506a545456845c69da60fd7c1cbac50e56e7055f9541f3bdc381541',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87e1dfa69b45796d97db8d44331aead21aea3e58dcebea1b77a9c0b45990c3cf.mp3', 2037, '2026-09-13 10:00:27.775062', 'ecb3147f92ca26a2774578bc250dc7c749f8afa305cffc5e4ef968738281d313', 'validated', '{"audio_key":"87e1dfa69b45796d97db8d44331aead21aea3e58dcebea1b77a9c0b45990c3cf","entity_key":"d_delegation_accountability_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ecb3147f92ca26a2774578bc250dc7c749f8afa305cffc5e4ef968738281d313","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/87e1dfa69b45796d97db8d44331aead21aea3e58dcebea1b77a9c0b45990c3cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_03:2 -> audio/generated/de-DE/dialogues/8c01c3a825b554bcd08a04d2bf6d859dc73cf547a606e84258148247902efb75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79b8732c-3eed-50bc-ba21-dc9d9d7b2b4e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96d0a817ecdfe45b677fff22cfba3fa2c64d51db73bcd492cd1c81de8597e7f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bab92082-01ba-54aa-9a85-6b838792c196', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79b8732c-3eed-50bc-ba21-dc9d9d7b2b4e', 1), '96d0a817ecdfe45b677fff22cfba3fa2c64d51db73bcd492cd1c81de8597e7f4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c01c3a825b554bcd08a04d2bf6d859dc73cf547a606e84258148247902efb75.mp3', 1488, '2026-09-13 10:00:27.966141', '336f15b5200b164158fa55d562d992f5d33c0637423ff2ea7644ab659dbfbd8a', 'validated', '{"audio_key":"8c01c3a825b554bcd08a04d2bf6d859dc73cf547a606e84258148247902efb75","entity_key":"d_feedback_coaching_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"336f15b5200b164158fa55d562d992f5d33c0637423ff2ea7644ab659dbfbd8a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8c01c3a825b554bcd08a04d2bf6d859dc73cf547a606e84258148247902efb75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_03:3 -> audio/generated/de-DE/dialogues/8c57610255e2fc8956003b0758412ddccdfd9850db0d9ba512c462b68f116637.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d01aebd0-ee07-5cb2-ae57-e731037ddf24', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '801a66eca168ee68b6ef2904c54f534dc9c448f87e9a481ce3c52c34832ca827'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('777b43bf-7624-5b2b-9108-69a628d6e541', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d01aebd0-ee07-5cb2-ae57-e731037ddf24', 1), '801a66eca168ee68b6ef2904c54f534dc9c448f87e9a481ce3c52c34832ca827',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c57610255e2fc8956003b0758412ddccdfd9850db0d9ba512c462b68f116637.mp3', 6400, '2026-09-13 10:00:29.335888', 'f95ee6614fd8b3736b10ecc41a9057485ee2ca18627f4a51ff674de8ca189428', 'validated', '{"audio_key":"8c57610255e2fc8956003b0758412ddccdfd9850db0d9ba512c462b68f116637","entity_key":"d_formal_escalation_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f95ee6614fd8b3736b10ecc41a9057485ee2ca18627f4a51ff674de8ca189428","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8c57610255e2fc8956003b0758412ddccdfd9850db0d9ba512c462b68f116637.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_03:1 -> audio/generated/de-DE/dialogues/94c2475b73fd0e3f70b35369122af625629cdb79c9b11eb995bc4c52243fe438.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('120700e8-5897-5c0a-8b3b-8e2468e8b038', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdccbd6b47fd66cfcca402a1991c2650ecf964a47bb67a0e349e6c1f04381e2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98897157-0ab8-527c-99e3-aec0bb8b41da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('120700e8-5897-5c0a-8b3b-8e2468e8b038', 1), 'cdccbd6b47fd66cfcca402a1991c2650ecf964a47bb67a0e349e6c1f04381e2d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/94c2475b73fd0e3f70b35369122af625629cdb79c9b11eb995bc4c52243fe438.mp3', 3474, '2026-09-13 10:00:29.210674', 'b68dd02f7cd7fff9fb39aed53a8532bfc608f8f3a4ad7d3194675e7e4438c0f9', 'validated', '{"audio_key":"94c2475b73fd0e3f70b35369122af625629cdb79c9b11eb995bc4c52243fe438","entity_key":"d_stakeholder_requirements_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b68dd02f7cd7fff9fb39aed53a8532bfc608f8f3a4ad7d3194675e7e4438c0f9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/94c2475b73fd0e3f70b35369122af625629cdb79c9b11eb995bc4c52243fe438.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_01:3 -> audio/generated/de-DE/dialogues/95c369c0d8b37e19b863e56954b72aaf1b854342b2b387d152a6741a859b6f15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bed35a9d-5e6a-51cf-9924-68f493c9b224', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3d3636f477344d340c3824d2bfbfea45ba1634a702e9da07069ad6851664fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f952843-693a-56a6-8b43-968851b61fe7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bed35a9d-5e6a-51cf-9924-68f493c9b224', 1), 'a3d3636f477344d340c3824d2bfbfea45ba1634a702e9da07069ad6851664fb5',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/95c369c0d8b37e19b863e56954b72aaf1b854342b2b387d152a6741a859b6f15.mp3', 3787, '2026-09-13 10:00:30.451563', 'f01c742929fbb8177f0a7785d31c4e16375c486395c8942dbf34385043e2c8ba', 'validated', '{"audio_key":"95c369c0d8b37e19b863e56954b72aaf1b854342b2b387d152a6741a859b6f15","entity_key":"d_collaboration_capstone_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f01c742929fbb8177f0a7785d31c4e16375c486395c8942dbf34385043e2c8ba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/95c369c0d8b37e19b863e56954b72aaf1b854342b2b387d152a6741a859b6f15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_01:2 -> audio/generated/de-DE/dialogues/96dad624eeb60ee2c7156ae4c16918b31de396b7f36cbe1542cba387f72746df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c520aaa1-4257-52a6-b4ed-1a1b3f5d5c36', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe93477bd2e50ba37de740b6ed0d95d3842fce2341b5ab4b08a75524c7237de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5171c169-4526-54bd-a897-dc171c94bfbb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c520aaa1-4257-52a6-b4ed-1a1b3f5d5c36', 1), 'dfe93477bd2e50ba37de740b6ed0d95d3842fce2341b5ab4b08a75524c7237de',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/96dad624eeb60ee2c7156ae4c16918b31de396b7f36cbe1542cba387f72746df.mp3', 5146, '2026-09-13 10:00:30.991034', '246f9546d440b237e989021609e7afa19b2b4f61af6e06401b01ca25b41571a0', 'validated', '{"audio_key":"96dad624eeb60ee2c7156ae4c16918b31de396b7f36cbe1542cba387f72746df","entity_key":"d_formal_escalation_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"246f9546d440b237e989021609e7afa19b2b4f61af6e06401b01ca25b41571a0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/96dad624eeb60ee2c7156ae4c16918b31de396b7f36cbe1542cba387f72746df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_01:1 -> audio/generated/de-DE/dialogues/96e2c14feb262dcbf400c3346c5ca8d835b66e5fc1262e135211714bd6d80d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6dfe49c1-13e2-5a60-9847-79f90cc66332', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b46ded4ea0bbeeb72a030d82d32560fe28eeaad3b38b91f7e69f4bdc3c21ffe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc8c9e08-a536-5be5-92b1-8fc3a0169973', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6dfe49c1-13e2-5a60-9847-79f90cc66332', 1), '1b46ded4ea0bbeeb72a030d82d32560fe28eeaad3b38b91f7e69f4bdc3c21ffe',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/96e2c14feb262dcbf400c3346c5ca8d835b66e5fc1262e135211714bd6d80d0f.mp3', 3892, '2026-09-13 10:00:31.770326', '9c0d87102bc6e10e80f7a101c40fa38ac4ed997f80b2c17b5d70623b52749a75', 'validated', '{"audio_key":"96e2c14feb262dcbf400c3346c5ca8d835b66e5fc1262e135211714bd6d80d0f","entity_key":"d_ambiguity_clarification_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9c0d87102bc6e10e80f7a101c40fa38ac4ed997f80b2c17b5d70623b52749a75","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/96e2c14feb262dcbf400c3346c5ca8d835b66e5fc1262e135211714bd6d80d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_02:4 -> audio/generated/de-DE/dialogues/9c2f4d42cad6c54d4b8622b47a6285e5985cb4e56b31aec882710d13a230e4d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1537fc5b-e593-56d0-8aed-a65c78dc2dc6', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1378221c122416bc118b19724c55ee3faba740a472e04bf69804e35d0b30120c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6419dfde-a73d-508c-9e9f-809591f0136b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1537fc5b-e593-56d0-8aed-a65c78dc2dc6', 1), '1378221c122416bc118b19724c55ee3faba740a472e04bf69804e35d0b30120c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c2f4d42cad6c54d4b8622b47a6285e5985cb4e56b31aec882710d13a230e4d2.mp3', 3604, '2026-09-13 10:00:32.221656', '4b99a251076e90849a4fdb1cc9d81c0ce61a878df8829aaff8c12637c40a0630', 'validated', '{"audio_key":"9c2f4d42cad6c54d4b8622b47a6285e5985cb4e56b31aec882710d13a230e4d2","entity_key":"d_objections_counterarguments_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4b99a251076e90849a4fdb1cc9d81c0ce61a878df8829aaff8c12637c40a0630","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9c2f4d42cad6c54d4b8622b47a6285e5985cb4e56b31aec882710d13a230e4d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_03:1 -> audio/generated/de-DE/dialogues/9ca31b07550bf4ab2dc8fcb015d89cb7f7838864a9890dd9de0852229de63745.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64cc5a0c-3903-5aae-8209-9cca21143730', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9541dfc22cd83622e55efaad919eddac9875cfd8c5f63184fe6874fe7f7d1608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('118348e0-0c72-5d84-9e30-95488d19800b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64cc5a0c-3903-5aae-8209-9cca21143730', 1), '9541dfc22cd83622e55efaad919eddac9875cfd8c5f63184fe6874fe7f7d1608',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9ca31b07550bf4ab2dc8fcb015d89cb7f7838864a9890dd9de0852229de63745.mp3', 4362, '2026-09-13 10:00:33.109980', 'b639b58ccc6b887161559276cb38fa1110f4771b53fd4fdc1491e71892527d73', 'validated', '{"audio_key":"9ca31b07550bf4ab2dc8fcb015d89cb7f7838864a9890dd9de0852229de63745","entity_key":"d_ambiguity_clarification_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b639b58ccc6b887161559276cb38fa1110f4771b53fd4fdc1491e71892527d73","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9ca31b07550bf4ab2dc8fcb015d89cb7f7838864a9890dd9de0852229de63745.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_02:4 -> audio/generated/de-DE/dialogues/a317e12e50eb7d957f6836fab35cd737de84646d606836ac8ccd974d1df0c86f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a0977ab-2794-5fff-9618-87c4c0473d9c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c5b7a276d430e050681c42e7afa30563509460ce66b53cb740c2e33e7a61d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfe1b5bc-ff63-51dd-9ee0-1a24cd80dddc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a0977ab-2794-5fff-9618-87c4c0473d9c', 1), 'c5c5b7a276d430e050681c42e7afa30563509460ce66b53cb740c2e33e7a61d1',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a317e12e50eb7d957f6836fab35cd737de84646d606836ac8ccd974d1df0c86f.mp3', 4179, '2026-09-13 10:00:33.521367', 'b8a2ed1ed6773321f6b501c0f6cb91070401ce6552dbc70ad89926ae7f693354', 'validated', '{"audio_key":"a317e12e50eb7d957f6836fab35cd737de84646d606836ac8ccd974d1df0c86f","entity_key":"d_ambiguity_clarification_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b8a2ed1ed6773321f6b501c0f6cb91070401ce6552dbc70ad89926ae7f693354","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a317e12e50eb7d957f6836fab35cd737de84646d606836ac8ccd974d1df0c86f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_02:4 -> audio/generated/de-DE/dialogues/a411e52ed5d434926569b0651e246f0083fcd67482cd1d2bc15dea97b59e5bcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8384c1d8-aab2-52d1-ad23-f39fe28570e4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '687410692fb44f600305bf5674ee405b7c8a682800ae26be131fa11d6b056571'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9943e3dd-6902-5da0-a8fd-f5c992ac9f82', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8384c1d8-aab2-52d1-ad23-f39fe28570e4', 1), '687410692fb44f600305bf5674ee405b7c8a682800ae26be131fa11d6b056571',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a411e52ed5d434926569b0651e246f0083fcd67482cd1d2bc15dea97b59e5bcb.mp3', 4832, '2026-09-13 10:00:34.498191', 'e7d7f02d22f1281d521b5a74e9af42b87f864cbf97ab00eedda373919da83e29', 'validated', '{"audio_key":"a411e52ed5d434926569b0651e246f0083fcd67482cd1d2bc15dea97b59e5bcb","entity_key":"d_collaboration_capstone_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e7d7f02d22f1281d521b5a74e9af42b87f864cbf97ab00eedda373919da83e29","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a411e52ed5d434926569b0651e246f0083fcd67482cd1d2bc15dea97b59e5bcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_01:3 -> audio/generated/de-DE/dialogues/abf71852247e1c242734c3e5ea0f1b998c01336b65bf4ecd28f477ea3bba5465.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f57fe83-427c-53c4-9986-05f04d1a3327', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78220b9e6211c4f1071e43f6305d766f00e34ffc5a8324d8c7482f2a1725ea46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d94ab66-9d75-5406-9973-668a6c493376', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f57fe83-427c-53c4-9986-05f04d1a3327', 1), '78220b9e6211c4f1071e43f6305d766f00e34ffc5a8324d8c7482f2a1725ea46',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/abf71852247e1c242734c3e5ea0f1b998c01336b65bf4ecd28f477ea3bba5465.mp3', 3239, '2026-09-13 10:00:34.749461', '7555f5a9909c928bd4493c163030d7c03e1999cdeec742bee74bf34d0258e9b6', 'validated', '{"audio_key":"abf71852247e1c242734c3e5ea0f1b998c01336b65bf4ecd28f477ea3bba5465","entity_key":"d_feedback_coaching_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7555f5a9909c928bd4493c163030d7c03e1999cdeec742bee74bf34d0258e9b6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/abf71852247e1c242734c3e5ea0f1b998c01336b65bf4ecd28f477ea3bba5465.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_01:4 -> audio/generated/de-DE/dialogues/ac1e46ae2c5d2d113546f3ac420331aa6042e51f18b998f29a505cfc201813de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47900011-1a37-54aa-90c8-a54ec500463a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '554d2dac0ae983eccfa4d27dd76b761064a70ce75e81967d48999ebf2e4ae3d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74c9997a-1dea-5d97-ade3-dfd1b9a1a773', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47900011-1a37-54aa-90c8-a54ec500463a', 1), '554d2dac0ae983eccfa4d27dd76b761064a70ce75e81967d48999ebf2e4ae3d3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ac1e46ae2c5d2d113546f3ac420331aa6042e51f18b998f29a505cfc201813de.mp3', 5093, '2026-09-13 10:00:35.998572', '3020deed55f91765d3982d118245638789644abaf7fe891f31a473548fbb9b28', 'validated', '{"audio_key":"ac1e46ae2c5d2d113546f3ac420331aa6042e51f18b998f29a505cfc201813de","entity_key":"d_objections_counterarguments_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3020deed55f91765d3982d118245638789644abaf7fe891f31a473548fbb9b28","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ac1e46ae2c5d2d113546f3ac420331aa6042e51f18b998f29a505cfc201813de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_03:1 -> audio/generated/de-DE/dialogues/b2655935f06ae20ad4ae886ed2dc2f36bdbfed1f4b86df2b5592a498dd31ff3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c0b0311-edbd-5a55-a0e7-477d2bc104c5', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22daa7a5cf065b53dacfcbdf9415c5f60d16f8d0f3104b60520f18dca1c70dba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df4664c2-b19c-5b15-bd37-7757b47e1b83', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c0b0311-edbd-5a55-a0e7-477d2bc104c5', 1), '22daa7a5cf065b53dacfcbdf9415c5f60d16f8d0f3104b60520f18dca1c70dba',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b2655935f06ae20ad4ae886ed2dc2f36bdbfed1f4b86df2b5592a498dd31ff3e.mp3', 3996, '2026-09-13 10:00:36.004134', '69cc709dc1b6d54327b195f7cc93cd4c824c2dc3cd05fea3593dd9679315aa2e', 'validated', '{"audio_key":"b2655935f06ae20ad4ae886ed2dc2f36bdbfed1f4b86df2b5592a498dd31ff3e","entity_key":"d_scope_negotiation_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"69cc709dc1b6d54327b195f7cc93cd4c824c2dc3cd05fea3593dd9679315aa2e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b2655935f06ae20ad4ae886ed2dc2f36bdbfed1f4b86df2b5592a498dd31ff3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_01:4 -> audio/generated/de-DE/dialogues/b5dca78b781b7a5a29892f9f2d1a7e685aa38b2e6ddc148dedf55c8f6d06a112.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc3e8b8c-f379-53f6-9963-1208cedebdcb', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a6fb5745390550b4be853cf5f7988ec0f51f3e5a2bb91869e96216714f46dd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14d91ab7-8d72-5ca3-992e-56c2a8f66593', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc3e8b8c-f379-53f6-9963-1208cedebdcb', 1), '5a6fb5745390550b4be853cf5f7988ec0f51f3e5a2bb91869e96216714f46dd6',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b5dca78b781b7a5a29892f9f2d1a7e685aa38b2e6ddc148dedf55c8f6d06a112.mp3', 4780, '2026-09-13 10:00:37.422377', '36dfba818e1bdc777abb3dc5c6c3120ab8528cef3231de5fddb6f4dba9d746a0', 'validated', '{"audio_key":"b5dca78b781b7a5a29892f9f2d1a7e685aa38b2e6ddc148dedf55c8f6d06a112","entity_key":"d_feedback_coaching_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"36dfba818e1bdc777abb3dc5c6c3120ab8528cef3231de5fddb6f4dba9d746a0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b5dca78b781b7a5a29892f9f2d1a7e685aa38b2e6ddc148dedf55c8f6d06a112.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_02:1 -> audio/generated/de-DE/dialogues/ba67caa8ea6b8bae3ad7a109ae3434134162d159bd161cccb4998f5c7859f58f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3dd8eee-f417-5923-aef4-ac0dfb3a117b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14622d9141187966579573f3f58bda794c1f4a826f8c1908010add1be6e90d81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c18106dd-a56f-5d8f-a024-1abbfb2ae19c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3dd8eee-f417-5923-aef4-ac0dfb3a117b', 1), '14622d9141187966579573f3f58bda794c1f4a826f8c1908010add1be6e90d81',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba67caa8ea6b8bae3ad7a109ae3434134162d159bd161cccb4998f5c7859f58f.mp3', 3239, '2026-09-13 10:00:37.271627', '1c1d3f6a98d9cfdeee4cbe253fe2916f4a414f77bbd79d9dcf80352abdf7f69d', 'validated', '{"audio_key":"ba67caa8ea6b8bae3ad7a109ae3434134162d159bd161cccb4998f5c7859f58f","entity_key":"d_scope_negotiation_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1c1d3f6a98d9cfdeee4cbe253fe2916f4a414f77bbd79d9dcf80352abdf7f69d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ba67caa8ea6b8bae3ad7a109ae3434134162d159bd161cccb4998f5c7859f58f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_03:4 -> audio/generated/de-DE/dialogues/c082c9c7523069cee19ef3d5760b1b4cd22ead64349538f2c08d3c0f2d4e5895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da786cd1-908a-57af-a22d-9730d91c05c2', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e7e7ded91dff7954e650e118f785fc7566578968775411757c90cbbe8fccfc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96dc1462-346a-50df-882e-5896eb218216', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da786cd1-908a-57af-a22d-9730d91c05c2', 1), '4e7e7ded91dff7954e650e118f785fc7566578968775411757c90cbbe8fccfc9',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c082c9c7523069cee19ef3d5760b1b4cd22ead64349538f2c08d3c0f2d4e5895.mp3', 4545, '2026-09-13 10:00:38.706513', '852973c5f0ec897eb7480ab243ac5c221aec476761f1151f7ba47ca55823204b', 'validated', '{"audio_key":"c082c9c7523069cee19ef3d5760b1b4cd22ead64349538f2c08d3c0f2d4e5895","entity_key":"d_scope_negotiation_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"852973c5f0ec897eb7480ab243ac5c221aec476761f1151f7ba47ca55823204b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c082c9c7523069cee19ef3d5760b1b4cd22ead64349538f2c08d3c0f2d4e5895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_01:3 -> audio/generated/de-DE/dialogues/c0b48f55b42dba9eaf80d51e0803ea9dc4433bec195ac790a8ae86637a4f9be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfd31d6d-fa76-56da-83b0-184eacc29ae1', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38e444e66d32d57614bc8c8eeda4d11589d5f8fbea6cf39b183a28d385de63ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8d68a22-8e36-5e33-b67d-201a49735490', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfd31d6d-fa76-56da-83b0-184eacc29ae1', 1), '38e444e66d32d57614bc8c8eeda4d11589d5f8fbea6cf39b183a28d385de63ae',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c0b48f55b42dba9eaf80d51e0803ea9dc4433bec195ac790a8ae86637a4f9be4.mp3', 3422, '2026-09-13 10:00:38.623900', '1bec0f40ed1b27320897d08505a921015b423a49e082aab86d90d9fc785a2f2e', 'validated', '{"audio_key":"c0b48f55b42dba9eaf80d51e0803ea9dc4433bec195ac790a8ae86637a4f9be4","entity_key":"d_ambiguity_clarification_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1bec0f40ed1b27320897d08505a921015b423a49e082aab86d90d9fc785a2f2e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c0b48f55b42dba9eaf80d51e0803ea9dc4433bec195ac790a8ae86637a4f9be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_01:2 -> audio/generated/de-DE/dialogues/c5636bf58abd7c1b3a01566bd45257e2db099e3cea6d48e353de362364932050.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ccf53b3a-89df-53ba-9845-28c52df35f69', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bb9aec292f2563bcf1c6bca3105ac863ce145ab295be201afa4e57770231048'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ee4dffb-8da5-573d-9a25-43b5afc5129a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ccf53b3a-89df-53ba-9845-28c52df35f69', 1), '3bb9aec292f2563bcf1c6bca3105ac863ce145ab295be201afa4e57770231048',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c5636bf58abd7c1b3a01566bd45257e2db099e3cea6d48e353de362364932050.mp3', 4493, '2026-09-13 10:00:39.916751', 'a3acb5513f56a238d604606e09898a729525aee04699ecdbeda9febdadce5e64', 'validated', '{"audio_key":"c5636bf58abd7c1b3a01566bd45257e2db099e3cea6d48e353de362364932050","entity_key":"d_cross_cultural_pragmatics_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"a3acb5513f56a238d604606e09898a729525aee04699ecdbeda9febdadce5e64","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c5636bf58abd7c1b3a01566bd45257e2db099e3cea6d48e353de362364932050.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_03:3 -> audio/generated/de-DE/dialogues/c64679a4f2cb23ee93ae53cf94017f1d8549fe43e06688667fa2249770f6cd24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3599c882-b656-528a-b7dd-46733eaf1ca6', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '649d1d37effca1f69db0adb682bab16bf3c58641070a9177e356821946e134c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bef423e-b402-5f20-834d-4d849e277e4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3599c882-b656-528a-b7dd-46733eaf1ca6', 1), '649d1d37effca1f69db0adb682bab16bf3c58641070a9177e356821946e134c9',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c64679a4f2cb23ee93ae53cf94017f1d8549fe43e06688667fa2249770f6cd24.mp3', 5511, '2026-09-13 10:00:40.162792', 'c248fa3b9278a0f30ae374aee09aa9a8fbe396710b63cd4ad05c301f255b0cee', 'validated', '{"audio_key":"c64679a4f2cb23ee93ae53cf94017f1d8549fe43e06688667fa2249770f6cd24","entity_key":"d_cross_cultural_pragmatics_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c248fa3b9278a0f30ae374aee09aa9a8fbe396710b63cd4ad05c301f255b0cee","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c64679a4f2cb23ee93ae53cf94017f1d8549fe43e06688667fa2249770f6cd24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_02:1 -> audio/generated/de-DE/dialogues/c695a0b4bd5ebc5481b4dae62f23e2913f9b669c2bd64515096bc7a68f2a8d50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('106e268a-0ac1-5f95-8092-52c5dce055ef', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25b9beb75f2c0368e15faab535ee2dceecd05683b0a5804947391223030ced61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c18888e3-c94e-57b2-84f0-e878de7422ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('106e268a-0ac1-5f95-8092-52c5dce055ef', 1), '25b9beb75f2c0368e15faab535ee2dceecd05683b0a5804947391223030ced61',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c695a0b4bd5ebc5481b4dae62f23e2913f9b669c2bd64515096bc7a68f2a8d50.mp3', 5799, '2026-09-13 10:00:41.409418', 'ad512db2f7e4b427f18d8d5c35974fab134966c078029e1a23dd4cd73598a773', 'validated', '{"audio_key":"c695a0b4bd5ebc5481b4dae62f23e2913f9b669c2bd64515096bc7a68f2a8d50","entity_key":"d_collaboration_capstone_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ad512db2f7e4b427f18d8d5c35974fab134966c078029e1a23dd4cd73598a773","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c695a0b4bd5ebc5481b4dae62f23e2913f9b669c2bd64515096bc7a68f2a8d50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_01:4 -> audio/generated/de-DE/dialogues/c6985c35ea8776875a99647b4a27a22585eeb039ca9ebb7b346206cd81c97cda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca267637-85df-5d01-98c0-17981387fa3d', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ea5e6c332ef359823193a79b4a462d5a895977570b2713ebba813ec0c623e2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5297e4c-6fb6-5f2a-9c81-6eb791b8381b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca267637-85df-5d01-98c0-17981387fa3d', 1), '8ea5e6c332ef359823193a79b4a462d5a895977570b2713ebba813ec0c623e2f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c6985c35ea8776875a99647b4a27a22585eeb039ca9ebb7b346206cd81c97cda.mp3', 2925, '2026-09-13 10:00:41.391582', '52c15de2ec67f8ef3f8f99d8c48d15341958dfac935d610f3f9c8da15d69aab6', 'validated', '{"audio_key":"c6985c35ea8776875a99647b4a27a22585eeb039ca9ebb7b346206cd81c97cda","entity_key":"d_ambiguity_clarification_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"52c15de2ec67f8ef3f8f99d8c48d15341958dfac935d610f3f9c8da15d69aab6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c6985c35ea8776875a99647b4a27a22585eeb039ca9ebb7b346206cd81c97cda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_01:4 -> audio/generated/de-DE/dialogues/c94abe5f710d495ec896cb856d44190e09f06d2b3bd9d7678a90819a120d446a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5de1ceb3-346b-536b-a4b5-9e7d764b7811', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7f2b178c484c50dea897d9ea5f1fb42a77e18d4368c5a5c9153d6f2f734c1cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44bba101-61b4-5b9c-b9a7-37fcf5ccbdbc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5de1ceb3-346b-536b-a4b5-9e7d764b7811', 1), 'd7f2b178c484c50dea897d9ea5f1fb42a77e18d4368c5a5c9153d6f2f734c1cb',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c94abe5f710d495ec896cb856d44190e09f06d2b3bd9d7678a90819a120d446a.mp3', 3709, '2026-09-13 10:00:42.997993', '58ca5194d3ba986557e7fd147b4f191ffcc910224359c36ae1c8f7ac2db631ae', 'validated', '{"audio_key":"c94abe5f710d495ec896cb856d44190e09f06d2b3bd9d7678a90819a120d446a","entity_key":"d_formal_escalation_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"58ca5194d3ba986557e7fd147b4f191ffcc910224359c36ae1c8f7ac2db631ae","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c94abe5f710d495ec896cb856d44190e09f06d2b3bd9d7678a90819a120d446a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_objections_counterarguments_03:2 -> audio/generated/de-DE/dialogues/ccbbdc0686af6a982f5044a7212137029b9e601f81f6d94eb432ef1da1cd9716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb0f9ae4-ad85-53d6-92a2-81373763cb97', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_objections_counterarguments_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01a6fcfff49c4844c2b7bac83f5a5e7d9d5d8856aed8edf90f52d377c678fad5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ff260d6-70d6-51fb-97c7-0f188b62cd1e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb0f9ae4-ad85-53d6-92a2-81373763cb97', 1), '01a6fcfff49c4844c2b7bac83f5a5e7d9d5d8856aed8edf90f52d377c678fad5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ccbbdc0686af6a982f5044a7212137029b9e601f81f6d94eb432ef1da1cd9716.mp3', 5564, '2026-09-13 10:00:42.884999', '2703840413a0f26090212907d1c6a234e07151d3acaaa5c3d7e0d40f903dc417', 'validated', '{"audio_key":"ccbbdc0686af6a982f5044a7212137029b9e601f81f6d94eb432ef1da1cd9716","entity_key":"d_objections_counterarguments_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"2703840413a0f26090212907d1c6a234e07151d3acaaa5c3d7e0d40f903dc417","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ccbbdc0686af6a982f5044a7212137029b9e601f81f6d94eb432ef1da1cd9716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_01:2 -> audio/generated/de-DE/dialogues/cd1f61e0861628b9205960af34fcd5b4be5b21aba1c61ef5ddf23d42586d1627.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f89b09f8-d7b3-5105-899d-026d3d6dc360', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f114e3991e8df6aad154605769516f3079716b1896f25062e456710fca42c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fef126d-e59a-5c2a-83a9-ee8898881a06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f89b09f8-d7b3-5105-899d-026d3d6dc360', 1), '65f114e3991e8df6aad154605769516f3079716b1896f25062e456710fca42c7',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cd1f61e0861628b9205960af34fcd5b4be5b21aba1c61ef5ddf23d42586d1627.mp3', 4257, '2026-09-13 10:00:44.228774', 'c9bce955a8e9f7717ea95393942bf1b533abb19d9790a0610fa3ddb6f2302cc2', 'validated', '{"audio_key":"cd1f61e0861628b9205960af34fcd5b4be5b21aba1c61ef5ddf23d42586d1627","entity_key":"d_scope_negotiation_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"c9bce955a8e9f7717ea95393942bf1b533abb19d9790a0610fa3ddb6f2302cc2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cd1f61e0861628b9205960af34fcd5b4be5b21aba1c61ef5ddf23d42586d1627.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_03:2 -> audio/generated/de-DE/dialogues/cf37f113747e069130567fd7ca150e72b8b34c262df44e2980a250fe8c67f21b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb3548ac-cd63-5015-9857-9f63a9e2043a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9700bd92a6f1a82eda3acfea3dfc9ea90649acdb963f3921c311fb3dbe44b1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b9a8619-940f-595b-b150-1e017a754eac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb3548ac-cd63-5015-9857-9f63a9e2043a', 1), 'c9700bd92a6f1a82eda3acfea3dfc9ea90649acdb963f3921c311fb3dbe44b1a',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf37f113747e069130567fd7ca150e72b8b34c262df44e2980a250fe8c67f21b.mp3', 4728, '2026-09-13 10:00:44.378067', 'a4cc22e9933fa027f39534c37ed1730dfe5ff2b8c18b55262f1d033f8c6b5367', 'validated', '{"audio_key":"cf37f113747e069130567fd7ca150e72b8b34c262df44e2980a250fe8c67f21b","entity_key":"d_delegation_accountability_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a4cc22e9933fa027f39534c37ed1730dfe5ff2b8c18b55262f1d033f8c6b5367","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cf37f113747e069130567fd7ca150e72b8b34c262df44e2980a250fe8c67f21b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_03:3 -> audio/generated/de-DE/dialogues/d28a45dd04592bfbd441162de56b18da5da91fa05b572497cd09f90182c30284.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('062763bd-9f0e-5599-9457-a1b2c859e7f7', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c225f99644b0b72e2d4f2e376fc240cc5d144117e98c50524dfe6576c483bcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddd7cd8c-03ef-5871-a4c8-1d8356d71b3b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('062763bd-9f0e-5599-9457-a1b2c859e7f7', 1), '9c225f99644b0b72e2d4f2e376fc240cc5d144117e98c50524dfe6576c483bcd',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d28a45dd04592bfbd441162de56b18da5da91fa05b572497cd09f90182c30284.mp3', 3343, '2026-09-13 10:00:45.428406', '3ab6483f86fed7171656e927c0915ded7418fa6a8d2ea88f897b9a7ffef5273c', 'validated', '{"audio_key":"d28a45dd04592bfbd441162de56b18da5da91fa05b572497cd09f90182c30284","entity_key":"d_delegation_accountability_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3ab6483f86fed7171656e927c0915ded7418fa6a8d2ea88f897b9a7ffef5273c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d28a45dd04592bfbd441162de56b18da5da91fa05b572497cd09f90182c30284.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_03:4 -> audio/generated/de-DE/dialogues/d28fc54137b902127c964f08f19fdcd8d9319c16a7e4f3e533230d3e5dfe6fea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16968eb5-4b9b-516e-ac0c-f8c35b3fb81b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e76c410ebe5981f4954eb31d6b51b54db4f25e653f4e17790d9ee365b431b0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f9ae08b-3f79-5687-8744-9526dfcc2296', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16968eb5-4b9b-516e-ac0c-f8c35b3fb81b', 1), '1e76c410ebe5981f4954eb31d6b51b54db4f25e653f4e17790d9ee365b431b0d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d28fc54137b902127c964f08f19fdcd8d9319c16a7e4f3e533230d3e5dfe6fea.mp3', 2742, '2026-09-13 10:00:45.483530', 'ab6aa27765dbfe918a772d46a8b141ae0517fdbf31872703bea8fe45be4db724', 'validated', '{"audio_key":"d28fc54137b902127c964f08f19fdcd8d9319c16a7e4f3e533230d3e5dfe6fea","entity_key":"d_formal_escalation_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ab6aa27765dbfe918a772d46a8b141ae0517fdbf31872703bea8fe45be4db724","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d28fc54137b902127c964f08f19fdcd8d9319c16a7e4f3e533230d3e5dfe6fea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_01:1 -> audio/generated/de-DE/dialogues/d416fb98226135695a1c35a82daac62623dab0b2715812c3e4aacb04eda78ac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bfa0030-72d2-515a-b87a-0022aa851898', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d4ceebf62c2fafa5cdf53a118fc89f2d36d1cc5ff4121b5f81acc5436e2e076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b89b9f2-99d7-52e7-8bcd-0c72673646ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bfa0030-72d2-515a-b87a-0022aa851898', 1), '8d4ceebf62c2fafa5cdf53a118fc89f2d36d1cc5ff4121b5f81acc5436e2e076',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d416fb98226135695a1c35a82daac62623dab0b2715812c3e4aacb04eda78ac2.mp3', 3996, '2026-09-13 10:00:46.711797', 'b2f9c0551883fbdb8460dac0c04372ace44f6817c2310da41f2fc90aff5367c2', 'validated', '{"audio_key":"d416fb98226135695a1c35a82daac62623dab0b2715812c3e4aacb04eda78ac2","entity_key":"d_scope_negotiation_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2f9c0551883fbdb8460dac0c04372ace44f6817c2310da41f2fc90aff5367c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d416fb98226135695a1c35a82daac62623dab0b2715812c3e4aacb04eda78ac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_02:3 -> audio/generated/de-DE/dialogues/d4e1167374407daadff22fe14675373d5b18bc27c4d4fd51904c58ac71e2451a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfdb272a-b5d1-5baa-a538-07be8fd7e48b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '672a304d9bb198141f67d3f35a26767c509bece27b9478d2addebc13429034ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84b4b51c-172a-5600-a181-76b6ab3cfe5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfdb272a-b5d1-5baa-a538-07be8fd7e48b', 1), '672a304d9bb198141f67d3f35a26767c509bece27b9478d2addebc13429034ef',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d4e1167374407daadff22fe14675373d5b18bc27c4d4fd51904c58ac71e2451a.mp3', 3526, '2026-09-13 10:00:46.720994', '4567400c1e4e8d7459570bc6ac4e63936a07af3b4218bae6316d78c76587887b', 'validated', '{"audio_key":"d4e1167374407daadff22fe14675373d5b18bc27c4d4fd51904c58ac71e2451a","entity_key":"d_stakeholder_requirements_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4567400c1e4e8d7459570bc6ac4e63936a07af3b4218bae6316d78c76587887b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d4e1167374407daadff22fe14675373d5b18bc27c4d4fd51904c58ac71e2451a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_01:3 -> audio/generated/de-DE/dialogues/d5a86a292c7ca72e756398c2aedcc6c1b4beb3f91f34af2c0e0fc78584966471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88907689-7ffc-5c00-8897-4ae9bf9a31b3', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd22968b464306fdffcfa158e32122b160f9ae96ae2fe504b4e9d8e6c6ef01da5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52257c3e-70e9-57a6-9795-d0525a123c94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88907689-7ffc-5c00-8897-4ae9bf9a31b3', 1), 'd22968b464306fdffcfa158e32122b160f9ae96ae2fe504b4e9d8e6c6ef01da5',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d5a86a292c7ca72e756398c2aedcc6c1b4beb3f91f34af2c0e0fc78584966471.mp3', 4257, '2026-09-13 10:00:48.043552', '33104f051309d6bb3d81176244870d7f8b6995701a1d201c0ccb8f5ed5a5cef4', 'validated', '{"audio_key":"d5a86a292c7ca72e756398c2aedcc6c1b4beb3f91f34af2c0e0fc78584966471","entity_key":"d_scope_negotiation_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33104f051309d6bb3d81176244870d7f8b6995701a1d201c0ccb8f5ed5a5cef4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d5a86a292c7ca72e756398c2aedcc6c1b4beb3f91f34af2c0e0fc78584966471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_02:2 -> audio/generated/de-DE/dialogues/da1ed3878763f13aeede0963144a65e141ae359102ca8a4adff441803768743a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe9c3e63-604f-5a8b-a873-5d6b40f68ac0', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59caf90e741c962b934d57fe1a00a852dc4618d8dbcae8b1b4a9bdff869095de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa7e3463-01ee-59bc-970a-c6f9f9d97c8f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe9c3e63-604f-5a8b-a873-5d6b40f68ac0', 1), '59caf90e741c962b934d57fe1a00a852dc4618d8dbcae8b1b4a9bdff869095de',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da1ed3878763f13aeede0963144a65e141ae359102ca8a4adff441803768743a.mp3', 2168, '2026-09-13 10:00:47.803110', '5510d174c80185009afccc5438a01d3838bdbba0d9b2c0e07126f028809710dc', 'validated', '{"audio_key":"da1ed3878763f13aeede0963144a65e141ae359102ca8a4adff441803768743a","entity_key":"d_ambiguity_clarification_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5510d174c80185009afccc5438a01d3838bdbba0d9b2c0e07126f028809710dc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/da1ed3878763f13aeede0963144a65e141ae359102ca8a4adff441803768743a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_collaboration_capstone_03:3 -> audio/generated/de-DE/dialogues/e762faa0ec1432aae8535ee29b8b690237f75abf211513ee020d7194bcf3e31f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('459db1e8-9e6b-5655-89cd-d0278d9b94d3', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_collaboration_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '515c4fa63e7349446850baeccdbf247644ef09d53969c22b5feedf1b9eb19cf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8acee56-3024-5452-a360-08bc343dc175', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('459db1e8-9e6b-5655-89cd-d0278d9b94d3', 1), '515c4fa63e7349446850baeccdbf247644ef09d53969c22b5feedf1b9eb19cf0',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e762faa0ec1432aae8535ee29b8b690237f75abf211513ee020d7194bcf3e31f.mp3', 4545, '2026-09-13 10:00:49.228661', 'abbfebcd53d4eeb739bb82c650c8c7bcd7039f64da01063a13f8e02d8bd9a588', 'validated', '{"audio_key":"e762faa0ec1432aae8535ee29b8b690237f75abf211513ee020d7194bcf3e31f","entity_key":"d_collaboration_capstone_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"abbfebcd53d4eeb739bb82c650c8c7bcd7039f64da01063a13f8e02d8bd9a588","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e762faa0ec1432aae8535ee29b8b690237f75abf211513ee020d7194bcf3e31f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_02:4 -> audio/generated/de-DE/dialogues/e82fd340a8fb21d44395f04a59f0b122e4a39f3e6afddc8611d14389d18dd477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61f24fd3-32dc-5bf4-a8b4-e7b645dc615e', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92b5ea38a86a33d18597a9b13565bc966cd32af1cc8918bdf4ad6f4db15abeee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13e06f7d-aa57-5fa8-a262-9640ef83f083', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61f24fd3-32dc-5bf4-a8b4-e7b645dc615e', 1), '92b5ea38a86a33d18597a9b13565bc966cd32af1cc8918bdf4ad6f4db15abeee',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e82fd340a8fb21d44395f04a59f0b122e4a39f3e6afddc8611d14389d18dd477.mp3', 6870, '2026-09-13 10:00:49.726739', '17162fb07959e9080c03a9c3ad1bab7a599cd8ae0a333fe207fb17f103901b47', 'validated', '{"audio_key":"e82fd340a8fb21d44395f04a59f0b122e4a39f3e6afddc8611d14389d18dd477","entity_key":"d_stakeholder_requirements_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"17162fb07959e9080c03a9c3ad1bab7a599cd8ae0a333fe207fb17f103901b47","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e82fd340a8fb21d44395f04a59f0b122e4a39f3e6afddc8611d14389d18dd477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ambiguity_clarification_01:2 -> audio/generated/de-DE/dialogues/e9bb6dff6dd1f1684a04c3577f285e68fbe6092777af7d9635bbd86725aa9a93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ebfeec44-3bc8-580f-a99e-c2dbcecb7069', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ambiguity_clarification_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27e69716d11f886654d28ecaedde29fc47c2be3783c2dfbfe45208590cfcba3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9abec90b-7c24-55b0-8c58-50f1ec1182de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ebfeec44-3bc8-580f-a99e-c2dbcecb7069', 1), '27e69716d11f886654d28ecaedde29fc47c2be3783c2dfbfe45208590cfcba3a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e9bb6dff6dd1f1684a04c3577f285e68fbe6092777af7d9635bbd86725aa9a93.mp3', 4022, '2026-09-13 10:00:50.499930', 'a9bfb399efbac7d7ff09df283f4772eaf7b68a033513d21ce8ec8e409862d0d0', 'validated', '{"audio_key":"e9bb6dff6dd1f1684a04c3577f285e68fbe6092777af7d9635bbd86725aa9a93","entity_key":"d_ambiguity_clarification_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a9bfb399efbac7d7ff09df283f4772eaf7b68a033513d21ce8ec8e409862d0d0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e9bb6dff6dd1f1684a04c3577f285e68fbe6092777af7d9635bbd86725aa9a93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_01:4 -> audio/generated/de-DE/dialogues/edb86796115d0279b6cedfe40172a832c19fc6b9d256535a8302cb3835571c8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85a48045-8428-5c37-acd4-8d189cc8628f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48114e633f8b6858408be3be3d283f88f5b214e0fc2fa1d180288e4fd7ce174b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d47739f-70d2-5bc6-97b1-c006c350c585', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85a48045-8428-5c37-acd4-8d189cc8628f', 1), '48114e633f8b6858408be3be3d283f88f5b214e0fc2fa1d180288e4fd7ce174b',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/edb86796115d0279b6cedfe40172a832c19fc6b9d256535a8302cb3835571c8a.mp3', 5668, '2026-09-13 10:00:51.199057', '3c3bce4e7a1ad8dd6d2e3f4b2aca6851609cda158f0d0e1230de905a11c245b7', 'validated', '{"audio_key":"edb86796115d0279b6cedfe40172a832c19fc6b9d256535a8302cb3835571c8a","entity_key":"d_stakeholder_requirements_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3c3bce4e7a1ad8dd6d2e3f4b2aca6851609cda158f0d0e1230de905a11c245b7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/edb86796115d0279b6cedfe40172a832c19fc6b9d256535a8302cb3835571c8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stakeholder_requirements_01:2 -> audio/generated/de-DE/dialogues/f07586384491bfb8e9dd052cff5723e62e99670d0abd91af9ac419b234edb616.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16c00ead-2456-5e3c-b500-75cd347a306a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stakeholder_requirements_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '226619c2f8d95d301b130dd4be9744fe451b49617a1424ee87dda4ee3e8111fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99f257c7-08ef-53ab-9bef-00edcc3cb899', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16c00ead-2456-5e3c-b500-75cd347a306a', 1), '226619c2f8d95d301b130dd4be9744fe451b49617a1424ee87dda4ee3e8111fc',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f07586384491bfb8e9dd052cff5723e62e99670d0abd91af9ac419b234edb616.mp3', 5276, '2026-09-13 10:00:51.976201', '151fdb52750d19750bebb85135b0a5e5fe90601aff3cb2f411a09d7eb23749f9', 'validated', '{"audio_key":"f07586384491bfb8e9dd052cff5723e62e99670d0abd91af9ac419b234edb616","entity_key":"d_stakeholder_requirements_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"151fdb52750d19750bebb85135b0a5e5fe90601aff3cb2f411a09d7eb23749f9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f07586384491bfb8e9dd052cff5723e62e99670d0abd91af9ac419b234edb616.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_02:1 -> audio/generated/de-DE/dialogues/f70d8f1f8241e18f83008a86db3453e14773629ff06e174e76d708997ddb8e25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82418680-59b3-5bd5-8033-3ef338f1285b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb9c31a4e2ddfcd53542ebceaa92f9331b8dd2433201c3a57cf354a0cbc2669b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e3f5d4b-f17b-562c-b2cb-8a50552cff8b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82418680-59b3-5bd5-8033-3ef338f1285b', 1), 'eb9c31a4e2ddfcd53542ebceaa92f9331b8dd2433201c3a57cf354a0cbc2669b',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f70d8f1f8241e18f83008a86db3453e14773629ff06e174e76d708997ddb8e25.mp3', 4911, '2026-09-13 10:00:52.606352', 'baa7959005c8e844e5cb124b18c89fd7437e5995ffe7dc949e7a5b6ef5872202', 'validated', '{"audio_key":"f70d8f1f8241e18f83008a86db3453e14773629ff06e174e76d708997ddb8e25","entity_key":"d_feedback_coaching_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"baa7959005c8e844e5cb124b18c89fd7437e5995ffe7dc949e7a5b6ef5872202","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f70d8f1f8241e18f83008a86db3453e14773629ff06e174e76d708997ddb8e25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_cultural_pragmatics_02:4 -> audio/generated/de-DE/dialogues/f8074eb64ea3d1da8744aead5db1215e92ddfae9f07f27e2493dec3bad682872.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db7e526b-e1a5-5936-88c5-103fe6561556', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_cultural_pragmatics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '846704aaa995769adf2c58ed283f14341cb29eae0c254a8cc25e9fccaae16848'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d682cef2-271a-5429-9b29-901e42cf97ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db7e526b-e1a5-5936-88c5-103fe6561556', 1), '846704aaa995769adf2c58ed283f14341cb29eae0c254a8cc25e9fccaae16848',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8074eb64ea3d1da8744aead5db1215e92ddfae9f07f27e2493dec3bad682872.mp3', 3840, '2026-09-13 10:00:53.287318', 'dc05073b7fa5898c6a60b3d72826429d9057a811efc11a0ef00d59468989a9a4', 'validated', '{"audio_key":"f8074eb64ea3d1da8744aead5db1215e92ddfae9f07f27e2493dec3bad682872","entity_key":"d_cross_cultural_pragmatics_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"dc05073b7fa5898c6a60b3d72826429d9057a811efc11a0ef00d59468989a9a4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f8074eb64ea3d1da8744aead5db1215e92ddfae9f07f27e2493dec3bad682872.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_01:1 -> audio/generated/de-DE/dialogues/fbde45486c36704d7c3289e88ef7ceabc8b5048b1b3fab464d84f46b1d231b78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('acbb51ac-281d-5a7b-88d4-886afb012cbc', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eae7b7b704b0f01b99f47d670cbb56c82f20fd00c94c3fa23d866852368ae061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ca0495a-c0e7-55da-9d97-a6d6cbb2cd95', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('acbb51ac-281d-5a7b-88d4-886afb012cbc', 1), 'eae7b7b704b0f01b99f47d670cbb56c82f20fd00c94c3fa23d866852368ae061',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fbde45486c36704d7c3289e88ef7ceabc8b5048b1b3fab464d84f46b1d231b78.mp3', 2925, '2026-09-13 10:00:53.739368', 'e5184cc4420034924fe95b2175294bba0c1c3ae1c8020e018349f1bea395c8e6', 'validated', '{"audio_key":"fbde45486c36704d7c3289e88ef7ceabc8b5048b1b3fab464d84f46b1d231b78","entity_key":"d_formal_escalation_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e5184cc4420034924fe95b2175294bba0c1c3ae1c8020e018349f1bea395c8e6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fbde45486c36704d7c3289e88ef7ceabc8b5048b1b3fab464d84f46b1d231b78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_coaching_03:4 -> audio/generated/de-DE/dialogues/fc7fea747e9df0ff717513eebfbd2ba6a9d1e0f43b4fb20a0eb285425493d951.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1a9964c-13ae-5545-be8c-190503bebaf6', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_coaching_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20bea4c618755c1b1e7d70f6943153ed57a4c4c70189099a67a45ea3fdaafe62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8accf55-62ad-5fcf-9f8b-2d52294a2816', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1a9964c-13ae-5545-be8c-190503bebaf6', 1), '20bea4c618755c1b1e7d70f6943153ed57a4c4c70189099a67a45ea3fdaafe62',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc7fea747e9df0ff717513eebfbd2ba6a9d1e0f43b4fb20a0eb285425493d951.mp3', 3709, '2026-09-13 10:00:54.534686', 'dae6665b758f55b1e1e5b211234bf6f99cc016a26b1cfe3afed0ffd7f9627446', 'validated', '{"audio_key":"fc7fea747e9df0ff717513eebfbd2ba6a9d1e0f43b4fb20a0eb285425493d951","entity_key":"d_feedback_coaching_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dae6665b758f55b1e1e5b211234bf6f99cc016a26b1cfe3afed0ffd7f9627446","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/fc7fea747e9df0ff717513eebfbd2ba6a9d1e0f43b4fb20a0eb285425493d951.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_knowledge_transfer_03:2 -> audio/generated/de-DE/dialogues/fc8eeb8220423a2df1140125200932c8daa1cd150b92b986f51040087290cfb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66229c22-d1ea-58ff-9b48-5fa2b57b4c60', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_knowledge_transfer_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a88b35ed880035d839eeda9bf623b1fc7d05bb2228291ab47e682ce2a3f85cce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb81cab4-2333-5bbf-b1cc-cc266831caaf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66229c22-d1ea-58ff-9b48-5fa2b57b4c60', 1), 'a88b35ed880035d839eeda9bf623b1fc7d05bb2228291ab47e682ce2a3f85cce',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc8eeb8220423a2df1140125200932c8daa1cd150b92b986f51040087290cfb2.mp3', 4179, '2026-09-13 10:00:55.052971', 'd7c21b395e3550eee9d27cc8d2c097e7837bff3c2dfbb238c237d89c570bd650', 'validated', '{"audio_key":"fc8eeb8220423a2df1140125200932c8daa1cd150b92b986f51040087290cfb2","entity_key":"d_knowledge_transfer_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d7c21b395e3550eee9d27cc8d2c097e7837bff3c2dfbb238c237d89c570bd650","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fc8eeb8220423a2df1140125200932c8daa1cd150b92b986f51040087290cfb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_delegation_accountability_03:4 -> audio/generated/de-DE/dialogues/fd72c93b0d11e6dfccc8b02307a853d9481581b7fe9ed494bf184b043d3e3bce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ebdbf1ee-a19b-52b3-888e-b8302ee48e5d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_delegation_accountability_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f7eae42213885989ee83af41c3909abcb6c8b16dbda4ddebc354f5a46dcb561'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4aa20ec-d69f-50b6-93fe-abf1aad41fea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ebdbf1ee-a19b-52b3-888e-b8302ee48e5d', 1), '6f7eae42213885989ee83af41c3909abcb6c8b16dbda4ddebc354f5a46dcb561',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd72c93b0d11e6dfccc8b02307a853d9481581b7fe9ed494bf184b043d3e3bce.mp3', 4205, '2026-09-13 10:00:55.848373', '6368a50362141ca0e86ab872bec0d05ad496b03f3e34f1ba05e7ab7a1500d4b0', 'validated', '{"audio_key":"fd72c93b0d11e6dfccc8b02307a853d9481581b7fe9ed494bf184b043d3e3bce","entity_key":"d_delegation_accountability_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6368a50362141ca0e86ab872bec0d05ad496b03f3e34f1ba05e7ab7a1500d4b0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fd72c93b0d11e6dfccc8b02307a853d9481581b7fe9ed494bf184b043d3e3bce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_escalation_03:2 -> audio/generated/de-DE/dialogues/fd89c9d6aa2627370f5a503436cea6532ca918ef59952e8885017c76356005aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bfe2e35-5b0c-52f7-90c3-3b7c694e9047', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_escalation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e6279460bd1a02fed580d136cffe55c6f7da0e728050aeb5071695d724d3bf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93ceff0e-2ad3-5651-8107-66a3122d2a2b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bfe2e35-5b0c-52f7-90c3-3b7c694e9047', 1), '1e6279460bd1a02fed580d136cffe55c6f7da0e728050aeb5071695d724d3bf2',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd89c9d6aa2627370f5a503436cea6532ca918ef59952e8885017c76356005aa.mp3', 2324, '2026-09-13 10:00:56.148068', '6a030c658d97b71557027833e0ab30a259882f61091a8a422b1abb891b59fea5', 'validated', '{"audio_key":"fd89c9d6aa2627370f5a503436cea6532ca918ef59952e8885017c76356005aa","entity_key":"d_formal_escalation_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6a030c658d97b71557027833e0ab30a259882f61091a8a422b1abb891b59fea5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fd89c9d6aa2627370f5a503436cea6532ca918ef59952e8885017c76356005aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scope_negotiation_03:3 -> audio/generated/de-DE/dialogues/fe06c1043d158fac91ae76f989d279751851c8076e888b1625acd583f28880c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ed673784-d17c-58ca-a81f-006103977994', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scope_negotiation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f8211f26ffa673c790e2c40adc4d86fa8b961f5f26ff44ae278a8ffdb27b328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f814e5b0-11e9-510a-ad14-d66956a34cc2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ed673784-d17c-58ca-a81f-006103977994', 1), '6f8211f26ffa673c790e2c40adc4d86fa8b961f5f26ff44ae278a8ffdb27b328',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fe06c1043d158fac91ae76f989d279751851c8076e888b1625acd583f28880c3.mp3', 4597, '2026-09-13 10:00:57.200241', 'e39a2d522788ec77c0766c81c2f2136695271ef10123d87e74bee38f8f0559f3', 'validated', '{"audio_key":"fe06c1043d158fac91ae76f989d279751851c8076e888b1625acd583f28880c3","entity_key":"d_scope_negotiation_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e39a2d522788ec77c0766c81c2f2136695271ef10123d87e74bee38f8f0559f3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fe06c1043d158fac91ae76f989d279751851c8076e888b1625acd583f28880c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ambiguity_clarification_03 -> audio/generated/de-DE/lexical/00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f5500f01-49f1-58fe-9f33-70ff93152640', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ambiguity_clarification_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6d68321c20268a487f315bc82875541a9765d2c8300b6ad064990863c4b57a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8fc01b5-8fbd-58e9-934f-8d9dc240bee0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f5500f01-49f1-58fe-9f33-70ff93152640', 1), 'e6d68321c20268a487f315bc82875541a9765d2c8300b6ad064990863c4b57a4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357.mp3', 1018, '2026-09-13 10:00:57.073506', '883458d1205a8c0f09ca7fa58c29202b7fbc1d5bba1933b618e32bb6eedba926', 'validated', '{"audio_key":"00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357","entity_key":"lx_ambiguity_clarification_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"883458d1205a8c0f09ca7fa58c29202b7fbc1d5bba1933b618e32bb6eedba926","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ambiguity_clarification_03 -> audio/generated/de-DE/lexical/00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7ce211a-159b-5aec-875c-7b4d4cab7812', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ambiguity_clarification_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6d68321c20268a487f315bc82875541a9765d2c8300b6ad064990863c4b57a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a1af8b4-9977-5aa8-9599-2a4ee7d0d673', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7ce211a-159b-5aec-875c-7b4d4cab7812', 1), 'e6d68321c20268a487f315bc82875541a9765d2c8300b6ad064990863c4b57a4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357.mp3', 1018, '2026-09-13 10:00:57.073506', '883458d1205a8c0f09ca7fa58c29202b7fbc1d5bba1933b618e32bb6eedba926', 'validated', '{"audio_key":"00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357","entity_key":"wf_ambiguity_clarification_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"883458d1205a8c0f09ca7fa58c29202b7fbc1d5bba1933b618e32bb6eedba926","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00b935c6cf4779af931c557879c2f4f2fdc97ce9fafa37616cd7ebd6859ea357.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ambiguity_clarification_02 -> audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d7579083-1a8a-5fb4-8cdb-6353e5f535b4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ambiguity_clarification_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a6b7fef-c755-5089-8d08-7e517e458c89', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d7579083-1a8a-5fb4-8cdb-6353e5f535b4', 1), 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3', 1201, '2026-09-13 10:00:58.079006', '54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251', 'validated', '{"audio_key":"0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031","entity_key":"lx_ambiguity_clarification_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ambiguity_clarification_02 -> audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ee56fa3-bcef-5f1f-90ce-a6835f941ad9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ambiguity_clarification_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d59bb541-e7c1-5610-8a97-005d6f8427d1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ee56fa3-bcef-5f1f-90ce-a6835f941ad9', 1), 'aab4ed2fa2f5f5cf1fb1a4e9b7595cb32eaddfe4b26506e486fc012dc7c9e789',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3', 1201, '2026-09-13 10:00:58.079006', '54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251', 'validated', '{"audio_key":"0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031","entity_key":"wf_ambiguity_clarification_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54d1d58bdb3a5b1d6315b4729609808e8e2984aa3ad7cdd65f9dbf22ae68d251","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0496c30234940117699b863682e51b3c874823ee49b45f9ad6fbc1bfbed87031.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_escalation_06 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_escalation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b1017d-1d06-5d9f-87df-da31fff57190', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"lx_formal_escalation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_escalation_06 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e1822a39-32b9-5d9f-8818-9023bd5d08f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_escalation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e36659cd-7712-5b63-b944-ed7fef9817f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e1822a39-32b9-5d9f-8818-9023bd5d08f6', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"wf_formal_escalation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_knowledge_transfer_04 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_knowledge_transfer_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fbc6b5-631c-541c-8dd1-d4d5d11f3a57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"lx_knowledge_transfer_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_knowledge_transfer_04 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ccd779c1-9ad4-54b9-99c2-6680c29a7e4b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_knowledge_transfer_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d3ad1e5-c09f-5ca7-8c3c-23d553355e7b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ccd779c1-9ad4-54b9-99c2-6680c29a7e4b', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"wf_knowledge_transfer_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_coaching_05 -> audio/generated/de-DE/lexical/18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('29da0299-7269-50fe-87ad-d7edb390aad9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_coaching_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad9d42326458c8d2ac9081e6d9df01429221746eb626fb4414e271cde0b4c3a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81e61a7a-e02b-5721-8164-b061b0065ba0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('29da0299-7269-50fe-87ad-d7edb390aad9', 1), 'ad9d42326458c8d2ac9081e6d9df01429221746eb626fb4414e271cde0b4c3a9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e.mp3', 1149, '2026-09-13 10:00:58.216752', '03252fc99b475814530bd14c7604a022f80dd0b3c6f06b6e0d0cca43eb40dc2e', 'validated', '{"audio_key":"18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e","entity_key":"lx_feedback_coaching_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03252fc99b475814530bd14c7604a022f80dd0b3c6f06b6e0d0cca43eb40dc2e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_coaching_05 -> audio/generated/de-DE/lexical/18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e79e5f1f-8c57-5bd3-951c-1fdebf8a4c1a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_coaching_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad9d42326458c8d2ac9081e6d9df01429221746eb626fb4414e271cde0b4c3a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b6609a2-ab76-5ce4-834e-04b721b3317b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e79e5f1f-8c57-5bd3-951c-1fdebf8a4c1a', 1), 'ad9d42326458c8d2ac9081e6d9df01429221746eb626fb4414e271cde0b4c3a9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e.mp3', 1149, '2026-09-13 10:00:58.216752', '03252fc99b475814530bd14c7604a022f80dd0b3c6f06b6e0d0cca43eb40dc2e', 'validated', '{"audio_key":"18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e","entity_key":"wf_feedback_coaching_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03252fc99b475814530bd14c7604a022f80dd0b3c6f06b6e0d0cca43eb40dc2e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/18e15bed63d9f4a2efc0e3e7f6758526aa17160d5ebbda660790b279b14dd89e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ambiguity_clarification_06 -> audio/generated/de-DE/lexical/1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dd0a939d-bed6-56a9-b37b-6ae1598669d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ambiguity_clarification_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9b13c67f1025eb865f97913cb992b65bdb8729af2c3ee8ae741af076d771902'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5dcf434-0314-55c1-a7a6-2e41d26d1b89', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dd0a939d-bed6-56a9-b37b-6ae1598669d2', 1), 'c9b13c67f1025eb865f97913cb992b65bdb8729af2c3ee8ae741af076d771902',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1.mp3', 1018, '2026-09-13 10:00:59.039377', '642c5a2bafc5b4c1b509a8c4370a597f7372415d16ad1a2b6bd46541d08b0d1a', 'validated', '{"audio_key":"1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1","entity_key":"lx_ambiguity_clarification_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"642c5a2bafc5b4c1b509a8c4370a597f7372415d16ad1a2b6bd46541d08b0d1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ambiguity_clarification_06 -> audio/generated/de-DE/lexical/1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4dc98a55-0cc7-5ffe-bcdc-6343c7397a98', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ambiguity_clarification_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9b13c67f1025eb865f97913cb992b65bdb8729af2c3ee8ae741af076d771902'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abf9d3c5-75b3-5c1f-a69f-7ac4cc601e51', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4dc98a55-0cc7-5ffe-bcdc-6343c7397a98', 1), 'c9b13c67f1025eb865f97913cb992b65bdb8729af2c3ee8ae741af076d771902',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1.mp3', 1018, '2026-09-13 10:00:59.039377', '642c5a2bafc5b4c1b509a8c4370a597f7372415d16ad1a2b6bd46541d08b0d1a', 'validated', '{"audio_key":"1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1","entity_key":"wf_ambiguity_clarification_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"642c5a2bafc5b4c1b509a8c4370a597f7372415d16ad1a2b6bd46541d08b0d1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e8ad8d276979dedf91f7c11b1883177d8d60a83f924e4b251efb5b43385d2a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_knowledge_transfer_02 -> audio/generated/de-DE/lexical/1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0553d941-2ab1-54d7-b534-7a13bf6dd67c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_knowledge_transfer_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '170f4f9d613d3955b263e3d6fe89640ad10ea385d7a1d212dbc2021fd23e3a3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f7e5e72-98ab-53b4-805a-989f27baf749', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0553d941-2ab1-54d7-b534-7a13bf6dd67c', 1), '170f4f9d613d3955b263e3d6fe89640ad10ea385d7a1d212dbc2021fd23e3a3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221.mp3', 1436, '2026-09-13 10:00:59.193925', '9be00f63663596c4de90d5c88737770ae94590d51c79b86029ff99bfb1590f23', 'validated', '{"audio_key":"1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221","entity_key":"lx_knowledge_transfer_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9be00f63663596c4de90d5c88737770ae94590d51c79b86029ff99bfb1590f23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_knowledge_transfer_02 -> audio/generated/de-DE/lexical/1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4de9db49-678d-5752-83f8-1ecbe58a4195', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_knowledge_transfer_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '170f4f9d613d3955b263e3d6fe89640ad10ea385d7a1d212dbc2021fd23e3a3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95e6e456-9b1a-57e8-98ec-d59b81a02230', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4de9db49-678d-5752-83f8-1ecbe58a4195', 1), '170f4f9d613d3955b263e3d6fe89640ad10ea385d7a1d212dbc2021fd23e3a3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221.mp3', 1436, '2026-09-13 10:00:59.193925', '9be00f63663596c4de90d5c88737770ae94590d51c79b86029ff99bfb1590f23', 'validated', '{"audio_key":"1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221","entity_key":"wf_knowledge_transfer_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9be00f63663596c4de90d5c88737770ae94590d51c79b86029ff99bfb1590f23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f5f4daa97e9e806e6e7d9b1f13d53712c73fcd313a1a0a0ed76f1a8259cf221.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stakeholder_requirements_05 -> audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04d758e0-cd84-58a4-b0f2-d749266e01d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stakeholder_requirements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba9cf499-ea9f-5bf2-86d5-1cd4e4f3e90c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04d758e0-cd84-58a4-b0f2-d749266e01d1', 1), '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3', 1201, '2026-09-13 09:40:52.551768', '2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8', 'validated', '{"audio_key":"1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde","entity_key":"lx_stakeholder_requirements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stakeholder_requirements_05 -> audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9685cf29-9288-54ad-b14a-326080be57fa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stakeholder_requirements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa8f7006-ac1f-5a8c-a827-e0f1c04853dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9685cf29-9288-54ad-b14a-326080be57fa', 1), '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3', 1201, '2026-09-13 09:40:52.551768', '2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8', 'validated', '{"audio_key":"1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde","entity_key":"wf_stakeholder_requirements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scope_negotiation_01 -> audio/generated/de-DE/lexical/2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a9a5499-ef76-5636-abbf-5447fb42da24', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scope_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a99168a4a6e25d880cd212ffb7a5ccb089eedceaf486ea158c4b5246ae551193'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4ab8fa1-5269-53d1-a0ce-446c8ebfe642', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a9a5499-ef76-5636-abbf-5447fb42da24', 1), 'a99168a4a6e25d880cd212ffb7a5ccb089eedceaf486ea158c4b5246ae551193',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5.mp3', 1436, '2026-09-13 10:01:00.049300', '159a50e0ed6f854c72559d1debf4d4dd67c794ae8a721bf0c3ad20e1e9cc3ff3', 'validated', '{"audio_key":"2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5","entity_key":"lx_scope_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"159a50e0ed6f854c72559d1debf4d4dd67c794ae8a721bf0c3ad20e1e9cc3ff3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scope_negotiation_01 -> audio/generated/de-DE/lexical/2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0384b667-561e-5e62-a376-416482f5c409', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scope_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a99168a4a6e25d880cd212ffb7a5ccb089eedceaf486ea158c4b5246ae551193'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96953a19-cbc0-5d08-b511-f79da49bd0dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0384b667-561e-5e62-a376-416482f5c409', 1), 'a99168a4a6e25d880cd212ffb7a5ccb089eedceaf486ea158c4b5246ae551193',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5.mp3', 1436, '2026-09-13 10:01:00.049300', '159a50e0ed6f854c72559d1debf4d4dd67c794ae8a721bf0c3ad20e1e9cc3ff3', 'validated', '{"audio_key":"2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5","entity_key":"wf_scope_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"159a50e0ed6f854c72559d1debf4d4dd67c794ae8a721bf0c3ad20e1e9cc3ff3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2c367f902dbe8baebfd3958d1b3c74ca80d893d8aa6403fbe1d41f7966440ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_knowledge_transfer_06 -> audio/generated/de-DE/lexical/3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8790334-f407-5d44-98cc-0cbbcff51b03', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_knowledge_transfer_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a61107ffce1bdc02f1412c8a76817cb2ac32caecd0259cda400ed6589bfe893b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebdb2724-3e8a-5edd-80e1-8b5ee63410ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8790334-f407-5d44-98cc-0cbbcff51b03', 1), 'a61107ffce1bdc02f1412c8a76817cb2ac32caecd0259cda400ed6589bfe893b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577.mp3', 1149, '2026-09-13 10:01:00.142502', '529958a93dcd033d1a181861008db25fdfbd1d9e2f3f601ef0f16a924b817297', 'validated', '{"audio_key":"3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577","entity_key":"lx_knowledge_transfer_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"529958a93dcd033d1a181861008db25fdfbd1d9e2f3f601ef0f16a924b817297","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_knowledge_transfer_06 -> audio/generated/de-DE/lexical/3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1db343d1-a815-5557-810a-d42b60c49228', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_knowledge_transfer_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a61107ffce1bdc02f1412c8a76817cb2ac32caecd0259cda400ed6589bfe893b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb3b1858-02cf-57fc-a540-d8da5e53953b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1db343d1-a815-5557-810a-d42b60c49228', 1), 'a61107ffce1bdc02f1412c8a76817cb2ac32caecd0259cda400ed6589bfe893b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577.mp3', 1149, '2026-09-13 10:01:00.142502', '529958a93dcd033d1a181861008db25fdfbd1d9e2f3f601ef0f16a924b817297', 'validated', '{"audio_key":"3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577","entity_key":"wf_knowledge_transfer_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"529958a93dcd033d1a181861008db25fdfbd1d9e2f3f601ef0f16a924b817297","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3679634121fc300d1887c082c5d99d7d1b02b94a94a106a73020ee09e9400577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_coaching_03 -> audio/generated/de-DE/lexical/3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f09676b2-3cc2-5bd7-a88a-d1ff5f1af377', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_coaching_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5da114b5fac7b65f63c275a3caff490710e4c68f52b2f6fb260b85cb98bd9b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d69a9aa5-2b90-5477-871c-c4c4353c3977', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f09676b2-3cc2-5bd7-a88a-d1ff5f1af377', 1), 'd5da114b5fac7b65f63c275a3caff490710e4c68f52b2f6fb260b85cb98bd9b8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac.mp3', 1253, '2026-09-13 10:01:01.258924', '9ba59308ea5e0f2ef8185a00b6c84f85d302a3b71176bfd16580573df2a08f9e', 'validated', '{"audio_key":"3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac","entity_key":"lx_feedback_coaching_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ba59308ea5e0f2ef8185a00b6c84f85d302a3b71176bfd16580573df2a08f9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_coaching_03 -> audio/generated/de-DE/lexical/3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29a31309-05df-55d8-a466-017c0115a526', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_coaching_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5da114b5fac7b65f63c275a3caff490710e4c68f52b2f6fb260b85cb98bd9b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a668facf-17f2-506b-aecc-89b872db1916', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29a31309-05df-55d8-a466-017c0115a526', 1), 'd5da114b5fac7b65f63c275a3caff490710e4c68f52b2f6fb260b85cb98bd9b8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac.mp3', 1253, '2026-09-13 10:01:01.258924', '9ba59308ea5e0f2ef8185a00b6c84f85d302a3b71176bfd16580573df2a08f9e', 'validated', '{"audio_key":"3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac","entity_key":"wf_feedback_coaching_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ba59308ea5e0f2ef8185a00b6c84f85d302a3b71176bfd16580573df2a08f9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3ab5e9bf204b4e68f406d9d020b2cf4dd7ad76481fed66731349b49e36ccebac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_cultural_pragmatics_02 -> audio/generated/de-DE/lexical/440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31f680f6-9a6b-54d8-a818-417ce8798956', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_cultural_pragmatics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '527444bfcc3b9407d69a25d5586da395c760bd48163df945fc906220848b3fee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cfab526-33c0-5aa7-baea-52e296e5a4f7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31f680f6-9a6b-54d8-a818-417ce8798956', 1), '527444bfcc3b9407d69a25d5586da395c760bd48163df945fc906220848b3fee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2.mp3', 1619, '2026-09-13 10:01:01.134242', '63f6f5a69b4d635e26947bb65b2d5e323ced86cd0150aadc25d68503dad09e4c', 'validated', '{"audio_key":"440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2","entity_key":"lx_cross_cultural_pragmatics_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63f6f5a69b4d635e26947bb65b2d5e323ced86cd0150aadc25d68503dad09e4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_cultural_pragmatics_02 -> audio/generated/de-DE/lexical/440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('54a3568b-5407-595c-82bd-eb6bcdbd0057', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_cultural_pragmatics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '527444bfcc3b9407d69a25d5586da395c760bd48163df945fc906220848b3fee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1e0040f-1dae-5d3d-b796-9858c0d62dd8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('54a3568b-5407-595c-82bd-eb6bcdbd0057', 1), '527444bfcc3b9407d69a25d5586da395c760bd48163df945fc906220848b3fee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2.mp3', 1619, '2026-09-13 10:01:01.134242', '63f6f5a69b4d635e26947bb65b2d5e323ced86cd0150aadc25d68503dad09e4c', 'validated', '{"audio_key":"440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2","entity_key":"wf_cross_cultural_pragmatics_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63f6f5a69b4d635e26947bb65b2d5e323ced86cd0150aadc25d68503dad09e4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/440fd64a56bcc49e684d0e431e03ec12ebc908db1e4ac8824af07cb3dcf8f4a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_collaboration_capstone_02 -> audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cdc6cd12-14bd-59f3-b965-835edee5eefe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_collaboration_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6b721a8-c0e9-57ef-ac67-43fb837a8383', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cdc6cd12-14bd-59f3-b965-835edee5eefe', 1), 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3', 1384, '2026-09-13 10:01:02.151919', '5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248', 'validated', '{"audio_key":"477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf","entity_key":"lx_collaboration_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_collaboration_capstone_02 -> audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c67b64ae-cf7a-5013-90b7-e4a78c3122dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_collaboration_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9190be9d-db52-5a02-8278-1ac196f7c593', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c67b64ae-cf7a-5013-90b7-e4a78c3122dd', 1), 'da4483159502cc160ec4a221b73bdedf54baefda816601d275b1183732cdeed3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3', 1384, '2026-09-13 10:01:02.151919', '5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248', 'validated', '{"audio_key":"477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf","entity_key":"wf_collaboration_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dba126cda11fd4abdc80b6d1e8319be66d3decc7cc0b84c88d30e2064ab1248","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/477f317fd9e63a978bb13ce445e9ba2d1c616c8a06bac6380878c5320b1c95bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_cultural_pragmatics_06 -> audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('11a14208-a06c-5521-aa27-0f309d150dd1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_cultural_pragmatics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff2fe838-8bf6-590e-a1e7-8bb4d41e84c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('11a14208-a06c-5521-aa27-0f309d150dd1', 1), 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3', 1018, '2026-09-13 08:47:56.537326', 'f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b', 'validated', '{"audio_key":"497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060","entity_key":"lx_cross_cultural_pragmatics_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_cultural_pragmatics_06 -> audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d72525d-0175-50e1-8d96-cac998b2c3f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_cultural_pragmatics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e7d2caf-0ce6-51ab-bbc2-d462b77b8c40', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d72525d-0175-50e1-8d96-cac998b2c3f9', 1), 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3', 1018, '2026-09-13 08:47:56.537326', 'f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b', 'validated', '{"audio_key":"497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060","entity_key":"wf_cross_cultural_pragmatics_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_knowledge_transfer_01 -> audio/generated/de-DE/lexical/4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cbc0181b-0263-56af-b434-5544ae68caf9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_knowledge_transfer_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a56dce07927405f2d4c453b7d9a974c799a8e5485b1d60c68d73cd64ad5b338a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8abc168-a819-57ee-88c6-0c4acf82e6a6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cbc0181b-0263-56af-b434-5544ae68caf9', 1), 'a56dce07927405f2d4c453b7d9a974c799a8e5485b1d60c68d73cd64ad5b338a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018.mp3', 1253, '2026-09-13 10:01:02.230814', '3e19e3d5bde1404eefd0c87de64bd0e487f431b8e95189779d16c3c84d6a166c', 'validated', '{"audio_key":"4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018","entity_key":"lx_knowledge_transfer_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e19e3d5bde1404eefd0c87de64bd0e487f431b8e95189779d16c3c84d6a166c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_knowledge_transfer_01 -> audio/generated/de-DE/lexical/4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d92dbb77-a7ff-55a5-bf76-7a50d149474f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_knowledge_transfer_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a56dce07927405f2d4c453b7d9a974c799a8e5485b1d60c68d73cd64ad5b338a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3791c71d-3bec-56f9-90d2-a48b203c32af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d92dbb77-a7ff-55a5-bf76-7a50d149474f', 1), 'a56dce07927405f2d4c453b7d9a974c799a8e5485b1d60c68d73cd64ad5b338a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018.mp3', 1253, '2026-09-13 10:01:02.230814', '3e19e3d5bde1404eefd0c87de64bd0e487f431b8e95189779d16c3c84d6a166c', 'validated', '{"audio_key":"4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018","entity_key":"wf_knowledge_transfer_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e19e3d5bde1404eefd0c87de64bd0e487f431b8e95189779d16c3c84d6a166c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4ef44e1f30e4323d6ca11c4129f71d47414e89e4cd9385eddeb6f424b17f0018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_collaboration_capstone_06 -> audio/generated/de-DE/lexical/4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0949181f-3055-5665-bdba-55168b96c48f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_collaboration_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4fec530d1d706a9fbc7b575710f0e633f2478b2e8b8456b48f40b2ff9b09a33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('362eaa95-d06a-5d70-93f0-55b4ee71abbb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0949181f-3055-5665-bdba-55168b96c48f', 1), 'f4fec530d1d706a9fbc7b575710f0e633f2478b2e8b8456b48f40b2ff9b09a33',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2.mp3', 1149, '2026-09-13 10:01:03.118493', '68cea692f2ae43e21b96f28489b950b57fb745fe6ca9292cccd6f9fc427b7010', 'validated', '{"audio_key":"4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2","entity_key":"lx_collaboration_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68cea692f2ae43e21b96f28489b950b57fb745fe6ca9292cccd6f9fc427b7010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_collaboration_capstone_06 -> audio/generated/de-DE/lexical/4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d23ef7cb-a797-561d-bbf0-0493a32e9957', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_collaboration_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4fec530d1d706a9fbc7b575710f0e633f2478b2e8b8456b48f40b2ff9b09a33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e21418e-e4da-5c0e-b8d7-5ad3d721fad8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d23ef7cb-a797-561d-bbf0-0493a32e9957', 1), 'f4fec530d1d706a9fbc7b575710f0e633f2478b2e8b8456b48f40b2ff9b09a33',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2.mp3', 1149, '2026-09-13 10:01:03.118493', '68cea692f2ae43e21b96f28489b950b57fb745fe6ca9292cccd6f9fc427b7010', 'validated', '{"audio_key":"4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2","entity_key":"wf_collaboration_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68cea692f2ae43e21b96f28489b950b57fb745fe6ca9292cccd6f9fc427b7010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f33835e3f0067efa27ae62b3e1fbb22509907944bf7b5c510ab0a5bdfbab3f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_escalation_04 -> audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fbf0030b-7826-58c9-b7bb-60e35bca1e52', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_escalation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d53367f7-8170-5e47-9b0a-726e7b1ef5b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fbf0030b-7826-58c9-b7bb-60e35bca1e52', 1), 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3', 1253, '2026-09-13 08:32:28.338967', '2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1', 'validated', '{"audio_key":"538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034","entity_key":"lx_formal_escalation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_escalation_04 -> audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('be58d4c8-15c6-5e2d-897f-a6552d1f6960', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_escalation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5a4ede1-d6a6-5792-a9c5-2657b6c450b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('be58d4c8-15c6-5e2d-897f-a6552d1f6960', 1), 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3', 1253, '2026-09-13 08:32:28.338967', '2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1', 'validated', '{"audio_key":"538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034","entity_key":"wf_formal_escalation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_cultural_pragmatics_05 -> audio/generated/de-DE/lexical/5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea3c148f-c546-5bb1-a9f7-5e00c6a807fa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_cultural_pragmatics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d21db70b8c11390a5ede5df9fa3278358d5a2a63195fb2598c921f7f595802c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31b3cbff-e4eb-507e-b9c9-4d459d119ab7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea3c148f-c546-5bb1-a9f7-5e00c6a807fa', 1), '8d21db70b8c11390a5ede5df9fa3278358d5a2a63195fb2598c921f7f595802c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85.mp3', 1515, '2026-09-13 10:01:03.219149', '231905fdd2beff3053f55bdf42d6d81e7b3f347560d798ae6ed2268ac734f721', 'validated', '{"audio_key":"5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85","entity_key":"lx_cross_cultural_pragmatics_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231905fdd2beff3053f55bdf42d6d81e7b3f347560d798ae6ed2268ac734f721","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_cultural_pragmatics_05 -> audio/generated/de-DE/lexical/5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('edfa7581-8358-5a9e-9662-8dd422f72309', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_cultural_pragmatics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d21db70b8c11390a5ede5df9fa3278358d5a2a63195fb2598c921f7f595802c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c69b0e9-b9d8-5333-a6ec-098728129966', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('edfa7581-8358-5a9e-9662-8dd422f72309', 1), '8d21db70b8c11390a5ede5df9fa3278358d5a2a63195fb2598c921f7f595802c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85.mp3', 1515, '2026-09-13 10:01:03.219149', '231905fdd2beff3053f55bdf42d6d81e7b3f347560d798ae6ed2268ac734f721', 'validated', '{"audio_key":"5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85","entity_key":"wf_cross_cultural_pragmatics_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231905fdd2beff3053f55bdf42d6d81e7b3f347560d798ae6ed2268ac734f721","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5b9dd2f71774d155ca48b3e72be50ef5de993197dad1f72b169447898c7afb85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_delegation_accountability_01 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_delegation_accountability_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70583cd7-3bc1-558d-b60f-dce733c973ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"lx_delegation_accountability_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_delegation_accountability_01 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0724917-e957-5f07-a4c4-65da2075cf22', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_delegation_accountability_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a82cbd5f-05a1-5d14-a82c-73d03c863e09', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0724917-e957-5f07-a4c4-65da2075cf22', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"wf_delegation_accountability_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_cultural_pragmatics_01 -> audio/generated/de-DE/lexical/5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f6d2a5f-9c29-509c-b368-d091fd67a4c9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_cultural_pragmatics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d8e3b83374743092d935cc6ab97c530fe0d301072e1ddac88208f41206f9467'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72581dda-b991-51e0-ac25-c3b295c514ba', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f6d2a5f-9c29-509c-b368-d091fd67a4c9', 1), '9d8e3b83374743092d935cc6ab97c530fe0d301072e1ddac88208f41206f9467',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531.mp3', 1201, '2026-09-13 10:01:04.076324', 'd2c704031fbada79675b3ea010a330f8825d1196058be684a3ad787929fc1e32', 'validated', '{"audio_key":"5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531","entity_key":"lx_cross_cultural_pragmatics_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2c704031fbada79675b3ea010a330f8825d1196058be684a3ad787929fc1e32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_cultural_pragmatics_01 -> audio/generated/de-DE/lexical/5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17d73370-724d-5a74-909e-65b3eff57382', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_cultural_pragmatics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d8e3b83374743092d935cc6ab97c530fe0d301072e1ddac88208f41206f9467'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e50e5049-509a-58fe-9601-78cabfa6c1e3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17d73370-724d-5a74-909e-65b3eff57382', 1), '9d8e3b83374743092d935cc6ab97c530fe0d301072e1ddac88208f41206f9467',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531.mp3', 1201, '2026-09-13 10:01:04.076324', 'd2c704031fbada79675b3ea010a330f8825d1196058be684a3ad787929fc1e32', 'validated', '{"audio_key":"5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531","entity_key":"wf_cross_cultural_pragmatics_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2c704031fbada79675b3ea010a330f8825d1196058be684a3ad787929fc1e32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5edad33cdb604da308d9a51cbe6ae46933bdbae3c833b6b467847b7c8cf11531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_escalation_02 -> audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('83b13137-3ed9-5a61-bc32-280f58e88319', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_escalation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6ee3df7-a277-5c04-92b1-6f8887b04bef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('83b13137-3ed9-5a61-bc32-280f58e88319', 1), '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3', 1097, '2026-09-13 09:40:57.550321', '608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3', 'validated', '{"audio_key":"62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f","entity_key":"lx_formal_escalation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_escalation_02 -> audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bd06b6ab-f77f-559c-b80d-2fb56d4f0614', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_escalation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75055ba3-71b4-588e-aff2-26da5653bc29', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bd06b6ab-f77f-559c-b80d-2fb56d4f0614', 1), '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3', 1097, '2026-09-13 09:40:57.550321', '608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3', 'validated', '{"audio_key":"62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f","entity_key":"wf_formal_escalation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ambiguity_clarification_01 -> audio/generated/de-DE/lexical/69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a7aaf6b9-e02d-5bdc-b924-484fe77c64a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ambiguity_clarification_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84d5782e828d85939ae36102eaa9ed075a0472d91dc0a1c04481bde02f56e4d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('419e3862-1f4b-57e6-b2af-fcbf57e35748', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a7aaf6b9-e02d-5bdc-b924-484fe77c64a0', 1), '84d5782e828d85939ae36102eaa9ed075a0472d91dc0a1c04481bde02f56e4d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288.mp3', 1384, '2026-09-13 10:01:04.217611', '139bd27a24dfa5151816bdbe1d2a5b13cd313713cc3e5dddd0ab5a156f808854', 'validated', '{"audio_key":"69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288","entity_key":"lx_ambiguity_clarification_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"139bd27a24dfa5151816bdbe1d2a5b13cd313713cc3e5dddd0ab5a156f808854","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ambiguity_clarification_01 -> audio/generated/de-DE/lexical/69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('330cf846-1a52-5a64-a1af-13c8d832ca6a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ambiguity_clarification_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84d5782e828d85939ae36102eaa9ed075a0472d91dc0a1c04481bde02f56e4d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5d9fb65-c651-5185-b6ec-bfb85cc59b4f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('330cf846-1a52-5a64-a1af-13c8d832ca6a', 1), '84d5782e828d85939ae36102eaa9ed075a0472d91dc0a1c04481bde02f56e4d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288.mp3', 1384, '2026-09-13 10:01:04.217611', '139bd27a24dfa5151816bdbe1d2a5b13cd313713cc3e5dddd0ab5a156f808854', 'validated', '{"audio_key":"69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288","entity_key":"wf_ambiguity_clarification_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"139bd27a24dfa5151816bdbe1d2a5b13cd313713cc3e5dddd0ab5a156f808854","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/69f767c8b847528fd8b81bf847f210b0cb2858608ac4b44e9f742fcd7ee0a288.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_cultural_pragmatics_04 -> audio/generated/de-DE/lexical/6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e11bf48d-7e8a-5038-bee3-8288cfff1ac1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_cultural_pragmatics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '954b11264121f9eda7c809778a131fcc4c649615b48f1806e75c57c6d4f525bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77d0ef9e-7966-5df9-ba73-117b1e32a000', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e11bf48d-7e8a-5038-bee3-8288cfff1ac1', 1), '954b11264121f9eda7c809778a131fcc4c649615b48f1806e75c57c6d4f525bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139.mp3', 1567, '2026-09-13 10:01:05.080656', '628ebd9efb451ffee9a8596f65a56979a31a2b3963c3be918d3c7bda8427b338', 'validated', '{"audio_key":"6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139","entity_key":"lx_cross_cultural_pragmatics_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"628ebd9efb451ffee9a8596f65a56979a31a2b3963c3be918d3c7bda8427b338","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_cultural_pragmatics_04 -> audio/generated/de-DE/lexical/6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d551c128-6a41-5194-baf2-09ac69e82181', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_cultural_pragmatics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '954b11264121f9eda7c809778a131fcc4c649615b48f1806e75c57c6d4f525bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5be3c4aa-84a1-55ef-92c4-7cca418b81eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d551c128-6a41-5194-baf2-09ac69e82181', 1), '954b11264121f9eda7c809778a131fcc4c649615b48f1806e75c57c6d4f525bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139.mp3', 1567, '2026-09-13 10:01:05.080656', '628ebd9efb451ffee9a8596f65a56979a31a2b3963c3be918d3c7bda8427b338', 'validated', '{"audio_key":"6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139","entity_key":"wf_cross_cultural_pragmatics_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"628ebd9efb451ffee9a8596f65a56979a31a2b3963c3be918d3c7bda8427b338","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6fa6941a31fced1d3d121dc4e5a25a8222727f0b93e5428b24ec2056cbc14139.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_collaboration_capstone_01 -> audio/generated/de-DE/lexical/6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35024440-2e44-50bf-8a12-c053adf9b207', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_collaboration_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53422ff9648ca0e6f33ade2b75d8292dea5924c2b8082b60d14239d5541cea7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da1d9e48-d31d-5bed-9420-bfb826eccc66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35024440-2e44-50bf-8a12-c053adf9b207', 1), 'b53422ff9648ca0e6f33ade2b75d8292dea5924c2b8082b60d14239d5541cea7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9.mp3', 1436, '2026-09-13 10:01:05.235974', '1499c81246cbc5f80f5df0bbd0f86133eeed8ba6fbdaf46c6f8bde8791bfc00c', 'validated', '{"audio_key":"6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9","entity_key":"lx_collaboration_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1499c81246cbc5f80f5df0bbd0f86133eeed8ba6fbdaf46c6f8bde8791bfc00c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_collaboration_capstone_01 -> audio/generated/de-DE/lexical/6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a100ab3-137a-564c-ada3-3a7413d7744f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_collaboration_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53422ff9648ca0e6f33ade2b75d8292dea5924c2b8082b60d14239d5541cea7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f19e602-1606-54b1-81b5-444993592a04', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a100ab3-137a-564c-ada3-3a7413d7744f', 1), 'b53422ff9648ca0e6f33ade2b75d8292dea5924c2b8082b60d14239d5541cea7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9.mp3', 1436, '2026-09-13 10:01:05.235974', '1499c81246cbc5f80f5df0bbd0f86133eeed8ba6fbdaf46c6f8bde8791bfc00c', 'validated', '{"audio_key":"6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9","entity_key":"wf_collaboration_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1499c81246cbc5f80f5df0bbd0f86133eeed8ba6fbdaf46c6f8bde8791bfc00c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6fb76bea5aa43fa8742a1ab506a4a8b374b6517322df9d87ea683f1e9c5666f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scope_negotiation_03 -> audio/generated/de-DE/lexical/7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f7bd516a-7dbf-5835-a6e1-7408dcb2fd19', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scope_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62cd49c335a5315d6fe9280028183f75e3f75c725730231cac468f3db65c2afe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b5ad4f2-03c3-5e70-b2b7-c49e10553a15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f7bd516a-7dbf-5835-a6e1-7408dcb2fd19', 1), '62cd49c335a5315d6fe9280028183f75e3f75c725730231cac468f3db65c2afe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54.mp3', 1332, '2026-09-13 10:01:06.062575', '082a537ec5c96a47f904e0b0a11500141b062c8d79f5219cfc715114e206873f', 'validated', '{"audio_key":"7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54","entity_key":"lx_scope_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"082a537ec5c96a47f904e0b0a11500141b062c8d79f5219cfc715114e206873f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scope_negotiation_03 -> audio/generated/de-DE/lexical/7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('65081698-4c48-5641-8c0c-8dcbeb9f1e36', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scope_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62cd49c335a5315d6fe9280028183f75e3f75c725730231cac468f3db65c2afe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2e4b19a-7c05-5e59-9f99-2a2606fd1207', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('65081698-4c48-5641-8c0c-8dcbeb9f1e36', 1), '62cd49c335a5315d6fe9280028183f75e3f75c725730231cac468f3db65c2afe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54.mp3', 1332, '2026-09-13 10:01:06.062575', '082a537ec5c96a47f904e0b0a11500141b062c8d79f5219cfc715114e206873f', 'validated', '{"audio_key":"7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54","entity_key":"wf_scope_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"082a537ec5c96a47f904e0b0a11500141b062c8d79f5219cfc715114e206873f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7030311f099d671b92103c33e9541a9124d7010337f1545f8a937f4ea9fb9a54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_delegation_accountability_02 -> audio/generated/de-DE/lexical/72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54ad2fa5-6b24-50ad-82a2-3415bdf2509b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_delegation_accountability_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da0bb5481336bae68f1e816ef72fe40ff2b5dec45d76c19777db5bf4f99d3d24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e4e3eb8-ac9a-5433-97c1-c497a614fcd8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54ad2fa5-6b24-50ad-82a2-3415bdf2509b', 1), 'da0bb5481336bae68f1e816ef72fe40ff2b5dec45d76c19777db5bf4f99d3d24',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c.mp3', 1436, '2026-09-13 10:01:06.217056', '4cb3ac776729a7b147a96edbb756caf33f6a7158184a4c1ba996c741097970ea', 'validated', '{"audio_key":"72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c","entity_key":"lx_delegation_accountability_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cb3ac776729a7b147a96edbb756caf33f6a7158184a4c1ba996c741097970ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_delegation_accountability_02 -> audio/generated/de-DE/lexical/72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b86fa19b-aa23-5a7f-a4d6-81b37fefa723', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_delegation_accountability_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da0bb5481336bae68f1e816ef72fe40ff2b5dec45d76c19777db5bf4f99d3d24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d36e77b-c0da-5a3c-a9b9-2b931878d921', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b86fa19b-aa23-5a7f-a4d6-81b37fefa723', 1), 'da0bb5481336bae68f1e816ef72fe40ff2b5dec45d76c19777db5bf4f99d3d24',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c.mp3', 1436, '2026-09-13 10:01:06.217056', '4cb3ac776729a7b147a96edbb756caf33f6a7158184a4c1ba996c741097970ea', 'validated', '{"audio_key":"72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c","entity_key":"wf_delegation_accountability_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cb3ac776729a7b147a96edbb756caf33f6a7158184a4c1ba996c741097970ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/72e43a73a3a407f5335b52dd124601e75892abafeff9d53437af96348400449c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scope_negotiation_05 -> audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3243d12-8112-57c7-8d90-193a0b4ff09f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scope_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49dcdba5-cc5a-5cd4-941f-ebf9d505814f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3243d12-8112-57c7-8d90-193a0b4ff09f', 1), 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3', 1280, '2026-09-13 10:01:07.055648', '9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d', 'validated', '{"audio_key":"73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e","entity_key":"lx_scope_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scope_negotiation_05 -> audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('de67309e-7879-565e-a517-8e690abe110f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scope_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b36c0444-1a1b-5e82-b223-5c85fbf20f1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('de67309e-7879-565e-a517-8e690abe110f', 1), 'df0b35337917fa94dee4be1207a059d98d7bd90b925a2d941c049921ce9d0fff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3', 1280, '2026-09-13 10:01:07.055648', '9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d', 'validated', '{"audio_key":"73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e","entity_key":"wf_scope_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9493816453302ee0203630d07321a838817b10a6c93c6d0f4a4aec2ab75b9d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/73f057afb5abc2a10fafff26a39ed5fb2f49317db6f305fdba4d05d4ec60b07e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_escalation_01 -> audio/generated/de-DE/lexical/8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7fab40b5-7335-542f-acdc-ef7a92733c1c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_escalation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8640fcef5f07665e48336875b04764037fe974eaafeaa2071c983002271c256c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ebcf3b3-f24e-5314-bb83-d275f94b9f93', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7fab40b5-7335-542f-acdc-ef7a92733c1c', 1), '8640fcef5f07665e48336875b04764037fe974eaafeaa2071c983002271c256c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8.mp3', 1071, '2026-09-13 10:01:07.197440', 'bbbda719f4e12d4c2f248b9c81e9452e45519bd90e66f48f27983bf4021d3e1d', 'validated', '{"audio_key":"8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8","entity_key":"lx_formal_escalation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbbda719f4e12d4c2f248b9c81e9452e45519bd90e66f48f27983bf4021d3e1d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_escalation_01 -> audio/generated/de-DE/lexical/8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('63991d04-2ef1-565b-88d3-931591c62693', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_escalation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8640fcef5f07665e48336875b04764037fe974eaafeaa2071c983002271c256c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20be4c28-5ff9-5625-861c-65a5df046421', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('63991d04-2ef1-565b-88d3-931591c62693', 1), '8640fcef5f07665e48336875b04764037fe974eaafeaa2071c983002271c256c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8.mp3', 1071, '2026-09-13 10:01:07.197440', 'bbbda719f4e12d4c2f248b9c81e9452e45519bd90e66f48f27983bf4021d3e1d', 'validated', '{"audio_key":"8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8","entity_key":"wf_formal_escalation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbbda719f4e12d4c2f248b9c81e9452e45519bd90e66f48f27983bf4021d3e1d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8956bfcb5cbc2b3b69538e2772c533e752315cde03b7fd45309b8280ff8c12f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_coaching_01 -> audio/generated/de-DE/lexical/8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ff3855a6-5d9c-5ace-81f8-d063dc0bb814', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_coaching_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6cba7caed0532c67b881e37360c5e9455b5406b024d993af7311539b4ce3d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e10c43b5-0b79-572d-8eee-b91c8b372d6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ff3855a6-5d9c-5ace-81f8-d063dc0bb814', 1), 'b6cba7caed0532c67b881e37360c5e9455b5406b024d993af7311539b4ce3d70',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59.mp3', 1253, '2026-09-13 10:01:08.010378', '34b37e27979f340fd022bd4a850fca9b87d754aadc3ed9957662916eae6ae2b4', 'validated', '{"audio_key":"8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59","entity_key":"lx_feedback_coaching_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34b37e27979f340fd022bd4a850fca9b87d754aadc3ed9957662916eae6ae2b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_coaching_01 -> audio/generated/de-DE/lexical/8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec984b2f-360a-5af8-8428-d3fa76e0686e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_coaching_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6cba7caed0532c67b881e37360c5e9455b5406b024d993af7311539b4ce3d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfdd8a6b-728f-50ee-b6fe-fd2572174968', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec984b2f-360a-5af8-8428-d3fa76e0686e', 1), 'b6cba7caed0532c67b881e37360c5e9455b5406b024d993af7311539b4ce3d70',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59.mp3', 1253, '2026-09-13 10:01:08.010378', '34b37e27979f340fd022bd4a850fca9b87d754aadc3ed9957662916eae6ae2b4', 'validated', '{"audio_key":"8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59","entity_key":"wf_feedback_coaching_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34b37e27979f340fd022bd4a850fca9b87d754aadc3ed9957662916eae6ae2b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8b380179e722663658ebdb4c38c4be286ddc647d2843709cadc2203cf11f9d59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stakeholder_requirements_03 -> audio/generated/de-DE/lexical/8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('86a9650e-b0a7-5b3c-a785-2553a3fe156f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stakeholder_requirements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffeab20d60a9aa0001f9a85d729c3521d97cce76b5a72e7b7a5140d835561e7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53193c18-4dfc-57b3-a3b9-5c01db0dc5a2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('86a9650e-b0a7-5b3c-a785-2553a3fe156f', 1), 'ffeab20d60a9aa0001f9a85d729c3521d97cce76b5a72e7b7a5140d835561e7f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f.mp3', 1488, '2026-09-13 10:01:08.177851', '1a7e8b1bacf7b59e0e683962daa8cc9420e33e90bf01806eb10e757b81271689', 'validated', '{"audio_key":"8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f","entity_key":"lx_stakeholder_requirements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a7e8b1bacf7b59e0e683962daa8cc9420e33e90bf01806eb10e757b81271689","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stakeholder_requirements_03 -> audio/generated/de-DE/lexical/8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbf28392-edc0-54c4-ab57-95b3a40a22b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stakeholder_requirements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffeab20d60a9aa0001f9a85d729c3521d97cce76b5a72e7b7a5140d835561e7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98f554b7-6674-51aa-8149-28c07c175b74', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbf28392-edc0-54c4-ab57-95b3a40a22b5', 1), 'ffeab20d60a9aa0001f9a85d729c3521d97cce76b5a72e7b7a5140d835561e7f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f.mp3', 1488, '2026-09-13 10:01:08.177851', '1a7e8b1bacf7b59e0e683962daa8cc9420e33e90bf01806eb10e757b81271689', 'validated', '{"audio_key":"8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f","entity_key":"wf_stakeholder_requirements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a7e8b1bacf7b59e0e683962daa8cc9420e33e90bf01806eb10e757b81271689","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ea90867136c03150e16cbca684c4b4dc852d5d0fa95ec304f5c3b8af647a67f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_cultural_pragmatics_03 -> audio/generated/de-DE/lexical/98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73eca865-4b9f-5acb-9c77-b6554efc8217', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_cultural_pragmatics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03e0a293b5b99beda0d895a980ae8d2ba11e3353d177c2e653ca725cf3a514c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('860817cd-0cdf-5e7b-add2-291e2ca334d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73eca865-4b9f-5acb-9c77-b6554efc8217', 1), '03e0a293b5b99beda0d895a980ae8d2ba11e3353d177c2e653ca725cf3a514c0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695.mp3', 1384, '2026-09-13 10:01:08.983094', 'f255c036b71ff2998b04c8305e329902c311f16ae5018ab9ac10384e4a670212', 'validated', '{"audio_key":"98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695","entity_key":"lx_cross_cultural_pragmatics_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f255c036b71ff2998b04c8305e329902c311f16ae5018ab9ac10384e4a670212","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_cultural_pragmatics_03 -> audio/generated/de-DE/lexical/98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('628b30a4-8984-583a-b485-d76b241c5f81', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_cultural_pragmatics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03e0a293b5b99beda0d895a980ae8d2ba11e3353d177c2e653ca725cf3a514c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab80b329-66bf-5cc1-a396-2791ba4b9f75', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('628b30a4-8984-583a-b485-d76b241c5f81', 1), '03e0a293b5b99beda0d895a980ae8d2ba11e3353d177c2e653ca725cf3a514c0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695.mp3', 1384, '2026-09-13 10:01:08.983094', 'f255c036b71ff2998b04c8305e329902c311f16ae5018ab9ac10384e4a670212', 'validated', '{"audio_key":"98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695","entity_key":"wf_cross_cultural_pragmatics_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f255c036b71ff2998b04c8305e329902c311f16ae5018ab9ac10384e4a670212","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/98fb533bc647629447d3be89ac126a414320cd50a7ea650f4f141722df93b695.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_objections_counterarguments_04 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_objections_counterarguments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9efd8281-5208-57b2-80a4-ebc8db8d83db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"lx_objections_counterarguments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_objections_counterarguments_04 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('05727fdb-fe46-522e-8455-b95e8d711f45', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_objections_counterarguments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('955c349b-acc3-5a17-9d57-fc470d426b38', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('05727fdb-fe46-522e-8455-b95e8d711f45', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"wf_objections_counterarguments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_coaching_04 -> audio/generated/de-DE/lexical/a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9ef791ca-ddbb-5ae5-9d4e-3fa6499654ec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_coaching_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08dca85b81ac4b2a2da3d57122f024711b2d3be75cfa6c0f9371b9f6d9ce6d82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e7cc8b5-462d-5755-8dad-04374a6dab2c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9ef791ca-ddbb-5ae5-9d4e-3fa6499654ec', 1), '08dca85b81ac4b2a2da3d57122f024711b2d3be75cfa6c0f9371b9f6d9ce6d82',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8.mp3', 1253, '2026-09-13 10:01:09.215417', '175d99253de6a44295af19bcaaab5c11965a175e20577b251b243762b0e314a6', 'validated', '{"audio_key":"a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8","entity_key":"lx_feedback_coaching_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"175d99253de6a44295af19bcaaab5c11965a175e20577b251b243762b0e314a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_coaching_04 -> audio/generated/de-DE/lexical/a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29f5b38a-56da-51a3-a290-cfec019a3ad1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_coaching_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08dca85b81ac4b2a2da3d57122f024711b2d3be75cfa6c0f9371b9f6d9ce6d82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a293c437-9953-5cdb-839a-d09d325dd232', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29f5b38a-56da-51a3-a290-cfec019a3ad1', 1), '08dca85b81ac4b2a2da3d57122f024711b2d3be75cfa6c0f9371b9f6d9ce6d82',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8.mp3', 1253, '2026-09-13 10:01:09.215417', '175d99253de6a44295af19bcaaab5c11965a175e20577b251b243762b0e314a6', 'validated', '{"audio_key":"a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8","entity_key":"wf_feedback_coaching_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"175d99253de6a44295af19bcaaab5c11965a175e20577b251b243762b0e314a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a419cb295b7b90694851a376f5845f9a676a773b844aaf5cda34cca5bdc666b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scope_negotiation_04 -> audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('faaf1065-f9d4-5820-82fe-4a27b81d2498', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scope_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1747a39e-b4b0-5644-8809-74991430f6f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('faaf1065-f9d4-5820-82fe-4a27b81d2498', 1), 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3', 1149, '2026-09-13 10:01:10.071281', '114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561', 'validated', '{"audio_key":"a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb","entity_key":"lx_scope_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scope_negotiation_04 -> audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f033566-334c-56b9-9a5e-d252ee4a05f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scope_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('998e44f7-1752-53f6-9990-f9e998e9ceeb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f033566-334c-56b9-9a5e-d252ee4a05f9', 1), 'e96a01a42289dd0dd678bba42cb06eaf571e0477046990d7ee5d12636a7cf25c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3', 1149, '2026-09-13 10:01:10.071281', '114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561', 'validated', '{"audio_key":"a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb","entity_key":"wf_scope_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"114c62f13411bfa1d3b19b8cc6cc5b01257a0829cbd567a5f7c0432aed134561","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a58652bd20a094c0b1f0eb0dba687958c359672a91ba890c377c3a06811bffcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_objections_counterarguments_01 -> audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16c63b51-625a-57ce-8064-7dedcdc0d2b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_objections_counterarguments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b46ea9f-5d2d-50ff-a39b-e1d7ba913cef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16c63b51-625a-57ce-8064-7dedcdc0d2b8', 1), '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3', 966, '2026-09-13 07:53:26.282710', 'c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4', 'validated', '{"audio_key":"aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5","entity_key":"lx_objections_counterarguments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_objections_counterarguments_01 -> audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ad83893-3187-5255-b1d9-2545a36937a1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_objections_counterarguments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('113052a5-c256-5ba8-8201-49f2b9ba22ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ad83893-3187-5255-b1d9-2545a36937a1', 1), '60578fdb842799eb99dea7004d6131516964bad8c1a1eed2cb617fd923a54e3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3', 966, '2026-09-13 07:53:26.282710', 'c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4', 'validated', '{"audio_key":"aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5","entity_key":"wf_objections_counterarguments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c264afd5977c7729bc728c4b9f33d71848e0e15913202ce90fddf9b9579a59f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aa74f991ef1fbbb3981bfd3ca0437b00ad9f86c69b248966e1e04e17d444d2f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_knowledge_transfer_03 -> audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('47156334-70b5-5aed-9035-5e9b865c3998', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_knowledge_transfer_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e22362ef-e154-5425-a48e-d7aaa01d6f34', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('47156334-70b5-5aed-9035-5e9b865c3998', 1), '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3', 1097, '2026-09-13 08:32:33.162451', 'e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3', 'validated', '{"audio_key":"ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a","entity_key":"lx_knowledge_transfer_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_knowledge_transfer_03 -> audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('382aa7d1-6763-50f5-bcad-3004500444d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_knowledge_transfer_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bff1c2f-6224-5a5c-8e2d-9b488b33349e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('382aa7d1-6763-50f5-bcad-3004500444d6', 1), '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3', 1097, '2026-09-13 08:32:33.162451', 'e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3', 'validated', '{"audio_key":"ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a","entity_key":"wf_knowledge_transfer_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_delegation_accountability_03 -> audio/generated/de-DE/lexical/ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5a0f0b9-7976-5c0e-b0a1-c5ff89f6647a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_delegation_accountability_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06893db07c76608f23892ac8bfd93d13fb0853a12c5e12a3a4f3fcc76f894d0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dbfad77-722e-59be-b5b4-75ffe8c2a91e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5a0f0b9-7976-5c0e-b0a1-c5ff89f6647a', 1), '06893db07c76608f23892ac8bfd93d13fb0853a12c5e12a3a4f3fcc76f894d0d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec.mp3', 1619, '2026-09-13 10:01:10.222116', 'b95410ce6e98ea3c7e9ee0a059503e6c64e615df5b5a45fb01e575a8b8da4d39', 'validated', '{"audio_key":"ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec","entity_key":"lx_delegation_accountability_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b95410ce6e98ea3c7e9ee0a059503e6c64e615df5b5a45fb01e575a8b8da4d39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_delegation_accountability_03 -> audio/generated/de-DE/lexical/ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('142fd8e5-501c-5d72-b92a-af51fe40c2e4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_delegation_accountability_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06893db07c76608f23892ac8bfd93d13fb0853a12c5e12a3a4f3fcc76f894d0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f40d6b4-4d6e-5b72-8096-e837211a00d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('142fd8e5-501c-5d72-b92a-af51fe40c2e4', 1), '06893db07c76608f23892ac8bfd93d13fb0853a12c5e12a3a4f3fcc76f894d0d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec.mp3', 1619, '2026-09-13 10:01:10.222116', 'b95410ce6e98ea3c7e9ee0a059503e6c64e615df5b5a45fb01e575a8b8da4d39', 'validated', '{"audio_key":"ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec","entity_key":"wf_delegation_accountability_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b95410ce6e98ea3c7e9ee0a059503e6c64e615df5b5a45fb01e575a8b8da4d39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab6a71234a8a5386eaa7564d798574ec88f63b3e9696e6f898c3a05922c839ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_delegation_accountability_06 -> audio/generated/de-DE/lexical/b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0c394886-a3ba-5772-b533-74d7eb103b3b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_delegation_accountability_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb16747164172d0b7d69ecb979f722fa6200cba5eade4b0fee6862005f3650ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9be310f7-4e34-55d4-974c-63e9b656c68f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0c394886-a3ba-5772-b533-74d7eb103b3b', 1), 'fb16747164172d0b7d69ecb979f722fa6200cba5eade4b0fee6862005f3650ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2.mp3', 1097, '2026-09-13 10:01:11.021573', 'c81858a7410d0e4b1b53f3182d9efd31fe161e8eb121f66bf45ab22ef145e825', 'validated', '{"audio_key":"b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2","entity_key":"lx_delegation_accountability_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c81858a7410d0e4b1b53f3182d9efd31fe161e8eb121f66bf45ab22ef145e825","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_delegation_accountability_06 -> audio/generated/de-DE/lexical/b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76d1a8f6-f612-5502-aa11-bdfc8efc2e27', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_delegation_accountability_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb16747164172d0b7d69ecb979f722fa6200cba5eade4b0fee6862005f3650ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39a8ac7a-9fcc-5a5c-8c45-319cfb074f7d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76d1a8f6-f612-5502-aa11-bdfc8efc2e27', 1), 'fb16747164172d0b7d69ecb979f722fa6200cba5eade4b0fee6862005f3650ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2.mp3', 1097, '2026-09-13 10:01:11.021573', 'c81858a7410d0e4b1b53f3182d9efd31fe161e8eb121f66bf45ab22ef145e825', 'validated', '{"audio_key":"b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2","entity_key":"wf_delegation_accountability_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c81858a7410d0e4b1b53f3182d9efd31fe161e8eb121f66bf45ab22ef145e825","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b142aba1e8339fe38b28745ac0c007aba47977ac2e0df17fa0b9e3fc033134f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_collaboration_capstone_03 -> audio/generated/de-DE/lexical/b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2473d81a-82ad-5ef0-80cf-14eac2d62321', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_collaboration_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cae5570ce84d43373561e5e883e7dd325196e0346ee20e2c0bfb2be71649c222'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52b65e40-3a66-51c9-9e13-1c6696df80f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2473d81a-82ad-5ef0-80cf-14eac2d62321', 1), 'cae5570ce84d43373561e5e883e7dd325196e0346ee20e2c0bfb2be71649c222',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2.mp3', 1201, '2026-09-13 10:01:11.203103', '0e40ef81f79adba1de4e5ecf7b6bd8303a0cdd8cc34843c222b4bae8cbfbc637', 'validated', '{"audio_key":"b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2","entity_key":"lx_collaboration_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e40ef81f79adba1de4e5ecf7b6bd8303a0cdd8cc34843c222b4bae8cbfbc637","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_collaboration_capstone_03 -> audio/generated/de-DE/lexical/b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('202d76bd-c9a3-5662-8f45-fb01fa007cf5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_collaboration_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cae5570ce84d43373561e5e883e7dd325196e0346ee20e2c0bfb2be71649c222'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54306b2b-f096-5c76-88b2-b14e7696cb0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('202d76bd-c9a3-5662-8f45-fb01fa007cf5', 1), 'cae5570ce84d43373561e5e883e7dd325196e0346ee20e2c0bfb2be71649c222',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2.mp3', 1201, '2026-09-13 10:01:11.203103', '0e40ef81f79adba1de4e5ecf7b6bd8303a0cdd8cc34843c222b4bae8cbfbc637', 'validated', '{"audio_key":"b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2","entity_key":"wf_collaboration_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e40ef81f79adba1de4e5ecf7b6bd8303a0cdd8cc34843c222b4bae8cbfbc637","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b294950eecbf3102a123d982aacf2e2850ad08a968651428ff0538c403c751a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_coaching_02 -> audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f2b448f-a27a-505d-b458-7732bc16885d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_coaching_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bbb9193-4245-5a92-a9d9-0025d290ad6c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f2b448f-a27a-505d-b458-7732bc16885d', 1), 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3', 1071, '2026-09-13 08:16:43.856727', '0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0', 'validated', '{"audio_key":"b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38","entity_key":"lx_feedback_coaching_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_coaching_02 -> audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d5a75b1-a18e-55aa-b5a1-148194518bc3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_coaching_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('502e30d2-1bf5-5ad4-9105-3a6f358a4470', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d5a75b1-a18e-55aa-b5a1-148194518bc3', 1), 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3', 1071, '2026-09-13 08:16:43.856727', '0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0', 'validated', '{"audio_key":"b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38","entity_key":"wf_feedback_coaching_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_collaboration_capstone_04 -> audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a85bf450-bb37-5263-b1c4-13ab6de4a8e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_collaboration_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d9ef754-4a3f-5ffc-b1a9-a1701bd541d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a85bf450-bb37-5263-b1c4-13ab6de4a8e5', 1), '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3', 1280, '2026-09-13 10:01:12.191034', '3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527', 'validated', '{"audio_key":"b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860","entity_key":"lx_collaboration_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_collaboration_capstone_04 -> audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bee63d8f-a075-5d97-8615-12c7d1bf3230', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_collaboration_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75274bd1-1168-5e62-86d4-b420e7b3998a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bee63d8f-a075-5d97-8615-12c7d1bf3230', 1), '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3', 1280, '2026-09-13 10:01:12.191034', '3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527', 'validated', '{"audio_key":"b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860","entity_key":"wf_collaboration_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stakeholder_requirements_06 -> audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ca48f5a5-29a7-5bde-98e4-811b9d9a9ea5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stakeholder_requirements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0881be3-97b0-5f46-9ddf-fa43db17e938', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ca48f5a5-29a7-5bde-98e4-811b9d9a9ea5', 1), '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3', 1332, '2026-09-13 10:01:12.235579', 'e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262', 'validated', '{"audio_key":"b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40","entity_key":"lx_stakeholder_requirements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stakeholder_requirements_06 -> audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('756a290d-1df1-5b07-8883-c5ea093dc7af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stakeholder_requirements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d9277a7-1d90-54d6-a1cf-4ff651ebafc5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('756a290d-1df1-5b07-8883-c5ea093dc7af', 1), '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3', 1332, '2026-09-13 10:01:12.235579', 'e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262', 'validated', '{"audio_key":"b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40","entity_key":"wf_stakeholder_requirements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stakeholder_requirements_02 -> audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea2ab245-e2cb-5e58-a4a7-42d7016bd279', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stakeholder_requirements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8424c0f4-b8c0-5930-b68f-41a0cb5c665b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea2ab245-e2cb-5e58-a4a7-42d7016bd279', 1), 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3', 1018, '2026-09-13 08:32:36.024296', '6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9', 'validated', '{"audio_key":"bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252","entity_key":"lx_stakeholder_requirements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stakeholder_requirements_02 -> audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8e8edcb6-085c-5341-9a3d-4d5069619d1c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stakeholder_requirements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d03f361d-f0ac-5c67-972b-173bda5493a2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8e8edcb6-085c-5341-9a3d-4d5069619d1c', 1), 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3', 1018, '2026-09-13 08:32:36.024296', '6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9', 'validated', '{"audio_key":"bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252","entity_key":"wf_stakeholder_requirements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_collaboration_capstone_05 -> audio/generated/de-DE/lexical/c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db0f6638-eef3-59d9-89da-596834ed1a62', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_collaboration_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43bffe6cbe1e2d23415d83b7401a592e5c5b8cf90a15e6228b29c275fa34cf85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cbf4883-ff92-5212-8a17-15aeaf40cabf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db0f6638-eef3-59d9-89da-596834ed1a62', 1), '43bffe6cbe1e2d23415d83b7401a592e5c5b8cf90a15e6228b29c275fa34cf85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd.mp3', 1332, '2026-09-13 10:01:13.179186', 'c0a6602be3b0887f667b539fbd2b37b97d1c00186b4497c851fd3e2e99f4411d', 'validated', '{"audio_key":"c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd","entity_key":"lx_collaboration_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0a6602be3b0887f667b539fbd2b37b97d1c00186b4497c851fd3e2e99f4411d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_collaboration_capstone_05 -> audio/generated/de-DE/lexical/c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c81ddc2-c994-5bbd-ba70-75006ca194b1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_collaboration_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43bffe6cbe1e2d23415d83b7401a592e5c5b8cf90a15e6228b29c275fa34cf85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e092cf3-1a5c-581f-8c55-badb8fa1730b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c81ddc2-c994-5bbd-ba70-75006ca194b1', 1), '43bffe6cbe1e2d23415d83b7401a592e5c5b8cf90a15e6228b29c275fa34cf85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd.mp3', 1332, '2026-09-13 10:01:13.179186', 'c0a6602be3b0887f667b539fbd2b37b97d1c00186b4497c851fd3e2e99f4411d', 'validated', '{"audio_key":"c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd","entity_key":"wf_collaboration_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0a6602be3b0887f667b539fbd2b37b97d1c00186b4497c851fd3e2e99f4411d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c4a7c89ae8b2fd404cce5e32c1f15d676135ac6654c3964e573ab13fe80da4bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_escalation_03 -> audio/generated/de-DE/lexical/c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08e427e6-948c-5df7-8759-0b33194ad62d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_escalation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ca31248069a5dcdce620acca2fedf0d2cdf0218cea83039ec69d4de975841d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86380e71-6045-5653-8c11-3bf3bd0fbc51', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08e427e6-948c-5df7-8759-0b33194ad62d', 1), '1ca31248069a5dcdce620acca2fedf0d2cdf0218cea83039ec69d4de975841d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9.mp3', 1253, '2026-09-13 10:01:13.272893', 'ffa1fa9e4b815057af17920c923bb2f3a0bc8f005868c03138b281ad4895bae2', 'validated', '{"audio_key":"c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9","entity_key":"lx_formal_escalation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffa1fa9e4b815057af17920c923bb2f3a0bc8f005868c03138b281ad4895bae2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_escalation_03 -> audio/generated/de-DE/lexical/c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bdb0e51d-6c10-570f-821e-55a55cf622ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_escalation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ca31248069a5dcdce620acca2fedf0d2cdf0218cea83039ec69d4de975841d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6ce8528-b0cb-5b8b-b48b-9f3f25bc1430', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bdb0e51d-6c10-570f-821e-55a55cf622ed', 1), '1ca31248069a5dcdce620acca2fedf0d2cdf0218cea83039ec69d4de975841d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9.mp3', 1253, '2026-09-13 10:01:13.272893', 'ffa1fa9e4b815057af17920c923bb2f3a0bc8f005868c03138b281ad4895bae2', 'validated', '{"audio_key":"c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9","entity_key":"wf_formal_escalation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffa1fa9e4b815057af17920c923bb2f3a0bc8f005868c03138b281ad4895bae2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c59f444355282a41afe303b269f34ee2162d071c84558cd32a3fe24e78fd4cb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_escalation_05 -> audio/generated/de-DE/lexical/cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e6667919-0eab-5f56-a0c6-641ac6b543e6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_escalation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd21efca332d9dfc2870e7aeb84b1d47a4fd10c9132f9681161729b133f18c9c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd2e2b7f-5d8c-5d20-a431-b1ff191deb18', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e6667919-0eab-5f56-a0c6-641ac6b543e6', 1), 'd21efca332d9dfc2870e7aeb84b1d47a4fd10c9132f9681161729b133f18c9c0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60.mp3', 1201, '2026-09-13 10:01:14.131211', '06856d8f1c474a6908cc248f638b4d07ffdf9ed9335c44f7ff863269e7f59e59', 'validated', '{"audio_key":"cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60","entity_key":"lx_formal_escalation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06856d8f1c474a6908cc248f638b4d07ffdf9ed9335c44f7ff863269e7f59e59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_escalation_05 -> audio/generated/de-DE/lexical/cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0c415c6-598b-52fd-9e88-1090cba9fca2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_escalation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd21efca332d9dfc2870e7aeb84b1d47a4fd10c9132f9681161729b133f18c9c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87387dc1-c639-55b3-a4dd-55c433b0b5e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0c415c6-598b-52fd-9e88-1090cba9fca2', 1), 'd21efca332d9dfc2870e7aeb84b1d47a4fd10c9132f9681161729b133f18c9c0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60.mp3', 1201, '2026-09-13 10:01:14.131211', '06856d8f1c474a6908cc248f638b4d07ffdf9ed9335c44f7ff863269e7f59e59', 'validated', '{"audio_key":"cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60","entity_key":"wf_formal_escalation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06856d8f1c474a6908cc248f638b4d07ffdf9ed9335c44f7ff863269e7f59e59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb52690698ed09d8bef610b379485cb009c87ca6deb1f6b92708f469b3c57c60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_objections_counterarguments_03 -> audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab5cb9b5-1f16-529a-a684-a7d67972bc9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_objections_counterarguments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd8b4dfa-0ed9-5080-afbf-84baab771c3c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab5cb9b5-1f16-529a-a684-a7d67972bc9d', 1), '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3', 1332, '2026-09-13 10:01:14.343838', '98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5', 'validated', '{"audio_key":"ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509","entity_key":"lx_objections_counterarguments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_objections_counterarguments_03 -> audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('260f5a7d-6ff1-5d7c-9d85-6c05636e8109', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_objections_counterarguments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2aa8cf6-bc07-56bd-9032-be8a1f574dc6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('260f5a7d-6ff1-5d7c-9d85-6c05636e8109', 1), '58ef291a6f6f6560e1e191d6f17f35fc6bccacd2a1cf80b2f0e375a9c35cdd83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3', 1332, '2026-09-13 10:01:14.343838', '98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5', 'validated', '{"audio_key":"ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509","entity_key":"wf_objections_counterarguments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98fd052607d6916b3bbc32584f3ca1a973270c467d0e2f4831e3e334864e82b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccc8856672a094539cdb6c68d46088105797051fc1d6d37a25fba422ca5fc509.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_knowledge_transfer_05 -> audio/generated/de-DE/lexical/cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2169e700-79dd-5b65-9e5c-ab84a6acff62', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_knowledge_transfer_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bffe2e30b5775dfdabfc045e9bd7ab7c40ae742bc9744df677cf668b87b8dec1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59060e47-7500-5185-8826-4b25eba5a3af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2169e700-79dd-5b65-9e5c-ab84a6acff62', 1), 'bffe2e30b5775dfdabfc045e9bd7ab7c40ae742bc9744df677cf668b87b8dec1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3.mp3', 1280, '2026-09-13 10:01:15.108478', '99c4c874ab3021d4642ae28ae9d5cde83527a31f21cb2dd5f210644f5481129f', 'validated', '{"audio_key":"cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3","entity_key":"lx_knowledge_transfer_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99c4c874ab3021d4642ae28ae9d5cde83527a31f21cb2dd5f210644f5481129f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_knowledge_transfer_05 -> audio/generated/de-DE/lexical/cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a6721a65-2e03-572a-b845-306652701015', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_knowledge_transfer_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bffe2e30b5775dfdabfc045e9bd7ab7c40ae742bc9744df677cf668b87b8dec1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0eb205e8-1f92-5669-91bc-da1099a3a94b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a6721a65-2e03-572a-b845-306652701015', 1), 'bffe2e30b5775dfdabfc045e9bd7ab7c40ae742bc9744df677cf668b87b8dec1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3.mp3', 1280, '2026-09-13 10:01:15.108478', '99c4c874ab3021d4642ae28ae9d5cde83527a31f21cb2dd5f210644f5481129f', 'validated', '{"audio_key":"cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3","entity_key":"wf_knowledge_transfer_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99c4c874ab3021d4642ae28ae9d5cde83527a31f21cb2dd5f210644f5481129f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cf2c03a6f6dffcddc851c4e635f77c2192cbb1de7c2cfda32d354c5defc1e5e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_objections_counterarguments_05 -> audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('95f0ce57-a2da-51eb-8aaa-957207bf250f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_objections_counterarguments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f8b3ea0-45b1-5cee-bb97-0182e4b6fad9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('95f0ce57-a2da-51eb-8aaa-957207bf250f', 1), 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3', 1149, '2026-09-13 10:01:15.327150', 'b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179', 'validated', '{"audio_key":"d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7","entity_key":"lx_objections_counterarguments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_objections_counterarguments_05 -> audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c361cf58-e621-53b2-acf2-a8f7821db250', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_objections_counterarguments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('699b4107-5f3e-5654-8214-ff9de3bde06c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c361cf58-e621-53b2-acf2-a8f7821db250', 1), 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3', 1149, '2026-09-13 10:01:15.327150', 'b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179', 'validated', '{"audio_key":"d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7","entity_key":"wf_objections_counterarguments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_coaching_06 -> audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('15231d96-6627-5697-8a12-18aaee7c8991', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_coaching_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('158e0c8f-743e-51af-b9b8-72297acf16f1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('15231d96-6627-5697-8a12-18aaee7c8991', 1), '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3', 1280, '2026-09-13 08:16:45.894290', '55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb', 'validated', '{"audio_key":"de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d","entity_key":"lx_feedback_coaching_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_coaching_06 -> audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cef14180-12d7-5823-ae0f-46de34bdc54b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_coaching_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1530e469-add6-5343-8439-392b32b7daab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cef14180-12d7-5823-ae0f-46de34bdc54b', 1), '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3', 1280, '2026-09-13 08:16:45.894290', '55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb', 'validated', '{"audio_key":"de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d","entity_key":"wf_feedback_coaching_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ambiguity_clarification_04 -> audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36fdad03-a405-597f-a773-d881411a4ec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ambiguity_clarification_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d2623e-6265-57a4-ad7e-6eeca90e1ce9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36fdad03-a405-597f-a773-d881411a4ec2', 1), '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3', 1149, '2026-09-13 07:53:30.752205', '105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752', 'validated', '{"audio_key":"e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0","entity_key":"lx_ambiguity_clarification_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ambiguity_clarification_04 -> audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d30fcc0-557b-5868-9ee5-81bbc853df6b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ambiguity_clarification_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42ced608-695b-587a-b03f-e33282d4377a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d30fcc0-557b-5868-9ee5-81bbc853df6b', 1), '8d2990a3f2668188defa01434c3544687252e77e7a5ca6521a10550267818dcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3', 1149, '2026-09-13 07:53:30.752205', '105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752', 'validated', '{"audio_key":"e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0","entity_key":"wf_ambiguity_clarification_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"105d56d10b38b334eee44acada9b3820cdc3f42118da499061aa411e5c7d1752","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e501ff62973a4811bcf6cbc02056d2891d513f32e7240c22a3069271161029a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_delegation_accountability_04 -> audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('207dcfbb-ced5-5e84-93d6-a53f633adc37', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_delegation_accountability_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b70d3797-ca81-5d3c-9007-2423ae327643', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('207dcfbb-ced5-5e84-93d6-a53f633adc37', 1), 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3', 1149, '2026-09-13 10:01:16.064577', 'ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d', 'validated', '{"audio_key":"e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677","entity_key":"lx_delegation_accountability_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_delegation_accountability_04 -> audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d4c25664-b340-588f-9c7b-051002e91521', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_delegation_accountability_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1374677-4777-5cc6-b0e3-a3886358f13d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d4c25664-b340-588f-9c7b-051002e91521', 1), 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3', 1149, '2026-09-13 10:01:16.064577', 'ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d', 'validated', '{"audio_key":"e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677","entity_key":"wf_delegation_accountability_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_delegation_accountability_05 -> audio/generated/de-DE/lexical/e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('84f6e643-a732-5a79-9972-fe8aafed8690', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_delegation_accountability_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eee1f8eccad047ec21662f59f6cfa6e1efa339eda85bbbfdca01233f3bd3854d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f75b91bb-5bd5-5b35-bdf9-21df94ab7531', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('84f6e643-a732-5a79-9972-fe8aafed8690', 1), 'eee1f8eccad047ec21662f59f6cfa6e1efa339eda85bbbfdca01233f3bd3854d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774.mp3', 1149, '2026-09-13 10:01:16.312092', '92c663c7a2fe8f965a8e3317204f85b40023c798e9f53d6b18159649013b285c', 'validated', '{"audio_key":"e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774","entity_key":"lx_delegation_accountability_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"92c663c7a2fe8f965a8e3317204f85b40023c798e9f53d6b18159649013b285c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_delegation_accountability_05 -> audio/generated/de-DE/lexical/e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e8edc7d3-e336-579e-aaa4-b3a6611312a4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_delegation_accountability_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eee1f8eccad047ec21662f59f6cfa6e1efa339eda85bbbfdca01233f3bd3854d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c51bcb1-b48a-5520-b7b9-e794932ca8c1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e8edc7d3-e336-579e-aaa4-b3a6611312a4', 1), 'eee1f8eccad047ec21662f59f6cfa6e1efa339eda85bbbfdca01233f3bd3854d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774.mp3', 1149, '2026-09-13 10:01:16.312092', '92c663c7a2fe8f965a8e3317204f85b40023c798e9f53d6b18159649013b285c', 'validated', '{"audio_key":"e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774","entity_key":"wf_delegation_accountability_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"92c663c7a2fe8f965a8e3317204f85b40023c798e9f53d6b18159649013b285c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e9ec2ca060344ae407b1b0ffc8f3e2f2de65858d4c339ccfd70e776854aef774.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_objections_counterarguments_06 -> audio/generated/de-DE/lexical/ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('20a4f4b4-7c76-51eb-acc8-45b8722305bb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_objections_counterarguments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36538ff505c87dfc405d51c0f616b735341cb5ee3b21f380ac3ad16f5c2e5118'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b9a3a91-7f8d-5885-a815-8dac2446a2d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('20a4f4b4-7c76-51eb-acc8-45b8722305bb', 1), '36538ff505c87dfc405d51c0f616b735341cb5ee3b21f380ac3ad16f5c2e5118',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a.mp3', 1201, '2026-09-13 10:01:17.056555', '38cf619f3bfb1df2b22bda785d793b21cc05475fc2fad0e9ca23ca892e8c5874', 'validated', '{"audio_key":"ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a","entity_key":"lx_objections_counterarguments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38cf619f3bfb1df2b22bda785d793b21cc05475fc2fad0e9ca23ca892e8c5874","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_objections_counterarguments_06 -> audio/generated/de-DE/lexical/ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f822651-b95c-529c-9c0e-d8fb822ffc0e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_objections_counterarguments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36538ff505c87dfc405d51c0f616b735341cb5ee3b21f380ac3ad16f5c2e5118'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0509e6f8-7d48-524d-9044-23e9aa1bb9bc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f822651-b95c-529c-9c0e-d8fb822ffc0e', 1), '36538ff505c87dfc405d51c0f616b735341cb5ee3b21f380ac3ad16f5c2e5118',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a.mp3', 1201, '2026-09-13 10:01:17.056555', '38cf619f3bfb1df2b22bda785d793b21cc05475fc2fad0e9ca23ca892e8c5874', 'validated', '{"audio_key":"ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a","entity_key":"wf_objections_counterarguments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38cf619f3bfb1df2b22bda785d793b21cc05475fc2fad0e9ca23ca892e8c5874","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef206ebf024ddbdf4690503e4906934c502cb2da266a7d6d5d534fc8f77c9c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scope_negotiation_06 -> audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5be18d9f-0be0-5858-8ab7-03a4b66c71a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scope_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49b5dd8f-ed4a-59e7-93e9-2f785078d645', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5be18d9f-0be0-5858-8ab7-03a4b66c71a6', 1), 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3', 1253, '2026-09-13 10:01:17.305682', '588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39', 'validated', '{"audio_key":"ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467","entity_key":"lx_scope_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scope_negotiation_06 -> audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85eea16e-fed3-5ffd-8ba6-89aff33145c1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scope_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6b24386-698b-565a-af53-0a7a953cb02f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85eea16e-fed3-5ffd-8ba6-89aff33145c1', 1), 'f136ceeb6d613355493f8234464df0e90ae157c88282bf0fef45f32232a1711c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3', 1253, '2026-09-13 10:01:17.305682', '588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39', 'validated', '{"audio_key":"ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467","entity_key":"wf_scope_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"588b5440fecf97f5871859f1fa7e82a664343b65a4994dd3833778438845cf39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef85039ebfc0ce7d52e299228b55f37087ca8d00df42795501f5b56df070d467.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stakeholder_requirements_01 -> audio/generated/de-DE/lexical/eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1b92f4fe-fe3e-569e-9a59-cc77bec9ee2b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stakeholder_requirements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f672886e889feeb0aea148a1ffcc4f03bb09ffb2dd6352766b0fe1bfcd534177'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecf5b9fb-d536-5157-93fe-10e8e22a3c9c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1b92f4fe-fe3e-569e-9a59-cc77bec9ee2b', 1), 'f672886e889feeb0aea148a1ffcc4f03bb09ffb2dd6352766b0fe1bfcd534177',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1.mp3', 1201, '2026-09-13 10:01:18.033844', '15aa3c1a676034281c47dbf7ba9931a14fa018a687944ec5a24a9039ec52f958', 'validated', '{"audio_key":"eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1","entity_key":"lx_stakeholder_requirements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15aa3c1a676034281c47dbf7ba9931a14fa018a687944ec5a24a9039ec52f958","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stakeholder_requirements_01 -> audio/generated/de-DE/lexical/eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10fe401e-d788-5721-98ed-00aac923e006', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stakeholder_requirements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f672886e889feeb0aea148a1ffcc4f03bb09ffb2dd6352766b0fe1bfcd534177'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bace7579-46ad-57aa-a076-6989b65078b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10fe401e-d788-5721-98ed-00aac923e006', 1), 'f672886e889feeb0aea148a1ffcc4f03bb09ffb2dd6352766b0fe1bfcd534177',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1.mp3', 1201, '2026-09-13 10:01:18.033844', '15aa3c1a676034281c47dbf7ba9931a14fa018a687944ec5a24a9039ec52f958', 'validated', '{"audio_key":"eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1","entity_key":"wf_stakeholder_requirements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15aa3c1a676034281c47dbf7ba9931a14fa018a687944ec5a24a9039ec52f958","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eff5f88aea782f4f0c4b598b16ba10766419c68c47d5836a6812b4eaee3f33a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scope_negotiation_02 -> audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('69719712-0d08-53f6-b4c0-aa97eb35e763', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scope_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c904f780-026a-56f0-8544-7b2e38c4ccdc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('69719712-0d08-53f6-b4c0-aa97eb35e763', 1), '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3', 1201, '2026-09-13 10:01:18.275395', '3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677', 'validated', '{"audio_key":"f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c","entity_key":"lx_scope_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scope_negotiation_02 -> audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3119d487-5644-51a9-9322-da6c4f884584', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scope_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aae0662f-c8bc-5c48-8192-eb1eadf2471c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3119d487-5644-51a9-9322-da6c4f884584', 1), '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3', 1201, '2026-09-13 10:01:18.275395', '3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677', 'validated', '{"audio_key":"f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c","entity_key":"wf_scope_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stakeholder_requirements_04 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stakeholder_requirements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e259af70-aad9-56f1-97e8-c5cc4d1579b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"lx_stakeholder_requirements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stakeholder_requirements_04 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a29da6e5-ca5c-5e21-8e3a-2da370bc7337', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stakeholder_requirements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32ba0ae0-5701-560c-aad9-8bdbd5158074', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a29da6e5-ca5c-5e21-8e3a-2da370bc7337', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"wf_stakeholder_requirements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ambiguity_clarification_05 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ambiguity_clarification_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f905ca58-4aa4-5cd7-8df0-fedbffa44b3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"lx_ambiguity_clarification_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ambiguity_clarification_05 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18ecd485-cf4e-5e95-a9e1-a51c87aaff07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ambiguity_clarification_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('077bad66-9561-5a45-9854-f35be291e487', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18ecd485-cf4e-5e95-a9e1-a51c87aaff07', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"wf_ambiguity_clarification_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_objections_counterarguments_02 -> audio/generated/de-DE/lexical/fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cb340477-b82a-5996-aa50-03db821e6e10', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_objections_counterarguments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd604f261cd18555c83de84e6c20ab5909a66dd1ecfb1a1922e6b5ae4f87fae7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('382e49d6-77c9-502b-b4f8-53f7b76fe778', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cb340477-b82a-5996-aa50-03db821e6e10', 1), 'd604f261cd18555c83de84e6c20ab5909a66dd1ecfb1a1922e6b5ae4f87fae7c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4.mp3', 1384, '2026-09-13 10:01:19.028872', '1494555598b72a0b92ffce7fcf3faf45e70cff593121d3bb9c034aee2acf5ae5', 'validated', '{"audio_key":"fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4","entity_key":"lx_objections_counterarguments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1494555598b72a0b92ffce7fcf3faf45e70cff593121d3bb9c034aee2acf5ae5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_objections_counterarguments_02 -> audio/generated/de-DE/lexical/fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f955623f-c5f2-5a85-9d13-dd10456cc987', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_objections_counterarguments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd604f261cd18555c83de84e6c20ab5909a66dd1ecfb1a1922e6b5ae4f87fae7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a76f9c9-915b-5f6b-9ba9-9182f2264759', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f955623f-c5f2-5a85-9d13-dd10456cc987', 1), 'd604f261cd18555c83de84e6c20ab5909a66dd1ecfb1a1922e6b5ae4f87fae7c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4.mp3', 1384, '2026-09-13 10:01:19.028872', '1494555598b72a0b92ffce7fcf3faf45e70cff593121d3bb9c034aee2acf5ae5', 'validated', '{"audio_key":"fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4","entity_key":"wf_objections_counterarguments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1494555598b72a0b92ffce7fcf3faf45e70cff593121d3bb9c034aee2acf5ae5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fc3421026e0445054b837fa95d96e00fb210ada7b2bb674711ca70669be56cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_collaboration_capstone_03 -> audio/generated/de-DE/utterances/03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('29322381-76ea-57d5-9b50-e2a7584438ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_collaboration_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b3953903283c0ca73841c4263135302fdb5de6c3810847d8a312bccadecb6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a9260cb-3e8e-56d5-821f-c18c1f298364', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('29322381-76ea-57d5-9b50-e2a7584438ce', 1), '1b3953903283c0ca73841c4263135302fdb5de6c3810847d8a312bccadecb6ed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5.mp3', 6269, '2026-09-13 10:01:19.857562', 'dfe4e8fbb9f3b2a5cea1a15b9d2b00c9024b5794ac8c681b279d8b28841091f8', 'validated', '{"audio_key":"03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5","entity_key":"u_collaboration_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfe4e8fbb9f3b2a5cea1a15b9d2b00c9024b5794ac8c681b279d8b28841091f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_collaboration_capstone_02_listen -> audio/generated/de-DE/utterances/03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('15e32930-7b54-5024-9a91-50961d55b290', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_collaboration_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b3953903283c0ca73841c4263135302fdb5de6c3810847d8a312bccadecb6ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('522d5da6-31b3-5984-9f36-9abedf62564f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('15e32930-7b54-5024-9a91-50961d55b290', 1), '1b3953903283c0ca73841c4263135302fdb5de6c3810847d8a312bccadecb6ed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5.mp3', 6269, '2026-09-13 10:01:19.857562', 'dfe4e8fbb9f3b2a5cea1a15b9d2b00c9024b5794ac8c681b279d8b28841091f8', 'validated', '{"audio_key":"03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5","entity_key":"ex_collaboration_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfe4e8fbb9f3b2a5cea1a15b9d2b00c9024b5794ac8c681b279d8b28841091f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/03b5904765bc0943fe6a5877eb642a8d33ab873425beb8fc5ded82617fbfc4b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stakeholder_requirements_06 -> audio/generated/de-DE/utterances/04681117347641259efffb04f2a06b189355f9abbd1d0da81f3c2b654161101f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d0ad284-e5f6-5e8b-b6cf-d1369c709a0c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stakeholder_requirements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fb4d9e81c37e12aab112c1fb496b862b6973e1e5523510bf0938a8f45265076'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1be695f2-7046-5bcf-9faa-8284ac870800', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d0ad284-e5f6-5e8b-b6cf-d1369c709a0c', 1), '4fb4d9e81c37e12aab112c1fb496b862b6973e1e5523510bf0938a8f45265076',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/04681117347641259efffb04f2a06b189355f9abbd1d0da81f3c2b654161101f.mp3', 7471, '2026-09-13 10:01:20.767189', 'aef5a4ceaf0af734ffbf5522db6878a23d1a404e64197798c25a47169fa6b4bd', 'validated', '{"audio_key":"04681117347641259efffb04f2a06b189355f9abbd1d0da81f3c2b654161101f","entity_key":"u_stakeholder_requirements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aef5a4ceaf0af734ffbf5522db6878a23d1a404e64197798c25a47169fa6b4bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/04681117347641259efffb04f2a06b189355f9abbd1d0da81f3c2b654161101f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scope_negotiation_02 -> audio/generated/de-DE/utterances/0c48f1b1f276032ebf2d5b32efeebaba92c32493593948e1e86dd7595e205e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6b7c10eb-465e-5aa1-8f6d-9e3c8a336864', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scope_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c510f4103a7251f5cce42c2376f891a4c80e0a8e779b175ba7692a66ab852dda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcde26b2-5a69-5857-a8b0-4fe312f106f0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6b7c10eb-465e-5aa1-8f6d-9e3c8a336864', 1), 'c510f4103a7251f5cce42c2376f891a4c80e0a8e779b175ba7692a66ab852dda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c48f1b1f276032ebf2d5b32efeebaba92c32493593948e1e86dd7595e205e38.mp3', 5877, '2026-09-13 10:01:21.359125', '18fffc14571b3c3f2f3076808364fb46bb5a9d2db70902586e570cbe5afb4def', 'validated', '{"audio_key":"0c48f1b1f276032ebf2d5b32efeebaba92c32493593948e1e86dd7595e205e38","entity_key":"u_scope_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18fffc14571b3c3f2f3076808364fb46bb5a9d2db70902586e570cbe5afb4def","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c48f1b1f276032ebf2d5b32efeebaba92c32493593948e1e86dd7595e205e38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ambiguity_clarification_03 -> audio/generated/de-DE/utterances/0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6489118-e613-5383-a659-b22db43456a8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ambiguity_clarification_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d1ba60c110a80d6a71fce837cb204f17a8fe3347cd574476b32001e56d67d18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25df5d16-bf9a-54e5-b55a-1b689164172d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6489118-e613-5383-a659-b22db43456a8', 1), '1d1ba60c110a80d6a71fce837cb204f17a8fe3347cd574476b32001e56d67d18',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050.mp3', 5851, '2026-09-13 10:01:22.266924', '8630481a80a25a80a69749941fbefb4df143ead91141595e6331f94a9ead767e', 'validated', '{"audio_key":"0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050","entity_key":"u_ambiguity_clarification_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8630481a80a25a80a69749941fbefb4df143ead91141595e6331f94a9ead767e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ambiguity_clarification_02_listen -> audio/generated/de-DE/utterances/0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a47641d5-0c5c-53e3-96f6-6130c37e0447', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ambiguity_clarification_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d1ba60c110a80d6a71fce837cb204f17a8fe3347cd574476b32001e56d67d18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe0f86d3-0145-5de4-b857-e031629a5a29', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a47641d5-0c5c-53e3-96f6-6130c37e0447', 1), '1d1ba60c110a80d6a71fce837cb204f17a8fe3347cd574476b32001e56d67d18',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050.mp3', 5851, '2026-09-13 10:01:22.266924', '8630481a80a25a80a69749941fbefb4df143ead91141595e6331f94a9ead767e', 'validated', '{"audio_key":"0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050","entity_key":"ex_ambiguity_clarification_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8630481a80a25a80a69749941fbefb4df143ead91141595e6331f94a9ead767e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0e3629fb5848517b1eb908b35e8b879a4a4afe35213acfbb9f6a8c4db6d6f050.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_delegation_accountability_05 -> audio/generated/de-DE/utterances/2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('14662af2-d21e-55e9-b1af-d0f6c9f959f0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_delegation_accountability_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf48f783e5246ceb9ae2b6c298d7367dcc22d89675aaf3d0a0e700f2fc6cf760'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bf2967a-8613-552c-b36e-80468733c489', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('14662af2-d21e-55e9-b1af-d0f6c9f959f0', 1), 'cf48f783e5246ceb9ae2b6c298d7367dcc22d89675aaf3d0a0e700f2fc6cf760',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b.mp3', 5328, '2026-09-13 10:01:22.879612', '34fa97ae1182d403a7cca383f8dc35ceec13267379ce808a33b0d8caeb91cc46', 'validated', '{"audio_key":"2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b","entity_key":"u_delegation_accountability_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34fa97ae1182d403a7cca383f8dc35ceec13267379ce808a33b0d8caeb91cc46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_delegation_accountability_03_listen -> audio/generated/de-DE/utterances/2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ccb59b66-62d4-5c35-8a6e-fdd5b157c05c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_delegation_accountability_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf48f783e5246ceb9ae2b6c298d7367dcc22d89675aaf3d0a0e700f2fc6cf760'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4262ea8d-dfb4-591f-b7b8-21a2084e91b7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ccb59b66-62d4-5c35-8a6e-fdd5b157c05c', 1), 'cf48f783e5246ceb9ae2b6c298d7367dcc22d89675aaf3d0a0e700f2fc6cf760',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b.mp3', 5328, '2026-09-13 10:01:22.879612', '34fa97ae1182d403a7cca383f8dc35ceec13267379ce808a33b0d8caeb91cc46', 'validated', '{"audio_key":"2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b","entity_key":"ex_delegation_accountability_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34fa97ae1182d403a7cca383f8dc35ceec13267379ce808a33b0d8caeb91cc46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2850b8898eef1f5a8368f9cf33acdc240cb1ff57d7b1fd49b573cb47052e967b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ambiguity_clarification_02 -> audio/generated/de-DE/utterances/289b9c065fd4cd8b7f29fa83a6302b2e9ec3f5a17091844dbb8e224836044a09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13e05ecb-a48e-55ce-83a3-33b91aebd665', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ambiguity_clarification_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18b42f057b2cc0d312d8e73cf79b5d04ee3ba91c310014da3654a3a6bd75df75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('454549aa-86fc-57a5-ba98-1a4f577f5a23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13e05ecb-a48e-55ce-83a3-33b91aebd665', 1), '18b42f057b2cc0d312d8e73cf79b5d04ee3ba91c310014da3654a3a6bd75df75',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/289b9c065fd4cd8b7f29fa83a6302b2e9ec3f5a17091844dbb8e224836044a09.mp3', 4179, '2026-09-13 10:01:23.669927', 'a306bb846a740eeb5eec378a7b89aea8d0f7bf46796a4868dcd388cf9557ecde', 'validated', '{"audio_key":"289b9c065fd4cd8b7f29fa83a6302b2e9ec3f5a17091844dbb8e224836044a09","entity_key":"u_ambiguity_clarification_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a306bb846a740eeb5eec378a7b89aea8d0f7bf46796a4868dcd388cf9557ecde","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/289b9c065fd4cd8b7f29fa83a6302b2e9ec3f5a17091844dbb8e224836044a09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scope_negotiation_03 -> audio/generated/de-DE/utterances/2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49c308bc-baed-542c-9ad5-ae1d9676c910', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scope_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfbae607845c90aaf2f3b096484726dd3d6eaab831573e38b5b7e1ca1c426899'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e317629-1fce-5235-b319-ff6bd1d8270c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49c308bc-baed-542c-9ad5-ae1d9676c910', 1), 'cfbae607845c90aaf2f3b096484726dd3d6eaab831573e38b5b7e1ca1c426899',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32.mp3', 5511, '2026-09-13 10:01:24.726362', 'df9ac9afeb658ee1429984294952878623e343b46e6f141e58f62bccbf3d71ff', 'validated', '{"audio_key":"2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32","entity_key":"u_scope_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df9ac9afeb658ee1429984294952878623e343b46e6f141e58f62bccbf3d71ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scope_negotiation_02_listen -> audio/generated/de-DE/utterances/2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('54d62f69-5e1c-528f-aecb-0207e9d1095a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scope_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfbae607845c90aaf2f3b096484726dd3d6eaab831573e38b5b7e1ca1c426899'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7853979-614e-5d8d-892e-cd68213b3d87', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('54d62f69-5e1c-528f-aecb-0207e9d1095a', 1), 'cfbae607845c90aaf2f3b096484726dd3d6eaab831573e38b5b7e1ca1c426899',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32.mp3', 5511, '2026-09-13 10:01:24.726362', 'df9ac9afeb658ee1429984294952878623e343b46e6f141e58f62bccbf3d71ff', 'validated', '{"audio_key":"2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32","entity_key":"ex_scope_negotiation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df9ac9afeb658ee1429984294952878623e343b46e6f141e58f62bccbf3d71ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e4e1e9eadc9c9e02aa808349812704232cf761f3bf50681c1f43c2f2747bd32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scope_negotiation_01 -> audio/generated/de-DE/utterances/2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f03ae3d-12ec-5609-8950-6984ca90ec21', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scope_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9918338f87f8cbf87c6b41be8832e8a77ed39ea9760630e41f1fcb91a4cc4ab5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efe76252-a629-5638-ab11-aa628a24d44e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f03ae3d-12ec-5609-8950-6984ca90ec21', 1), '9918338f87f8cbf87c6b41be8832e8a77ed39ea9760630e41f1fcb91a4cc4ab5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171.mp3', 6269, '2026-09-13 10:01:25.213892', '9058b6ad6613defafe08050918a2e30d688fed5f16a6b36c0e0c4aa42dc6307b', 'validated', '{"audio_key":"2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171","entity_key":"u_scope_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9058b6ad6613defafe08050918a2e30d688fed5f16a6b36c0e0c4aa42dc6307b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scope_negotiation_01_listen -> audio/generated/de-DE/utterances/2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cd0bc935-9aa7-5159-95d6-61bef4760e8e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scope_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9918338f87f8cbf87c6b41be8832e8a77ed39ea9760630e41f1fcb91a4cc4ab5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c88367b6-3166-533c-b89e-436e2e74f2bb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cd0bc935-9aa7-5159-95d6-61bef4760e8e', 1), '9918338f87f8cbf87c6b41be8832e8a77ed39ea9760630e41f1fcb91a4cc4ab5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171.mp3', 6269, '2026-09-13 10:01:25.213892', '9058b6ad6613defafe08050918a2e30d688fed5f16a6b36c0e0c4aa42dc6307b', 'validated', '{"audio_key":"2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171","entity_key":"ex_scope_negotiation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9058b6ad6613defafe08050918a2e30d688fed5f16a6b36c0e0c4aa42dc6307b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e50629a53c0505cfaf9dec5896b661a768ae8145b52045c058ab8d8398f3171.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_coaching_02 -> audio/generated/de-DE/utterances/2f023203b9d501c5496b4892e0d4387ad9c2306efc554e0e47e9d4266c224b9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('21e13783-b908-5939-89db-f49db17f84d3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_coaching_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11d888013dbf894edf1db32f3c94843a54c6315041f285e819259561ba3bd0f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65c70727-115c-55de-b6f3-bd0826ee0fc0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('21e13783-b908-5939-89db-f49db17f84d3', 1), '11d888013dbf894edf1db32f3c94843a54c6315041f285e819259561ba3bd0f1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2f023203b9d501c5496b4892e0d4387ad9c2306efc554e0e47e9d4266c224b9b.mp3', 4832, '2026-09-13 10:01:26.160933', '7b6cae621b32918cd01711be8b876ce9b0c9d224eb31c7d5f90b2a00073a7ade', 'validated', '{"audio_key":"2f023203b9d501c5496b4892e0d4387ad9c2306efc554e0e47e9d4266c224b9b","entity_key":"u_feedback_coaching_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b6cae621b32918cd01711be8b876ce9b0c9d224eb31c7d5f90b2a00073a7ade","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2f023203b9d501c5496b4892e0d4387ad9c2306efc554e0e47e9d4266c224b9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_cultural_pragmatics_05 -> audio/generated/de-DE/utterances/3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1deab008-a6d0-5a18-8c0d-39544e1c93a3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_cultural_pragmatics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93bce178572db5c502bea45653c17d8e62bfbb3fd2b0758a395398180f853c91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91114b10-b715-55f9-a3a1-dfe9389b48d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1deab008-a6d0-5a18-8c0d-39544e1c93a3', 1), '93bce178572db5c502bea45653c17d8e62bfbb3fd2b0758a395398180f853c91',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11.mp3', 5041, '2026-09-13 10:01:26.628330', 'a500dd2e0bc7c7b34d9d6f23595d4b91fce572a0c67e7ef9cccc254f71b8109d', 'validated', '{"audio_key":"3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11","entity_key":"u_cross_cultural_pragmatics_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a500dd2e0bc7c7b34d9d6f23595d4b91fce572a0c67e7ef9cccc254f71b8109d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cross_cultural_pragmatics_03_listen -> audio/generated/de-DE/utterances/3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('29c4a240-8551-5bd1-94cf-6e0f6a732036', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cross_cultural_pragmatics_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93bce178572db5c502bea45653c17d8e62bfbb3fd2b0758a395398180f853c91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c078d38a-a6dd-5bd5-9fb5-db4d938b5dc7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('29c4a240-8551-5bd1-94cf-6e0f6a732036', 1), '93bce178572db5c502bea45653c17d8e62bfbb3fd2b0758a395398180f853c91',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11.mp3', 5041, '2026-09-13 10:01:26.628330', 'a500dd2e0bc7c7b34d9d6f23595d4b91fce572a0c67e7ef9cccc254f71b8109d', 'validated', '{"audio_key":"3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11","entity_key":"ex_cross_cultural_pragmatics_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a500dd2e0bc7c7b34d9d6f23595d4b91fce572a0c67e7ef9cccc254f71b8109d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3348fb544a90290cf2b7bcb546d08e279f240788d96733af63ac4ee22a142b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_knowledge_transfer_06 -> audio/generated/de-DE/utterances/3437e870cfdfa0fc748c5d06c84773549cfea611eeb0253dd6a82d0962aa9003.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('70d6e0ba-f433-53cc-bb32-969c4f9f714f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_knowledge_transfer_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '303f89d1f9a158120ea56a867c67f219ad903442d6fdb841a8fe665ff78e943f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16b67620-574d-5623-9fac-3b8bc058b9fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('70d6e0ba-f433-53cc-bb32-969c4f9f714f', 1), '303f89d1f9a158120ea56a867c67f219ad903442d6fdb841a8fe665ff78e943f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3437e870cfdfa0fc748c5d06c84773549cfea611eeb0253dd6a82d0962aa9003.mp3', 5433, '2026-09-13 10:01:27.609435', 'd0546f7848496db5d82a784e32cd8ac0db16ba0fc3ce75ebce240727198e84d6', 'validated', '{"audio_key":"3437e870cfdfa0fc748c5d06c84773549cfea611eeb0253dd6a82d0962aa9003","entity_key":"u_knowledge_transfer_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0546f7848496db5d82a784e32cd8ac0db16ba0fc3ce75ebce240727198e84d6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3437e870cfdfa0fc748c5d06c84773549cfea611eeb0253dd6a82d0962aa9003.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ambiguity_clarification_04 -> audio/generated/de-DE/utterances/34915d346dfd82a9486f05b4114d0fca5b763a0d0a0360d366e10ca451d70225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7b7a52d-8c4a-5103-a398-8b563ec2e810', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ambiguity_clarification_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850673311e9fb356dfa830b3c9b7d481e51f2fdd8445e551e96dc62f702dca0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e3632ff-d67f-589c-80c0-05afff93d891', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7b7a52d-8c4a-5103-a398-8b563ec2e810', 1), '850673311e9fb356dfa830b3c9b7d481e51f2fdd8445e551e96dc62f702dca0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/34915d346dfd82a9486f05b4114d0fca5b763a0d0a0360d366e10ca451d70225.mp3', 6217, '2026-09-13 10:01:28.250315', '71de7feda9a6c62c4837d89dd5817c111252a32ff0487b84cf98fb4f0b035733', 'validated', '{"audio_key":"34915d346dfd82a9486f05b4114d0fca5b763a0d0a0360d366e10ca451d70225","entity_key":"u_ambiguity_clarification_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"71de7feda9a6c62c4837d89dd5817c111252a32ff0487b84cf98fb4f0b035733","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/34915d346dfd82a9486f05b4114d0fca5b763a0d0a0360d366e10ca451d70225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scope_negotiation_05 -> audio/generated/de-DE/utterances/34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6634678-7fdd-5b50-b52e-d9f05a7b60f8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scope_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c09a713bd4a26d60b940d8ccca956f3ca61c010fb9be07b7847ee359565a5633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f0599bb-bfcb-55e5-b544-911c23980bb6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6634678-7fdd-5b50-b52e-d9f05a7b60f8', 1), 'c09a713bd4a26d60b940d8ccca956f3ca61c010fb9be07b7847ee359565a5633',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759.mp3', 5433, '2026-09-13 10:01:29.017259', 'd3f9ce9e3f68a6f4d19d6c953c449b3661fa63b5db2ab02031000dfe6cefe0fb', 'validated', '{"audio_key":"34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759","entity_key":"u_scope_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3f9ce9e3f68a6f4d19d6c953c449b3661fa63b5db2ab02031000dfe6cefe0fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scope_negotiation_03_listen -> audio/generated/de-DE/utterances/34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fc78210b-44ac-5d7a-a373-3a4be0e3bf56', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scope_negotiation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c09a713bd4a26d60b940d8ccca956f3ca61c010fb9be07b7847ee359565a5633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34bed025-64b3-5c5e-b02e-1b421fe6bcfb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fc78210b-44ac-5d7a-a373-3a4be0e3bf56', 1), 'c09a713bd4a26d60b940d8ccca956f3ca61c010fb9be07b7847ee359565a5633',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759.mp3', 5433, '2026-09-13 10:01:29.017259', 'd3f9ce9e3f68a6f4d19d6c953c449b3661fa63b5db2ab02031000dfe6cefe0fb', 'validated', '{"audio_key":"34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759","entity_key":"ex_scope_negotiation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3f9ce9e3f68a6f4d19d6c953c449b3661fa63b5db2ab02031000dfe6cefe0fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/34ce9d2e065092a08f773ba4db7d08ed35af6273974f60d7131d10462b867759.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_delegation_accountability_01 -> audio/generated/de-DE/utterances/360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c26e9192-e02d-5525-b188-9bff5aa20ccc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_delegation_accountability_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c7e51c678c19ccfb5605a005b2f6b6f92c465c0c89e1f60f3f05c1487b6ad14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca00334e-29c5-5779-95ac-c84499b41a20', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c26e9192-e02d-5525-b188-9bff5aa20ccc', 1), '0c7e51c678c19ccfb5605a005b2f6b6f92c465c0c89e1f60f3f05c1487b6ad14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b.mp3', 5799, '2026-09-13 10:01:29.748092', '65dde84e129ed4668fc8db787a4c9f9bbbdab54c10d25e4c10a24f64a0d8986c', 'validated', '{"audio_key":"360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b","entity_key":"u_delegation_accountability_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65dde84e129ed4668fc8db787a4c9f9bbbdab54c10d25e4c10a24f64a0d8986c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_delegation_accountability_01_listen -> audio/generated/de-DE/utterances/360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6d491a7b-9918-5b71-a86d-1bd37f54eb58', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_delegation_accountability_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c7e51c678c19ccfb5605a005b2f6b6f92c465c0c89e1f60f3f05c1487b6ad14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c19bef9-d95d-5c8c-8145-e9dc4886096f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6d491a7b-9918-5b71-a86d-1bd37f54eb58', 1), '0c7e51c678c19ccfb5605a005b2f6b6f92c465c0c89e1f60f3f05c1487b6ad14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b.mp3', 5799, '2026-09-13 10:01:29.748092', '65dde84e129ed4668fc8db787a4c9f9bbbdab54c10d25e4c10a24f64a0d8986c', 'validated', '{"audio_key":"360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b","entity_key":"ex_delegation_accountability_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65dde84e129ed4668fc8db787a4c9f9bbbdab54c10d25e4c10a24f64a0d8986c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/360736cf31eb001fd5e5db155889b7a812b63d323d0d8e3f23a3fdf4fc63e05b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_collaboration_capstone_02 -> audio/generated/de-DE/utterances/361079211592486bd8a89e6ad7f429880d7d59c5d70e4a7ddd121aac7e0d7447.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49324ec3-4e57-504e-a84c-a16bec9371ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_collaboration_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6375f4b6df65d722b7f6ee1d8fe329150314e0c0a67f2ee49529daf19878a14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48ddc710-b681-50f8-b04e-fc9c4c2b2427', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49324ec3-4e57-504e-a84c-a16bec9371ef', 1), 'd6375f4b6df65d722b7f6ee1d8fe329150314e0c0a67f2ee49529daf19878a14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/361079211592486bd8a89e6ad7f429880d7d59c5d70e4a7ddd121aac7e0d7447.mp3', 6582, '2026-09-13 10:01:30.658100', 'ed97974c87ad59794d668ce9c1c014cfd89dae80530307986a8a3c9086476c05', 'validated', '{"audio_key":"361079211592486bd8a89e6ad7f429880d7d59c5d70e4a7ddd121aac7e0d7447","entity_key":"u_collaboration_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ed97974c87ad59794d668ce9c1c014cfd89dae80530307986a8a3c9086476c05","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/361079211592486bd8a89e6ad7f429880d7d59c5d70e4a7ddd121aac7e0d7447.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_coaching_01 -> audio/generated/de-DE/utterances/369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6afbe67-10a8-5b8b-8ccf-6e0b93f7de6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_coaching_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e06673c591409db39e881905d32fc74314775d95d21e2fc4f5058c366f72a421'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38a5e88d-42fd-5712-b96f-1dd8bf864225', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6afbe67-10a8-5b8b-8ccf-6e0b93f7de6a', 1), 'e06673c591409db39e881905d32fc74314775d95d21e2fc4f5058c366f72a421',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c.mp3', 3787, '2026-09-13 10:01:31.006209', '014f314ad5de98cd9d828e403e375c735b65d2192af7bd990d04170201c95d64', 'validated', '{"audio_key":"369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c","entity_key":"u_feedback_coaching_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"014f314ad5de98cd9d828e403e375c735b65d2192af7bd990d04170201c95d64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_feedback_coaching_01_listen -> audio/generated/de-DE/utterances/369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0359b82c-c985-5a0e-a1ce-68925468a5c6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_feedback_coaching_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e06673c591409db39e881905d32fc74314775d95d21e2fc4f5058c366f72a421'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0dccc1bd-f0fe-5c1f-b886-667052333f40', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0359b82c-c985-5a0e-a1ce-68925468a5c6', 1), 'e06673c591409db39e881905d32fc74314775d95d21e2fc4f5058c366f72a421',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c.mp3', 3787, '2026-09-13 10:01:31.006209', '014f314ad5de98cd9d828e403e375c735b65d2192af7bd990d04170201c95d64', 'validated', '{"audio_key":"369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c","entity_key":"ex_feedback_coaching_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"014f314ad5de98cd9d828e403e375c735b65d2192af7bd990d04170201c95d64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/369726171852bfac2c2663c96a1645467480917c763646e79af47702c831bd8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_cultural_pragmatics_06 -> audio/generated/de-DE/utterances/37f99f2090a1ec2c250fe315b759a64a8b1fe79f4418a07d349759dd7b1aab1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8677e647-a954-596a-82a1-6b2778e2b850', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_cultural_pragmatics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03937fb6ff975f9a748cabf1c206cbaef8c7d1f2a630109a002faa1793034f45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('197052a5-031f-5895-843e-d00c686153ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8677e647-a954-596a-82a1-6b2778e2b850', 1), '03937fb6ff975f9a748cabf1c206cbaef8c7d1f2a630109a002faa1793034f45',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/37f99f2090a1ec2c250fe315b759a64a8b1fe79f4418a07d349759dd7b1aab1b.mp3', 4911, '2026-09-13 10:01:32.069026', '708472a04b2d6db45a9e9187ae864d2e3d0ab8eb719a724e4c35a59d19a82faf', 'validated', '{"audio_key":"37f99f2090a1ec2c250fe315b759a64a8b1fe79f4418a07d349759dd7b1aab1b","entity_key":"u_cross_cultural_pragmatics_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"708472a04b2d6db45a9e9187ae864d2e3d0ab8eb719a724e4c35a59d19a82faf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/37f99f2090a1ec2c250fe315b759a64a8b1fe79f4418a07d349759dd7b1aab1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_escalation_03 -> audio/generated/de-DE/utterances/38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24426e45-a5e1-5c4c-af37-502dfb238733', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_escalation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff517aee37a866f3bf6b899a38e07e9cd9fd9abceb3b3dd5a8dbe19eff995d96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9e5316f-c9e5-5a3a-8f87-a997d723a8d1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24426e45-a5e1-5c4c-af37-502dfb238733', 1), 'ff517aee37a866f3bf6b899a38e07e9cd9fd9abceb3b3dd5a8dbe19eff995d96',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6.mp3', 4675, '2026-09-13 10:01:32.453238', 'a91d2eafa99e40798a7b3ab3c92fcb2fe2efeb1949548344800c64f2851cf37e', 'validated', '{"audio_key":"38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6","entity_key":"u_formal_escalation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a91d2eafa99e40798a7b3ab3c92fcb2fe2efeb1949548344800c64f2851cf37e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_escalation_02_listen -> audio/generated/de-DE/utterances/38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b4fff829-0927-5a81-b1d0-cb26a390aa60', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_escalation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff517aee37a866f3bf6b899a38e07e9cd9fd9abceb3b3dd5a8dbe19eff995d96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd2933cc-4331-5f82-ba0e-48093bda9001', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b4fff829-0927-5a81-b1d0-cb26a390aa60', 1), 'ff517aee37a866f3bf6b899a38e07e9cd9fd9abceb3b3dd5a8dbe19eff995d96',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6.mp3', 4675, '2026-09-13 10:01:32.453238', 'a91d2eafa99e40798a7b3ab3c92fcb2fe2efeb1949548344800c64f2851cf37e', 'validated', '{"audio_key":"38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6","entity_key":"ex_formal_escalation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a91d2eafa99e40798a7b3ab3c92fcb2fe2efeb1949548344800c64f2851cf37e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/38a20718168b9671a307e6cd58f6d812239f8727b2f8684a77fa94058defbfc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_collaboration_capstone_04 -> audio/generated/de-DE/utterances/3c40aaceabec0bd412b3c97524f72a0a07d2ffe80f560498a3b1c44226362e2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('244108e5-7a5d-562b-bd5b-a83a1be1a621', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_collaboration_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec25333a43f38c48466bed0f2c1603fa6959c7976707a1f65871ba6dff61f526'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9f32d28-7a9f-565f-bd5e-39901f4add63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('244108e5-7a5d-562b-bd5b-a83a1be1a621', 1), 'ec25333a43f38c48466bed0f2c1603fa6959c7976707a1f65871ba6dff61f526',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3c40aaceabec0bd412b3c97524f72a0a07d2ffe80f560498a3b1c44226362e2e.mp3', 5746, '2026-09-13 10:01:33.582723', 'ea29d5bc941d0775f1581095c8748fa41b91d403ccef83883f347ff14f3932e1', 'validated', '{"audio_key":"3c40aaceabec0bd412b3c97524f72a0a07d2ffe80f560498a3b1c44226362e2e","entity_key":"u_collaboration_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea29d5bc941d0775f1581095c8748fa41b91d403ccef83883f347ff14f3932e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3c40aaceabec0bd412b3c97524f72a0a07d2ffe80f560498a3b1c44226362e2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_cultural_pragmatics_04 -> audio/generated/de-DE/utterances/4a44d4d2097abe069f3a0ce0acc2ed1b0fa3bc5156fc639ecc365bf9f8fde870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b4e1c878-ebe6-545a-a13f-8eadd583a914', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_cultural_pragmatics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86da067c25641b42b960003a70087b193c339a0224cdded55c8cb210b6e6176b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78119eb5-c77c-5087-a1ef-987cb69c9757', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b4e1c878-ebe6-545a-a13f-8eadd583a914', 1), '86da067c25641b42b960003a70087b193c339a0224cdded55c8cb210b6e6176b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a44d4d2097abe069f3a0ce0acc2ed1b0fa3bc5156fc639ecc365bf9f8fde870.mp3', 5381, '2026-09-13 10:01:33.964285', '88abc39f534c27fe66ad00d950e0d2536fc0346221576faec50d927debe1fc58', 'validated', '{"audio_key":"4a44d4d2097abe069f3a0ce0acc2ed1b0fa3bc5156fc639ecc365bf9f8fde870","entity_key":"u_cross_cultural_pragmatics_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88abc39f534c27fe66ad00d950e0d2536fc0346221576faec50d927debe1fc58","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a44d4d2097abe069f3a0ce0acc2ed1b0fa3bc5156fc639ecc365bf9f8fde870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_coaching_06 -> audio/generated/de-DE/utterances/54da835bc40c0ed20b42ba8a9024860f506557c72c2753f30d11b4dccfcf66c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a088cc8f-f707-5903-b949-a3115a78ef95', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_coaching_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b904f032d05e04cd4e73a2b9282883c0b35b518ba2c482926993b17cbb9023ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c07f0efb-4bd9-57cb-8bc1-d20ef44ae965', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a088cc8f-f707-5903-b949-a3115a78ef95', 1), 'b904f032d05e04cd4e73a2b9282883c0b35b518ba2c482926993b17cbb9023ce',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54da835bc40c0ed20b42ba8a9024860f506557c72c2753f30d11b4dccfcf66c8.mp3', 6112, '2026-09-13 10:01:35.100868', '5343663c7a58b290bcd758727d681d1cdd09c57dcf0cc13b07b5ad5bc0773bad', 'validated', '{"audio_key":"54da835bc40c0ed20b42ba8a9024860f506557c72c2753f30d11b4dccfcf66c8","entity_key":"u_feedback_coaching_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5343663c7a58b290bcd758727d681d1cdd09c57dcf0cc13b07b5ad5bc0773bad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54da835bc40c0ed20b42ba8a9024860f506557c72c2753f30d11b4dccfcf66c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_cultural_pragmatics_01 -> audio/generated/de-DE/utterances/5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb571305-9ab7-531c-8913-7ba94456ed8b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_cultural_pragmatics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afbd297925afd55fbe4f1c13f27874a38177432779e92eafce0f5e32e4736990'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d52f2bf-7bdf-5e6b-b27a-77b322093f23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb571305-9ab7-531c-8913-7ba94456ed8b', 1), 'afbd297925afd55fbe4f1c13f27874a38177432779e92eafce0f5e32e4736990',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2.mp3', 5668, '2026-09-13 10:01:35.540526', '1b1119da4b2513ecf2060769329fd494a8bbeb22013f1be36592f17924d8ab96', 'validated', '{"audio_key":"5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2","entity_key":"u_cross_cultural_pragmatics_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b1119da4b2513ecf2060769329fd494a8bbeb22013f1be36592f17924d8ab96","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cross_cultural_pragmatics_01_listen -> audio/generated/de-DE/utterances/5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('460a5e7e-f581-5dea-8fbd-83313b9716ea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cross_cultural_pragmatics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afbd297925afd55fbe4f1c13f27874a38177432779e92eafce0f5e32e4736990'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ede23a6-4aeb-523a-a70d-1dafd9f136d7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('460a5e7e-f581-5dea-8fbd-83313b9716ea', 1), 'afbd297925afd55fbe4f1c13f27874a38177432779e92eafce0f5e32e4736990',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2.mp3', 5668, '2026-09-13 10:01:35.540526', '1b1119da4b2513ecf2060769329fd494a8bbeb22013f1be36592f17924d8ab96', 'validated', '{"audio_key":"5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2","entity_key":"ex_cross_cultural_pragmatics_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b1119da4b2513ecf2060769329fd494a8bbeb22013f1be36592f17924d8ab96","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cb145c4bafadfdcd6819e7c9b06eb91ae646a59fcfebbb978d426e1c5039ef2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_collaboration_capstone_06 -> audio/generated/de-DE/utterances/5da14be9f2777d07bc474bfec04d3d90a5184c8f3dfc1b237890e3c3ee13d6d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('42b28e0f-4b51-5498-802d-15523a038381', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_collaboration_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69495c073b9487dfdf5d56f1b00000548bf113929f551b7f18de915523e2cd91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa2b7dc5-55db-51ab-9078-fd82f75bc5cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('42b28e0f-4b51-5498-802d-15523a038381', 1), '69495c073b9487dfdf5d56f1b00000548bf113929f551b7f18de915523e2cd91',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5da14be9f2777d07bc474bfec04d3d90a5184c8f3dfc1b237890e3c3ee13d6d2.mp3', 6582, '2026-09-13 10:01:36.708455', 'd1cac88e8e886a4dc9ee85bde1bdd90f94b92928db0a91255134509b7709ede5', 'validated', '{"audio_key":"5da14be9f2777d07bc474bfec04d3d90a5184c8f3dfc1b237890e3c3ee13d6d2","entity_key":"u_collaboration_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1cac88e8e886a4dc9ee85bde1bdd90f94b92928db0a91255134509b7709ede5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5da14be9f2777d07bc474bfec04d3d90a5184c8f3dfc1b237890e3c3ee13d6d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_escalation_06 -> audio/generated/de-DE/utterances/5dc711f4f80b22cac616f532450be8018e06a034ad80d78871f2bd8a9a59546d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee7e244c-e424-554f-8e80-0d1a05555159', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_escalation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66b044e16034678f4114cd0ec3e4b5b0250e0661d117eb663464de25fc0b9853'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9af3f61-52ba-5f7a-ab3f-336590c26257', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee7e244c-e424-554f-8e80-0d1a05555159', 1), '66b044e16034678f4114cd0ec3e4b5b0250e0661d117eb663464de25fc0b9853',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5dc711f4f80b22cac616f532450be8018e06a034ad80d78871f2bd8a9a59546d.mp3', 5564, '2026-09-13 10:01:37.029357', '06cf76c27ca7e0c58061b8214b396f3596387169863ca0650062927b32256a73', 'validated', '{"audio_key":"5dc711f4f80b22cac616f532450be8018e06a034ad80d78871f2bd8a9a59546d","entity_key":"u_formal_escalation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06cf76c27ca7e0c58061b8214b396f3596387169863ca0650062927b32256a73","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5dc711f4f80b22cac616f532450be8018e06a034ad80d78871f2bd8a9a59546d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ambiguity_clarification_01 -> audio/generated/de-DE/utterances/6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2be9329b-a535-5d77-9a40-f3612461090f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ambiguity_clarification_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4828744ac8325eac5a1d868662c913193779de6e0338b53fd427af94929652a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5de455bf-af57-56b7-9be4-bba4f722f1a8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2be9329b-a535-5d77-9a40-f3612461090f', 1), 'f4828744ac8325eac5a1d868662c913193779de6e0338b53fd427af94929652a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82.mp3', 5616, '2026-09-13 10:01:38.201166', '91239d8c30f290fe0a3229d0405c66d40bf628a92f9b53ea8f6e2516e85efe67', 'validated', '{"audio_key":"6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82","entity_key":"u_ambiguity_clarification_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91239d8c30f290fe0a3229d0405c66d40bf628a92f9b53ea8f6e2516e85efe67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ambiguity_clarification_01_listen -> audio/generated/de-DE/utterances/6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('93705b28-9d3b-56b9-991c-55b4ae6f8c2b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ambiguity_clarification_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4828744ac8325eac5a1d868662c913193779de6e0338b53fd427af94929652a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cadff347-2d0c-5896-8865-431818d4b8a8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('93705b28-9d3b-56b9-991c-55b4ae6f8c2b', 1), 'f4828744ac8325eac5a1d868662c913193779de6e0338b53fd427af94929652a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82.mp3', 5616, '2026-09-13 10:01:38.201166', '91239d8c30f290fe0a3229d0405c66d40bf628a92f9b53ea8f6e2516e85efe67', 'validated', '{"audio_key":"6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82","entity_key":"ex_ambiguity_clarification_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91239d8c30f290fe0a3229d0405c66d40bf628a92f9b53ea8f6e2516e85efe67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6847bf0bbbe30d7a6d8f6f6abd0317f2cbf505290a34623322783c60276e6c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_objections_counterarguments_01 -> audio/generated/de-DE/utterances/69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2d0faabe-efd7-5b6e-a0a5-b4509b643f22', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_objections_counterarguments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd85804f247f8213a6d094e733d02ee82f72dbf38c5b789aa455bc384769a9923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b31cd3c7-f11b-55c2-8d7e-f69ecf05bdc6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2d0faabe-efd7-5b6e-a0a5-b4509b643f22', 1), 'd85804f247f8213a6d094e733d02ee82f72dbf38c5b789aa455bc384769a9923',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042.mp3', 6164, '2026-09-13 10:01:38.579447', 'ea6bbca530fe00499d2cfc234bffa2f0d2299241579b8b61aaadb52ef46eb27f', 'validated', '{"audio_key":"69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042","entity_key":"u_objections_counterarguments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea6bbca530fe00499d2cfc234bffa2f0d2299241579b8b61aaadb52ef46eb27f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_objections_counterarguments_01_listen -> audio/generated/de-DE/utterances/69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2eae137e-3b71-5215-822f-ff63c6448d73', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_objections_counterarguments_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd85804f247f8213a6d094e733d02ee82f72dbf38c5b789aa455bc384769a9923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3913b7aa-1760-51bd-bc03-2d0644ef6b81', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2eae137e-3b71-5215-822f-ff63c6448d73', 1), 'd85804f247f8213a6d094e733d02ee82f72dbf38c5b789aa455bc384769a9923',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042.mp3', 6164, '2026-09-13 10:01:38.579447', 'ea6bbca530fe00499d2cfc234bffa2f0d2299241579b8b61aaadb52ef46eb27f', 'validated', '{"audio_key":"69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042","entity_key":"ex_objections_counterarguments_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea6bbca530fe00499d2cfc234bffa2f0d2299241579b8b61aaadb52ef46eb27f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/69f3d91a2c7d88f282042e3304236d29dc8d81f01be3bb94826425562da5d042.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stakeholder_requirements_04 -> audio/generated/de-DE/utterances/6a2a4e2bcd039add75a6010d1dc029e7e6546956bc30bea6b42c65d1da3459b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb500822-7db7-569f-9741-818f4a2f7fc7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stakeholder_requirements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0854706c747b95198f0eee831391a824ed52623149d010ccd3367c007cc4b41a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e398dd69-7dd8-5435-bb09-ed6e4e61dd1b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb500822-7db7-569f-9741-818f4a2f7fc7', 1), '0854706c747b95198f0eee831391a824ed52623149d010ccd3367c007cc4b41a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6a2a4e2bcd039add75a6010d1dc029e7e6546956bc30bea6b42c65d1da3459b3.mp3', 5799, '2026-09-13 10:01:39.804425', 'aa8a075ecc86722edd6fd8b1b2b9d29df62381077009088c235bd482998dfe3a', 'validated', '{"audio_key":"6a2a4e2bcd039add75a6010d1dc029e7e6546956bc30bea6b42c65d1da3459b3","entity_key":"u_stakeholder_requirements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa8a075ecc86722edd6fd8b1b2b9d29df62381077009088c235bd482998dfe3a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6a2a4e2bcd039add75a6010d1dc029e7e6546956bc30bea6b42c65d1da3459b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_objections_counterarguments_06 -> audio/generated/de-DE/utterances/6dcb243f65c644fc42355aed2ce99e5f5be65431213be8106da2b36cbf858d68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22273966-c54c-5ded-90f3-c3d27b93b22c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_objections_counterarguments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73c66faa6fcfaa27a4879b022b59bdfb8e4ab004cbdb9a8b6b43f9eb898055d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aec08ea6-d539-5686-9112-7adbf17ead2c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22273966-c54c-5ded-90f3-c3d27b93b22c', 1), '73c66faa6fcfaa27a4879b022b59bdfb8e4ab004cbdb9a8b6b43f9eb898055d2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6dcb243f65c644fc42355aed2ce99e5f5be65431213be8106da2b36cbf858d68.mp3', 6347, '2026-09-13 10:01:40.253003', '0760566c34c8267bad3886b98a3ac55cc35b1907aaf45e0a30e019e5e5345504', 'validated', '{"audio_key":"6dcb243f65c644fc42355aed2ce99e5f5be65431213be8106da2b36cbf858d68","entity_key":"u_objections_counterarguments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0760566c34c8267bad3886b98a3ac55cc35b1907aaf45e0a30e019e5e5345504","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6dcb243f65c644fc42355aed2ce99e5f5be65431213be8106da2b36cbf858d68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scope_negotiation_06 -> audio/generated/de-DE/utterances/6f7070b20f33c324da8a27dc863e0f26b6d5d7fde3619acfa88af6de8c952243.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a89fa86f-7a78-5f23-97a5-dbde7e29e0a6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scope_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85438c73cac1878579914b458e4c8a26e2e3fba82b10c8af35676f28381143ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85fd2fb4-e332-59ce-adf7-87f8d28f8789', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a89fa86f-7a78-5f23-97a5-dbde7e29e0a6', 1), '85438c73cac1878579914b458e4c8a26e2e3fba82b10c8af35676f28381143ca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6f7070b20f33c324da8a27dc863e0f26b6d5d7fde3619acfa88af6de8c952243.mp3', 5564, '2026-09-13 10:01:41.252624', 'f964db95e2c3a940b673e26da1f458aff84d8f904723d60d5f3ab5344bfd108c', 'validated', '{"audio_key":"6f7070b20f33c324da8a27dc863e0f26b6d5d7fde3619acfa88af6de8c952243","entity_key":"u_scope_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f964db95e2c3a940b673e26da1f458aff84d8f904723d60d5f3ab5344bfd108c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6f7070b20f33c324da8a27dc863e0f26b6d5d7fde3619acfa88af6de8c952243.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_objections_counterarguments_02 -> audio/generated/de-DE/utterances/6ffc447115e395c22891a256bb43a21df08db26ee861338572c7cce6043b6b3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d5770f00-e676-50d8-a2c2-86979136ff5b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_objections_counterarguments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918d559bb4db66cfa815a81d43067f3f4d6d3953ddd30efdb0158e0f43c3b2ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21c0ffd8-04ad-5ceb-b66e-108f4d220492', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d5770f00-e676-50d8-a2c2-86979136ff5b', 1), '918d559bb4db66cfa815a81d43067f3f4d6d3953ddd30efdb0158e0f43c3b2ec',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6ffc447115e395c22891a256bb43a21df08db26ee861338572c7cce6043b6b3a.mp3', 6713, '2026-09-13 10:01:41.821195', '38065f3b514776bc2002e578d41c7b700ba61a2987aeafe9a81a206f2ffa9929', 'validated', '{"audio_key":"6ffc447115e395c22891a256bb43a21df08db26ee861338572c7cce6043b6b3a","entity_key":"u_objections_counterarguments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38065f3b514776bc2002e578d41c7b700ba61a2987aeafe9a81a206f2ffa9929","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6ffc447115e395c22891a256bb43a21df08db26ee861338572c7cce6043b6b3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_delegation_accountability_06 -> audio/generated/de-DE/utterances/72a2933e998c3f80fb9d1f258f6209b2e16ddb3e5133625de31ed22933e45659.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('86f2ce52-c3cb-56c6-9050-1ab2a24c2852', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_delegation_accountability_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfb4dca7b71d48121c12d810406d5efe5b61e0b5f13213ebcefb2d44a5c27359'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a159f0ba-9d0c-51c1-90ab-a3181c6c8d9e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('86f2ce52-c3cb-56c6-9050-1ab2a24c2852', 1), 'cfb4dca7b71d48121c12d810406d5efe5b61e0b5f13213ebcefb2d44a5c27359',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/72a2933e998c3f80fb9d1f258f6209b2e16ddb3e5133625de31ed22933e45659.mp3', 6217, '2026-09-13 10:01:42.902097', '75412271a6218f91eb3958dd93b490c85771f60ebf1637fe86de0930670e1c64', 'validated', '{"audio_key":"72a2933e998c3f80fb9d1f258f6209b2e16ddb3e5133625de31ed22933e45659","entity_key":"u_delegation_accountability_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75412271a6218f91eb3958dd93b490c85771f60ebf1637fe86de0930670e1c64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/72a2933e998c3f80fb9d1f258f6209b2e16ddb3e5133625de31ed22933e45659.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stakeholder_requirements_05 -> audio/generated/de-DE/utterances/745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('625deb21-7ba7-5605-81f4-d3c56168ffde', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stakeholder_requirements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b056aa80076b9a265a83c7f1cdfd9e7f3c6855a64ca52554fad38ccf7d165b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34bc4d67-fe4e-5e92-b5e7-a8ec349eeeea', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('625deb21-7ba7-5605-81f4-d3c56168ffde', 1), '9b056aa80076b9a265a83c7f1cdfd9e7f3c6855a64ca52554fad38ccf7d165b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed.mp3', 5093, '2026-09-13 10:01:43.296650', 'fc1f09bcd2bea1efa6d65e0f059f192882bce18a21e3e79f7e7791b1ea3f04a8', 'validated', '{"audio_key":"745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed","entity_key":"u_stakeholder_requirements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc1f09bcd2bea1efa6d65e0f059f192882bce18a21e3e79f7e7791b1ea3f04a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_stakeholder_requirements_03_listen -> audio/generated/de-DE/utterances/745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('62a27482-82d8-5dc3-a24b-5d360309ec3b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_stakeholder_requirements_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b056aa80076b9a265a83c7f1cdfd9e7f3c6855a64ca52554fad38ccf7d165b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4164e942-525d-5fcf-8f61-8ea26c7bd46d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('62a27482-82d8-5dc3-a24b-5d360309ec3b', 1), '9b056aa80076b9a265a83c7f1cdfd9e7f3c6855a64ca52554fad38ccf7d165b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed.mp3', 5093, '2026-09-13 10:01:43.296650', 'fc1f09bcd2bea1efa6d65e0f059f192882bce18a21e3e79f7e7791b1ea3f04a8', 'validated', '{"audio_key":"745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed","entity_key":"ex_stakeholder_requirements_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc1f09bcd2bea1efa6d65e0f059f192882bce18a21e3e79f7e7791b1ea3f04a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/745cc93c627d7cc703271a54554409063a391858dc01bde8efb43deac573c7ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_escalation_05 -> audio/generated/de-DE/utterances/778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7bc58e41-b5d7-5697-9316-0ac9b688c9bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_escalation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f2d9501f8dc56ad14b7266eb85e44160f2111d6b0f2b4d65cd15eb855eacc00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7e344a9-0120-5931-bf7b-b7368400f10d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7bc58e41-b5d7-5697-9316-0ac9b688c9bd', 1), '1f2d9501f8dc56ad14b7266eb85e44160f2111d6b0f2b4d65cd15eb855eacc00',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9.mp3', 4075, '2026-09-13 10:01:44.172128', '1a17b06a5c71ad49e4ee5c00e796f998118c9688dec4bf7d734b37f41bca670a', 'validated', '{"audio_key":"778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9","entity_key":"u_formal_escalation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a17b06a5c71ad49e4ee5c00e796f998118c9688dec4bf7d734b37f41bca670a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_escalation_03_listen -> audio/generated/de-DE/utterances/778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fdc69cfa-588b-523a-80ac-b204e9c80a37', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_escalation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f2d9501f8dc56ad14b7266eb85e44160f2111d6b0f2b4d65cd15eb855eacc00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26c89006-1f8d-5511-91f5-b7b1f661a2c5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fdc69cfa-588b-523a-80ac-b204e9c80a37', 1), '1f2d9501f8dc56ad14b7266eb85e44160f2111d6b0f2b4d65cd15eb855eacc00',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9.mp3', 4075, '2026-09-13 10:01:44.172128', '1a17b06a5c71ad49e4ee5c00e796f998118c9688dec4bf7d734b37f41bca670a', 'validated', '{"audio_key":"778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9","entity_key":"ex_formal_escalation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a17b06a5c71ad49e4ee5c00e796f998118c9688dec4bf7d734b37f41bca670a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/778f186840070f90f8c1deb7eddc4aa47b4d1ca08c5a5eff82041f05832848d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_objections_counterarguments_03 -> audio/generated/de-DE/utterances/81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2ca7d4f-bb9a-529d-a0e1-3ca3a459fc93', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_objections_counterarguments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a208abca1dafb48faf02c2dc7f6e50270752dba43ade5e61feb050b98644663a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfbf262e-7925-59b3-bc20-790258df5d5c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2ca7d4f-bb9a-529d-a0e1-3ca3a459fc93', 1), 'a208abca1dafb48faf02c2dc7f6e50270752dba43ade5e61feb050b98644663a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6.mp3', 4545, '2026-09-13 10:01:44.663234', '29916978dbaf2a3672552ebc3665d231d8b39f328dc159153b970986c73896bd', 'validated', '{"audio_key":"81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6","entity_key":"u_objections_counterarguments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29916978dbaf2a3672552ebc3665d231d8b39f328dc159153b970986c73896bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_objections_counterarguments_02_listen -> audio/generated/de-DE/utterances/81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('95a132b0-6bd8-53f8-ba59-a67e083ecfb0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_objections_counterarguments_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a208abca1dafb48faf02c2dc7f6e50270752dba43ade5e61feb050b98644663a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6ee763a-9783-5657-b308-41efdd97b45e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('95a132b0-6bd8-53f8-ba59-a67e083ecfb0', 1), 'a208abca1dafb48faf02c2dc7f6e50270752dba43ade5e61feb050b98644663a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6.mp3', 4545, '2026-09-13 10:01:44.663234', '29916978dbaf2a3672552ebc3665d231d8b39f328dc159153b970986c73896bd', 'validated', '{"audio_key":"81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6","entity_key":"ex_objections_counterarguments_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29916978dbaf2a3672552ebc3665d231d8b39f328dc159153b970986c73896bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/81f6bfa5d48ec2c23aee8e79de497ad1e99f45792cacc955976808405b9374c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stakeholder_requirements_02 -> audio/generated/de-DE/utterances/83573d5e3e2b2d1dbf9a9f18f171de08bacc1b0a526e4fc413c0bbddb15a17ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5a031c40-62a9-5fbe-a483-bcc6ad874b75', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stakeholder_requirements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b742ef650fa67ae5db934297a3337985121b81a82fbee1e4bff1d0c2b2d81783'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95cacab8-8d7e-5a98-bebd-fe7e88bc0ca3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5a031c40-62a9-5fbe-a483-bcc6ad874b75', 1), 'b742ef650fa67ae5db934297a3337985121b81a82fbee1e4bff1d0c2b2d81783',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/83573d5e3e2b2d1dbf9a9f18f171de08bacc1b0a526e4fc413c0bbddb15a17ea.mp3', 5198, '2026-09-13 10:01:45.666590', '2d952ce1f0c99b93a91763055eb252ac696dfeeba6eccc6f767d9a560f02f6a5', 'validated', '{"audio_key":"83573d5e3e2b2d1dbf9a9f18f171de08bacc1b0a526e4fc413c0bbddb15a17ea","entity_key":"u_stakeholder_requirements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d952ce1f0c99b93a91763055eb252ac696dfeeba6eccc6f767d9a560f02f6a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/83573d5e3e2b2d1dbf9a9f18f171de08bacc1b0a526e4fc413c0bbddb15a17ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_objections_counterarguments_04 -> audio/generated/de-DE/utterances/876d721026415296111d3c90714081edfb3e6ddd2fb644ff3f8e10768765dc21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9b998c8-c247-599b-8aa9-3e9c66373c86', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_objections_counterarguments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e45218f420d7e26e31ff4e686a59e8f182e45fdb1a7dfefc039f7723c179ce70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('002de9a2-92c2-5ee9-a50b-769fcdc6dc8c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9b998c8-c247-599b-8aa9-3e9c66373c86', 1), 'e45218f420d7e26e31ff4e686a59e8f182e45fdb1a7dfefc039f7723c179ce70',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/876d721026415296111d3c90714081edfb3e6ddd2fb644ff3f8e10768765dc21.mp3', 5616, '2026-09-13 10:01:46.104409', '6355c6742e13bd48a22b9046defb855fb05615e6760ca750a33752455abf0b7b', 'validated', '{"audio_key":"876d721026415296111d3c90714081edfb3e6ddd2fb644ff3f8e10768765dc21","entity_key":"u_objections_counterarguments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6355c6742e13bd48a22b9046defb855fb05615e6760ca750a33752455abf0b7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/876d721026415296111d3c90714081edfb3e6ddd2fb644ff3f8e10768765dc21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_cultural_pragmatics_02 -> audio/generated/de-DE/utterances/89ae50ddb8039c42d1f5e736e2effe767694eb1b07a049e280f428f5dbef024a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a54cb83c-2ce7-5dc1-a81e-c9729320c97a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_cultural_pragmatics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4081e0d44dcb5308c042d7c524b579b18b5ba2a4abe376a8a990bec15e2b8098'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('226089ec-1c9a-5d94-8c37-9df6296c559a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a54cb83c-2ce7-5dc1-a81e-c9729320c97a', 1), '4081e0d44dcb5308c042d7c524b579b18b5ba2a4abe376a8a990bec15e2b8098',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/89ae50ddb8039c42d1f5e736e2effe767694eb1b07a049e280f428f5dbef024a.mp3', 6948, '2026-09-13 10:01:47.734085', 'f78511e4de294f8745dbe3a84eef1939ed85e9df00b47a9d6a4cb554a70c1a17', 'validated', '{"audio_key":"89ae50ddb8039c42d1f5e736e2effe767694eb1b07a049e280f428f5dbef024a","entity_key":"u_cross_cultural_pragmatics_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f78511e4de294f8745dbe3a84eef1939ed85e9df00b47a9d6a4cb554a70c1a17","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/89ae50ddb8039c42d1f5e736e2effe767694eb1b07a049e280f428f5dbef024a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_objections_counterarguments_05 -> audio/generated/de-DE/utterances/8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b8d0889c-79a2-5963-83df-d928df7a81e0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_objections_counterarguments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c6540dce1d3de3913b88d455304030a0fbf6de16590ebc9b04d787dcbafe0d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c89a0e93-ac64-5cd6-b697-ccf9c886bcde', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b8d0889c-79a2-5963-83df-d928df7a81e0', 1), '4c6540dce1d3de3913b88d455304030a0fbf6de16590ebc9b04d787dcbafe0d1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171.mp3', 4597, '2026-09-13 10:01:47.485317', '32fe44c0cd024a1562c19874af650705602fa29c9b5fd2ef6eb8c15fd37d3f7c', 'validated', '{"audio_key":"8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171","entity_key":"u_objections_counterarguments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32fe44c0cd024a1562c19874af650705602fa29c9b5fd2ef6eb8c15fd37d3f7c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_objections_counterarguments_03_listen -> audio/generated/de-DE/utterances/8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('04380535-d900-5349-b7c1-c68fc9b68db5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_objections_counterarguments_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c6540dce1d3de3913b88d455304030a0fbf6de16590ebc9b04d787dcbafe0d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85b3c7ee-f8de-5082-98e4-2332367ab31e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('04380535-d900-5349-b7c1-c68fc9b68db5', 1), '4c6540dce1d3de3913b88d455304030a0fbf6de16590ebc9b04d787dcbafe0d1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171.mp3', 4597, '2026-09-13 10:01:47.485317', '32fe44c0cd024a1562c19874af650705602fa29c9b5fd2ef6eb8c15fd37d3f7c', 'validated', '{"audio_key":"8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171","entity_key":"ex_objections_counterarguments_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32fe44c0cd024a1562c19874af650705602fa29c9b5fd2ef6eb8c15fd37d3f7c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d2144a736a91f6164a4f66f5a170edc6c2ec23bf812bb06bddd6b6f6a932171.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ambiguity_clarification_05 -> audio/generated/de-DE/utterances/92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dfa43116-d88a-5b9e-9343-51a06b049900', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ambiguity_clarification_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42a7fcd5346c7d06411eaf98e36fd648183d3dd723524cd903f278b1c1586e20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca911ac9-dbff-5a79-ad40-0efc40a416ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dfa43116-d88a-5b9e-9343-51a06b049900', 1), '42a7fcd5346c7d06411eaf98e36fd648183d3dd723524cd903f278b1c1586e20',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369.mp3', 6269, '2026-09-13 10:01:49.027928', 'e769bd4ea5dfc92b065c7a9106c1914f90e1be0733918d8483ac2c5a96a1ebf6', 'validated', '{"audio_key":"92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369","entity_key":"u_ambiguity_clarification_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e769bd4ea5dfc92b065c7a9106c1914f90e1be0733918d8483ac2c5a96a1ebf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ambiguity_clarification_03_listen -> audio/generated/de-DE/utterances/92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d7b60c7e-ba3b-5733-93dc-6c7716cf69f6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ambiguity_clarification_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42a7fcd5346c7d06411eaf98e36fd648183d3dd723524cd903f278b1c1586e20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33bed717-ff84-5863-9edc-a561d782fd69', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d7b60c7e-ba3b-5733-93dc-6c7716cf69f6', 1), '42a7fcd5346c7d06411eaf98e36fd648183d3dd723524cd903f278b1c1586e20',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369.mp3', 6269, '2026-09-13 10:01:49.027928', 'e769bd4ea5dfc92b065c7a9106c1914f90e1be0733918d8483ac2c5a96a1ebf6', 'validated', '{"audio_key":"92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369","entity_key":"ex_ambiguity_clarification_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e769bd4ea5dfc92b065c7a9106c1914f90e1be0733918d8483ac2c5a96a1ebf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/92df3b2d36f0a726c5f633c73a3131a867415d043b104415ae42e02257c24369.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_collaboration_capstone_05 -> audio/generated/de-DE/utterances/9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('62e50d07-b79c-50a6-8a69-df47149d2c92', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_collaboration_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd3aa1f28a5d787f315526a113abdc4487c46118f4d7bfdd356490793a2d4eab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b14fbb54-4a20-5c69-a03b-6446faec82a8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('62e50d07-b79c-50a6-8a69-df47149d2c92', 1), 'bd3aa1f28a5d787f315526a113abdc4487c46118f4d7bfdd356490793a2d4eab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d.mp3', 6687, '2026-09-13 10:01:49.387538', '3b915b71db57c94425150809e886006f66fed63d64ca60f3f9fef77e62b10c01', 'validated', '{"audio_key":"9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d","entity_key":"u_collaboration_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b915b71db57c94425150809e886006f66fed63d64ca60f3f9fef77e62b10c01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_collaboration_capstone_03_listen -> audio/generated/de-DE/utterances/9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('783b89ee-bfa4-58c2-8da2-167b82db2962', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_collaboration_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd3aa1f28a5d787f315526a113abdc4487c46118f4d7bfdd356490793a2d4eab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ba2ba47-d9bc-52f1-94ff-4ff99d6d4cea', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('783b89ee-bfa4-58c2-8da2-167b82db2962', 1), 'bd3aa1f28a5d787f315526a113abdc4487c46118f4d7bfdd356490793a2d4eab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d.mp3', 6687, '2026-09-13 10:01:49.387538', '3b915b71db57c94425150809e886006f66fed63d64ca60f3f9fef77e62b10c01', 'validated', '{"audio_key":"9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d","entity_key":"ex_collaboration_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b915b71db57c94425150809e886006f66fed63d64ca60f3f9fef77e62b10c01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9d0b25fa3712587ba11ff377251c00dc20e03045fb05794e1b3fa4eb5d21177d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_cultural_pragmatics_03 -> audio/generated/de-DE/utterances/9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ab2f028a-5f1d-5511-a451-0ef8c2c84738', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_cultural_pragmatics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a49b8e64f57f4c5d9d5fb7c33cf906ff69aab6791f928e5c367c041cc9452d79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf275d90-37c6-53d9-88c1-c39a2a3c833f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ab2f028a-5f1d-5511-a451-0ef8c2c84738', 1), 'a49b8e64f57f4c5d9d5fb7c33cf906ff69aab6791f928e5c367c041cc9452d79',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457.mp3', 5146, '2026-09-13 10:01:50.443219', 'afa4b735b781dfc305dde870a53c2278fcb9d6f64aa8e8edf651537f590d49be', 'validated', '{"audio_key":"9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457","entity_key":"u_cross_cultural_pragmatics_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"afa4b735b781dfc305dde870a53c2278fcb9d6f64aa8e8edf651537f590d49be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cross_cultural_pragmatics_02_listen -> audio/generated/de-DE/utterances/9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1d48160c-2e7e-5ec7-aa50-50ea455a7aa9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cross_cultural_pragmatics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a49b8e64f57f4c5d9d5fb7c33cf906ff69aab6791f928e5c367c041cc9452d79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46bdb48a-eb3d-56db-80c3-c6dada1436f0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1d48160c-2e7e-5ec7-aa50-50ea455a7aa9', 1), 'a49b8e64f57f4c5d9d5fb7c33cf906ff69aab6791f928e5c367c041cc9452d79',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457.mp3', 5146, '2026-09-13 10:01:50.443219', 'afa4b735b781dfc305dde870a53c2278fcb9d6f64aa8e8edf651537f590d49be', 'validated', '{"audio_key":"9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457","entity_key":"ex_cross_cultural_pragmatics_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"afa4b735b781dfc305dde870a53c2278fcb9d6f64aa8e8edf651537f590d49be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f741533c2a1a58870896b51f7afc832086bc6705a8fc75b74c8e9ba1e4ae457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stakeholder_requirements_03 -> audio/generated/de-DE/utterances/a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('93369120-9eb6-518a-a57b-080c6b4ef16a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stakeholder_requirements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0954939b570f90e5515e685f6acb2cdd8a4a9645e5ba125f53c313dce97a691a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0081e36f-0433-5853-82a5-7e994328a871', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('93369120-9eb6-518a-a57b-080c6b4ef16a', 1), '0954939b570f90e5515e685f6acb2cdd8a4a9645e5ba125f53c313dce97a691a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1.mp3', 5982, '2026-09-13 10:01:50.978156', 'b1ef16ca92bdb1e4887353fc4329ea68bd4067258e25ddb73ee9ff77d8e7a3db', 'validated', '{"audio_key":"a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1","entity_key":"u_stakeholder_requirements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1ef16ca92bdb1e4887353fc4329ea68bd4067258e25ddb73ee9ff77d8e7a3db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_stakeholder_requirements_02_listen -> audio/generated/de-DE/utterances/a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('66c15fa8-988b-5420-87a1-7c3343d851c3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_stakeholder_requirements_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0954939b570f90e5515e685f6acb2cdd8a4a9645e5ba125f53c313dce97a691a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e3cfb90-94dc-5746-9739-2e5fc88e883a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('66c15fa8-988b-5420-87a1-7c3343d851c3', 1), '0954939b570f90e5515e685f6acb2cdd8a4a9645e5ba125f53c313dce97a691a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1.mp3', 5982, '2026-09-13 10:01:50.978156', 'b1ef16ca92bdb1e4887353fc4329ea68bd4067258e25ddb73ee9ff77d8e7a3db', 'validated', '{"audio_key":"a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1","entity_key":"ex_stakeholder_requirements_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1ef16ca92bdb1e4887353fc4329ea68bd4067258e25ddb73ee9ff77d8e7a3db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4ae40e1e78ea0cb00bcb37e78185ade63c80479f08a6594f0baef0914d9c2f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_collaboration_capstone_01 -> audio/generated/de-DE/utterances/a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee697794-4389-5f40-a3eb-c9f1dc95e296', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_collaboration_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '666a9f9f3f2afb7042a9857b0b80fc3929982b8faada900cc35c08952fb776fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cab3743-6b25-50ea-bfe4-b893446635ba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee697794-4389-5f40-a3eb-c9f1dc95e296', 1), '666a9f9f3f2afb7042a9857b0b80fc3929982b8faada900cc35c08952fb776fd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf.mp3', 5041, '2026-09-13 10:01:51.987972', 'f0ec30db41166633ed0e6630c13e2c3971eac7b0cbb8626da2080f8c11af48c1', 'validated', '{"audio_key":"a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf","entity_key":"u_collaboration_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0ec30db41166633ed0e6630c13e2c3971eac7b0cbb8626da2080f8c11af48c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_collaboration_capstone_01_listen -> audio/generated/de-DE/utterances/a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('28f54b6a-ed23-5603-845c-e8759c83cfbb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_collaboration_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '666a9f9f3f2afb7042a9857b0b80fc3929982b8faada900cc35c08952fb776fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48714eaf-399e-562e-a654-05db95566d63', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('28f54b6a-ed23-5603-845c-e8759c83cfbb', 1), '666a9f9f3f2afb7042a9857b0b80fc3929982b8faada900cc35c08952fb776fd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf.mp3', 5041, '2026-09-13 10:01:51.987972', 'f0ec30db41166633ed0e6630c13e2c3971eac7b0cbb8626da2080f8c11af48c1', 'validated', '{"audio_key":"a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf","entity_key":"ex_collaboration_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0ec30db41166633ed0e6630c13e2c3971eac7b0cbb8626da2080f8c11af48c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a947adb333575532ae7485750a5232facd799ee265caef0c8293915598d289bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_knowledge_transfer_05 -> audio/generated/de-DE/utterances/b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49016c3b-a146-589c-a124-db971220c20e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_knowledge_transfer_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddfad9071911e021c9a42537545d099797a249f27e1ad01b7d5bae1e8a880c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40de35ec-3921-5908-99ea-8ca57b04c473', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49016c3b-a146-589c-a124-db971220c20e', 1), 'ddfad9071911e021c9a42537545d099797a249f27e1ad01b7d5bae1e8a880c39',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258.mp3', 5877, '2026-09-13 10:01:52.479434', '6b8ba72f6d8d13cd226e2d64f81ddf49477c5de3c0d13f43562d877672e96fa3', 'validated', '{"audio_key":"b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258","entity_key":"u_knowledge_transfer_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b8ba72f6d8d13cd226e2d64f81ddf49477c5de3c0d13f43562d877672e96fa3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_knowledge_transfer_03_listen -> audio/generated/de-DE/utterances/b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c3087137-5d25-53a0-b378-5454144fed6e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_knowledge_transfer_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddfad9071911e021c9a42537545d099797a249f27e1ad01b7d5bae1e8a880c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc74a448-73cf-5404-abbc-72c55837d374', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c3087137-5d25-53a0-b378-5454144fed6e', 1), 'ddfad9071911e021c9a42537545d099797a249f27e1ad01b7d5bae1e8a880c39',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258.mp3', 5877, '2026-09-13 10:01:52.479434', '6b8ba72f6d8d13cd226e2d64f81ddf49477c5de3c0d13f43562d877672e96fa3', 'validated', '{"audio_key":"b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258","entity_key":"ex_knowledge_transfer_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b8ba72f6d8d13cd226e2d64f81ddf49477c5de3c0d13f43562d877672e96fa3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b69b67ef3391eb7d23d39feba2d781edb2b6f40d9547a990dc49e4b4f7f0a258.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_escalation_04 -> audio/generated/de-DE/utterances/bb9e0b22f97aa8e5c0b0a927cf4cb47a4a18d47785d897e6efd7ce4d8b13ccf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('399ca28a-38e2-55d2-accb-1996fc865e2b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_escalation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a9d0d29dbbf858c7221d48b5073c11c8a6e0272448d7f177d4d7b44ba92a059'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3151e674-613b-59b3-a506-92cb840a3c5a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('399ca28a-38e2-55d2-accb-1996fc865e2b', 1), '9a9d0d29dbbf858c7221d48b5073c11c8a6e0272448d7f177d4d7b44ba92a059',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb9e0b22f97aa8e5c0b0a927cf4cb47a4a18d47785d897e6efd7ce4d8b13ccf9.mp3', 4963, '2026-09-13 10:01:53.419344', '239a2ef29874fd7c68dcf538fe1d9ae7ac52f24779c6f60823e2b711fb773365', 'validated', '{"audio_key":"bb9e0b22f97aa8e5c0b0a927cf4cb47a4a18d47785d897e6efd7ce4d8b13ccf9","entity_key":"u_formal_escalation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"239a2ef29874fd7c68dcf538fe1d9ae7ac52f24779c6f60823e2b711fb773365","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb9e0b22f97aa8e5c0b0a927cf4cb47a4a18d47785d897e6efd7ce4d8b13ccf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_delegation_accountability_03 -> audio/generated/de-DE/utterances/be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a75183e6-f8d0-5bc8-8ecf-2e182c18dad6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_delegation_accountability_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109ca95616120704c3f9d7517346287e5575cb613e3fb8e8b0ec675aaaa25fa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dedde6b9-09d3-57fd-958a-86a821018655', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a75183e6-f8d0-5bc8-8ecf-2e182c18dad6', 1), '109ca95616120704c3f9d7517346287e5575cb613e3fb8e8b0ec675aaaa25fa2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85.mp3', 5668, '2026-09-13 10:01:53.959679', '02bcbe7aa0950e6e85c5cc37701d37c222c822d9aa27a95fd2909ce5e5702a8c', 'validated', '{"audio_key":"be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85","entity_key":"u_delegation_accountability_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02bcbe7aa0950e6e85c5cc37701d37c222c822d9aa27a95fd2909ce5e5702a8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_delegation_accountability_02_listen -> audio/generated/de-DE/utterances/be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f1896b23-5b4a-5384-b525-763e32235cf1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_delegation_accountability_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109ca95616120704c3f9d7517346287e5575cb613e3fb8e8b0ec675aaaa25fa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1af295a0-5010-51d8-ace1-2503d7f1c90b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f1896b23-5b4a-5384-b525-763e32235cf1', 1), '109ca95616120704c3f9d7517346287e5575cb613e3fb8e8b0ec675aaaa25fa2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85.mp3', 5668, '2026-09-13 10:01:53.959679', '02bcbe7aa0950e6e85c5cc37701d37c222c822d9aa27a95fd2909ce5e5702a8c', 'validated', '{"audio_key":"be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85","entity_key":"ex_delegation_accountability_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02bcbe7aa0950e6e85c5cc37701d37c222c822d9aa27a95fd2909ce5e5702a8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/be6cf9ace15523a60d1b2c684b76e0dea2a304d567f3ba067d9e6be84644bd85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stakeholder_requirements_01 -> audio/generated/de-DE/utterances/c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3c2a6371-03dd-5a8e-a414-3ab71e74a508', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stakeholder_requirements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4039f58499660bab6a71562c13dee3a9cabf45ae418399652b6a84979c41369f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c7e9ecd-689d-548f-8076-3530fab2ef39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3c2a6371-03dd-5a8e-a414-3ab71e74a508', 1), '4039f58499660bab6a71562c13dee3a9cabf45ae418399652b6a84979c41369f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7.mp3', 6582, '2026-09-13 10:01:54.999581', '4297f6de9585d89e503a4a11fd2fd0ff49926f2fd1efbd5545a0daa2444025db', 'validated', '{"audio_key":"c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7","entity_key":"u_stakeholder_requirements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4297f6de9585d89e503a4a11fd2fd0ff49926f2fd1efbd5545a0daa2444025db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_stakeholder_requirements_01_listen -> audio/generated/de-DE/utterances/c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e3937c56-697c-52f0-a80a-becc1e18a0f7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_stakeholder_requirements_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4039f58499660bab6a71562c13dee3a9cabf45ae418399652b6a84979c41369f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79200234-4ed1-530b-a5ce-a2326314c1cc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e3937c56-697c-52f0-a80a-becc1e18a0f7', 1), '4039f58499660bab6a71562c13dee3a9cabf45ae418399652b6a84979c41369f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7.mp3', 6582, '2026-09-13 10:01:54.999581', '4297f6de9585d89e503a4a11fd2fd0ff49926f2fd1efbd5545a0daa2444025db', 'validated', '{"audio_key":"c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7","entity_key":"ex_stakeholder_requirements_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4297f6de9585d89e503a4a11fd2fd0ff49926f2fd1efbd5545a0daa2444025db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c3a527cd840fc2fbb9868bd0d0552772ef4cc3f65c25bc4c07d5f426325d72f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_delegation_accountability_02 -> audio/generated/de-DE/utterances/c5bef8f49a3952acb216b4673ad7f1c86e2c8f302a18f12a53ca15a1b25a41ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('92ebaffc-7733-56aa-a8b9-fc0d13171f55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_delegation_accountability_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb6efd5ce1e4b115ea7df6eb2e496cd2e0d3a16bfb5406fdb66931b6b36711b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f010709-19a7-518a-9a5e-55cf30bfd534', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('92ebaffc-7733-56aa-a8b9-fc0d13171f55', 1), 'bb6efd5ce1e4b115ea7df6eb2e496cd2e0d3a16bfb5406fdb66931b6b36711b5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c5bef8f49a3952acb216b4673ad7f1c86e2c8f302a18f12a53ca15a1b25a41ab.mp3', 6034, '2026-09-13 10:01:55.509004', 'c4358e53f93c63523bda499b8f63e08a4bd3542728511f0e648c1ed8bfa1048a', 'validated', '{"audio_key":"c5bef8f49a3952acb216b4673ad7f1c86e2c8f302a18f12a53ca15a1b25a41ab","entity_key":"u_delegation_accountability_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4358e53f93c63523bda499b8f63e08a4bd3542728511f0e648c1ed8bfa1048a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c5bef8f49a3952acb216b4673ad7f1c86e2c8f302a18f12a53ca15a1b25a41ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_escalation_02 -> audio/generated/de-DE/utterances/c612a26d2c06002014d47375d6fab17047cf07ea8b30f254db21b08969d61ae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8923f8f1-06a4-571e-a2bd-b67bb9276e89', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_escalation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb869d8fae72a13fb8d455c912f5313f5766ed2efbdd97ea2082537a30565644'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1daddf58-0dde-5f63-ba5b-d7c39da2d7dd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8923f8f1-06a4-571e-a2bd-b67bb9276e89', 1), 'cb869d8fae72a13fb8d455c912f5313f5766ed2efbdd97ea2082537a30565644',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c612a26d2c06002014d47375d6fab17047cf07ea8b30f254db21b08969d61ae2.mp3', 5146, '2026-09-13 10:01:56.402949', 'e19d2fb09563783f5dd5505f1e4d3c0ec333d995ca3f4d3dce0bcc20d270d9ad', 'validated', '{"audio_key":"c612a26d2c06002014d47375d6fab17047cf07ea8b30f254db21b08969d61ae2","entity_key":"u_formal_escalation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e19d2fb09563783f5dd5505f1e4d3c0ec333d995ca3f4d3dce0bcc20d270d9ad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c612a26d2c06002014d47375d6fab17047cf07ea8b30f254db21b08969d61ae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_knowledge_transfer_03 -> audio/generated/de-DE/utterances/d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f019bf58-caab-50d1-9c89-089d327ddbf2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_knowledge_transfer_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4fd54f3739b636dbbb8b67c1fc15cb2ee9a79fa7eae6d676b1b2b2dcf818945'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b584c26-a9c9-5564-b35c-3d82d0effbd1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f019bf58-caab-50d1-9c89-089d327ddbf2', 1), 'd4fd54f3739b636dbbb8b67c1fc15cb2ee9a79fa7eae6d676b1b2b2dcf818945',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4.mp3', 5746, '2026-09-13 10:01:56.975300', '84ded016b8ca4732710b9f02d5176b3686aa5fbb76731da01cb716c1cbb6b80b', 'validated', '{"audio_key":"d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4","entity_key":"u_knowledge_transfer_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84ded016b8ca4732710b9f02d5176b3686aa5fbb76731da01cb716c1cbb6b80b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_knowledge_transfer_02_listen -> audio/generated/de-DE/utterances/d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ebcb1eb-89a7-513e-9560-a22bc555ddae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_knowledge_transfer_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4fd54f3739b636dbbb8b67c1fc15cb2ee9a79fa7eae6d676b1b2b2dcf818945'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef00cf95-37db-5989-8bde-ea35b1e14ca3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ebcb1eb-89a7-513e-9560-a22bc555ddae', 1), 'd4fd54f3739b636dbbb8b67c1fc15cb2ee9a79fa7eae6d676b1b2b2dcf818945',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4.mp3', 5746, '2026-09-13 10:01:56.975300', '84ded016b8ca4732710b9f02d5176b3686aa5fbb76731da01cb716c1cbb6b80b', 'validated', '{"audio_key":"d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4","entity_key":"ex_knowledge_transfer_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84ded016b8ca4732710b9f02d5176b3686aa5fbb76731da01cb716c1cbb6b80b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d9fe1ae90f3e90e0d8f488af438f21a20cd6eb0b218975e9eee761372ac64df4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_delegation_accountability_04 -> audio/generated/de-DE/utterances/dc8326adcd891db85a29bd86e780ac2c86e7e86b051cc29fb1846ec0c44aec92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('abcc8a3d-8726-53f2-9425-d3d9e533c735', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_delegation_accountability_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0433c6b0994da3facfa4781236cf099c3ce2702af50e7be8209a16e6e741ca95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97696374-054e-544c-bd53-05032386089d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('abcc8a3d-8726-53f2-9425-d3d9e533c735', 1), '0433c6b0994da3facfa4781236cf099c3ce2702af50e7be8209a16e6e741ca95',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dc8326adcd891db85a29bd86e780ac2c86e7e86b051cc29fb1846ec0c44aec92.mp3', 5433, '2026-09-13 10:01:57.875270', '0cec3af485c0fd21ac81e304d86275dbb4d6c5fcd8402fa44e21d188e0852151', 'validated', '{"audio_key":"dc8326adcd891db85a29bd86e780ac2c86e7e86b051cc29fb1846ec0c44aec92","entity_key":"u_delegation_accountability_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cec3af485c0fd21ac81e304d86275dbb4d6c5fcd8402fa44e21d188e0852151","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dc8326adcd891db85a29bd86e780ac2c86e7e86b051cc29fb1846ec0c44aec92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_knowledge_transfer_01 -> audio/generated/de-DE/utterances/df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cae8bd38-ee3e-5afa-a8f5-cec81f76acd8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_knowledge_transfer_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46bf5c91cfbf7c96be55ede7ca521d5d5d159d8787868d44341f1b975031c822'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54e95858-5678-5e32-83be-8d0a3ac2c18d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cae8bd38-ee3e-5afa-a8f5-cec81f76acd8', 1), '46bf5c91cfbf7c96be55ede7ca521d5d5d159d8787868d44341f1b975031c822',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c.mp3', 4414, '2026-09-13 10:01:58.267846', 'd1d61f815235a588d4dbf9aed458d47ca462d792510ea354e8c814d109998838', 'validated', '{"audio_key":"df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c","entity_key":"u_knowledge_transfer_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d61f815235a588d4dbf9aed458d47ca462d792510ea354e8c814d109998838","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_knowledge_transfer_01_listen -> audio/generated/de-DE/utterances/df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0e712b7d-67b7-50c7-91e6-554f089fd499', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_knowledge_transfer_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46bf5c91cfbf7c96be55ede7ca521d5d5d159d8787868d44341f1b975031c822'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e7eeb51-d3ad-5dbd-b1f5-49a693663066', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0e712b7d-67b7-50c7-91e6-554f089fd499', 1), '46bf5c91cfbf7c96be55ede7ca521d5d5d159d8787868d44341f1b975031c822',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c.mp3', 4414, '2026-09-13 10:01:58.267846', 'd1d61f815235a588d4dbf9aed458d47ca462d792510ea354e8c814d109998838', 'validated', '{"audio_key":"df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c","entity_key":"ex_knowledge_transfer_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d61f815235a588d4dbf9aed458d47ca462d792510ea354e8c814d109998838","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/df7899993d92f5f5d20037c90555a81194e1d9634c5344af2b97afe08da4fa6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ambiguity_clarification_06 -> audio/generated/de-DE/utterances/e31665cb99c055f42e07e2eb5e9f743bc347bb93ca452c66bf2b8c6e58a5d00f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b0db723-edfb-528e-9cc4-79ac97e4e091', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ambiguity_clarification_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a48e01971746465f4f89ecdd6979f07aa9e874827cace79c7465bde09f51170b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d39af1a-5c03-53c6-a904-52bdaf4ce08a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b0db723-edfb-528e-9cc4-79ac97e4e091', 1), 'a48e01971746465f4f89ecdd6979f07aa9e874827cace79c7465bde09f51170b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e31665cb99c055f42e07e2eb5e9f743bc347bb93ca452c66bf2b8c6e58a5d00f.mp3', 6112, '2026-09-13 10:01:59.445313', 'acd81171509807b8b8cf8e103e1a642be2d5e45e3e53506ed5507401e0ee82a4', 'validated', '{"audio_key":"e31665cb99c055f42e07e2eb5e9f743bc347bb93ca452c66bf2b8c6e58a5d00f","entity_key":"u_ambiguity_clarification_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"acd81171509807b8b8cf8e103e1a642be2d5e45e3e53506ed5507401e0ee82a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e31665cb99c055f42e07e2eb5e9f743bc347bb93ca452c66bf2b8c6e58a5d00f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_coaching_04 -> audio/generated/de-DE/utterances/e577b7ba7a57b1ae39909f53a9a85f47f7f79bca1d57576a35b95136764e3742.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7dc27eb8-4dcf-5d76-8098-0cef9d020ca4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_coaching_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2262f05daafcbe8863979c555670213b2c97c66b1dfc28f9e4723044e58d48a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51c82249-febb-5aa4-b204-b8944044023b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7dc27eb8-4dcf-5d76-8098-0cef9d020ca4', 1), '2262f05daafcbe8863979c555670213b2c97c66b1dfc28f9e4723044e58d48a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e577b7ba7a57b1ae39909f53a9a85f47f7f79bca1d57576a35b95136764e3742.mp3', 6582, '2026-09-13 10:01:59.832789', '1099220021e222cee2edf0dbfbf37bc750148eaef35cffe431fc4b61791e3273', 'validated', '{"audio_key":"e577b7ba7a57b1ae39909f53a9a85f47f7f79bca1d57576a35b95136764e3742","entity_key":"u_feedback_coaching_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1099220021e222cee2edf0dbfbf37bc750148eaef35cffe431fc4b61791e3273","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e577b7ba7a57b1ae39909f53a9a85f47f7f79bca1d57576a35b95136764e3742.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_coaching_05 -> audio/generated/de-DE/utterances/ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('018d1e93-6689-534e-b39e-7dda28785fb2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_coaching_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8305dfb9982df8b7cae18d08feb4dc938a6cf6144d970f6a12a6168a11d67d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edf95be2-3383-5789-826f-eefa0db506d1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('018d1e93-6689-534e-b39e-7dda28785fb2', 1), '8305dfb9982df8b7cae18d08feb4dc938a6cf6144d970f6a12a6168a11d67d70',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0.mp3', 5616, '2026-09-13 10:02:00.910644', 'c6149195e5747851e56aa5194e11525b52dfedcbcfceb4bf46bcb30c476c230e', 'validated', '{"audio_key":"ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0","entity_key":"u_feedback_coaching_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6149195e5747851e56aa5194e11525b52dfedcbcfceb4bf46bcb30c476c230e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_feedback_coaching_03_listen -> audio/generated/de-DE/utterances/ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('39e2cc99-5271-57d6-8a59-127a5e7e71c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_feedback_coaching_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8305dfb9982df8b7cae18d08feb4dc938a6cf6144d970f6a12a6168a11d67d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71c68a36-bd89-511c-94fa-2b1539a6dd76', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('39e2cc99-5271-57d6-8a59-127a5e7e71c7', 1), '8305dfb9982df8b7cae18d08feb4dc938a6cf6144d970f6a12a6168a11d67d70',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0.mp3', 5616, '2026-09-13 10:02:00.910644', 'c6149195e5747851e56aa5194e11525b52dfedcbcfceb4bf46bcb30c476c230e', 'validated', '{"audio_key":"ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0","entity_key":"ex_feedback_coaching_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6149195e5747851e56aa5194e11525b52dfedcbcfceb4bf46bcb30c476c230e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef85978132edb2f608c405475d709c18fa0d79346de0891d31f7de890e73d5f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_knowledge_transfer_02 -> audio/generated/de-DE/utterances/efa08f51b4b755794d9415716f70df6e1e9c3f19374241dc2f084f4041747028.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c30c6079-2185-5162-95b8-bc48d0ec8dba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_knowledge_transfer_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad39b98c6d3d2c8e3ee5b2fa533bf71d985842f67fe313e58866e2f39efc3441'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c70c5bf-7116-5bdf-8991-53f928d228f2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c30c6079-2185-5162-95b8-bc48d0ec8dba', 1), 'ad39b98c6d3d2c8e3ee5b2fa533bf71d985842f67fe313e58866e2f39efc3441',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/efa08f51b4b755794d9415716f70df6e1e9c3f19374241dc2f084f4041747028.mp3', 5564, '2026-09-13 10:02:01.648925', '97c2eb0667fa1e6177c6fb885d5ef2558ec072cbff5dad7d9a13fdf93121d924', 'validated', '{"audio_key":"efa08f51b4b755794d9415716f70df6e1e9c3f19374241dc2f084f4041747028","entity_key":"u_knowledge_transfer_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97c2eb0667fa1e6177c6fb885d5ef2558ec072cbff5dad7d9a13fdf93121d924","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/efa08f51b4b755794d9415716f70df6e1e9c3f19374241dc2f084f4041747028.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_escalation_01 -> audio/generated/de-DE/utterances/f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea9d8ebc-d338-517a-a699-9232ce375281', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_escalation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb08415c578af1263f903663ad58289cb979504e287cf506237db8a8af0cb708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8793a5c3-14c9-59ac-9938-46a8ab7d8ae2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea9d8ebc-d338-517a-a699-9232ce375281', 1), 'bb08415c578af1263f903663ad58289cb979504e287cf506237db8a8af0cb708',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5.mp3', 5746, '2026-09-13 10:02:02.401126', '759722612fff6f6d7f9f87f6516cc4aa9536e574ecb27f910998a1b8c609da96', 'validated', '{"audio_key":"f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5","entity_key":"u_formal_escalation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"759722612fff6f6d7f9f87f6516cc4aa9536e574ecb27f910998a1b8c609da96","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_escalation_01_listen -> audio/generated/de-DE/utterances/f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7f96f6b7-e01d-53f1-9097-bb09b329da66', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_escalation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb08415c578af1263f903663ad58289cb979504e287cf506237db8a8af0cb708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7f73129-475b-526b-88ec-6f0d517642e0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7f96f6b7-e01d-53f1-9097-bb09b329da66', 1), 'bb08415c578af1263f903663ad58289cb979504e287cf506237db8a8af0cb708',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5.mp3', 5746, '2026-09-13 10:02:02.401126', '759722612fff6f6d7f9f87f6516cc4aa9536e574ecb27f910998a1b8c609da96', 'validated', '{"audio_key":"f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5","entity_key":"ex_formal_escalation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"759722612fff6f6d7f9f87f6516cc4aa9536e574ecb27f910998a1b8c609da96","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f25b776f2752f9ca207b31f8f1f60bb9ff22b21ad5a8ac64d370a868b7ba83f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scope_negotiation_04 -> audio/generated/de-DE/utterances/f62a62e3db80628a5edfdc57737767a6b6f3c80b0ca2cbe7fe51fb3fd65cd04a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dd89f1ff-5863-56bb-8295-c6bb7e66e76c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scope_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5735699572bc73fb120fb4d47270c2512f255626ae79fecc08ed50d5f9e0357c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aecae763-15eb-56ef-a6f3-22fe267fc2c6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dd89f1ff-5863-56bb-8295-c6bb7e66e76c', 1), '5735699572bc73fb120fb4d47270c2512f255626ae79fecc08ed50d5f9e0357c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f62a62e3db80628a5edfdc57737767a6b6f3c80b0ca2cbe7fe51fb3fd65cd04a.mp3', 4440, '2026-09-13 10:02:02.934272', '0bb7d110ce064d1ee8b9be0c8fa269d6e9d79d983e555a6084635e547097cdf2', 'validated', '{"audio_key":"f62a62e3db80628a5edfdc57737767a6b6f3c80b0ca2cbe7fe51fb3fd65cd04a","entity_key":"u_scope_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bb7d110ce064d1ee8b9be0c8fa269d6e9d79d983e555a6084635e547097cdf2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f62a62e3db80628a5edfdc57737767a6b6f3c80b0ca2cbe7fe51fb3fd65cd04a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_knowledge_transfer_04 -> audio/generated/de-DE/utterances/f6ffbaedff63d3ce9efce570517e38825c4ea5235bb6ebcb5a19d2f8d48ae902.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba759e8a-97ee-52d2-90c7-d43f2c0a4d5c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_knowledge_transfer_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '208da38c5b021662803bedec130eff5ba0908d1b891a033dc21d04141fc3f2dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('814b27a6-ca87-5773-b8cc-36cf9f33b42c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba759e8a-97ee-52d2-90c7-d43f2c0a4d5c', 1), '208da38c5b021662803bedec130eff5ba0908d1b891a033dc21d04141fc3f2dd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f6ffbaedff63d3ce9efce570517e38825c4ea5235bb6ebcb5a19d2f8d48ae902.mp3', 5511, '2026-09-13 10:02:03.934753', '09bf23d3118c1d5886ca334e50b570291a7f7412e05ee6ad17bea805168aea46', 'validated', '{"audio_key":"f6ffbaedff63d3ce9efce570517e38825c4ea5235bb6ebcb5a19d2f8d48ae902","entity_key":"u_knowledge_transfer_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09bf23d3118c1d5886ca334e50b570291a7f7412e05ee6ad17bea805168aea46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f6ffbaedff63d3ce9efce570517e38825c4ea5235bb6ebcb5a19d2f8d48ae902.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_coaching_03 -> audio/generated/de-DE/utterances/fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e1638878-ce35-5691-b85b-85d1ec320191', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_coaching_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dff6af2de4f252c966487b3f42337e82e1f1902b70f9e5b844f32c5192e9d860'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12bc0c25-bacd-5e2f-9442-759f66d054a6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e1638878-ce35-5691-b85b-85d1ec320191', 1), 'dff6af2de4f252c966487b3f42337e82e1f1902b70f9e5b844f32c5192e9d860',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6.mp3', 5616, '2026-09-13 10:02:04.433380', 'e038abff255869753fa6583746dc9284d7f41559a155a193f2b07f81a4e77265', 'validated', '{"audio_key":"fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6","entity_key":"u_feedback_coaching_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e038abff255869753fa6583746dc9284d7f41559a155a193f2b07f81a4e77265","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_feedback_coaching_02_listen -> audio/generated/de-DE/utterances/fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e607d332-cbc1-525c-8b93-be5b1f82d7b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_feedback_coaching_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dff6af2de4f252c966487b3f42337e82e1f1902b70f9e5b844f32c5192e9d860'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d2e8664-abe6-53fa-9087-3609ffa2d6f2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e607d332-cbc1-525c-8b93-be5b1f82d7b3', 1), 'dff6af2de4f252c966487b3f42337e82e1f1902b70f9e5b844f32c5192e9d860',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6.mp3', 5616, '2026-09-13 10:02:04.433380', 'e038abff255869753fa6583746dc9284d7f41559a155a193f2b07f81a4e77265', 'validated', '{"audio_key":"fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6","entity_key":"ex_feedback_coaching_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e038abff255869753fa6583746dc9284d7f41559a155a193f2b07f81a4e77265","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fb1ca37aaf8b6c6b7c5c18476c71b971c422b56f60033d7d222aab68e70a7db6.mp3"}'
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

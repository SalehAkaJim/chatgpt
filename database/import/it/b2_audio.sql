-- Generated audio link import for it-IT B2
-- Source manifest: audio/manifests/it/B2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_reported_discourse_02:4 -> audio/generated/it-IT/dialogues/02cf8cfe208c3138fb296cb43f4dba42213978525666aa80c09bc49b47bf30dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42183b48-4078-583c-b22d-9a360ea60a8c', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f0e60d85725927897f745b274a7b1119124a9a15e56962e8916031999a1f1a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f481e34-67e0-5756-ac8a-9437b2760efd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42183b48-4078-583c-b22d-9a360ea60a8c', 1), '8f0e60d85725927897f745b274a7b1119124a9a15e56962e8916031999a1f1a6',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/02cf8cfe208c3138fb296cb43f4dba42213978525666aa80c09bc49b47bf30dd.mp3', 3709, '2026-09-14 04:59:02.050626', '5778609f5211a5f276df13e3351440d75fa3f7aac04073aab7d153f1577a8a40', 'validated', '{"audio_key":"02cf8cfe208c3138fb296cb43f4dba42213978525666aa80c09bc49b47bf30dd","entity_key":"d_reported_discourse_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5778609f5211a5f276df13e3351440d75fa3f7aac04073aab7d153f1577a8a40","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/02cf8cfe208c3138fb296cb43f4dba42213978525666aa80c09bc49b47bf30dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_01:3 -> audio/generated/it-IT/dialogues/049e4b8f3de16a50a84f15489827d9b4d274553e7a7941c291bda7608339b3e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('388700ac-ecd2-5da3-8a6d-198c156aa84a', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35a78d9e0f9890090ead94d2b1af6e95c1d6e05e35a8588bdb9d739db600055d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fffc9cfc-0b14-5646-8925-4d40da58eeaa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('388700ac-ecd2-5da3-8a6d-198c156aa84a', 1), '35a78d9e0f9890090ead94d2b1af6e95c1d6e05e35a8588bdb9d739db600055d',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/049e4b8f3de16a50a84f15489827d9b4d274553e7a7941c291bda7608339b3e0.mp3', 1671, '2026-09-14 04:59:01.825708', '75de9c903b261bac1e1bf86c8eef50a9dff3c268ac733bfc99365fdf66027e08', 'validated', '{"audio_key":"049e4b8f3de16a50a84f15489827d9b4d274553e7a7941c291bda7608339b3e0","entity_key":"d_evidence_and_claims_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"75de9c903b261bac1e1bf86c8eef50a9dff3c268ac733bfc99365fdf66027e08","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/049e4b8f3de16a50a84f15489827d9b4d274553e7a7941c291bda7608339b3e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_01:4 -> audio/generated/it-IT/dialogues/0711912e525714e52b1a145040b32f79d39c88e3564de7752835f6f55df0afa0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('143b8404-b343-53aa-a358-8a36cd3b17bf', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa8021b89dff462eaeb9ceeb1159892e53739415cae90ce4fb347f4a4fee63b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('130ecccd-d4b3-596c-bd5b-038e21b84e41', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('143b8404-b343-53aa-a358-8a36cd3b17bf', 1), 'fa8021b89dff462eaeb9ceeb1159892e53739415cae90ce4fb347f4a4fee63b0',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0711912e525714e52b1a145040b32f79d39c88e3564de7752835f6f55df0afa0.mp3', 4075, '2026-09-14 04:59:03.269933', '2688bb5b7a51a5243171cf5bdb0090034727e560b5dda2bdafc7ef759c7babf9', 'validated', '{"audio_key":"0711912e525714e52b1a145040b32f79d39c88e3564de7752835f6f55df0afa0","entity_key":"d_counterfactual_choices_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2688bb5b7a51a5243171cf5bdb0090034727e560b5dda2bdafc7ef759c7babf9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0711912e525714e52b1a145040b32f79d39c88e3564de7752835f6f55df0afa0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_01:1 -> audio/generated/it-IT/dialogues/0c7ffe97a98732b3d5cfd42812f0f4ee16a5bb3ab62e2bde9826f6248a7eb258.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad9afea0-8e4c-573d-819b-bc4d4cb6ae55', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '612507e9c4f641a215ac885e897a7d573d03f45732d1f29f065f4a1542725c35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37624a2d-5184-5407-8370-2fb0e03aa8b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad9afea0-8e4c-573d-819b-bc4d4cb6ae55', 1), '612507e9c4f641a215ac885e897a7d573d03f45732d1f29f065f4a1542725c35',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0c7ffe97a98732b3d5cfd42812f0f4ee16a5bb3ab62e2bde9826f6248a7eb258.mp3', 3108, '2026-09-14 04:59:03.329598', '90aa32a3fdd998d9129b30f8534fca4bf682718595d29b34179786d4e1c8437f', 'validated', '{"audio_key":"0c7ffe97a98732b3d5cfd42812f0f4ee16a5bb3ab62e2bde9826f6248a7eb258","entity_key":"d_concession_and_contrast_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"90aa32a3fdd998d9129b30f8534fca4bf682718595d29b34179786d4e1c8437f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/0c7ffe97a98732b3d5cfd42812f0f4ee16a5bb3ab62e2bde9826f6248a7eb258.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_01:3 -> audio/generated/it-IT/dialogues/10fe37e00b3bb99307b638f8e130ecab526249e9bff1971059f03750895f5397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d552378-11c3-5c5f-bf00-251203a4df4b', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5bd1a1b5033fc37b82d3947e731306b78d9aabe9c4610c19401b1aaa83dc724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3936f20e-8c9d-5d17-bb32-bb864fbced61', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d552378-11c3-5c5f-bf00-251203a4df4b', 1), 'e5bd1a1b5033fc37b82d3947e731306b78d9aabe9c4610c19401b1aaa83dc724',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/10fe37e00b3bb99307b638f8e130ecab526249e9bff1971059f03750895f5397.mp3', 1619, '2026-09-14 04:59:04.502671', 'ab3d46a41759b9e26af7ae396632c28b53dfd291a50071a637ac548a12de7d68', 'validated', '{"audio_key":"10fe37e00b3bb99307b638f8e130ecab526249e9bff1971059f03750895f5397","entity_key":"d_passive_and_impersonal_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab3d46a41759b9e26af7ae396632c28b53dfd291a50071a637ac548a12de7d68","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/10fe37e00b3bb99307b638f8e130ecab526249e9bff1971059f03750895f5397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_01:3 -> audio/generated/it-IT/dialogues/14df91bdf07b4a911d0a03ce5893900112b15a1f08f01d4492759120dee50bb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbadc546-eb46-5316-a220-14757b941046', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3352c32f02cfb46833a1854fbf9a8117a980e02a51064c9a8218316a17d55ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fad85b92-9835-52a2-bc7f-4f803c86ff17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbadc546-eb46-5316-a220-14757b941046', 1), 'd3352c32f02cfb46833a1854fbf9a8117a980e02a51064c9a8218316a17d55ce',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/14df91bdf07b4a911d0a03ce5893900112b15a1f08f01d4492759120dee50bb6.mp3', 1854, '2026-09-14 04:59:04.559765', 'af596deb236288f8ad0583f1e700f7e668b043d6879165311d6ba8de8e144a13', 'validated', '{"audio_key":"14df91bdf07b4a911d0a03ce5893900112b15a1f08f01d4492759120dee50bb6","entity_key":"d_stance_and_subjunctive_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"af596deb236288f8ad0583f1e700f7e668b043d6879165311d6ba8de8e144a13","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/14df91bdf07b4a911d0a03ce5893900112b15a1f08f01d4492759120dee50bb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_01:2 -> audio/generated/it-IT/dialogues/1ab128980a6745ce6cea6f9282a5dc2bfb53843371c5ad4587fcdca008079efe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24ebe577-07cb-5718-9600-f0bc933c0d5d', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29d796dce47bf81088a6a958d2d093a095efb5da6fd6ff8311fa6d1404ce63e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8da27638-d4ed-59b3-a20b-384d45dbf4cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24ebe577-07cb-5718-9600-f0bc933c0d5d', 1), '29d796dce47bf81088a6a958d2d093a095efb5da6fd6ff8311fa6d1404ce63e3',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1ab128980a6745ce6cea6f9282a5dc2bfb53843371c5ad4587fcdca008079efe.mp3', 3291, '2026-09-14 04:59:05.925578', 'f0fac6d90babdbbd5c0d7fda32d2a392cd9ff95931dee352322e783e7ca5f8aa', 'validated', '{"audio_key":"1ab128980a6745ce6cea6f9282a5dc2bfb53843371c5ad4587fcdca008079efe","entity_key":"d_stance_and_subjunctive_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f0fac6d90babdbbd5c0d7fda32d2a392cd9ff95931dee352322e783e7ca5f8aa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/1ab128980a6745ce6cea6f9282a5dc2bfb53843371c5ad4587fcdca008079efe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_01:1 -> audio/generated/it-IT/dialogues/1aeaba895f05af2bcf5bf65e3baedf140a71cf51dfcb9c214ae822cdd5071b29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a31532d-cfd7-50bd-b789-79c25c3be401', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a8b873938ac24e0fc3ac1b341fe5ea8a9af14ebbf870538bf2dd52a90d8a93e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10d58c99-3c5b-537f-9176-df30ee0c6a48', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a31532d-cfd7-50bd-b789-79c25c3be401', 1), '2a8b873938ac24e0fc3ac1b341fe5ea8a9af14ebbf870538bf2dd52a90d8a93e',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1aeaba895f05af2bcf5bf65e3baedf140a71cf51dfcb9c214ae822cdd5071b29.mp3', 3239, '2026-09-14 04:59:05.853790', 'fb9d6966fee9d90516a407f5d41a9378bdcbaa249ec633cd787d5d5cad14d30b', 'validated', '{"audio_key":"1aeaba895f05af2bcf5bf65e3baedf140a71cf51dfcb9c214ae822cdd5071b29","entity_key":"d_counterfactual_choices_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb9d6966fee9d90516a407f5d41a9378bdcbaa249ec633cd787d5d5cad14d30b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/1aeaba895f05af2bcf5bf65e3baedf140a71cf51dfcb9c214ae822cdd5071b29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_02:1 -> audio/generated/it-IT/dialogues/1c1d48fff50a11ef33e203ca290b309eceaec05f5c8ca7831afa09f6dc9dd1a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c1aab65-a951-588c-864f-7b36decf06ed', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27f7d7d00e8bdd5739b32b1a4748ca67aa2b4b4ec80eb28fc3a832406f654ce1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('098a1f8a-482a-5395-acc9-bab908b27f60', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c1aab65-a951-588c-864f-7b36decf06ed', 1), '27f7d7d00e8bdd5739b32b1a4748ca67aa2b4b4ec80eb28fc3a832406f654ce1',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1c1d48fff50a11ef33e203ca290b309eceaec05f5c8ca7831afa09f6dc9dd1a9.mp3', 3526, '2026-09-14 04:59:07.279322', '84a71c5918251db45cf3f499919beb5b7e64706190d498f0b1f7bc0c27a258fc', 'validated', '{"audio_key":"1c1d48fff50a11ef33e203ca290b309eceaec05f5c8ca7831afa09f6dc9dd1a9","entity_key":"d_stance_and_subjunctive_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"84a71c5918251db45cf3f499919beb5b7e64706190d498f0b1f7bc0c27a258fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/1c1d48fff50a11ef33e203ca290b309eceaec05f5c8ca7831afa09f6dc9dd1a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_01:1 -> audio/generated/it-IT/dialogues/1fa9453765dd3ac4effeb98b197bbbf06a5b2a632ea722fc78ea33de9cc4e205.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83350bad-3969-5817-9a32-7f98c5343bea', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b9f779450d5a3a63cec40b52c28b9e52c731ee172fb083eab370e9ab443b530'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0cee325-e20b-523b-bd91-6e8c764515f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83350bad-3969-5817-9a32-7f98c5343bea', 1), '8b9f779450d5a3a63cec40b52c28b9e52c731ee172fb083eab370e9ab443b530',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1fa9453765dd3ac4effeb98b197bbbf06a5b2a632ea722fc78ea33de9cc4e205.mp3', 2690, '2026-09-14 04:59:07.119130', 'd6d95ff8ce220aa34882fdf00a7531fedcddd8d318048c0f390883adb4ba89be', 'validated', '{"audio_key":"1fa9453765dd3ac4effeb98b197bbbf06a5b2a632ea722fc78ea33de9cc4e205","entity_key":"d_register_and_nuance_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"d6d95ff8ce220aa34882fdf00a7531fedcddd8d318048c0f390883adb4ba89be","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/1fa9453765dd3ac4effeb98b197bbbf06a5b2a632ea722fc78ea33de9cc4e205.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_01:2 -> audio/generated/it-IT/dialogues/2017906028d2aed83fbfb82027928446171b8a44987a03dcf21b0c5c7f35df61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d209a4a9-9ed2-5eb8-a392-8f3d9f8778ab', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe1ad565139922e7699c82fa19cf5d485219d5d2d2e576540261e00c4798c324'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3adc9659-eb5a-536f-9eda-513b1eac834f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d209a4a9-9ed2-5eb8-a392-8f3d9f8778ab', 1), 'fe1ad565139922e7699c82fa19cf5d485219d5d2d2e576540261e00c4798c324',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2017906028d2aed83fbfb82027928446171b8a44987a03dcf21b0c5c7f35df61.mp3', 2873, '2026-09-14 04:59:08.351726', '28de0c0c10cf96eccdf841da2d257b4aef17994f71ee3b10b0c501f0556bffd6', 'validated', '{"audio_key":"2017906028d2aed83fbfb82027928446171b8a44987a03dcf21b0c5c7f35df61","entity_key":"d_evidence_and_claims_01:2","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"28de0c0c10cf96eccdf841da2d257b4aef17994f71ee3b10b0c501f0556bffd6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2017906028d2aed83fbfb82027928446171b8a44987a03dcf21b0c5c7f35df61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_01:4 -> audio/generated/it-IT/dialogues/2172174fc875ba296c9b87c409af43baa99c9d7c037e1d4ed0bc4c55564e72a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a843a88-5125-5ba1-bf39-a09c8f032398', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd60f9c6496d35326652a729d84b415cb0b64d02445f73709a662a1db4cf9876'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bde40b7-706f-5f78-97ff-b326bb9f952e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a843a88-5125-5ba1-bf39-a09c8f032398', 1), 'cd60f9c6496d35326652a729d84b415cb0b64d02445f73709a662a1db4cf9876',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2172174fc875ba296c9b87c409af43baa99c9d7c037e1d4ed0bc4c55564e72a6.mp3', 2690, '2026-09-14 04:59:08.452907', 'b4c3ee161e9a22411bd89ab7608ab49206e62edf8d6222d001d3114bcf558283', 'validated', '{"audio_key":"2172174fc875ba296c9b87c409af43baa99c9d7c037e1d4ed0bc4c55564e72a6","entity_key":"d_evidence_and_claims_01:4","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"b4c3ee161e9a22411bd89ab7608ab49206e62edf8d6222d001d3114bcf558283","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2172174fc875ba296c9b87c409af43baa99c9d7c037e1d4ed0bc4c55564e72a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_02:3 -> audio/generated/it-IT/dialogues/22ec59add78caab7f4ea0af803e536839488ed67ae199efcada6d8143ca6a5ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4de4e384-576b-5348-a529-a795539cd469', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b3fcc6a5fdb0197e0d4a75e19205a55d82886c039b984f5619d4ac1ec462cd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('342a8b3f-d65c-5ec9-a871-0994d4cadc63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4de4e384-576b-5348-a529-a795539cd469', 1), '8b3fcc6a5fdb0197e0d4a75e19205a55d82886c039b984f5619d4ac1ec462cd6',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/22ec59add78caab7f4ea0af803e536839488ed67ae199efcada6d8143ca6a5ef.mp3', 2533, '2026-09-14 04:59:09.718629', 'fd30c404fd555742c131622b63a09f6a5bde20d1c8c0a12d970d9b6805223e06', 'validated', '{"audio_key":"22ec59add78caab7f4ea0af803e536839488ed67ae199efcada6d8143ca6a5ef","entity_key":"d_passive_and_impersonal_02:3","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd30c404fd555742c131622b63a09f6a5bde20d1c8c0a12d970d9b6805223e06","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/22ec59add78caab7f4ea0af803e536839488ed67ae199efcada6d8143ca6a5ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_01:4 -> audio/generated/it-IT/dialogues/2964e5838dfe994337b7da08d37e4b7641c340f3b456c343dc32173c3eaa0071.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a952606-ce39-5825-8937-b6a40c2c341d', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '766d43fd64f1142fc062cbfeb3a6f0e63a913e1cede8ff683067807faac54587'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfd14a9d-650e-5435-8e15-69ad2b513025', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a952606-ce39-5825-8937-b6a40c2c341d', 1), '766d43fd64f1142fc062cbfeb3a6f0e63a913e1cede8ff683067807faac54587',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2964e5838dfe994337b7da08d37e4b7641c340f3b456c343dc32173c3eaa0071.mp3', 3239, '2026-09-14 04:59:09.804492', '8ea8d8df88618ae0f31757c673812c418e6dfba0634b91340c50e53c4d3f0730', 'validated', '{"audio_key":"2964e5838dfe994337b7da08d37e4b7641c340f3b456c343dc32173c3eaa0071","entity_key":"d_passive_and_impersonal_01:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8ea8d8df88618ae0f31757c673812c418e6dfba0634b91340c50e53c4d3f0730","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/2964e5838dfe994337b7da08d37e4b7641c340f3b456c343dc32173c3eaa0071.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_02:1 -> audio/generated/it-IT/dialogues/2aa7fd4448b6a03f9879202355c0edb4724f393bef11cfe9e970d35c56b5b381.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfe954b2-47fa-5828-8fd8-b349dd9f896e', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc45c16b9f1b095b4896453e106c4e4cacd97f69421fc41972ebeed8689894df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a52d8bd-3647-52fb-bfc3-815c4b56343a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfe954b2-47fa-5828-8fd8-b349dd9f896e', 1), 'dc45c16b9f1b095b4896453e106c4e4cacd97f69421fc41972ebeed8689894df',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2aa7fd4448b6a03f9879202355c0edb4724f393bef11cfe9e970d35c56b5b381.mp3', 3996, '2026-09-14 04:59:11.139082', '877219d7b983e8e1c09f5fd83dd1d9e34c0473bb3f853534538f3268b5c32742', 'validated', '{"audio_key":"2aa7fd4448b6a03f9879202355c0edb4724f393bef11cfe9e970d35c56b5b381","entity_key":"d_concession_and_contrast_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"877219d7b983e8e1c09f5fd83dd1d9e34c0473bb3f853534538f3268b5c32742","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2aa7fd4448b6a03f9879202355c0edb4724f393bef11cfe9e970d35c56b5b381.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_02:4 -> audio/generated/it-IT/dialogues/37653cf06d5e466ce07a51a6501bcd4f199d73ab3a73d9b18215c6e918552584.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('254846b0-007c-5070-bbfa-b3a5ed9b97eb', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4676e38f0e9f640e29395548e6c4243589db500b10638d1e06c78887c9b543f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e7b450e-6736-5cb3-9ac7-f22d1248cbc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('254846b0-007c-5070-bbfa-b3a5ed9b97eb', 1), '4676e38f0e9f640e29395548e6c4243589db500b10638d1e06c78887c9b543f2',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/37653cf06d5e466ce07a51a6501bcd4f199d73ab3a73d9b18215c6e918552584.mp3', 2533, '2026-09-14 04:59:10.972427', 'a09bbfce000b58b61d79fbefc207bc6080a611a9009b80232c128284ca602060', 'validated', '{"audio_key":"37653cf06d5e466ce07a51a6501bcd4f199d73ab3a73d9b18215c6e918552584","entity_key":"d_cohesive_argument_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a09bbfce000b58b61d79fbefc207bc6080a611a9009b80232c128284ca602060","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/37653cf06d5e466ce07a51a6501bcd4f199d73ab3a73d9b18215c6e918552584.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:3 -> audio/generated/it-IT/dialogues/3850e67fc235b68812d3ce07f8abdebb85d9e0d6b15bd697f6368270daf87e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2117076e-c6a4-5dc0-aa32-6fd3a33e281e', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2f1a6d1584e6a287f8e53b8abe8cb7b4e9fe6d540b546d8e396181a02a4258d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64f38c5e-3c10-5845-817e-fea0d81771a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2117076e-c6a4-5dc0-aa32-6fd3a33e281e', 1), 'c2f1a6d1584e6a287f8e53b8abe8cb7b4e9fe6d540b546d8e396181a02a4258d',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3850e67fc235b68812d3ce07f8abdebb85d9e0d6b15bd697f6368270daf87e37.mp3', 4911, '2026-09-14 04:59:12.534710', 'efde07222dfc64f3b01574d7055f83ef0b0a34a6ab0681c39c23ba4204a389f3', 'validated', '{"audio_key":"3850e67fc235b68812d3ce07f8abdebb85d9e0d6b15bd697f6368270daf87e37","entity_key":"d_formal_negotiation_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"efde07222dfc64f3b01574d7055f83ef0b0a34a6ab0681c39c23ba4204a389f3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/3850e67fc235b68812d3ce07f8abdebb85d9e0d6b15bd697f6368270daf87e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_02:4 -> audio/generated/it-IT/dialogues/3b8873c4ac44411281cd9fc4a9b525f19ab5d2428202530e225559112e1e5cc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bb9c734-3f1c-5a7e-afa7-631c90512843', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '563a2fb182637f7bf92b99efd8515e37132caa002b36816e338e487536ec375a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d00c2c22-80e7-502c-9fd0-c58bede487f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bb9c734-3f1c-5a7e-afa7-631c90512843', 1), '563a2fb182637f7bf92b99efd8515e37132caa002b36816e338e487536ec375a',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3b8873c4ac44411281cd9fc4a9b525f19ab5d2428202530e225559112e1e5cc4.mp3', 2115, '2026-09-14 04:59:12.330316', 'be0b2537b7ec13c4d6a55be77c6ab6419a63070bf1621a62bae6e98e0db589f1', 'validated', '{"audio_key":"3b8873c4ac44411281cd9fc4a9b525f19ab5d2428202530e225559112e1e5cc4","entity_key":"d_passive_and_impersonal_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be0b2537b7ec13c4d6a55be77c6ab6419a63070bf1621a62bae6e98e0db589f1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/3b8873c4ac44411281cd9fc4a9b525f19ab5d2428202530e225559112e1e5cc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_02:3 -> audio/generated/it-IT/dialogues/439446ae979d45eb727af106509c8175610ec66c02783133ea1b63d41c45886e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f37d483-0811-5a3f-812a-87f62334814d', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c224e751fc9296224410b5cd75d71c3c9e16f7ca140687208136e2a5383328f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0beb8a7-9dc2-5ebf-a255-7db2ec62b335', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f37d483-0811-5a3f-812a-87f62334814d', 1), '1c224e751fc9296224410b5cd75d71c3c9e16f7ca140687208136e2a5383328f',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/439446ae979d45eb727af106509c8175610ec66c02783133ea1b63d41c45886e.mp3', 1436, '2026-09-14 04:59:13.377925', 'a2d79b290ffc5353736c8727939af27c165a158df505ac169835a90cf07ad6e9', 'validated', '{"audio_key":"439446ae979d45eb727af106509c8175610ec66c02783133ea1b63d41c45886e","entity_key":"d_cohesive_argument_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a2d79b290ffc5353736c8727939af27c165a158df505ac169835a90cf07ad6e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/439446ae979d45eb727af106509c8175610ec66c02783133ea1b63d41c45886e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_01:2 -> audio/generated/it-IT/dialogues/474d30f4df0b1f706ba31246656e0c8789b11d2f4b2f0697e7e7bfcb273723df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd440a23-6fba-560d-bcc0-6f56fe00fe35', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b68d09b3e1f8ce86c31364e413f2371a863f40a86c743262985619d4db881fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73b488e4-4716-582a-bf35-96a08626183d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd440a23-6fba-560d-bcc0-6f56fe00fe35', 1), '8b68d09b3e1f8ce86c31364e413f2371a863f40a86c743262985619d4db881fb',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/474d30f4df0b1f706ba31246656e0c8789b11d2f4b2f0697e7e7bfcb273723df.mp3', 3004, '2026-09-14 04:59:13.789291', '322c295bb29e661fba58932ddbf8bcb3e11ebf990639fba98cb1673776abcb10', 'validated', '{"audio_key":"474d30f4df0b1f706ba31246656e0c8789b11d2f4b2f0697e7e7bfcb273723df","entity_key":"d_concession_and_contrast_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"322c295bb29e661fba58932ddbf8bcb3e11ebf990639fba98cb1673776abcb10","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/474d30f4df0b1f706ba31246656e0c8789b11d2f4b2f0697e7e7bfcb273723df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_01:3 -> audio/generated/it-IT/dialogues/4781a228549cc76a56691421a4e3c3a04d9e514b162e29780f4e93caddff0453.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6e3b08e-c1cd-5884-8014-74974866bb21', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0638ed4f714eaa051d7100f2537d277213b47c672a8a189417e2588da3dc11b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc82234e-2096-5bcc-bdcf-17a3fd41834f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6e3b08e-c1cd-5884-8014-74974866bb21', 1), '0638ed4f714eaa051d7100f2537d277213b47c672a8a189417e2588da3dc11b4',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4781a228549cc76a56691421a4e3c3a04d9e514b162e29780f4e93caddff0453.mp3', 1384, '2026-09-14 04:59:14.498897', '50ebad3af09f397f1c7403a760e950acf95513cf3bed2ff4a36760ef1ccda4cb', 'validated', '{"audio_key":"4781a228549cc76a56691421a4e3c3a04d9e514b162e29780f4e93caddff0453","entity_key":"d_register_and_nuance_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"50ebad3af09f397f1c7403a760e950acf95513cf3bed2ff4a36760ef1ccda4cb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/4781a228549cc76a56691421a4e3c3a04d9e514b162e29780f4e93caddff0453.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_02:2 -> audio/generated/it-IT/dialogues/4906107ca654f70f8f53944ecff4fd4f9ad3384dd70bab4eed59532c1b75ac04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16c508cf-7493-5206-a7fb-29601bb111fb', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '331ac4c8458a108af73b8b2adfc74659b148fb91231eac1b410dfb79d2699dcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a30977f-ae80-5d55-9df4-f326c34ba670', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16c508cf-7493-5206-a7fb-29601bb111fb', 1), '331ac4c8458a108af73b8b2adfc74659b148fb91231eac1b410dfb79d2699dcc',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4906107ca654f70f8f53944ecff4fd4f9ad3384dd70bab4eed59532c1b75ac04.mp3', 3787, '2026-09-14 04:59:15.133489', 'e39106f4119c8331364af0a855bcb4c9771fb25e16da09bcacafcba16c284a84', 'validated', '{"audio_key":"4906107ca654f70f8f53944ecff4fd4f9ad3384dd70bab4eed59532c1b75ac04","entity_key":"d_counterfactual_choices_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e39106f4119c8331364af0a855bcb4c9771fb25e16da09bcacafcba16c284a84","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/4906107ca654f70f8f53944ecff4fd4f9ad3384dd70bab4eed59532c1b75ac04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_02:2 -> audio/generated/it-IT/dialogues/4abc56c59eac49ad476fa74ffc80b2855753a35921ece4cae61d14fb6528cee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ecf7919a-6170-5474-86f5-12a3b5f8f5a6', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61571c6bb9534839b815e37d3696add8f92b911a15062abd460146d0b998559'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('742461c5-8822-5538-9dbd-e7c92f228048', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ecf7919a-6170-5474-86f5-12a3b5f8f5a6', 1), 'c61571c6bb9534839b815e37d3696add8f92b911a15062abd460146d0b998559',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4abc56c59eac49ad476fa74ffc80b2855753a35921ece4cae61d14fb6528cee3.mp3', 4493, '2026-09-14 04:59:15.924393', '7c18bf59d12ef395b1f5eeae5efe9feb9ad95a5b0ed376d55a363bda245f215d', 'validated', '{"audio_key":"4abc56c59eac49ad476fa74ffc80b2855753a35921ece4cae61d14fb6528cee3","entity_key":"d_reported_discourse_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c18bf59d12ef395b1f5eeae5efe9feb9ad95a5b0ed376d55a363bda245f215d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/4abc56c59eac49ad476fa74ffc80b2855753a35921ece4cae61d14fb6528cee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_01:3 -> audio/generated/it-IT/dialogues/4bf42fb485d859d6742074c5a2baeca32b035bff40a2910f546ffdbdc1c311a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8348e15c-69e4-54f0-9d8c-664b374b3a5a', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df5daf1b90bc9219e2f56f43b5c7e03ddc6fde7c3aec85954ab368cf390d899'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0222d80c-511d-5704-b98c-f7bb9b000ae0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8348e15c-69e4-54f0-9d8c-664b374b3a5a', 1), '8df5daf1b90bc9219e2f56f43b5c7e03ddc6fde7c3aec85954ab368cf390d899',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4bf42fb485d859d6742074c5a2baeca32b035bff40a2910f546ffdbdc1c311a7.mp3', 1619, '2026-09-14 04:59:16.169724', '12bf3da9850e54d48fff3d552f37c1537ae81bcfe2c2a25233a549e1d7aa7994', 'validated', '{"audio_key":"4bf42fb485d859d6742074c5a2baeca32b035bff40a2910f546ffdbdc1c311a7","entity_key":"d_reported_discourse_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12bf3da9850e54d48fff3d552f37c1537ae81bcfe2c2a25233a549e1d7aa7994","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/4bf42fb485d859d6742074c5a2baeca32b035bff40a2910f546ffdbdc1c311a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_01:4 -> audio/generated/it-IT/dialogues/50a1b66a5b718a126b6e0fe570f09615e47d05ebe2037c4e28f70706bb27129a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d314179b-9646-5d6a-85c4-95e8aac341e3', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fdbb155db70b0754a040031a7e73308af8b952907ea1569ca64866a1f067cee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8aec6213-6c76-5c1c-b706-4bf1f2ac3f99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d314179b-9646-5d6a-85c4-95e8aac341e3', 1), '1fdbb155db70b0754a040031a7e73308af8b952907ea1569ca64866a1f067cee',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/50a1b66a5b718a126b6e0fe570f09615e47d05ebe2037c4e28f70706bb27129a.mp3', 2455, '2026-09-14 04:59:17.187950', 'e3789aa00c1a25276d4458336207320eae92cb95d93546720a2f8c5a0f8fc09a', 'validated', '{"audio_key":"50a1b66a5b718a126b6e0fe570f09615e47d05ebe2037c4e28f70706bb27129a","entity_key":"d_stance_and_subjunctive_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e3789aa00c1a25276d4458336207320eae92cb95d93546720a2f8c5a0f8fc09a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/50a1b66a5b718a126b6e0fe570f09615e47d05ebe2037c4e28f70706bb27129a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_02:2 -> audio/generated/it-IT/dialogues/53ae6069a1de7bcfe9766b97decbdb25606308666fdfa578b6dd819531341ef5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8990b4b5-f270-5355-9495-08079d4e5222', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd6249f29aa480de80b2c8580e30afbe8c1ca353ec8e23c0c8c4b260eda42a8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac7ddf2a-e59f-5858-a5b4-c18e0988018a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8990b4b5-f270-5355-9495-08079d4e5222', 1), 'fd6249f29aa480de80b2c8580e30afbe8c1ca353ec8e23c0c8c4b260eda42a8f',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/53ae6069a1de7bcfe9766b97decbdb25606308666fdfa578b6dd819531341ef5.mp3', 2638, '2026-09-14 04:59:17.446275', 'ef70fabc662a83583e6cedbbd416eb90985d65f86a8fe4de573db78addbb04ba', 'validated', '{"audio_key":"53ae6069a1de7bcfe9766b97decbdb25606308666fdfa578b6dd819531341ef5","entity_key":"d_evidence_and_claims_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ef70fabc662a83583e6cedbbd416eb90985d65f86a8fe4de573db78addbb04ba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/53ae6069a1de7bcfe9766b97decbdb25606308666fdfa578b6dd819531341ef5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_01:4 -> audio/generated/it-IT/dialogues/540fc3324a14aaf248f5917c1da0ec0ca34bb770013f8ffdace9a2e29a5193c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d6e8c9c-97b5-557b-a804-0b5216781d70', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92907af35357a8d4fff5962c150431b4142b16747ed4f831db69d0bb16fa69a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16c8685c-59c9-5d81-a71f-70e8070ba464', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d6e8c9c-97b5-557b-a804-0b5216781d70', 1), '92907af35357a8d4fff5962c150431b4142b16747ed4f831db69d0bb16fa69a0',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/540fc3324a14aaf248f5917c1da0ec0ca34bb770013f8ffdace9a2e29a5193c5.mp3', 4075, '2026-09-14 04:59:18.670838', 'ae5daf570fa34f1585b3b42c5e0ca02c9357520992eb70f771878ae123f31c2d', 'validated', '{"audio_key":"540fc3324a14aaf248f5917c1da0ec0ca34bb770013f8ffdace9a2e29a5193c5","entity_key":"d_b2_community_debate_capstone_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae5daf570fa34f1585b3b42c5e0ca02c9357520992eb70f771878ae123f31c2d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/540fc3324a14aaf248f5917c1da0ec0ca34bb770013f8ffdace9a2e29a5193c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_02:1 -> audio/generated/it-IT/dialogues/5627da90c201cc618e8802a76bcc7fc26c9708c7bf7e582fc834d7226913c7a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72af1907-7eba-5d68-a6e7-6d5a6159567e', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '330278ddaa2656013cfcd3a893752957d2c4514b4327dd08d0650d0080121d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b897d06-30b3-574b-9fd0-339e05350a4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72af1907-7eba-5d68-a6e7-6d5a6159567e', 1), '330278ddaa2656013cfcd3a893752957d2c4514b4327dd08d0650d0080121d27',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5627da90c201cc618e8802a76bcc7fc26c9708c7bf7e582fc834d7226913c7a4.mp3', 2742, '2026-09-14 04:59:18.721881', '37321575ba95e34e805a133e4b672f851cb6312cfd9ed6de7a5af5bb65ead80d', 'validated', '{"audio_key":"5627da90c201cc618e8802a76bcc7fc26c9708c7bf7e582fc834d7226913c7a4","entity_key":"d_counterfactual_choices_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"37321575ba95e34e805a133e4b672f851cb6312cfd9ed6de7a5af5bb65ead80d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/5627da90c201cc618e8802a76bcc7fc26c9708c7bf7e582fc834d7226913c7a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_02:4 -> audio/generated/it-IT/dialogues/58af0fee34baee87e4960682fd7ffd340ca20e11059efb55ed389fdafcbd457f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac4945f4-35e0-5c23-a83e-6f989d3db20b', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '221f534a84acddbb65b38708f4016ea24e9f05cb3fd5261915da63cb4a06b41f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd6dacd-4313-51d4-a4d2-6b84dbaf6a50', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac4945f4-35e0-5c23-a83e-6f989d3db20b', 1), '221f534a84acddbb65b38708f4016ea24e9f05cb3fd5261915da63cb4a06b41f',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/58af0fee34baee87e4960682fd7ffd340ca20e11059efb55ed389fdafcbd457f.mp3', 1802, '2026-09-14 04:59:19.771692', 'a2b0a49f278b029a8d2f9d0d44abf69bfc950244a0601e3de649905b87501341', 'validated', '{"audio_key":"58af0fee34baee87e4960682fd7ffd340ca20e11059efb55ed389fdafcbd457f","entity_key":"d_register_and_nuance_02:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a2b0a49f278b029a8d2f9d0d44abf69bfc950244a0601e3de649905b87501341","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/58af0fee34baee87e4960682fd7ffd340ca20e11059efb55ed389fdafcbd457f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_01:3 -> audio/generated/it-IT/dialogues/5c5d3c02a1528effdccbd873ae381b7ff63431d8d1ad8819540b7820605326b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef5aa5b2-b487-5024-a7a9-8c7b9a744d4c', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '130d2904b0c6c9b15ea25d6a6df381d5f1a64ffe2a7d7a43f6c4c672ea418491'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09b6a2d3-0b2a-5dba-8d94-fa51feaf055c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef5aa5b2-b487-5024-a7a9-8c7b9a744d4c', 1), '130d2904b0c6c9b15ea25d6a6df381d5f1a64ffe2a7d7a43f6c4c672ea418491',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5c5d3c02a1528effdccbd873ae381b7ff63431d8d1ad8819540b7820605326b7.mp3', 1332, '2026-09-14 04:59:19.781450', 'bb23595afe1caf8019d0e509e9cbcef6edfcafa393f41b35cd82762fed51af73', 'validated', '{"audio_key":"5c5d3c02a1528effdccbd873ae381b7ff63431d8d1ad8819540b7820605326b7","entity_key":"d_cohesive_argument_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"bb23595afe1caf8019d0e509e9cbcef6edfcafa393f41b35cd82762fed51af73","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/5c5d3c02a1528effdccbd873ae381b7ff63431d8d1ad8819540b7820605326b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_02:4 -> audio/generated/it-IT/dialogues/5fcdec5b0ce5818a333275478cb1623e7d1b98c804afc4924d9028f387efbb63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('644fee8d-da22-55a1-9596-f6351089729f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3321671304a35bec680fa7734040d2bf301c4f16792de31237f774bb87181151'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06bff9f5-d73a-579b-968a-15380e90a173', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('644fee8d-da22-55a1-9596-f6351089729f', 1), '3321671304a35bec680fa7734040d2bf301c4f16792de31237f774bb87181151',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5fcdec5b0ce5818a333275478cb1623e7d1b98c804afc4924d9028f387efbb63.mp3', 3160, '2026-09-14 04:59:21.095647', '0ff8d5031b87a45f814ca91ab7e8ac3c232206b2ef453cbfd0664b20be3b18d9', 'validated', '{"audio_key":"5fcdec5b0ce5818a333275478cb1623e7d1b98c804afc4924d9028f387efbb63","entity_key":"d_concession_and_contrast_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0ff8d5031b87a45f814ca91ab7e8ac3c232206b2ef453cbfd0664b20be3b18d9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/5fcdec5b0ce5818a333275478cb1623e7d1b98c804afc4924d9028f387efbb63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_01:2 -> audio/generated/it-IT/dialogues/611e1a23ac9b822130136f25135073452d56066a2fefd6cfda72701ec75f2314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eddbd954-9343-5cdb-b64b-652d8e6b7f32', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd903d12fbb173d0217aa2c7fa972e12cb0f2685298aca78af600f3847f5a1cbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('458068ab-d248-5fba-998e-040f7198f460', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eddbd954-9343-5cdb-b64b-652d8e6b7f32', 1), 'd903d12fbb173d0217aa2c7fa972e12cb0f2685298aca78af600f3847f5a1cbb',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/611e1a23ac9b822130136f25135073452d56066a2fefd6cfda72701ec75f2314.mp3', 2351, '2026-09-14 04:59:20.954691', 'bbc880589e7b02f630f80c599515500078b4398bd4c24caf70bca465e85c923c', 'validated', '{"audio_key":"611e1a23ac9b822130136f25135073452d56066a2fefd6cfda72701ec75f2314","entity_key":"d_reported_discourse_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bbc880589e7b02f630f80c599515500078b4398bd4c24caf70bca465e85c923c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/611e1a23ac9b822130136f25135073452d56066a2fefd6cfda72701ec75f2314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_02:1 -> audio/generated/it-IT/dialogues/6253bad577a1d26cfb1d7b6e9ee7a94cacec53e242527ae9a44ab220ade9d03f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2094b68a-0f4c-521f-ba5a-5eee7153933b', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63dd766d6076507419aa5fbd5d2bbe958fa9dad4262585c201babbeb1b6a5c5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('586b784f-8aee-59ab-b79c-8564decee4a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2094b68a-0f4c-521f-ba5a-5eee7153933b', 1), '63dd766d6076507419aa5fbd5d2bbe958fa9dad4262585c201babbeb1b6a5c5a',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6253bad577a1d26cfb1d7b6e9ee7a94cacec53e242527ae9a44ab220ade9d03f.mp3', 2638, '2026-09-14 04:59:22.107704', '577a1eddd58b59a1b98c0a1153b0d55abbb95d5a27bab53b9586c973919ef144', 'validated', '{"audio_key":"6253bad577a1d26cfb1d7b6e9ee7a94cacec53e242527ae9a44ab220ade9d03f","entity_key":"d_reported_discourse_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"577a1eddd58b59a1b98c0a1153b0d55abbb95d5a27bab53b9586c973919ef144","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/6253bad577a1d26cfb1d7b6e9ee7a94cacec53e242527ae9a44ab220ade9d03f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:1 -> audio/generated/it-IT/dialogues/6778aa23fd62c77b5c1194623aa27521e660c34300395e8e0c7bcf39cdd25d5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c9c922d-c24b-526b-b58f-707aaf9bb3b7', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f48e22a8e0e82e34d6ece8fe8906aadd7d6bb96de0de0485a1fa04d48effcbde'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cde208f-ffbc-5b91-8902-6487b8dc2b05', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c9c922d-c24b-526b-b58f-707aaf9bb3b7', 1), 'f48e22a8e0e82e34d6ece8fe8906aadd7d6bb96de0de0485a1fa04d48effcbde',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6778aa23fd62c77b5c1194623aa27521e660c34300395e8e0c7bcf39cdd25d5b.mp3', 4127, '2026-09-14 04:59:22.504047', 'fc7c7ac0c512aaad29d54db070aa2e051718e3d67dcc1cf7902d3bbd00a03ad7', 'validated', '{"audio_key":"6778aa23fd62c77b5c1194623aa27521e660c34300395e8e0c7bcf39cdd25d5b","entity_key":"d_formal_negotiation_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"fc7c7ac0c512aaad29d54db070aa2e051718e3d67dcc1cf7902d3bbd00a03ad7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/6778aa23fd62c77b5c1194623aa27521e660c34300395e8e0c7bcf39cdd25d5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_01:2 -> audio/generated/it-IT/dialogues/73560b91c6d72cb6c99e74815876195ad3bcf8e98e8bd49abbbd156851f93423.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('965bc5f8-4f31-5e28-bc70-ab3a40156582', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ba8ae710792560756b9e2ebedb3d5d585ee8bd7dad163eaba18791c1d1b1251'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0400e762-e6e0-5e97-931e-f57f66165ff2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('965bc5f8-4f31-5e28-bc70-ab3a40156582', 1), '5ba8ae710792560756b9e2ebedb3d5d585ee8bd7dad163eaba18791c1d1b1251',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/73560b91c6d72cb6c99e74815876195ad3bcf8e98e8bd49abbbd156851f93423.mp3', 3787, '2026-09-14 04:59:23.431387', '8c486ee1e96def196d91ac3cbc014109662b6f2b02b2bb09f0fb59dc4524fea9', 'validated', '{"audio_key":"73560b91c6d72cb6c99e74815876195ad3bcf8e98e8bd49abbbd156851f93423","entity_key":"d_cohesive_argument_01:2","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c486ee1e96def196d91ac3cbc014109662b6f2b02b2bb09f0fb59dc4524fea9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/73560b91c6d72cb6c99e74815876195ad3bcf8e98e8bd49abbbd156851f93423.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_02:2 -> audio/generated/it-IT/dialogues/735ce30bc701cb04cd2f3f210009e2e0faadd8182dafc302c306bc0048177855.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1dc4c529-e27c-5937-afa1-e9f5636634f9', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82d7b513fc370c0899bb31bedb235efa38e8106b57ea6dbbe3a30cfc7826f236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae47283e-3ee9-50cb-b074-9f53c4891720', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1dc4c529-e27c-5937-afa1-e9f5636634f9', 1), '82d7b513fc370c0899bb31bedb235efa38e8106b57ea6dbbe3a30cfc7826f236',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/735ce30bc701cb04cd2f3f210009e2e0faadd8182dafc302c306bc0048177855.mp3', 2690, '2026-09-14 04:59:23.711853', '2fbd2cd1ee6644d4ebb288e1b1dc1ec28d78019e442aaa3dfe77831ce8c2531d', 'validated', '{"audio_key":"735ce30bc701cb04cd2f3f210009e2e0faadd8182dafc302c306bc0048177855","entity_key":"d_stance_and_subjunctive_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2fbd2cd1ee6644d4ebb288e1b1dc1ec28d78019e442aaa3dfe77831ce8c2531d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/735ce30bc701cb04cd2f3f210009e2e0faadd8182dafc302c306bc0048177855.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_01:3 -> audio/generated/it-IT/dialogues/73667a23bbeaf5529c84fc119741a0e6400d73a153a898a0ea5b601085109856.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d431b8f2-cdc7-514c-a531-e38f345ed8cd', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5afa5d8dadd1248c82376a605a5d0a2b0d0a25915bf44bbcb5d3b6cbb2753d92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb1ce2ef-62b3-5d16-a246-78ff0715b6e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d431b8f2-cdc7-514c-a531-e38f345ed8cd', 1), '5afa5d8dadd1248c82376a605a5d0a2b0d0a25915bf44bbcb5d3b6cbb2753d92',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/73667a23bbeaf5529c84fc119741a0e6400d73a153a898a0ea5b601085109856.mp3', 1854, '2026-09-14 04:59:24.605112', '0fbfbbff50eed6b8c67ed23668288306ade201d3c8d5b2da5c6d3fdf723c28c3', 'validated', '{"audio_key":"73667a23bbeaf5529c84fc119741a0e6400d73a153a898a0ea5b601085109856","entity_key":"d_counterfactual_choices_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0fbfbbff50eed6b8c67ed23668288306ade201d3c8d5b2da5c6d3fdf723c28c3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/73667a23bbeaf5529c84fc119741a0e6400d73a153a898a0ea5b601085109856.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_01:4 -> audio/generated/it-IT/dialogues/74455bd539e2210c1ac2377eef6ec1d85bf43cc6d9bd01a297497a24ae55bf33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b6a8e7b9-081e-55de-82b7-de4bc4591717', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3638656527a4c4eb678a99f7ade198b65f5f33bd7ac26faf839b9511d68cf79d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96c327df-6467-5d65-b104-acd0622464da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b6a8e7b9-081e-55de-82b7-de4bc4591717', 1), '3638656527a4c4eb678a99f7ade198b65f5f33bd7ac26faf839b9511d68cf79d',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/74455bd539e2210c1ac2377eef6ec1d85bf43cc6d9bd01a297497a24ae55bf33.mp3', 3422, '2026-09-14 04:59:25.096028', 'a02833061734808b5415219f785120071a2b31f518a74ae3a1a96beb622ffe39', 'validated', '{"audio_key":"74455bd539e2210c1ac2377eef6ec1d85bf43cc6d9bd01a297497a24ae55bf33","entity_key":"d_register_and_nuance_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a02833061734808b5415219f785120071a2b31f518a74ae3a1a96beb622ffe39","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/74455bd539e2210c1ac2377eef6ec1d85bf43cc6d9bd01a297497a24ae55bf33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:4 -> audio/generated/it-IT/dialogues/77ae109b27454d19ecf11c15ada7c89fd798c80b3a2f02000bd3a888a8f80b5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a2d5adc-6db9-531c-8535-847d7782d24e', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f8b503a0dcf2584dd31dda2cebf3da307564705c471f6aee0835d881083b5db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a4f8388-97cb-5b93-88f1-d1459a465d0c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a2d5adc-6db9-531c-8535-847d7782d24e', 1), '2f8b503a0dcf2584dd31dda2cebf3da307564705c471f6aee0835d881083b5db',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/77ae109b27454d19ecf11c15ada7c89fd798c80b3a2f02000bd3a888a8f80b5d.mp3', 3578, '2026-09-14 04:59:25.930592', '09b7456ec2bf5a2c63cd4b54ed940e349a8ba8e3dabf49d6b58e1764ac526caf', 'validated', '{"audio_key":"77ae109b27454d19ecf11c15ada7c89fd798c80b3a2f02000bd3a888a8f80b5d","entity_key":"d_formal_negotiation_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09b7456ec2bf5a2c63cd4b54ed940e349a8ba8e3dabf49d6b58e1764ac526caf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/77ae109b27454d19ecf11c15ada7c89fd798c80b3a2f02000bd3a888a8f80b5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_01:1 -> audio/generated/it-IT/dialogues/79167e98b13cafdd41005ffccb0db0925f53d756a08737453060584b0911cee4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1988b1d1-153a-586d-ab2d-b2e2ecdfd97b', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e1d33d7e65e22b19963dbfdf6d2fc3630b6cadb333deac6888d768570186deb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94a26d1b-73b7-55bd-9a03-e0acde9d7f7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1988b1d1-153a-586d-ab2d-b2e2ecdfd97b', 1), '8e1d33d7e65e22b19963dbfdf6d2fc3630b6cadb333deac6888d768570186deb',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/79167e98b13cafdd41005ffccb0db0925f53d756a08737453060584b0911cee4.mp3', 2533, '2026-09-14 04:59:26.230684', 'bf03b433ba171006bc41db4ce37c1484326fb767b72d4f177bb7bcb3c2c75f64', 'validated', '{"audio_key":"79167e98b13cafdd41005ffccb0db0925f53d756a08737453060584b0911cee4","entity_key":"d_evidence_and_claims_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"bf03b433ba171006bc41db4ce37c1484326fb767b72d4f177bb7bcb3c2c75f64","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/79167e98b13cafdd41005ffccb0db0925f53d756a08737453060584b0911cee4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_01:4 -> audio/generated/it-IT/dialogues/7e9ba8c83fb8b4190bb0e3bd5ec35874d81159908f481f9f780bd62de5f8dc79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cee58630-4e5e-571a-9367-11bb3815dbe7', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea1eb3d3a87e0111a294129e75b6c941fee530839f5775d43a677c3c04765d4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5dc4cc4-9744-56f5-b6ab-49ef53bece48', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cee58630-4e5e-571a-9367-11bb3815dbe7', 1), 'ea1eb3d3a87e0111a294129e75b6c941fee530839f5775d43a677c3c04765d4a',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7e9ba8c83fb8b4190bb0e3bd5ec35874d81159908f481f9f780bd62de5f8dc79.mp3', 3474, '2026-09-14 04:59:27.222991', 'c386acafe62b449ebb4cf1b0aa9dd688b8960bada566c7caa3772f3f7808761b', 'validated', '{"audio_key":"7e9ba8c83fb8b4190bb0e3bd5ec35874d81159908f481f9f780bd62de5f8dc79","entity_key":"d_cohesive_argument_01:4","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c386acafe62b449ebb4cf1b0aa9dd688b8960bada566c7caa3772f3f7808761b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/7e9ba8c83fb8b4190bb0e3bd5ec35874d81159908f481f9f780bd62de5f8dc79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_02:3 -> audio/generated/it-IT/dialogues/7f8e4b8d977b0836ca0b59dc11bde42616e9201e94b27781ecd114cade9fcdfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49613a06-60ec-566a-9356-ed029cdcacbe', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c48542198fdb01e8d1d57cc7d3df9bc5cbcdf212fdc681beca1a0688a1fc3c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00dc7805-a36a-5358-9e08-a76796c5ee80', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49613a06-60ec-566a-9356-ed029cdcacbe', 1), '1c48542198fdb01e8d1d57cc7d3df9bc5cbcdf212fdc681beca1a0688a1fc3c3',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7f8e4b8d977b0836ca0b59dc11bde42616e9201e94b27781ecd114cade9fcdfc.mp3', 1697, '2026-09-14 04:59:27.327927', '0d30bfa10322746ef4db2e4c29bac939d2b6c60a22d2a0f0872a1b20690c74c2', 'validated', '{"audio_key":"7f8e4b8d977b0836ca0b59dc11bde42616e9201e94b27781ecd114cade9fcdfc","entity_key":"d_stance_and_subjunctive_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"0d30bfa10322746ef4db2e4c29bac939d2b6c60a22d2a0f0872a1b20690c74c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/7f8e4b8d977b0836ca0b59dc11bde42616e9201e94b27781ecd114cade9fcdfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_02:2 -> audio/generated/it-IT/dialogues/8802052656e39c7b357a57f01c455a2edfdace7cc4e40cc09c30ce0eec0119cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5db609e-0a43-54fe-a104-8304cd35b2f6', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4ab37ab3335ed845469f32f01ac4222e3a11e9d04b7d4848deece93b1bdca4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2ea1556-e7cd-55a7-8f85-540135190867', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5db609e-0a43-54fe-a104-8304cd35b2f6', 1), 'c4ab37ab3335ed845469f32f01ac4222e3a11e9d04b7d4848deece93b1bdca4d',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8802052656e39c7b357a57f01c455a2edfdace7cc4e40cc09c30ce0eec0119cf.mp3', 4414, '2026-09-14 04:59:28.657518', '20d0eaae88dcbe3028ce46b7d75dc00033fa92e5c2cb5cf69f69f5ca725460e1', 'validated', '{"audio_key":"8802052656e39c7b357a57f01c455a2edfdace7cc4e40cc09c30ce0eec0119cf","entity_key":"d_cohesive_argument_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20d0eaae88dcbe3028ce46b7d75dc00033fa92e5c2cb5cf69f69f5ca725460e1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/8802052656e39c7b357a57f01c455a2edfdace7cc4e40cc09c30ce0eec0119cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_02:1 -> audio/generated/it-IT/dialogues/92831d8ec2a99c5a73f3dc1ba5e1f5da1e03cc340f34e38958bd4171ef1d6d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c78a17d5-26a3-5cc1-9713-8e1abe884f2e', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffd66daf767e2deb6ffd43ebacd3388158a6fa5661d204f4137a38b839457655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3c71260-517b-5580-9b17-bec11ae2a0cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c78a17d5-26a3-5cc1-9713-8e1abe884f2e', 1), 'ffd66daf767e2deb6ffd43ebacd3388158a6fa5661d204f4137a38b839457655',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/92831d8ec2a99c5a73f3dc1ba5e1f5da1e03cc340f34e38958bd4171ef1d6d70.mp3', 1567, '2026-09-14 04:59:28.393328', 'f86344fba76367945f965663b29e7e37d7031bb23716735c0f696a0454c8bb71', 'validated', '{"audio_key":"92831d8ec2a99c5a73f3dc1ba5e1f5da1e03cc340f34e38958bd4171ef1d6d70","entity_key":"d_b2_community_debate_capstone_02:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f86344fba76367945f965663b29e7e37d7031bb23716735c0f696a0454c8bb71","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/92831d8ec2a99c5a73f3dc1ba5e1f5da1e03cc340f34e38958bd4171ef1d6d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:1 -> audio/generated/it-IT/dialogues/92f4eeec9513ff2ffbc7eeed2ef4dd7c8a76416647ef317ffdfe4cd716d482c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e43519bf-d6e7-56e8-aa1a-74e94a02a6b2', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6afc0865e5352847bccb612f4fd8b95730c4fdece6b568b158ffcfbbb84054a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b970d29-a009-5606-abfb-527d5369ca90', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e43519bf-d6e7-56e8-aa1a-74e94a02a6b2', 1), 'b6afc0865e5352847bccb612f4fd8b95730c4fdece6b568b158ffcfbbb84054a',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/92f4eeec9513ff2ffbc7eeed2ef4dd7c8a76416647ef317ffdfe4cd716d482c6.mp3', 2507, '2026-09-14 04:59:29.658580', '85fd129359f07f8b968e471351b50fbe9c906eeab6b5989bd16845119fe7a7a3', 'validated', '{"audio_key":"92f4eeec9513ff2ffbc7eeed2ef4dd7c8a76416647ef317ffdfe4cd716d482c6","entity_key":"d_formal_negotiation_02:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"85fd129359f07f8b968e471351b50fbe9c906eeab6b5989bd16845119fe7a7a3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/92f4eeec9513ff2ffbc7eeed2ef4dd7c8a76416647ef317ffdfe4cd716d482c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_01:1 -> audio/generated/it-IT/dialogues/93b74ec998728ae0e11090f59eb590e3630d51a2487789e870398ba57894106e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27e7fe4d-bb53-58cf-8708-d2bfab5ed2bf', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e60b7973fd1cb808fa95a0779fdc21bf214a6ce829879bb3b46a68ee130d8a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cb3d303-1d70-50e8-985a-3ff8cff8bd68', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27e7fe4d-bb53-58cf-8708-d2bfab5ed2bf', 1), '6e60b7973fd1cb808fa95a0779fdc21bf214a6ce829879bb3b46a68ee130d8a8',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/93b74ec998728ae0e11090f59eb590e3630d51a2487789e870398ba57894106e.mp3', 2586, '2026-09-14 04:59:29.824364', 'f17c71de5f2f3e38b26d06874b53a3936a85ab9f56ef8270fc4881d7edc2939d', 'validated', '{"audio_key":"93b74ec998728ae0e11090f59eb590e3630d51a2487789e870398ba57894106e","entity_key":"d_stance_and_subjunctive_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"f17c71de5f2f3e38b26d06874b53a3936a85ab9f56ef8270fc4881d7edc2939d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/93b74ec998728ae0e11090f59eb590e3630d51a2487789e870398ba57894106e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_subjunctive_02:4 -> audio/generated/it-IT/dialogues/9521922c5ddaad60f5a28cdf5a1d6ddd4d9704b935bfeeb24377feab59bb045c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28654713-6950-5ea0-87b8-0bb91f746f52', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_subjunctive_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '240d2ac7c0b0bd77cf5364983425425f2bf9f3b1e657f2e14b4eae890475dfa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47a8c9a7-23ea-5b08-833b-51a6a1109f3c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28654713-6950-5ea0-87b8-0bb91f746f52', 1), '240d2ac7c0b0bd77cf5364983425425f2bf9f3b1e657f2e14b4eae890475dfa4',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9521922c5ddaad60f5a28cdf5a1d6ddd4d9704b935bfeeb24377feab59bb045c.mp3', 2168, '2026-09-14 04:59:30.758196', 'd58f7bb967c385cbfc5ca69aadb090d9fbf18426c45c640c487a6722b5164c08', 'validated', '{"audio_key":"9521922c5ddaad60f5a28cdf5a1d6ddd4d9704b935bfeeb24377feab59bb045c","entity_key":"d_stance_and_subjunctive_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d58f7bb967c385cbfc5ca69aadb090d9fbf18426c45c640c487a6722b5164c08","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9521922c5ddaad60f5a28cdf5a1d6ddd4d9704b935bfeeb24377feab59bb045c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_02:3 -> audio/generated/it-IT/dialogues/97458871d6112bc99a0cdaa4ec3afd8b0f9f4d2f1ecbfb0aa41c235c0a63fa47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('acdfb703-a13e-5bfb-b044-1dc468ac6312', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32754686f66089fae377c249ccb3e82f427454bea4def04c0f6fbfad2dd75a8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('719f3254-380b-58e3-99b9-375f2681c231', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('acdfb703-a13e-5bfb-b044-1dc468ac6312', 1), '32754686f66089fae377c249ccb3e82f427454bea4def04c0f6fbfad2dd75a8a',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/97458871d6112bc99a0cdaa4ec3afd8b0f9f4d2f1ecbfb0aa41c235c0a63fa47.mp3', 2324, '2026-09-14 04:59:31.020057', 'a838c64efc7e3dc05fe26f22da121f1aa662bfb892f3450aada4ac8369ee493e', 'validated', '{"audio_key":"97458871d6112bc99a0cdaa4ec3afd8b0f9f4d2f1ecbfb0aa41c235c0a63fa47","entity_key":"d_reported_discourse_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a838c64efc7e3dc05fe26f22da121f1aa662bfb892f3450aada4ac8369ee493e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/97458871d6112bc99a0cdaa4ec3afd8b0f9f4d2f1ecbfb0aa41c235c0a63fa47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_01:2 -> audio/generated/it-IT/dialogues/98bf85967f586d4058c0a27e51c182b837fb594016e3424478d6de6818b5d712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('656a21a9-0283-50c2-b793-cee849434aaa', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e4ca41559311ec587315348a449b0328b6269ba11e2c28ca331bcc52673171b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84527c5a-023b-58a6-9473-1d8b20ce65f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('656a21a9-0283-50c2-b793-cee849434aaa', 1), '1e4ca41559311ec587315348a449b0328b6269ba11e2c28ca331bcc52673171b',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/98bf85967f586d4058c0a27e51c182b837fb594016e3424478d6de6818b5d712.mp3', 3160, '2026-09-14 04:59:32.070602', '477c3ae0f47a2e390079dcde2aacb551e9f712d3c83572936c114dbf9e8eb0cb', 'validated', '{"audio_key":"98bf85967f586d4058c0a27e51c182b837fb594016e3424478d6de6818b5d712","entity_key":"d_counterfactual_choices_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"477c3ae0f47a2e390079dcde2aacb551e9f712d3c83572936c114dbf9e8eb0cb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/98bf85967f586d4058c0a27e51c182b837fb594016e3424478d6de6818b5d712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_02:1 -> audio/generated/it-IT/dialogues/995743729ec0277a4f1c3a62073fa491ce34d2c6d7a043c4decd4e25bd2568fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('445ce6f6-24ef-5647-abb0-bc1623210ee8', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6e0829bba5cf682806ee4cdf13cfefbab346522834edfecb57392f333539edd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62e6c797-abee-5ada-8bb1-7a3636d6e5c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('445ce6f6-24ef-5647-abb0-bc1623210ee8', 1), 'd6e0829bba5cf682806ee4cdf13cfefbab346522834edfecb57392f333539edd',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/995743729ec0277a4f1c3a62073fa491ce34d2c6d7a043c4decd4e25bd2568fb.mp3', 3291, '2026-09-14 04:59:32.260300', 'b21b8e2bcfaf14017a70de62dd8aff180fd2f62deedccfb0b9f88dcd95494092', 'validated', '{"audio_key":"995743729ec0277a4f1c3a62073fa491ce34d2c6d7a043c4decd4e25bd2568fb","entity_key":"d_register_and_nuance_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b21b8e2bcfaf14017a70de62dd8aff180fd2f62deedccfb0b9f88dcd95494092","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/995743729ec0277a4f1c3a62073fa491ce34d2c6d7a043c4decd4e25bd2568fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_02:4 -> audio/generated/it-IT/dialogues/9c61733021ea33a90ff1d3fe6ebfe9582f673efefbb4da07db3fca3ec37b3f47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b2a396f-c1ce-5be7-9679-a4e8ec08c3d1', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac47eb5886b3aa0eb50d14b4a879873a0595a66cac51b66393a895fd5771cd63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d62cff32-11aa-5208-a788-b091d174b1f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b2a396f-c1ce-5be7-9679-a4e8ec08c3d1', 1), 'ac47eb5886b3aa0eb50d14b4a879873a0595a66cac51b66393a895fd5771cd63',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9c61733021ea33a90ff1d3fe6ebfe9582f673efefbb4da07db3fca3ec37b3f47.mp3', 2638, '2026-09-14 04:59:33.293632', '290d330e6d6b877afb8db0b0dcf4341960d6da2f8a5a9d8277401bafabe31cb9', 'validated', '{"audio_key":"9c61733021ea33a90ff1d3fe6ebfe9582f673efefbb4da07db3fca3ec37b3f47","entity_key":"d_evidence_and_claims_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"290d330e6d6b877afb8db0b0dcf4341960d6da2f8a5a9d8277401bafabe31cb9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9c61733021ea33a90ff1d3fe6ebfe9582f673efefbb4da07db3fca3ec37b3f47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_02:3 -> audio/generated/it-IT/dialogues/a2da31e8ba470a2608d581cf8771d5e64841f619023a4d95e400523dba3cd314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e59a34f1-d0fe-5852-9807-aed12df088d5', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a18571f067e72bc0cb3268e064df19f397fdd9faa30f190f52fd5e0deb8c7093'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef5e60ea-7c77-5d16-99f2-a26e4ca05fe6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e59a34f1-d0fe-5852-9807-aed12df088d5', 1), 'a18571f067e72bc0cb3268e064df19f397fdd9faa30f190f52fd5e0deb8c7093',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a2da31e8ba470a2608d581cf8771d5e64841f619023a4d95e400523dba3cd314.mp3', 2951, '2026-09-14 04:59:33.512601', '8b9038489f89850dd45685300e0d8dfdf4c8159b305fe67efd39d630d16b26a7', 'validated', '{"audio_key":"a2da31e8ba470a2608d581cf8771d5e64841f619023a4d95e400523dba3cd314","entity_key":"d_register_and_nuance_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8b9038489f89850dd45685300e0d8dfdf4c8159b305fe67efd39d630d16b26a7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/a2da31e8ba470a2608d581cf8771d5e64841f619023a4d95e400523dba3cd314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_02:3 -> audio/generated/it-IT/dialogues/a31cf0a830cf5c5a1d15de9636938d513757c72c2126174a6d4e9ce66e54c938.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9d18513-311b-508b-9e76-124cb677f7f8', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '446ed243f8a1aec34cf24dbcf98dda96f8631dd3d0f70f566ff117112864b7ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e7c89e1-f5ec-57c2-a9ca-63c0f1a89505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9d18513-311b-508b-9e76-124cb677f7f8', 1), '446ed243f8a1aec34cf24dbcf98dda96f8631dd3d0f70f566ff117112864b7ea',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a31cf0a830cf5c5a1d15de9636938d513757c72c2126174a6d4e9ce66e54c938.mp3', 1750, '2026-09-14 04:59:34.401078', '47aac8765198281135092bd2cd54f74d25ea3491ecee374475674f651c640667', 'validated', '{"audio_key":"a31cf0a830cf5c5a1d15de9636938d513757c72c2126174a6d4e9ce66e54c938","entity_key":"d_counterfactual_choices_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"47aac8765198281135092bd2cd54f74d25ea3491ecee374475674f651c640667","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a31cf0a830cf5c5a1d15de9636938d513757c72c2126174a6d4e9ce66e54c938.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_01:3 -> audio/generated/it-IT/dialogues/a5f64821dd33dc6d11fc1f95e9d5e412511436d72fd748207e5d412f326fdd16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f2493536-0414-523a-b5ce-6553af82c8dc', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bca2f64a0a72bf0821bec9e587b49ed881287cd7203d3cfd6d1539867ff1c58a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07185243-7309-5ebf-a3b5-351d6c5f1be6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f2493536-0414-523a-b5ce-6553af82c8dc', 1), 'bca2f64a0a72bf0821bec9e587b49ed881287cd7203d3cfd6d1539867ff1c58a',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a5f64821dd33dc6d11fc1f95e9d5e412511436d72fd748207e5d412f326fdd16.mp3', 1750, '2026-09-14 04:59:34.655439', 'a0d272c5ec17a522bb706a46c4e9d5bbcf5c8add0c0b08e628a4a84b0fa0d1d8', 'validated', '{"audio_key":"a5f64821dd33dc6d11fc1f95e9d5e412511436d72fd748207e5d412f326fdd16","entity_key":"d_concession_and_contrast_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"a0d272c5ec17a522bb706a46c4e9d5bbcf5c8add0c0b08e628a4a84b0fa0d1d8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/a5f64821dd33dc6d11fc1f95e9d5e412511436d72fd748207e5d412f326fdd16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_02:3 -> audio/generated/it-IT/dialogues/aab472e170a09921647cc7ad2092859b423ab80f5e6776415c75820338574ab7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0264881f-5849-5f15-a5d8-3ab045e30f74', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08346d355fde8c39b83bc2764b7ab9bc73a102ca8c2bf697a79bfc260d27522f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80ac996f-9638-559f-996e-eeb05053d536', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0264881f-5849-5f15-a5d8-3ab045e30f74', 1), '08346d355fde8c39b83bc2764b7ab9bc73a102ca8c2bf697a79bfc260d27522f',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/aab472e170a09921647cc7ad2092859b423ab80f5e6776415c75820338574ab7.mp3', 3186, '2026-09-14 04:59:35.709366', '9c556c67ac20e0c7f4faaa7c2391cc22daffd306478596462449f46cb78bfc07', 'validated', '{"audio_key":"aab472e170a09921647cc7ad2092859b423ab80f5e6776415c75820338574ab7","entity_key":"d_concession_and_contrast_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"9c556c67ac20e0c7f4faaa7c2391cc22daffd306478596462449f46cb78bfc07","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/aab472e170a09921647cc7ad2092859b423ab80f5e6776415c75820338574ab7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_02:2 -> audio/generated/it-IT/dialogues/b0875990c42598f34f906a547bfd7e9ad20e0259056dbd29f3dca3ca7e30d5c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a17e3589-2ddd-5447-98cf-1ff30acc55cd', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39fffe4f2ba98effb6e74fe78085e21f1d92a0f0728f9b6d0687be2689a679fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e82d07e0-a715-5cf9-acbe-ce60fb0591ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a17e3589-2ddd-5447-98cf-1ff30acc55cd', 1), '39fffe4f2ba98effb6e74fe78085e21f1d92a0f0728f9b6d0687be2689a679fe',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b0875990c42598f34f906a547bfd7e9ad20e0259056dbd29f3dca3ca7e30d5c1.mp3', 2873, '2026-09-14 04:59:35.888847', '0d5d7fc62caf3a895ac2d27870f3cd2250fdad9f45e3c417e95ffd3d9614262d', 'validated', '{"audio_key":"b0875990c42598f34f906a547bfd7e9ad20e0259056dbd29f3dca3ca7e30d5c1","entity_key":"d_passive_and_impersonal_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d5d7fc62caf3a895ac2d27870f3cd2250fdad9f45e3c417e95ffd3d9614262d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/b0875990c42598f34f906a547bfd7e9ad20e0259056dbd29f3dca3ca7e30d5c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_01:1 -> audio/generated/it-IT/dialogues/b1c772bd49072c035703a84445fc333e10e7da52d0cbed47e0795fb91f8290a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4ce1a7f-79a4-5965-9310-ac6440e92096', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '920664e291c5b4174b1aef2896ce1257c2adc492c01e7480989e589dd2036091'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('063fd488-16af-5989-9dae-a0073ff9f835', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4ce1a7f-79a4-5965-9310-ac6440e92096', 1), '920664e291c5b4174b1aef2896ce1257c2adc492c01e7480989e589dd2036091',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b1c772bd49072c035703a84445fc333e10e7da52d0cbed47e0795fb91f8290a2.mp3', 3578, '2026-09-14 04:59:36.990422', '02d688ebd6df2a9c5f3b78ddf9872b5bfe0fd2fede8a5b2222208e11278fcb5c', 'validated', '{"audio_key":"b1c772bd49072c035703a84445fc333e10e7da52d0cbed47e0795fb91f8290a2","entity_key":"d_b2_community_debate_capstone_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"02d688ebd6df2a9c5f3b78ddf9872b5bfe0fd2fede8a5b2222208e11278fcb5c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b1c772bd49072c035703a84445fc333e10e7da52d0cbed47e0795fb91f8290a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_01:2 -> audio/generated/it-IT/dialogues/b3fb81cca9c4323ec501304d8453fdaa797046691dcd882a5b2b50989edf47fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31c8e95a-e0da-5ba2-99d3-de5ca70db6b1', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5656768a77ba2de8cf7c7146f8ce5ae1f02fc69e85717da63baaf615b4ac51c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a626783-4640-569b-bc0b-c0d725f30079', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31c8e95a-e0da-5ba2-99d3-de5ca70db6b1', 1), '5656768a77ba2de8cf7c7146f8ce5ae1f02fc69e85717da63baaf615b4ac51c3',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b3fb81cca9c4323ec501304d8453fdaa797046691dcd882a5b2b50989edf47fe.mp3', 3056, '2026-09-14 04:59:37.182153', 'af67918df0b8cedb67bef0798851142322ec04c32e2ef128587e9d6e1508f3e7', 'validated', '{"audio_key":"b3fb81cca9c4323ec501304d8453fdaa797046691dcd882a5b2b50989edf47fe","entity_key":"d_register_and_nuance_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af67918df0b8cedb67bef0798851142322ec04c32e2ef128587e9d6e1508f3e7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/b3fb81cca9c4323ec501304d8453fdaa797046691dcd882a5b2b50989edf47fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_02:2 -> audio/generated/it-IT/dialogues/b7336064fe6aa42ef6b10f6eb77fc85fac978b0f3082334a8c77f20d0f4616fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52007e53-e3e2-56f1-b78f-a9dc337ddbe2', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43640a7cb142f0107677d54ce0dee56c064d67aac4ad2d703a6518da49049d53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d069bbf-ef5a-5d58-8be2-027496c4b23b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52007e53-e3e2-56f1-b78f-a9dc337ddbe2', 1), '43640a7cb142f0107677d54ce0dee56c064d67aac4ad2d703a6518da49049d53',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b7336064fe6aa42ef6b10f6eb77fc85fac978b0f3082334a8c77f20d0f4616fc.mp3', 2690, '2026-09-14 04:59:38.163291', '80fa9a2e35ed988c9a4f3567ed71655ad28c9a20695ecdc0bfc5fa37503a8284', 'validated', '{"audio_key":"b7336064fe6aa42ef6b10f6eb77fc85fac978b0f3082334a8c77f20d0f4616fc","entity_key":"d_concession_and_contrast_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"80fa9a2e35ed988c9a4f3567ed71655ad28c9a20695ecdc0bfc5fa37503a8284","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b7336064fe6aa42ef6b10f6eb77fc85fac978b0f3082334a8c77f20d0f4616fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:3 -> audio/generated/it-IT/dialogues/b95f1c83763c7bfe2ec10093fac121e46824b0e9a9702b42df26abfd44e94f09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9165f1e-fb20-5db4-abef-fa22b80d6aba', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9c8853d60c4353143b2aa60a07fa88b80ef0e105fd9b12367a441186acc9288'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de56f0df-bf4d-5476-8784-50d73dc4bca3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9165f1e-fb20-5db4-abef-fa22b80d6aba', 1), 'd9c8853d60c4353143b2aa60a07fa88b80ef0e105fd9b12367a441186acc9288',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b95f1c83763c7bfe2ec10093fac121e46824b0e9a9702b42df26abfd44e94f09.mp3', 2925, '2026-09-14 04:59:38.405271', '5aac13541f52634ef5279a08a32b3200ef28a58d3191a875224fe60b53da268a', 'validated', '{"audio_key":"b95f1c83763c7bfe2ec10093fac121e46824b0e9a9702b42df26abfd44e94f09","entity_key":"d_formal_negotiation_02:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5aac13541f52634ef5279a08a32b3200ef28a58d3191a875224fe60b53da268a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b95f1c83763c7bfe2ec10093fac121e46824b0e9a9702b42df26abfd44e94f09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:4 -> audio/generated/it-IT/dialogues/bad772a0233ae231cf1d2ecde31781e5e7abaf167040546828a9056d6887d466.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99c8f6b0-acc3-50de-8288-c687fd87a619', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dedb54a166f19b46f6bab2f13352b1131c49f93142250537fb08d93d5ea12e65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e51a01e0-6982-5565-9f9d-2058f7595d93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99c8f6b0-acc3-50de-8288-c687fd87a619', 1), 'dedb54a166f19b46f6bab2f13352b1131c49f93142250537fb08d93d5ea12e65',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bad772a0233ae231cf1d2ecde31781e5e7abaf167040546828a9056d6887d466.mp3', 2638, '2026-09-14 04:59:39.292776', '127c5daf0d0efc6799cfd1c6872f7bce274820de5eebbe1bf279d10bc66c8e85', 'validated', '{"audio_key":"bad772a0233ae231cf1d2ecde31781e5e7abaf167040546828a9056d6887d466","entity_key":"d_formal_negotiation_01:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"127c5daf0d0efc6799cfd1c6872f7bce274820de5eebbe1bf279d10bc66c8e85","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/bad772a0233ae231cf1d2ecde31781e5e7abaf167040546828a9056d6887d466.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_02:3 -> audio/generated/it-IT/dialogues/bb0afd9430f5c4323325a9ea6ca0e93925d47026f8ecff6a34216de45adfe24f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1da4ccf1-dd6e-5073-b725-a61818144ec7', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79fa4f6c6eb356e7a986d9a7d3889fbc87f41918fbf61ae8c9e59884ff714467'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('464706fa-d076-56ae-be98-f5036614e4eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1da4ccf1-dd6e-5073-b725-a61818144ec7', 1), '79fa4f6c6eb356e7a986d9a7d3889fbc87f41918fbf61ae8c9e59884ff714467',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bb0afd9430f5c4323325a9ea6ca0e93925d47026f8ecff6a34216de45adfe24f.mp3', 2115, '2026-09-14 04:59:39.550680', '5f22564baf41b0773dff1a045c9efbd0e1b93ad6a5a0711673a7381307c2d6e8', 'validated', '{"audio_key":"bb0afd9430f5c4323325a9ea6ca0e93925d47026f8ecff6a34216de45adfe24f","entity_key":"d_b2_community_debate_capstone_02:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5f22564baf41b0773dff1a045c9efbd0e1b93ad6a5a0711673a7381307c2d6e8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/bb0afd9430f5c4323325a9ea6ca0e93925d47026f8ecff6a34216de45adfe24f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_02:2 -> audio/generated/it-IT/dialogues/bf3701f5ab7fbe86e90efcd70d09df3ec26cd56d6e30eef92ef0034808d60cef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96310d0f-9591-5d80-859c-126205952265', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89ebc8ebc97c377f8612af789297a96f3b674cecc60496822c8cbc4cbc8ad3c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7fc129f-18ea-5b51-ab8e-0b6f670a2123', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96310d0f-9591-5d80-859c-126205952265', 1), '89ebc8ebc97c377f8612af789297a96f3b674cecc60496822c8cbc4cbc8ad3c5',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bf3701f5ab7fbe86e90efcd70d09df3ec26cd56d6e30eef92ef0034808d60cef.mp3', 3474, '2026-09-14 04:59:40.608396', '51a1c571cc0499688b6158973ef90baf14fdd37b107718f312708b4e4fdc3bc6', 'validated', '{"audio_key":"bf3701f5ab7fbe86e90efcd70d09df3ec26cd56d6e30eef92ef0034808d60cef","entity_key":"d_b2_community_debate_capstone_02:2","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1c571cc0499688b6158973ef90baf14fdd37b107718f312708b4e4fdc3bc6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/bf3701f5ab7fbe86e90efcd70d09df3ec26cd56d6e30eef92ef0034808d60cef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:2 -> audio/generated/it-IT/dialogues/c09b7ac97a9f03b99fca03f947ff8275be0bed77c647db8e65e9be54e24efc04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0cb1f51-9807-5208-b889-428ade9d15ab', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ea9e1c21dcb389ab766303c6f8122b423de43def886c68e9d5843ab9ebea1a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('870b00bb-133d-509b-a528-db3864b9f010', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0cb1f51-9807-5208-b889-428ade9d15ab', 1), '8ea9e1c21dcb389ab766303c6f8122b423de43def886c68e9d5843ab9ebea1a6',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c09b7ac97a9f03b99fca03f947ff8275be0bed77c647db8e65e9be54e24efc04.mp3', 2351, '2026-09-14 04:59:40.729925', 'ad964b16f588f7f7aaab24e398661c74d84ac8704fba8a90e35d4a8bef7d9300', 'validated', '{"audio_key":"c09b7ac97a9f03b99fca03f947ff8275be0bed77c647db8e65e9be54e24efc04","entity_key":"d_formal_negotiation_01:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ad964b16f588f7f7aaab24e398661c74d84ac8704fba8a90e35d4a8bef7d9300","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/c09b7ac97a9f03b99fca03f947ff8275be0bed77c647db8e65e9be54e24efc04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_02:1 -> audio/generated/it-IT/dialogues/c1a1921a6ebd2818322728b3e09cc0310444ecde60a385620da3b16b386c583a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ddbb377-1de3-5e2b-ab8f-b1174e99e7cc', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5593d0f3e7d8a2a6c035134b63c89325171452fbbe4a3dbd68ce84efab4cf83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfd1b48d-57f6-5ef7-9160-4168868eb832', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ddbb377-1de3-5e2b-ab8f-b1174e99e7cc', 1), 'f5593d0f3e7d8a2a6c035134b63c89325171452fbbe4a3dbd68ce84efab4cf83',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c1a1921a6ebd2818322728b3e09cc0310444ecde60a385620da3b16b386c583a.mp3', 2272, '2026-09-14 04:59:41.774716', 'a41cce927125cdb17c8a9c549919d0b0efe5d33976afed8a93987e086a36a22e', 'validated', '{"audio_key":"c1a1921a6ebd2818322728b3e09cc0310444ecde60a385620da3b16b386c583a","entity_key":"d_evidence_and_claims_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a41cce927125cdb17c8a9c549919d0b0efe5d33976afed8a93987e086a36a22e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c1a1921a6ebd2818322728b3e09cc0310444ecde60a385620da3b16b386c583a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_choices_02:4 -> audio/generated/it-IT/dialogues/cac8bd62962326e610c24399908b8f4af2841c7fcbf03c5562fa0137e991a784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39e3bbed-ee9b-5bf8-9bcc-385e186ff289', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_choices_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ae11819d1d2a2a3b1a6448e9d5ebe33406f69b53b7d063a5b350fc44da8230f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b0521ec-4ed5-5c05-8189-4150e9228f94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39e3bbed-ee9b-5bf8-9bcc-385e186ff289', 1), '9ae11819d1d2a2a3b1a6448e9d5ebe33406f69b53b7d063a5b350fc44da8230f',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/cac8bd62962326e610c24399908b8f4af2841c7fcbf03c5562fa0137e991a784.mp3', 3343, '2026-09-14 04:59:42.005641', '14509101361f33ba059d8ad649f56b57082715a640249826a3ba21961d7c3cc1', 'validated', '{"audio_key":"cac8bd62962326e610c24399908b8f4af2841c7fcbf03c5562fa0137e991a784","entity_key":"d_counterfactual_choices_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14509101361f33ba059d8ad649f56b57082715a640249826a3ba21961d7c3cc1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/cac8bd62962326e610c24399908b8f4af2841c7fcbf03c5562fa0137e991a784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_01:4 -> audio/generated/it-IT/dialogues/d791d88c80bce6d3ff6b3c57145b67b3be6d8505505d908e190b22ecfdf5d5d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50a774e1-c3ef-523d-a7b3-529ef8253963', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a91fc233bacdbe60cf41ae01e2a752b4f17f392d228a0b4dc3090de46aae252'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ae0d106-8269-5488-b71c-106c591b5a15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50a774e1-c3ef-523d-a7b3-529ef8253963', 1), '5a91fc233bacdbe60cf41ae01e2a752b4f17f392d228a0b4dc3090de46aae252',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d791d88c80bce6d3ff6b3c57145b67b3be6d8505505d908e190b22ecfdf5d5d5.mp3', 3709, '2026-09-14 04:59:43.138056', '469b31365f104474d76daa0db926ceaa24faa67dbba6b73ddc8c40b5d341af60', 'validated', '{"audio_key":"d791d88c80bce6d3ff6b3c57145b67b3be6d8505505d908e190b22ecfdf5d5d5","entity_key":"d_reported_discourse_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"469b31365f104474d76daa0db926ceaa24faa67dbba6b73ddc8c40b5d341af60","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/d791d88c80bce6d3ff6b3c57145b67b3be6d8505505d908e190b22ecfdf5d5d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_01:1 -> audio/generated/it-IT/dialogues/dae0fa19f766c221d401c6ecc8fd60eafc90b350c3ea50c8b6cd6adb6879c4b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2fa35b98-286d-56dd-97f8-5a254ffe19de', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e5f6c8454ae2c976a431e63221036b614d006b18fa376017a90a28167ac5cc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2eca4c5-18e8-56de-ba88-d94ab436b598', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2fa35b98-286d-56dd-97f8-5a254ffe19de', 1), '4e5f6c8454ae2c976a431e63221036b614d006b18fa376017a90a28167ac5cc7',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/dae0fa19f766c221d401c6ecc8fd60eafc90b350c3ea50c8b6cd6adb6879c4b3.mp3', 2168, '2026-09-14 04:59:43.158758', '97fd9b052540cf4323b974fda1c750e66a6eec8ecdc5e112b8bf012b764f61a5', 'validated', '{"audio_key":"dae0fa19f766c221d401c6ecc8fd60eafc90b350c3ea50c8b6cd6adb6879c4b3","entity_key":"d_cohesive_argument_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"97fd9b052540cf4323b974fda1c750e66a6eec8ecdc5e112b8bf012b764f61a5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/dae0fa19f766c221d401c6ecc8fd60eafc90b350c3ea50c8b6cd6adb6879c4b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_and_claims_02:3 -> audio/generated/it-IT/dialogues/dd67d37d4c7ba0c19b736b235f4c269d0fed0b58e00b1d9852d9b06aedb09de5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a14858b-5962-5c71-b6e0-c9524c85304c', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_and_claims_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a18ae7b4c115ce0534c84f55863649c05f12f3bcf41e1562dfc7abbda0fd193'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78989c04-50f3-59f2-9753-6a9a0d034fac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a14858b-5962-5c71-b6e0-c9524c85304c', 1), '1a18ae7b4c115ce0534c84f55863649c05f12f3bcf41e1562dfc7abbda0fd193',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/dd67d37d4c7ba0c19b736b235f4c269d0fed0b58e00b1d9852d9b06aedb09de5.mp3', 3004, '2026-09-14 04:59:44.392389', '769b21f7dcfc9d73513af6d62b9892be8dd10ed2dd4a0c33273035c76d347de3', 'validated', '{"audio_key":"dd67d37d4c7ba0c19b736b235f4c269d0fed0b58e00b1d9852d9b06aedb09de5","entity_key":"d_evidence_and_claims_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"769b21f7dcfc9d73513af6d62b9892be8dd10ed2dd4a0c33273035c76d347de3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/dd67d37d4c7ba0c19b736b235f4c269d0fed0b58e00b1d9852d9b06aedb09de5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_02:4 -> audio/generated/it-IT/dialogues/e08be1d7e759ca1e0277649e8df7fc828dd50a32423581d9b012022a9bb749e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('57a87e0d-4579-5379-9c41-be97cbaccb78', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09e2a65cf2d4114f326621cd896fa6af9a5779732af559c5ebd79fa643d562e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3afd1dc-c23e-5895-8bc2-a5b5cd05d66b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('57a87e0d-4579-5379-9c41-be97cbaccb78', 1), '09e2a65cf2d4114f326621cd896fa6af9a5779732af559c5ebd79fa643d562e5',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e08be1d7e759ca1e0277649e8df7fc828dd50a32423581d9b012022a9bb749e5.mp3', 4493, '2026-09-14 04:59:44.566314', 'e605baa95cb06403833b1a369d4036a01626c0ffbe7da55a6c3c672d7fd6f14c', 'validated', '{"audio_key":"e08be1d7e759ca1e0277649e8df7fc828dd50a32423581d9b012022a9bb749e5","entity_key":"d_b2_community_debate_capstone_02:4","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e605baa95cb06403833b1a369d4036a01626c0ffbe7da55a6c3c672d7fd6f14c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/e08be1d7e759ca1e0277649e8df7fc828dd50a32423581d9b012022a9bb749e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_contrast_01:4 -> audio/generated/it-IT/dialogues/e0b95a516af213f8977edab9a643709b02c2a3bf54f5c0d144d7ab3220544fed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f31ea23-e7d9-5196-9efa-e7c7cfb06d34', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_contrast_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a231e19c6b3a65e2f3b63f29c7f87e0aba904e2a185d2752cf5e28af97d7bdad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db00d448-4130-58dd-807f-7e66d50d1422', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f31ea23-e7d9-5196-9efa-e7c7cfb06d34', 1), 'a231e19c6b3a65e2f3b63f29c7f87e0aba904e2a185d2752cf5e28af97d7bdad',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e0b95a516af213f8977edab9a643709b02c2a3bf54f5c0d144d7ab3220544fed.mp3', 1985, '2026-09-14 04:59:45.502118', 'bd63bbf876b5a11affbe09e2513d9cc42ca61aa4d89f8d175be038508acfea6e', 'validated', '{"audio_key":"e0b95a516af213f8977edab9a643709b02c2a3bf54f5c0d144d7ab3220544fed","entity_key":"d_concession_and_contrast_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"bd63bbf876b5a11affbe09e2513d9cc42ca61aa4d89f8d175be038508acfea6e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/e0b95a516af213f8977edab9a643709b02c2a3bf54f5c0d144d7ab3220544fed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_nuance_02:2 -> audio/generated/it-IT/dialogues/e3077aca3eee8fb5f74a3e3a7dac97446a265cf5cf9b0dd21fe6ed5865070443.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55c034dd-7311-5545-9853-ffcb86fa30fa', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3157a84d4a8c82eb49ebed834004058e3a93c1d5215864b0030a7883caeac0f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f712077-01fd-5615-b33d-160e397302c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55c034dd-7311-5545-9853-ffcb86fa30fa', 1), '3157a84d4a8c82eb49ebed834004058e3a93c1d5215864b0030a7883caeac0f8',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e3077aca3eee8fb5f74a3e3a7dac97446a265cf5cf9b0dd21fe6ed5865070443.mp3', 4257, '2026-09-14 04:59:45.983383', '45aa3e85ef494c5ac25a367ef74fda1f418f8d9e43cc02bfb509fd86414247d9', 'validated', '{"audio_key":"e3077aca3eee8fb5f74a3e3a7dac97446a265cf5cf9b0dd21fe6ed5865070443","entity_key":"d_register_and_nuance_02:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"45aa3e85ef494c5ac25a367ef74fda1f418f8d9e43cc02bfb509fd86414247d9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e3077aca3eee8fb5f74a3e3a7dac97446a265cf5cf9b0dd21fe6ed5865070443.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cohesive_argument_02:1 -> audio/generated/it-IT/dialogues/e3be9bb1e85e32739e6d337dd0b65f7c42c0b565a6856790e0e56504b7f8bdc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('311d7f43-7be7-5d5d-9908-28a2e5f7ef32', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cohesive_argument_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dba83807cc2d3d61d78f4b87524b0223902e7fd753b5369f1ba4f08a6805cc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a3580ff-f3d7-587f-a58d-1db879cfd566', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('311d7f43-7be7-5d5d-9908-28a2e5f7ef32', 1), '8dba83807cc2d3d61d78f4b87524b0223902e7fd753b5369f1ba4f08a6805cc9',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e3be9bb1e85e32739e6d337dd0b65f7c42c0b565a6856790e0e56504b7f8bdc7.mp3', 3186, '2026-09-14 04:59:46.786129', 'f5ffce6498e806d7f5420ec4903880cf505964915e651b00a12620b668ce8693', 'validated', '{"audio_key":"e3be9bb1e85e32739e6d337dd0b65f7c42c0b565a6856790e0e56504b7f8bdc7","entity_key":"d_cohesive_argument_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f5ffce6498e806d7f5420ec4903880cf505964915e651b00a12620b668ce8693","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e3be9bb1e85e32739e6d337dd0b65f7c42c0b565a6856790e0e56504b7f8bdc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_01:1 -> audio/generated/it-IT/dialogues/ef4b7d7840589c0378f6e28288d23ca0568a9cd802b138b9c3fe75d335852e23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a308acc1-9817-5c0d-b65c-8ed7e1b24143', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d8e38620e0ff201580fd9d57604048cbbf978c559967390075beec1ff1ae404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4a56911-4ab0-5dba-b1b3-2d6b5313e6be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a308acc1-9817-5c0d-b65c-8ed7e1b24143', 1), '7d8e38620e0ff201580fd9d57604048cbbf978c559967390075beec1ff1ae404',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ef4b7d7840589c0378f6e28288d23ca0568a9cd802b138b9c3fe75d335852e23.mp3', 2455, '2026-09-14 04:59:47.162989', '990b23deeffc1b19982e3c0dbd627276788eb59aa38953c1e87178fcb1e209fe', 'validated', '{"audio_key":"ef4b7d7840589c0378f6e28288d23ca0568a9cd802b138b9c3fe75d335852e23","entity_key":"d_passive_and_impersonal_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"990b23deeffc1b19982e3c0dbd627276788eb59aa38953c1e87178fcb1e209fe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ef4b7d7840589c0378f6e28288d23ca0568a9cd802b138b9c3fe75d335852e23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_02:1 -> audio/generated/it-IT/dialogues/f9bba18b7b3e1edd0acd9989a7e96c7bae15a96071402cfecafda785726dbea1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb9c4b9e-8596-597f-9af8-f65a19cac0a1', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af00e3a3817c48d94b253be210a20fc74bfa09b6d503276098fb0a8d80811ee3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b82c0054-8b15-57ba-bfde-881bfa33f4c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb9c4b9e-8596-597f-9af8-f65a19cac0a1', 1), 'af00e3a3817c48d94b253be210a20fc74bfa09b6d503276098fb0a8d80811ee3',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f9bba18b7b3e1edd0acd9989a7e96c7bae15a96071402cfecafda785726dbea1.mp3', 3239, '2026-09-14 04:59:48.073298', '5e00a539f87a7eedeb58caf883661219f8ea963a97dc1012dab4bee768034e8a', 'validated', '{"audio_key":"f9bba18b7b3e1edd0acd9989a7e96c7bae15a96071402cfecafda785726dbea1","entity_key":"d_passive_and_impersonal_02:1","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e00a539f87a7eedeb58caf883661219f8ea963a97dc1012dab4bee768034e8a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f9bba18b7b3e1edd0acd9989a7e96c7bae15a96071402cfecafda785726dbea1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:2 -> audio/generated/it-IT/dialogues/fa750b5ce9ad3583b049650bd967c3ff948c84cbf8e8e7f82de9d39e0757c713.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56949161-d6df-58f2-a5d0-44820f151a2f', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35ab0a87b8aaa71ab6cdbdf811bf4fc05396cb7d6a9c5db91c86d8a5033a2585'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24e79fb3-3c73-5f4e-99fc-c632b5880f62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56949161-d6df-58f2-a5d0-44820f151a2f', 1), '35ab0a87b8aaa71ab6cdbdf811bf4fc05396cb7d6a9c5db91c86d8a5033a2585',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fa750b5ce9ad3583b049650bd967c3ff948c84cbf8e8e7f82de9d39e0757c713.mp3', 1985, '2026-09-14 04:59:48.324029', '2b4951b4ae5e0f33ced671717a733b50f7330caa33f1979a7053739f3b7f0c41', 'validated', '{"audio_key":"fa750b5ce9ad3583b049650bd967c3ff948c84cbf8e8e7f82de9d39e0757c713","entity_key":"d_formal_negotiation_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b4951b4ae5e0f33ced671717a733b50f7330caa33f1979a7053739f3b7f0c41","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/fa750b5ce9ad3583b049650bd967c3ff948c84cbf8e8e7f82de9d39e0757c713.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_01:3 -> audio/generated/it-IT/dialogues/faeeef79c0a4da8c38ec58f1d9428d4b86e8993d7598082aeafb5a0ab7c32247.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('439df9f6-fbd2-54c5-8639-cf3cb87acb3c', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7111c7cc4900d2f582006f7117f7201077272cbb486bb006b931f2ffc4c0e3fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81ec37f3-e9fd-527f-a351-d9904fb5faf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('439df9f6-fbd2-54c5-8639-cf3cb87acb3c', 1), '7111c7cc4900d2f582006f7117f7201077272cbb486bb006b931f2ffc4c0e3fa',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/faeeef79c0a4da8c38ec58f1d9428d4b86e8993d7598082aeafb5a0ab7c32247.mp3', 2089, '2026-09-14 04:59:49.258217', 'd1d73c37b22c323d785dac291012d48ca65515857277f298a3aa3c9539219453', 'validated', '{"audio_key":"faeeef79c0a4da8c38ec58f1d9428d4b86e8993d7598082aeafb5a0ab7c32247","entity_key":"d_b2_community_debate_capstone_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"d1d73c37b22c323d785dac291012d48ca65515857277f298a3aa3c9539219453","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/faeeef79c0a4da8c38ec58f1d9428d4b86e8993d7598082aeafb5a0ab7c32247.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_debate_capstone_01:2 -> audio/generated/it-IT/dialogues/fbc2c11cd47fc8a56d42f89d1b163894826ab0ece2e578347a5c8d0384740266.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c1cde2e-0458-56a8-8311-af729d01449c', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_debate_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b22254fa538df5e2ab6ecc748b579a51a1a469d9d61acaf166ede9008250168a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4873bdc9-424f-5917-970d-f065e36c39c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c1cde2e-0458-56a8-8311-af729d01449c', 1), 'b22254fa538df5e2ab6ecc748b579a51a1a469d9d61acaf166ede9008250168a',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fbc2c11cd47fc8a56d42f89d1b163894826ab0ece2e578347a5c8d0384740266.mp3', 6112, '2026-09-14 04:59:49.977245', '506f0d541303028235643f1e991f5aee81cbb3152060804aab95d89d96c46033', 'validated', '{"audio_key":"fbc2c11cd47fc8a56d42f89d1b163894826ab0ece2e578347a5c8d0384740266","entity_key":"d_b2_community_debate_capstone_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"506f0d541303028235643f1e991f5aee81cbb3152060804aab95d89d96c46033","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/fbc2c11cd47fc8a56d42f89d1b163894826ab0ece2e578347a5c8d0384740266.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_and_impersonal_01:2 -> audio/generated/it-IT/dialogues/fd318efb52d1cd31832c451b94634155e8710b2af8b0367df32d13d7c8ab96d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ab97304-0dc2-5446-b6bb-0b964e057321', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_and_impersonal_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a59e78b9abebaeb21fc61d05742143058083a1e5df22dce7dc80c06d373bc533'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df7ce80-345c-5b93-9c2c-2637ee431dd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ab97304-0dc2-5446-b6bb-0b964e057321', 1), 'a59e78b9abebaeb21fc61d05742143058083a1e5df22dce7dc80c06d373bc533',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fd318efb52d1cd31832c451b94634155e8710b2af8b0367df32d13d7c8ab96d5.mp3', 2115, '2026-09-14 04:59:50.445565', '16280c5d99093d426338da92ff290f81bb8345acd6eb0b55ddc5801ad649ba17', 'validated', '{"audio_key":"fd318efb52d1cd31832c451b94634155e8710b2af8b0367df32d13d7c8ab96d5","entity_key":"d_passive_and_impersonal_01:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"16280c5d99093d426338da92ff290f81bb8345acd6eb0b55ddc5801ad649ba17","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/fd318efb52d1cd31832c451b94634155e8710b2af8b0367df32d13d7c8ab96d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_discourse_01:1 -> audio/generated/it-IT/dialogues/ff37743922f7370d031b864706c1af8c72c80a9f19f9ef2aaee27cab2f2840e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('916c4ad8-927c-5055-943b-14328d67872e', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_discourse_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f846315d2fc417b23bdb86a7dd5296917c320db5aa59dde43c38efeea733bbf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afcc1a0a-7ef0-5f09-87cf-b524d09d4370', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('916c4ad8-927c-5055-943b-14328d67872e', 1), 'f846315d2fc417b23bdb86a7dd5296917c320db5aa59dde43c38efeea733bbf3',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ff37743922f7370d031b864706c1af8c72c80a9f19f9ef2aaee27cab2f2840e0.mp3', 1750, '2026-09-14 04:59:51.169721', '860d9a5aad8ecab3bef3d87ef91d8d50809df0e8db8acb6c996e564c41b721a2', 'validated', '{"audio_key":"ff37743922f7370d031b864706c1af8c72c80a9f19f9ef2aaee27cab2f2840e0","entity_key":"d_reported_discourse_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"860d9a5aad8ecab3bef3d87ef91d8d50809df0e8db8acb6c996e564c41b721a2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ff37743922f7370d031b864706c1af8c72c80a9f19f9ef2aaee27cab2f2840e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_nuance_03 -> audio/generated/it-IT/lexical/00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e23dd654-c73d-5785-9f6d-c5a116964254', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83572dabdccaded1a8712898fa6b1492387cb851a9c4d2c46d1fdfaf2969706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b75dd2ba-8b38-582f-91c4-21c9e34bb067', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e23dd654-c73d-5785-9f6d-c5a116964254', 1), 'b83572dabdccaded1a8712898fa6b1492387cb851a9c4d2c46d1fdfaf2969706',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712.mp3', 1097, '2026-09-14 04:59:51.558730', 'f010d70070c448c6c7a3f0c50d7c0ccc4349f4555764ae2dd729e10910d5df38', 'validated', '{"audio_key":"00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712","entity_key":"lx_register_and_nuance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f010d70070c448c6c7a3f0c50d7c0ccc4349f4555764ae2dd729e10910d5df38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_nuance_03 -> audio/generated/it-IT/lexical/00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f77afe71-315b-55fd-9c85-cb519c4cb50f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83572dabdccaded1a8712898fa6b1492387cb851a9c4d2c46d1fdfaf2969706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a53f8b2-c008-5b19-8957-f360fbb4a096', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f77afe71-315b-55fd-9c85-cb519c4cb50f', 1), 'b83572dabdccaded1a8712898fa6b1492387cb851a9c4d2c46d1fdfaf2969706',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712.mp3', 1097, '2026-09-14 04:59:51.558730', 'f010d70070c448c6c7a3f0c50d7c0ccc4349f4555764ae2dd729e10910d5df38', 'validated', '{"audio_key":"00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712","entity_key":"wf_register_and_nuance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f010d70070c448c6c7a3f0c50d7c0ccc4349f4555764ae2dd729e10910d5df38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/00345a0a42a00d89574408cbc3896b0f60136bbc4cd76074928c93e8f49bc712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_and_impersonal_03 -> audio/generated/it-IT/lexical/0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ee3b71d-3b35-5691-a96d-31407466063e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_and_impersonal_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67fc76ce49f82db8f8b33ee0261ed8446eb18ebcad28313e501774e6557eebcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('421ec33e-1d66-5356-8765-124cfe5b1386', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ee3b71d-3b35-5691-a96d-31407466063e', 1), '67fc76ce49f82db8f8b33ee0261ed8446eb18ebcad28313e501774e6557eebcf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28.mp3', 1071, '2026-09-14 04:59:52.209794', 'ec0f141481a8f1ff3836af444788923bdc121f44b62c84b0e89ec939edb99886', 'validated', '{"audio_key":"0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28","entity_key":"lx_passive_and_impersonal_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec0f141481a8f1ff3836af444788923bdc121f44b62c84b0e89ec939edb99886","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_and_impersonal_03 -> audio/generated/it-IT/lexical/0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d273523-d1eb-591e-adde-7d5a47e0b2b2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_and_impersonal_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67fc76ce49f82db8f8b33ee0261ed8446eb18ebcad28313e501774e6557eebcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31d775a3-af24-59f0-8ab7-a46c1f73f405', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d273523-d1eb-591e-adde-7d5a47e0b2b2', 1), '67fc76ce49f82db8f8b33ee0261ed8446eb18ebcad28313e501774e6557eebcf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28.mp3', 1071, '2026-09-14 04:59:52.209794', 'ec0f141481a8f1ff3836af444788923bdc121f44b62c84b0e89ec939edb99886', 'validated', '{"audio_key":"0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28","entity_key":"wf_passive_and_impersonal_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec0f141481a8f1ff3836af444788923bdc121f44b62c84b0e89ec939edb99886","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0aa389b5e03342cf74bea69d5973a6698fbd8851272669063f7454860c40ac28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_subjunctive_03 -> audio/generated/it-IT/lexical/0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c854a401-5aea-5a99-9f8c-c24066b80e92', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_subjunctive_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2586409c2912e92a3a293d98987761e361ad2733f8c33b97e88c235d9667ec54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('287c2fc9-d8d7-5d84-a288-22dbdae10f12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c854a401-5aea-5a99-9f8c-c24066b80e92', 1), '2586409c2912e92a3a293d98987761e361ad2733f8c33b97e88c235d9667ec54',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9.mp3', 1071, '2026-09-14 04:59:52.528230', 'a934873055e164de4896b8026484c2ecad8000efd80b845038bb1c834447a1e9', 'validated', '{"audio_key":"0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9","entity_key":"lx_stance_and_subjunctive_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a934873055e164de4896b8026484c2ecad8000efd80b845038bb1c834447a1e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_subjunctive_03 -> audio/generated/it-IT/lexical/0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5107de67-5975-5a96-9862-1ed6a0abc70a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_subjunctive_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2586409c2912e92a3a293d98987761e361ad2733f8c33b97e88c235d9667ec54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f36d8824-5202-508a-90b0-5f993f59bfdf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5107de67-5975-5a96-9862-1ed6a0abc70a', 1), '2586409c2912e92a3a293d98987761e361ad2733f8c33b97e88c235d9667ec54',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9.mp3', 1071, '2026-09-14 04:59:52.528230', 'a934873055e164de4896b8026484c2ecad8000efd80b845038bb1c834447a1e9', 'validated', '{"audio_key":"0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9","entity_key":"wf_stance_and_subjunctive_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a934873055e164de4896b8026484c2ecad8000efd80b845038bb1c834447a1e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0dfe756fcd7130f12d030db109f53fe23b452187213874201377b063373a95a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_choices_02 -> audio/generated/it-IT/lexical/173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39f6b9b7-b13b-5ba2-a967-1b467312edb2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_choices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65ffe565101b0b0014f86ac5b96465e7940c53bc80b93eee4b857f54e8febe89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4419c4bc-400f-52a3-9bbc-2523d8acc70e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39f6b9b7-b13b-5ba2-a967-1b467312edb2', 1), '65ffe565101b0b0014f86ac5b96465e7940c53bc80b93eee4b857f54e8febe89',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784.mp3', 1201, '2026-09-14 04:59:53.208281', '7fd66e3cbcca10aa0b81b9f6c95f96c491bc71806eaea09c0b3b3e22abf52536', 'validated', '{"audio_key":"173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784","entity_key":"lx_counterfactual_choices_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7fd66e3cbcca10aa0b81b9f6c95f96c491bc71806eaea09c0b3b3e22abf52536","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_choices_02 -> audio/generated/it-IT/lexical/173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5c9b369-e417-570b-9eee-9e499f609529', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_choices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65ffe565101b0b0014f86ac5b96465e7940c53bc80b93eee4b857f54e8febe89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b74f956-b844-5fae-9825-1a7f44590605', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5c9b369-e417-570b-9eee-9e499f609529', 1), '65ffe565101b0b0014f86ac5b96465e7940c53bc80b93eee4b857f54e8febe89',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784.mp3', 1201, '2026-09-14 04:59:53.208281', '7fd66e3cbcca10aa0b81b9f6c95f96c491bc71806eaea09c0b3b3e22abf52536', 'validated', '{"audio_key":"173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784","entity_key":"wf_counterfactual_choices_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7fd66e3cbcca10aa0b81b9f6c95f96c491bc71806eaea09c0b3b3e22abf52536","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/173f74556a9a374f591e9af3d2fba40c1c1c01a356040fd68371d087bbe33784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_debate_capstone_01 -> audio/generated/it-IT/lexical/1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('efad1f6c-541a-5874-acc0-e05020ff46fd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_debate_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85fb20486aed02aad161abe253b6189e6159e8a41aa7662faa99b3a3a6a6ef40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5812c2b9-c0c8-514c-a1b0-bb716f49761e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('efad1f6c-541a-5874-acc0-e05020ff46fd', 1), '85fb20486aed02aad161abe253b6189e6159e8a41aa7662faa99b3a3a6a6ef40',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a.mp3', 1436, '2026-09-14 04:59:53.630373', 'f7d6b6012723103047a423faa02fda1fff7c96304e444b060290e04788e2650d', 'validated', '{"audio_key":"1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a","entity_key":"lx_b2_community_debate_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7d6b6012723103047a423faa02fda1fff7c96304e444b060290e04788e2650d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_debate_capstone_01 -> audio/generated/it-IT/lexical/1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('42795d71-a007-5bab-a94a-ee19c0eca835', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_debate_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85fb20486aed02aad161abe253b6189e6159e8a41aa7662faa99b3a3a6a6ef40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f313115c-3e6b-5ec6-b8ce-06be29dd54f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('42795d71-a007-5bab-a94a-ee19c0eca835', 1), '85fb20486aed02aad161abe253b6189e6159e8a41aa7662faa99b3a3a6a6ef40',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a.mp3', 1436, '2026-09-14 04:59:53.630373', 'f7d6b6012723103047a423faa02fda1fff7c96304e444b060290e04788e2650d', 'validated', '{"audio_key":"1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a","entity_key":"wf_b2_community_debate_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7d6b6012723103047a423faa02fda1fff7c96304e444b060290e04788e2650d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bec357397643598ae4bd4ed8a8c2c814389cfe462ea3dd4026515bc3091042a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_02 -> audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7753e1db-281b-50c0-8b0a-78a8aefbcc11', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c569ac0-e139-5f41-815e-c301e26d2221', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7753e1db-281b-50c0-8b0a-78a8aefbcc11', 1), '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3', 1280, '2026-09-14 04:01:16.920474', 'd6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81', 'validated', '{"audio_key":"1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94","entity_key":"lx_formal_negotiation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_02 -> audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3b9d3bd2-5f39-50e5-a7f2-7d10b4c290b4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a7c9e46-6b45-5a82-ab9d-1fccf597a3c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3b9d3bd2-5f39-50e5-a7f2-7d10b4c290b4', 1), '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3', 1280, '2026-09-14 04:01:16.920474', 'd6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81', 'validated', '{"audio_key":"1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94","entity_key":"wf_formal_negotiation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_debate_capstone_02 -> audio/generated/it-IT/lexical/1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a688bea6-b940-5503-89a8-8641b07ed89a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_debate_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57b76164f5b222c57fbd3ab5fd5a41ef6100e18de7ef0e62304d1a016b9a6b3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a87ac77-49fb-5ba4-8483-5f218b551ace', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a688bea6-b940-5503-89a8-8641b07ed89a', 1), '57b76164f5b222c57fbd3ab5fd5a41ef6100e18de7ef0e62304d1a016b9a6b3b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11.mp3', 1071, '2026-09-14 04:59:54.251110', '8ffaf00bdd39f220f87f776e6f51206b1d9594dc819825b91ce0c5cbb7ac7b57', 'validated', '{"audio_key":"1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11","entity_key":"lx_b2_community_debate_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8ffaf00bdd39f220f87f776e6f51206b1d9594dc819825b91ce0c5cbb7ac7b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_debate_capstone_02 -> audio/generated/it-IT/lexical/1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('069e4fde-6e10-57f2-952f-cf26b2b96449', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_debate_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57b76164f5b222c57fbd3ab5fd5a41ef6100e18de7ef0e62304d1a016b9a6b3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8eb11229-e2e0-5eac-8d7f-097e8112fa23', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('069e4fde-6e10-57f2-952f-cf26b2b96449', 1), '57b76164f5b222c57fbd3ab5fd5a41ef6100e18de7ef0e62304d1a016b9a6b3b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11.mp3', 1071, '2026-09-14 04:59:54.251110', '8ffaf00bdd39f220f87f776e6f51206b1d9594dc819825b91ce0c5cbb7ac7b57', 'validated', '{"audio_key":"1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11","entity_key":"wf_b2_community_debate_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8ffaf00bdd39f220f87f776e6f51206b1d9594dc819825b91ce0c5cbb7ac7b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1ee43babd859dacf44ba3ef450c7755dcce2bfb6c8c67b9ab49e58968145ad11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_nuance_05 -> audio/generated/it-IT/lexical/29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('075cb93e-6c06-54d5-8512-453b16e0c0f8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27384e051c0961396725e46f7cad538f16de50fca67d6a092427a4b1bfc08e8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d910201-617c-59e6-a0a6-6c9694636469', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('075cb93e-6c06-54d5-8512-453b16e0c0f8', 1), '27384e051c0961396725e46f7cad538f16de50fca67d6a092427a4b1bfc08e8d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539.mp3', 1071, '2026-09-14 04:59:54.723277', '23bd48f758cdd1c84e202c55081632275a0772701aebaf754b0ac2708e694c92', 'validated', '{"audio_key":"29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539","entity_key":"lx_register_and_nuance_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"23bd48f758cdd1c84e202c55081632275a0772701aebaf754b0ac2708e694c92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_nuance_05 -> audio/generated/it-IT/lexical/29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('535c870e-3a6d-5b3d-94bf-24f5d24ee85d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27384e051c0961396725e46f7cad538f16de50fca67d6a092427a4b1bfc08e8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3da01e4-1177-5f1b-be96-1f074c69851c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('535c870e-3a6d-5b3d-94bf-24f5d24ee85d', 1), '27384e051c0961396725e46f7cad538f16de50fca67d6a092427a4b1bfc08e8d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539.mp3', 1071, '2026-09-14 04:59:54.723277', '23bd48f758cdd1c84e202c55081632275a0772701aebaf754b0ac2708e694c92', 'validated', '{"audio_key":"29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539","entity_key":"wf_register_and_nuance_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"23bd48f758cdd1c84e202c55081632275a0772701aebaf754b0ac2708e694c92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/29b1d4af7c9693403a049d325d7adc6a1fe81b2bddac41c1464060dd25d06539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_06 -> audio/generated/it-IT/lexical/2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d41b39f6-e0d6-5c03-aefe-a4eda74a2d7f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f09985dc959e170465deb211d593031bba28ed74cb2e4bcdc27da0b5cf0d4d0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a86fe9f0-ee80-580e-a416-7b9dc244b431', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d41b39f6-e0d6-5c03-aefe-a4eda74a2d7f', 1), 'f09985dc959e170465deb211d593031bba28ed74cb2e4bcdc27da0b5cf0d4d0e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b.mp3', 1071, '2026-09-14 04:59:55.327123', '97718acd6c9758289b40139543a16b275e17cc07c69790114eaf33a39aeedad9', 'validated', '{"audio_key":"2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b","entity_key":"lx_formal_negotiation_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"97718acd6c9758289b40139543a16b275e17cc07c69790114eaf33a39aeedad9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_06 -> audio/generated/it-IT/lexical/2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9d6955b3-8a6c-5f49-b58b-ef07a6370091', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f09985dc959e170465deb211d593031bba28ed74cb2e4bcdc27da0b5cf0d4d0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2f37605-1b5e-55be-a2a6-f6eb3d1463f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9d6955b3-8a6c-5f49-b58b-ef07a6370091', 1), 'f09985dc959e170465deb211d593031bba28ed74cb2e4bcdc27da0b5cf0d4d0e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b.mp3', 1071, '2026-09-14 04:59:55.327123', '97718acd6c9758289b40139543a16b275e17cc07c69790114eaf33a39aeedad9', 'validated', '{"audio_key":"2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b","entity_key":"wf_formal_negotiation_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"97718acd6c9758289b40139543a16b275e17cc07c69790114eaf33a39aeedad9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2bb5c60e5f930280c7070832daade58f7a255c9c907dc24f542c0ad07ec0fb4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_choices_06 -> audio/generated/it-IT/lexical/331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6628be2d-03c8-5c32-95af-d9356dc3a87c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_choices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a26bd094c60b15ed0110ed16277a8fe337afdeaddf9e961af23070c4cec55d95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4e8a40f-22d5-5a91-8acb-b6956c67ceb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6628be2d-03c8-5c32-95af-d9356dc3a87c', 1), 'a26bd094c60b15ed0110ed16277a8fe337afdeaddf9e961af23070c4cec55d95',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1.mp3', 1253, '2026-09-14 04:59:55.785135', '1fc6630f7d311b7daa6564440338a9977114939ef9d8287fe5b4473df13bebd1', 'validated', '{"audio_key":"331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1","entity_key":"lx_counterfactual_choices_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1fc6630f7d311b7daa6564440338a9977114939ef9d8287fe5b4473df13bebd1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_choices_06 -> audio/generated/it-IT/lexical/331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('46c1fd6e-9c48-5353-af2b-2507cdf16b05', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_choices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a26bd094c60b15ed0110ed16277a8fe337afdeaddf9e961af23070c4cec55d95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f81416c-dee7-5b8d-8313-beb47b3c72bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('46c1fd6e-9c48-5353-af2b-2507cdf16b05', 1), 'a26bd094c60b15ed0110ed16277a8fe337afdeaddf9e961af23070c4cec55d95',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1.mp3', 1253, '2026-09-14 04:59:55.785135', '1fc6630f7d311b7daa6564440338a9977114939ef9d8287fe5b4473df13bebd1', 'validated', '{"audio_key":"331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1","entity_key":"wf_counterfactual_choices_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1fc6630f7d311b7daa6564440338a9977114939ef9d8287fe5b4473df13bebd1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/331379e78f8fc2d18073e8a5017214f9977974b991697f4372d030b64ab129f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesive_argument_05 -> audio/generated/it-IT/lexical/3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('00c6a9cf-13d7-5e89-91df-f529df01ff46', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesive_argument_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25d6a37d19f162dcae4d00319a5e8318f2a7b8dafffd81c9f83fbe9b21b37c36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87dd1066-8d94-580b-bd20-025ccf047392', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('00c6a9cf-13d7-5e89-91df-f529df01ff46', 1), '25d6a37d19f162dcae4d00319a5e8318f2a7b8dafffd81c9f83fbe9b21b37c36',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66.mp3', 1201, '2026-09-14 04:59:56.377094', 'a1ef66b01b80261add3c07d3ae54a341f0e1eceb009b5c3baed15b86b0e72d2f', 'validated', '{"audio_key":"3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66","entity_key":"lx_cohesive_argument_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a1ef66b01b80261add3c07d3ae54a341f0e1eceb009b5c3baed15b86b0e72d2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesive_argument_05 -> audio/generated/it-IT/lexical/3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09682a26-8323-5031-8f6a-aef3d9c9667a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesive_argument_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25d6a37d19f162dcae4d00319a5e8318f2a7b8dafffd81c9f83fbe9b21b37c36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28bcfd34-958d-5e78-8d8a-00b17a1d3dda', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09682a26-8323-5031-8f6a-aef3d9c9667a', 1), '25d6a37d19f162dcae4d00319a5e8318f2a7b8dafffd81c9f83fbe9b21b37c36',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66.mp3', 1201, '2026-09-14 04:59:56.377094', 'a1ef66b01b80261add3c07d3ae54a341f0e1eceb009b5c3baed15b86b0e72d2f', 'validated', '{"audio_key":"3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66","entity_key":"wf_cohesive_argument_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a1ef66b01b80261add3c07d3ae54a341f0e1eceb009b5c3baed15b86b0e72d2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3862f8e1db749211a1258d6ac08017c6c0cd1fd2281982bf34f5449cc67cfa66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_choices_04 -> audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc4327d0-cdee-515c-903f-e20d62f92897', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_choices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('574b4c8c-df94-5430-8744-104cf6726946', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc4327d0-cdee-515c-903f-e20d62f92897', 1), 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3', 1253, '2026-09-14 03:26:49.702621', '57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2', 'validated', '{"audio_key":"3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769","entity_key":"lx_counterfactual_choices_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_choices_04 -> audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dcfacdeb-0a77-56cf-9fd1-b2b8121dde6b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_choices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd0352be-8129-5667-a873-72a301914ab3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dcfacdeb-0a77-56cf-9fd1-b2b8121dde6b', 1), 'd282ead8a7297e086c31fd3040d77a612ebb174f753d3753d7cbcc56bda58395',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3', 1253, '2026-09-14 03:26:49.702621', '57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2', 'validated', '{"audio_key":"3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769","entity_key":"wf_counterfactual_choices_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"57f81095c2ed274f7b291c3688f337af5d3a6bc123390386b8361dca329896b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3ffc3ec100b577f9104ba3d136122f9cfcaf7f250f9ba15988e5dff25df3f769.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_subjunctive_05 -> audio/generated/it-IT/lexical/40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('01c79e53-4edd-5714-8754-f312b0e3a749', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_subjunctive_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3327a8069331d2774986154db57bd4c0e4bd7adc617fb4d01744050a697c0a07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38224050-c6a1-5e23-8a6c-d29ff805cc7c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('01c79e53-4edd-5714-8754-f312b0e3a749', 1), '3327a8069331d2774986154db57bd4c0e4bd7adc617fb4d01744050a697c0a07',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1.mp3', 1280, '2026-09-14 04:59:56.801151', '3908463759a1ac546ed378ac8ec66a17c4416532714e0f5f7738c619ac283bfb', 'validated', '{"audio_key":"40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1","entity_key":"lx_stance_and_subjunctive_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3908463759a1ac546ed378ac8ec66a17c4416532714e0f5f7738c619ac283bfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_subjunctive_05 -> audio/generated/it-IT/lexical/40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4ba47a92-e344-588f-8bdb-9e1ab2ebc6bf', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_subjunctive_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3327a8069331d2774986154db57bd4c0e4bd7adc617fb4d01744050a697c0a07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e44f1082-f883-5453-b525-05c38cb7e173', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4ba47a92-e344-588f-8bdb-9e1ab2ebc6bf', 1), '3327a8069331d2774986154db57bd4c0e4bd7adc617fb4d01744050a697c0a07',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1.mp3', 1280, '2026-09-14 04:59:56.801151', '3908463759a1ac546ed378ac8ec66a17c4416532714e0f5f7738c619ac283bfb', 'validated', '{"audio_key":"40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1","entity_key":"wf_stance_and_subjunctive_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3908463759a1ac546ed378ac8ec66a17c4416532714e0f5f7738c619ac283bfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/40bc842ebc5d2965134b4f3e5189a399c3e3d27a4d67c3dcf70cca84efe9eed1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_subjunctive_04 -> audio/generated/it-IT/lexical/4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ecec254-89a3-5abe-aeeb-68f626ef6ef0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_subjunctive_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c93a07cb128f6ef5ef04b152327e9a6bb8256415722fb59bccbb984bf83ceb11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e730ded2-3a45-5546-aa3d-3b8e1be254b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ecec254-89a3-5abe-aeeb-68f626ef6ef0', 1), 'c93a07cb128f6ef5ef04b152327e9a6bb8256415722fb59bccbb984bf83ceb11',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430.mp3', 1488, '2026-09-14 04:59:57.380683', '73f9a36c031e8b2dd8dc917eba47d80526038d6c78269fa252eff9f3ce09543c', 'validated', '{"audio_key":"4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430","entity_key":"lx_stance_and_subjunctive_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"73f9a36c031e8b2dd8dc917eba47d80526038d6c78269fa252eff9f3ce09543c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_subjunctive_04 -> audio/generated/it-IT/lexical/4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5cf55c30-ee91-575f-93ee-96ce8fd668c7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_subjunctive_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c93a07cb128f6ef5ef04b152327e9a6bb8256415722fb59bccbb984bf83ceb11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83282fd5-7fba-5117-9174-58baec088edf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5cf55c30-ee91-575f-93ee-96ce8fd668c7', 1), 'c93a07cb128f6ef5ef04b152327e9a6bb8256415722fb59bccbb984bf83ceb11',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430.mp3', 1488, '2026-09-14 04:59:57.380683', '73f9a36c031e8b2dd8dc917eba47d80526038d6c78269fa252eff9f3ce09543c', 'validated', '{"audio_key":"4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430","entity_key":"wf_stance_and_subjunctive_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"73f9a36c031e8b2dd8dc917eba47d80526038d6c78269fa252eff9f3ce09543c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4ba87538c5a3a66d80f37cd2ce7c843fde5b613a4b8d2b74c7e23782cbbb1430.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_claims_02 -> audio/generated/it-IT/lexical/4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0eb54ec5-f2c8-597e-bbfa-d1ca120bb469', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_claims_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19311e0d1adb6721527bd792b0b1fe98bcc87edccb79e760ec157775db9d18e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1081df9-61d0-5bb5-92f4-0aaaee52b4da', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0eb54ec5-f2c8-597e-bbfa-d1ca120bb469', 1), '19311e0d1adb6721527bd792b0b1fe98bcc87edccb79e760ec157775db9d18e2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b.mp3', 1149, '2026-09-14 04:59:57.800262', 'ef7aa2f00b3857bc6abaebfeb2fd7df840b73f57635deb1cef82362518575c72', 'validated', '{"audio_key":"4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b","entity_key":"lx_evidence_and_claims_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ef7aa2f00b3857bc6abaebfeb2fd7df840b73f57635deb1cef82362518575c72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_claims_02 -> audio/generated/it-IT/lexical/4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3947ef8c-6bf7-5a0f-8ed0-36386358d510', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_claims_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19311e0d1adb6721527bd792b0b1fe98bcc87edccb79e760ec157775db9d18e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cfc8fdd-e29a-5e86-9290-1a8ba760f6c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3947ef8c-6bf7-5a0f-8ed0-36386358d510', 1), '19311e0d1adb6721527bd792b0b1fe98bcc87edccb79e760ec157775db9d18e2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b.mp3', 1149, '2026-09-14 04:59:57.800262', 'ef7aa2f00b3857bc6abaebfeb2fd7df840b73f57635deb1cef82362518575c72', 'validated', '{"audio_key":"4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b","entity_key":"wf_evidence_and_claims_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ef7aa2f00b3857bc6abaebfeb2fd7df840b73f57635deb1cef82362518575c72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4f6edad3bba85db6eb3c8108236ca55dba2e9eded2a39dcd92863fe857ab3d2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_contrast_03 -> audio/generated/it-IT/lexical/4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('33d30dde-1997-5a11-aa65-2f2ea571b20d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_contrast_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '935eb7a4870a2181e246f5b63d24ca3afaaa5415a55b439f4279155f62b96d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2334f51-fd10-5361-b872-af2fdd548660', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('33d30dde-1997-5a11-aa65-2f2ea571b20d', 1), '935eb7a4870a2181e246f5b63d24ca3afaaa5415a55b439f4279155f62b96d8b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4.mp3', 1071, '2026-09-14 04:59:58.585658', '1e0005b7d15585ba4d6884ceb889648b2c0e948c8788a091980b8ba8ee9c5501', 'validated', '{"audio_key":"4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4","entity_key":"lx_concession_and_contrast_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1e0005b7d15585ba4d6884ceb889648b2c0e948c8788a091980b8ba8ee9c5501","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_contrast_03 -> audio/generated/it-IT/lexical/4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f60cddbb-7d3a-5a4d-9f56-b1523c7303a3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_contrast_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '935eb7a4870a2181e246f5b63d24ca3afaaa5415a55b439f4279155f62b96d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db928a8c-0ace-5542-a748-8f468f8746b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f60cddbb-7d3a-5a4d-9f56-b1523c7303a3', 1), '935eb7a4870a2181e246f5b63d24ca3afaaa5415a55b439f4279155f62b96d8b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4.mp3', 1071, '2026-09-14 04:59:58.585658', '1e0005b7d15585ba4d6884ceb889648b2c0e948c8788a091980b8ba8ee9c5501', 'validated', '{"audio_key":"4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4","entity_key":"wf_concession_and_contrast_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1e0005b7d15585ba4d6884ceb889648b2c0e948c8788a091980b8ba8ee9c5501","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4f911f1f8647acbded87f8922fb54f17854a6acb72e3d892f62b4d1c33c7d6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_contrast_04 -> audio/generated/it-IT/lexical/57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('72f9edca-83f2-5018-ba9a-1101a6cf9674', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_contrast_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb46b0bc28f98c67bf56b9c34f463acfd0588d84b38468ca57f0b4418b7139b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90e83672-d138-5d6d-ae17-96f8d476bdc4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('72f9edca-83f2-5018-ba9a-1101a6cf9674', 1), 'eb46b0bc28f98c67bf56b9c34f463acfd0588d84b38468ca57f0b4418b7139b4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408.mp3', 1018, '2026-09-14 04:59:58.890808', 'd3a3894242f22366f9b0ec0c1e6fb47e5e7b2c2e687400820c565930215661d2', 'validated', '{"audio_key":"57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408","entity_key":"lx_concession_and_contrast_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d3a3894242f22366f9b0ec0c1e6fb47e5e7b2c2e687400820c565930215661d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_contrast_04 -> audio/generated/it-IT/lexical/57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('84e49bad-2f34-5731-bae8-697b900f5508', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_contrast_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb46b0bc28f98c67bf56b9c34f463acfd0588d84b38468ca57f0b4418b7139b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3965493e-777d-5136-9db9-22c2097e3dbe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('84e49bad-2f34-5731-bae8-697b900f5508', 1), 'eb46b0bc28f98c67bf56b9c34f463acfd0588d84b38468ca57f0b4418b7139b4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408.mp3', 1018, '2026-09-14 04:59:58.890808', 'd3a3894242f22366f9b0ec0c1e6fb47e5e7b2c2e687400820c565930215661d2', 'validated', '{"audio_key":"57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408","entity_key":"wf_concession_and_contrast_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d3a3894242f22366f9b0ec0c1e6fb47e5e7b2c2e687400820c565930215661d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/57b23935fe7944116ac797480674776401ffbea47df2ca073813484c40be0408.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_debate_capstone_06 -> audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa266083-71ff-5447-aa9d-5efbd4774a7e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_debate_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea1385e4-ad99-52fd-bb99-74b4b7de9baf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa266083-71ff-5447-aa9d-5efbd4774a7e', 1), '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3', 1149, '2026-09-14 04:59:59.633877', 'e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3', 'validated', '{"audio_key":"57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e","entity_key":"lx_b2_community_debate_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_debate_capstone_06 -> audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ecb5196e-056f-52c2-846a-56bb1fd30423', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_debate_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75cad8f2-143f-5340-8ffe-d2663fc6ab83', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ecb5196e-056f-52c2-846a-56bb1fd30423', 1), '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3', 1149, '2026-09-14 04:59:59.633877', 'e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3', 'validated', '{"audio_key":"57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e","entity_key":"wf_b2_community_debate_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_nuance_02 -> audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('44d9971b-1031-5034-89bb-1fd15ebbcde5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1fb996b-3c96-5e31-9b4b-73c7e5ff7b3c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('44d9971b-1031-5034-89bb-1fd15ebbcde5', 1), '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3', 1149, '2026-09-14 04:59:59.971180', '4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d', 'validated', '{"audio_key":"58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c","entity_key":"lx_register_and_nuance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_nuance_02 -> audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('67993535-4910-5d21-912e-1a465c6b0ac4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23c6f562-1f8b-5536-a20d-85e40a31f1c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('67993535-4910-5d21-912e-1a465c6b0ac4', 1), '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3', 1149, '2026-09-14 04:59:59.971180', '4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d', 'validated', '{"audio_key":"58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c","entity_key":"wf_register_and_nuance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_01 -> audio/generated/it-IT/lexical/5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('808f253d-007e-551d-92cc-430f64e5fbf3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f98654534361c0453a6df2432319649df7e3dbbe29f7ef53806b84edaae2b5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('789d399c-0ae0-5e00-9f06-4a437d8d5f98', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('808f253d-007e-551d-92cc-430f64e5fbf3', 1), '4f98654534361c0453a6df2432319649df7e3dbbe29f7ef53806b84edaae2b5d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59.mp3', 1071, '2026-09-14 05:00:00.633495', '4441791b3d5e9ed1e02d51782d0c4844079cda83c7a770e54f4ca296d0253b81', 'validated', '{"audio_key":"5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59","entity_key":"lx_formal_negotiation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4441791b3d5e9ed1e02d51782d0c4844079cda83c7a770e54f4ca296d0253b81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_01 -> audio/generated/it-IT/lexical/5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f2a799f5-0abc-58ca-9413-2a7ca99a987c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f98654534361c0453a6df2432319649df7e3dbbe29f7ef53806b84edaae2b5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d539b68-f123-51bb-ac1c-50a687ca0079', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f2a799f5-0abc-58ca-9413-2a7ca99a987c', 1), '4f98654534361c0453a6df2432319649df7e3dbbe29f7ef53806b84edaae2b5d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59.mp3', 1071, '2026-09-14 05:00:00.633495', '4441791b3d5e9ed1e02d51782d0c4844079cda83c7a770e54f4ca296d0253b81', 'validated', '{"audio_key":"5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59","entity_key":"wf_formal_negotiation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4441791b3d5e9ed1e02d51782d0c4844079cda83c7a770e54f4ca296d0253b81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5e79441e74f1557794d6ed8ae4a56002f0587698f1f040b9576ffc2574975f59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_contrast_05 -> audio/generated/it-IT/lexical/6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71e3f3d1-802f-5902-a628-050401860172', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_contrast_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a9fada7a05eb38d790aaf1825d507f64c2e832a24fe25ce4ffe28e0b39b607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bc33e7a-02ae-54d7-afef-44ab332f7f5b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71e3f3d1-802f-5902-a628-050401860172', 1), 'f0a9fada7a05eb38d790aaf1825d507f64c2e832a24fe25ce4ffe28e0b39b607',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020.mp3', 1280, '2026-09-14 05:00:01.032128', '8d04e0c6d43ae89db93ecbe76199f1eae84e5546ad957e0f1f70b002fd77747f', 'validated', '{"audio_key":"6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020","entity_key":"lx_concession_and_contrast_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d04e0c6d43ae89db93ecbe76199f1eae84e5546ad957e0f1f70b002fd77747f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_contrast_05 -> audio/generated/it-IT/lexical/6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e667b3f6-ca87-5e2b-9387-e3b53fd973c3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_contrast_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a9fada7a05eb38d790aaf1825d507f64c2e832a24fe25ce4ffe28e0b39b607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d27e5dce-bf8e-546b-acb9-97e011740204', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e667b3f6-ca87-5e2b-9387-e3b53fd973c3', 1), 'f0a9fada7a05eb38d790aaf1825d507f64c2e832a24fe25ce4ffe28e0b39b607',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020.mp3', 1280, '2026-09-14 05:00:01.032128', '8d04e0c6d43ae89db93ecbe76199f1eae84e5546ad957e0f1f70b002fd77747f', 'validated', '{"audio_key":"6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020","entity_key":"wf_concession_and_contrast_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d04e0c6d43ae89db93ecbe76199f1eae84e5546ad957e0f1f70b002fd77747f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6ddc85d05aecf5f956a8125a185e7bfad2c3cc89ca6998fac236913ca2a0e020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_04 -> audio/generated/it-IT/lexical/6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5fb305e2-8833-5b79-9635-612e5b502168', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b642444bb5efb00a841614be1a5ad85be2c6ddd0ecc0731eb574a30492eb1083'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de188f55-3772-5fef-b266-8a947abef174', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5fb305e2-8833-5b79-9635-612e5b502168', 1), 'b642444bb5efb00a841614be1a5ad85be2c6ddd0ecc0731eb574a30492eb1083',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7.mp3', 1097, '2026-09-14 05:00:01.664246', '7c333c4fabb24878dce72251537df8a770472ceaf3211b1ffb185377ddbf9fa4', 'validated', '{"audio_key":"6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7","entity_key":"lx_formal_negotiation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7c333c4fabb24878dce72251537df8a770472ceaf3211b1ffb185377ddbf9fa4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_04 -> audio/generated/it-IT/lexical/6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c850205e-e1b0-52ff-a4d4-d97e1165fe84', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b642444bb5efb00a841614be1a5ad85be2c6ddd0ecc0731eb574a30492eb1083'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23dd806c-3923-53d5-9b10-b5cfc37b2bc5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c850205e-e1b0-52ff-a4d4-d97e1165fe84', 1), 'b642444bb5efb00a841614be1a5ad85be2c6ddd0ecc0731eb574a30492eb1083',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7.mp3', 1097, '2026-09-14 05:00:01.664246', '7c333c4fabb24878dce72251537df8a770472ceaf3211b1ffb185377ddbf9fa4', 'validated', '{"audio_key":"6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7","entity_key":"wf_formal_negotiation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7c333c4fabb24878dce72251537df8a770472ceaf3211b1ffb185377ddbf9fa4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6fabc88dc50ad9cd84cffecefd63a1296a4d9639ca884d94726b2c58953359d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_and_impersonal_05 -> audio/generated/it-IT/lexical/73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68593c1d-c2aa-52be-b0bb-50f29e57b6f6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_and_impersonal_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2965d93d43d8595276805d6ee0f81f2426a0d71416a2c83429c4128777ba1e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e7bb691-22b9-5fe3-91ec-5b8fdbfbd6a7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68593c1d-c2aa-52be-b0bb-50f29e57b6f6', 1), 'f2965d93d43d8595276805d6ee0f81f2426a0d71416a2c83429c4128777ba1e7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b.mp3', 1201, '2026-09-14 05:00:02.090816', '6551ce61d2cc417d43f366be11011b68419cbf8f7c72cca882197911a2d344f8', 'validated', '{"audio_key":"73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b","entity_key":"lx_passive_and_impersonal_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6551ce61d2cc417d43f366be11011b68419cbf8f7c72cca882197911a2d344f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_and_impersonal_05 -> audio/generated/it-IT/lexical/73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('679dc0b4-6d0b-5303-b8b4-335303c7bc41', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_and_impersonal_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2965d93d43d8595276805d6ee0f81f2426a0d71416a2c83429c4128777ba1e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a8c1d4b-909c-5c16-ac1a-7d0de99ec227', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('679dc0b4-6d0b-5303-b8b4-335303c7bc41', 1), 'f2965d93d43d8595276805d6ee0f81f2426a0d71416a2c83429c4128777ba1e7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b.mp3', 1201, '2026-09-14 05:00:02.090816', '6551ce61d2cc417d43f366be11011b68419cbf8f7c72cca882197911a2d344f8', 'validated', '{"audio_key":"73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b","entity_key":"wf_passive_and_impersonal_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6551ce61d2cc417d43f366be11011b68419cbf8f7c72cca882197911a2d344f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/73369d86ce3df0eb2dd265607fe8926da17f2031e0db47d782fc4ecf55502b8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_choices_05 -> audio/generated/it-IT/lexical/78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c2bcf3c4-ff4b-5eef-b38f-58d194728e13', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_choices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01e34aaf57594c90b4922e09c97b1ba81e27278d71586ea50cf5ed314cbf1daf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63eaf614-3837-5406-a054-a87203c59fcd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c2bcf3c4-ff4b-5eef-b38f-58d194728e13', 1), '01e34aaf57594c90b4922e09c97b1ba81e27278d71586ea50cf5ed314cbf1daf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb.mp3', 966, '2026-09-14 05:00:02.692062', '18c1cb00b2ece48b2b32be5423f61907c9abeeca2b6a75ede5487b97a20ab0eb', 'validated', '{"audio_key":"78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb","entity_key":"lx_counterfactual_choices_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"18c1cb00b2ece48b2b32be5423f61907c9abeeca2b6a75ede5487b97a20ab0eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_choices_05 -> audio/generated/it-IT/lexical/78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0caa149-2e8d-5825-9af8-151575b88782', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_choices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01e34aaf57594c90b4922e09c97b1ba81e27278d71586ea50cf5ed314cbf1daf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80c711a5-d500-57f5-8167-5bb7ba82e025', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0caa149-2e8d-5825-9af8-151575b88782', 1), '01e34aaf57594c90b4922e09c97b1ba81e27278d71586ea50cf5ed314cbf1daf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb.mp3', 966, '2026-09-14 05:00:02.692062', '18c1cb00b2ece48b2b32be5423f61907c9abeeca2b6a75ede5487b97a20ab0eb', 'validated', '{"audio_key":"78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb","entity_key":"wf_counterfactual_choices_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"18c1cb00b2ece48b2b32be5423f61907c9abeeca2b6a75ede5487b97a20ab0eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78048441556710d9c45d257329f4f3ca87a7596c95509c936bbef7350461bcfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_subjunctive_06 -> audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('86577e80-48ed-57eb-b27c-23e8517bf697', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_subjunctive_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba39c67f-5386-510d-aad7-497a8a68eada', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('86577e80-48ed-57eb-b27c-23e8517bf697', 1), '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3', 1071, '2026-09-14 04:01:27.871753', '1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074', 'validated', '{"audio_key":"7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513","entity_key":"lx_stance_and_subjunctive_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_subjunctive_06 -> audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48739419-087f-5d9d-a216-9a582f1abb8a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_subjunctive_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5079287-f781-55d4-add2-5cf626e9b914', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48739419-087f-5d9d-a216-9a582f1abb8a', 1), '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3', 1071, '2026-09-14 04:01:27.871753', '1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074', 'validated', '{"audio_key":"7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513","entity_key":"wf_stance_and_subjunctive_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_debate_capstone_03 -> audio/generated/it-IT/lexical/7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fe195a6a-28ce-5e01-9b9b-efbcc49251e2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_debate_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '325c95999d1905f49f903066c5fb8ab884f88431d73fecf4be1befd2ca679322'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e17857f6-c964-5889-b044-c00be6ffe9e2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fe195a6a-28ce-5e01-9b9b-efbcc49251e2', 1), '325c95999d1905f49f903066c5fb8ab884f88431d73fecf4be1befd2ca679322',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0.mp3', 1097, '2026-09-14 05:00:03.079307', '38ea62c28a786dfe515b235cf28257d3e58c6d303712b31231287e30530d65d1', 'validated', '{"audio_key":"7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0","entity_key":"lx_b2_community_debate_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"38ea62c28a786dfe515b235cf28257d3e58c6d303712b31231287e30530d65d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_debate_capstone_03 -> audio/generated/it-IT/lexical/7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('49efd676-fece-576c-8d47-32f58108a42f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_debate_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '325c95999d1905f49f903066c5fb8ab884f88431d73fecf4be1befd2ca679322'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef1ae4ff-0eb1-58de-8692-9e16a23738df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('49efd676-fece-576c-8d47-32f58108a42f', 1), '325c95999d1905f49f903066c5fb8ab884f88431d73fecf4be1befd2ca679322',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0.mp3', 1097, '2026-09-14 05:00:03.079307', '38ea62c28a786dfe515b235cf28257d3e58c6d303712b31231287e30530d65d1', 'validated', '{"audio_key":"7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0","entity_key":"wf_b2_community_debate_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"38ea62c28a786dfe515b235cf28257d3e58c6d303712b31231287e30530d65d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7f961212267bc5db534e52401bb377e3d66326fac8feb8e24e31c7ddf40f96e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_and_impersonal_01 -> audio/generated/it-IT/lexical/802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55eea4b5-69ef-5ec3-9d5e-4a51a368f780', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_and_impersonal_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60988cbdd8dffbf2d616e1141687c9f6a298086a7fd202b43995ad5e2422c684'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36b23a93-2cb1-577e-af4a-c9c45eab3ea3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55eea4b5-69ef-5ec3-9d5e-4a51a368f780', 1), '60988cbdd8dffbf2d616e1141687c9f6a298086a7fd202b43995ad5e2422c684',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721.mp3', 1097, '2026-09-14 05:00:03.689466', '064b0c89d0ff0163d7e705c50d6abaee585965b96e6594fcf76d5f89bb04b8e2', 'validated', '{"audio_key":"802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721","entity_key":"lx_passive_and_impersonal_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"064b0c89d0ff0163d7e705c50d6abaee585965b96e6594fcf76d5f89bb04b8e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_and_impersonal_01 -> audio/generated/it-IT/lexical/802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0cdc5064-d8c2-5d25-903c-46e856988707', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_and_impersonal_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60988cbdd8dffbf2d616e1141687c9f6a298086a7fd202b43995ad5e2422c684'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efad7911-f401-5ce6-8a2f-cc5697d9ebc8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0cdc5064-d8c2-5d25-903c-46e856988707', 1), '60988cbdd8dffbf2d616e1141687c9f6a298086a7fd202b43995ad5e2422c684',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721.mp3', 1097, '2026-09-14 05:00:03.689466', '064b0c89d0ff0163d7e705c50d6abaee585965b96e6594fcf76d5f89bb04b8e2', 'validated', '{"audio_key":"802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721","entity_key":"wf_passive_and_impersonal_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"064b0c89d0ff0163d7e705c50d6abaee585965b96e6594fcf76d5f89bb04b8e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/802f3b02cf1c619c49a87ec93a49b1da4dc2e97e379c9cd6018d419e6beb4721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_and_impersonal_02 -> audio/generated/it-IT/lexical/810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('527ab649-1482-5001-9ce4-ca5a1540044c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_and_impersonal_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c3015470008745f4ed056e220020d0d3d68ab3e301953a2ad1af91d10446798'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47de181c-963a-5fb9-a4c1-69f4683ed3d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('527ab649-1482-5001-9ce4-ca5a1540044c', 1), '2c3015470008745f4ed056e220020d0d3d68ab3e301953a2ad1af91d10446798',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194.mp3', 1071, '2026-09-14 05:00:04.151385', 'f925c73082c5fbbf9d26e97a4ce36c90c8fbb36691221254eb6f4fd7d40b0629', 'validated', '{"audio_key":"810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194","entity_key":"lx_passive_and_impersonal_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f925c73082c5fbbf9d26e97a4ce36c90c8fbb36691221254eb6f4fd7d40b0629","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_and_impersonal_02 -> audio/generated/it-IT/lexical/810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1274ae9a-4623-5a14-9fc6-cf6305d39ca5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_and_impersonal_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c3015470008745f4ed056e220020d0d3d68ab3e301953a2ad1af91d10446798'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c326fe5f-b47f-506f-903d-bea64fe1854e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1274ae9a-4623-5a14-9fc6-cf6305d39ca5', 1), '2c3015470008745f4ed056e220020d0d3d68ab3e301953a2ad1af91d10446798',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194.mp3', 1071, '2026-09-14 05:00:04.151385', 'f925c73082c5fbbf9d26e97a4ce36c90c8fbb36691221254eb6f4fd7d40b0629', 'validated', '{"audio_key":"810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194","entity_key":"wf_passive_and_impersonal_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f925c73082c5fbbf9d26e97a4ce36c90c8fbb36691221254eb6f4fd7d40b0629","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/810c1ed9d15c3ea68c64ff8ed381d493d624fcf07ef5c9d01f428eecb127b194.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_discourse_05 -> audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a9033e7-011b-5ba3-9c6e-9f1ca1b649ee', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_discourse_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cece133-ee00-542d-8090-16cfea924fb1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a9033e7-011b-5ba3-9c6e-9f1ca1b649ee', 1), '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3', 1097, '2026-09-14 04:01:30.113779', '2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401', 'validated', '{"audio_key":"8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37","entity_key":"lx_reported_discourse_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_discourse_05 -> audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b986f3a5-9f77-59ae-ad4b-7f8b5cb52ecd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_discourse_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bca4ab14-72cc-5acc-b1de-4e58abb0b9c4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b986f3a5-9f77-59ae-ad4b-7f8b5cb52ecd', 1), '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3', 1097, '2026-09-14 04:01:30.113779', '2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401', 'validated', '{"audio_key":"8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37","entity_key":"wf_reported_discourse_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_claims_04 -> audio/generated/it-IT/lexical/85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('52572fea-32a6-50b5-8ef8-7add3dfdacdf', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_claims_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df11d436eb126a32a64e292b7a02b27510da03dc7ec707385cde1eef296a1635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74846367-e957-5316-afeb-464775e58790', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('52572fea-32a6-50b5-8ef8-7add3dfdacdf', 1), 'df11d436eb126a32a64e292b7a02b27510da03dc7ec707385cde1eef296a1635',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee.mp3', 1253, '2026-09-14 05:00:04.793155', 'c57bb52d3faf7ae872b9547fa4f108acf8f104c1de0eca2b0410637a6758fc10', 'validated', '{"audio_key":"85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee","entity_key":"lx_evidence_and_claims_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c57bb52d3faf7ae872b9547fa4f108acf8f104c1de0eca2b0410637a6758fc10","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_claims_04 -> audio/generated/it-IT/lexical/85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ff3157a-5660-5c76-b0af-d411c36598b3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_claims_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df11d436eb126a32a64e292b7a02b27510da03dc7ec707385cde1eef296a1635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c251b53d-c910-5e5c-80b8-aa604fac22a0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ff3157a-5660-5c76-b0af-d411c36598b3', 1), 'df11d436eb126a32a64e292b7a02b27510da03dc7ec707385cde1eef296a1635',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee.mp3', 1253, '2026-09-14 05:00:04.793155', 'c57bb52d3faf7ae872b9547fa4f108acf8f104c1de0eca2b0410637a6758fc10', 'validated', '{"audio_key":"85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee","entity_key":"wf_evidence_and_claims_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c57bb52d3faf7ae872b9547fa4f108acf8f104c1de0eca2b0410637a6758fc10","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/85be1029e7a3c553d2b44f666bf5b7684c895f5a9b2da94c37e294f03d5cc7ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_choices_01 -> audio/generated/it-IT/lexical/87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f990a0e-14c1-5619-8b81-a57825d40134', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_choices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e18338ad8f71649c1be07dc43b79c9d053057a1aaaa0cccd241030c20dbc4ad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('650a41b0-dc49-599b-bf03-b03a91f0afc4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f990a0e-14c1-5619-8b81-a57825d40134', 1), 'e18338ad8f71649c1be07dc43b79c9d053057a1aaaa0cccd241030c20dbc4ad7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6.mp3', 1097, '2026-09-14 05:00:05.131814', '493efbaaeb54d5433f4ef086e2e457831b1f804a23c44426f950e230a591263f', 'validated', '{"audio_key":"87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6","entity_key":"lx_counterfactual_choices_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"493efbaaeb54d5433f4ef086e2e457831b1f804a23c44426f950e230a591263f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_choices_01 -> audio/generated/it-IT/lexical/87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae15d9e7-4953-561f-b46d-3d87e1d393af', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_choices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e18338ad8f71649c1be07dc43b79c9d053057a1aaaa0cccd241030c20dbc4ad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66ab0aee-2197-540a-b1d3-1c86d8cca3ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae15d9e7-4953-561f-b46d-3d87e1d393af', 1), 'e18338ad8f71649c1be07dc43b79c9d053057a1aaaa0cccd241030c20dbc4ad7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6.mp3', 1097, '2026-09-14 05:00:05.131814', '493efbaaeb54d5433f4ef086e2e457831b1f804a23c44426f950e230a591263f', 'validated', '{"audio_key":"87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6","entity_key":"wf_counterfactual_choices_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"493efbaaeb54d5433f4ef086e2e457831b1f804a23c44426f950e230a591263f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/87e1c38bbf74236c8ca1497a0182a0ebead4e267ac5bf3f88f306ec1d1a9e7c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_subjunctive_02 -> audio/generated/it-IT/lexical/891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('79357a9b-d5e3-5090-81a1-b26df0e59f67', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_subjunctive_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43661b6205a9acbeeb145093f967394cd21c2cd8ff227e3d0928941042e9c88e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48c6db84-dc07-56d1-b004-1c153bb4c7fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('79357a9b-d5e3-5090-81a1-b26df0e59f67', 1), '43661b6205a9acbeeb145093f967394cd21c2cd8ff227e3d0928941042e9c88e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d.mp3', 1071, '2026-09-14 05:00:05.885899', '1a7af4bd781e18066ff7c4b142f03a02d9892c3432cbf8248ba778e333084658', 'validated', '{"audio_key":"891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d","entity_key":"lx_stance_and_subjunctive_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1a7af4bd781e18066ff7c4b142f03a02d9892c3432cbf8248ba778e333084658","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_subjunctive_02 -> audio/generated/it-IT/lexical/891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('680681ea-66ce-57c7-a18a-aac64c2cde62', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_subjunctive_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43661b6205a9acbeeb145093f967394cd21c2cd8ff227e3d0928941042e9c88e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef4bb631-a019-5501-ba83-a64ea79d41c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('680681ea-66ce-57c7-a18a-aac64c2cde62', 1), '43661b6205a9acbeeb145093f967394cd21c2cd8ff227e3d0928941042e9c88e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d.mp3', 1071, '2026-09-14 05:00:05.885899', '1a7af4bd781e18066ff7c4b142f03a02d9892c3432cbf8248ba778e333084658', 'validated', '{"audio_key":"891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d","entity_key":"wf_stance_and_subjunctive_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1a7af4bd781e18066ff7c4b142f03a02d9892c3432cbf8248ba778e333084658","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/891476bf750ae963f68b32eb8639f4e4477d1c23411b02eaae58d7cbe188478d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_discourse_02 -> audio/generated/it-IT/lexical/89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('59edc8b5-a2e5-5f5a-b3fb-5b92e34a1f3b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_discourse_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be87a589da6269360eca60f44dfbdaab1f9f9d16179693940b97c6ddd56df8ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1030152-cdc3-564d-bc4c-725700d9355b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('59edc8b5-a2e5-5f5a-b3fb-5b92e34a1f3b', 1), 'be87a589da6269360eca60f44dfbdaab1f9f9d16179693940b97c6ddd56df8ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412.mp3', 1097, '2026-09-14 05:00:06.268174', 'd492b8d7171c97f392cdb19f1507b0b2cd1a64183bb16b67a974024c7324d8ff', 'validated', '{"audio_key":"89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412","entity_key":"lx_reported_discourse_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d492b8d7171c97f392cdb19f1507b0b2cd1a64183bb16b67a974024c7324d8ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_discourse_02 -> audio/generated/it-IT/lexical/89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('68c51f96-d990-5e1c-a025-fdd1f44bafa1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_discourse_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be87a589da6269360eca60f44dfbdaab1f9f9d16179693940b97c6ddd56df8ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3a60ca1-0e5f-5ab8-88f3-450f586af62f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('68c51f96-d990-5e1c-a025-fdd1f44bafa1', 1), 'be87a589da6269360eca60f44dfbdaab1f9f9d16179693940b97c6ddd56df8ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412.mp3', 1097, '2026-09-14 05:00:06.268174', 'd492b8d7171c97f392cdb19f1507b0b2cd1a64183bb16b67a974024c7324d8ff', 'validated', '{"audio_key":"89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412","entity_key":"wf_reported_discourse_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d492b8d7171c97f392cdb19f1507b0b2cd1a64183bb16b67a974024c7324d8ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/89d4e861cd4f6a9af348067431f27800bceebb2a8bc30563c30391c1394bc412.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_claims_05 -> audio/generated/it-IT/lexical/8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c7af7087-c3d3-5841-86d9-ad5ed7a913db', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_claims_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a16b107a69bbac1bdd78c40421d86106c29e2995a6b31bea63eb0ad076dd21cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec140af9-f04b-50a1-baa1-110b49c14ab2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c7af7087-c3d3-5841-86d9-ad5ed7a913db', 1), 'a16b107a69bbac1bdd78c40421d86106c29e2995a6b31bea63eb0ad076dd21cb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b.mp3', 1201, '2026-09-14 05:00:06.943844', '37df8002c0425be68ca1722daec72e2e720a9219a58a6df9891848428d33e58b', 'validated', '{"audio_key":"8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b","entity_key":"lx_evidence_and_claims_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"37df8002c0425be68ca1722daec72e2e720a9219a58a6df9891848428d33e58b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_claims_05 -> audio/generated/it-IT/lexical/8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('770f1ca8-d033-522a-852e-fef3e8cc4719', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_claims_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a16b107a69bbac1bdd78c40421d86106c29e2995a6b31bea63eb0ad076dd21cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2106463a-9d13-570a-ab0d-91815e33eded', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('770f1ca8-d033-522a-852e-fef3e8cc4719', 1), 'a16b107a69bbac1bdd78c40421d86106c29e2995a6b31bea63eb0ad076dd21cb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b.mp3', 1201, '2026-09-14 05:00:06.943844', '37df8002c0425be68ca1722daec72e2e720a9219a58a6df9891848428d33e58b', 'validated', '{"audio_key":"8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b","entity_key":"wf_evidence_and_claims_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"37df8002c0425be68ca1722daec72e2e720a9219a58a6df9891848428d33e58b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8b8f44e195ed5564607e93064372b46240f1b5ab210eff55229910549be3855b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_03 -> audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('492c15bb-65e7-5da2-bc27-00c047bcacfe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33592dce-ad31-50d8-9ba3-157241e6e5e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('492c15bb-65e7-5da2-bc27-00c047bcacfe', 1), 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3', 1149, '2026-09-14 04:01:30.872096', '7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e', 'validated', '{"audio_key":"8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419","entity_key":"lx_formal_negotiation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_03 -> audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bfb28825-fb16-5695-b281-d69d3a3d86fc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26681056-0fdf-5be9-bd87-44b0f926b69c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bfb28825-fb16-5695-b281-d69d3a3d86fc', 1), 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3', 1149, '2026-09-14 04:01:30.872096', '7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e', 'validated', '{"audio_key":"8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419","entity_key":"wf_formal_negotiation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesive_argument_04 -> audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fda8bb00-483e-53f6-8c53-372c32926e6d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesive_argument_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e1d1ecc-f6a4-5a91-8079-85201de0f70b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fda8bb00-483e-53f6-8c53-372c32926e6d', 1), 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3', 1071, '2026-09-14 05:00:07.428257', '113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532', 'validated', '{"audio_key":"8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421","entity_key":"lx_cohesive_argument_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesive_argument_04 -> audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18b5470a-954f-5d52-b055-af9ce02bd084', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesive_argument_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ec249ed-2ab5-5173-b854-6a1357162912', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18b5470a-954f-5d52-b055-af9ce02bd084', 1), 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3', 1071, '2026-09-14 05:00:07.428257', '113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532', 'validated', '{"audio_key":"8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421","entity_key":"wf_cohesive_argument_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_and_impersonal_06 -> audio/generated/it-IT/lexical/8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9dfc5698-6c8b-58ea-bc29-9385d44da019', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_and_impersonal_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff7cc59bb2b4e5c02396b4aa9be80bb65ca782c0a2bf076113cc6456f08de64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('987de0be-0802-51d3-90f7-303820486ce0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9dfc5698-6c8b-58ea-bc29-9385d44da019', 1), 'eff7cc59bb2b4e5c02396b4aa9be80bb65ca782c0a2bf076113cc6456f08de64',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa.mp3', 1280, '2026-09-14 05:00:08.013211', '1aad0f56779ea0e63a82bcd93a570aefddc081ed786ebab9aa61763090ee52b3', 'validated', '{"audio_key":"8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa","entity_key":"lx_passive_and_impersonal_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1aad0f56779ea0e63a82bcd93a570aefddc081ed786ebab9aa61763090ee52b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_and_impersonal_06 -> audio/generated/it-IT/lexical/8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c9fd50a-eef0-5c62-9304-f2750b9489fe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_and_impersonal_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff7cc59bb2b4e5c02396b4aa9be80bb65ca782c0a2bf076113cc6456f08de64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('950d7bd9-0358-552b-9732-362e42a1f271', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c9fd50a-eef0-5c62-9304-f2750b9489fe', 1), 'eff7cc59bb2b4e5c02396b4aa9be80bb65ca782c0a2bf076113cc6456f08de64',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa.mp3', 1280, '2026-09-14 05:00:08.013211', '1aad0f56779ea0e63a82bcd93a570aefddc081ed786ebab9aa61763090ee52b3', 'validated', '{"audio_key":"8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa","entity_key":"wf_passive_and_impersonal_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1aad0f56779ea0e63a82bcd93a570aefddc081ed786ebab9aa61763090ee52b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8d46909c27e656cc1a5fd834081efd97d8fd36e61f79f5d9f633c45e3fa33baa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_contrast_01 -> audio/generated/it-IT/lexical/94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d44ac3da-bfd1-5bbf-93d1-0ce04a82854a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_contrast_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '074a332dc5f9e119022e6ca9b4547bea5d143c9c0a451e6cdc407d80d645c58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66d722d2-9042-5b60-9670-424cc8b2db9b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d44ac3da-bfd1-5bbf-93d1-0ce04a82854a', 1), '074a332dc5f9e119022e6ca9b4547bea5d143c9c0a451e6cdc407d80d645c58d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0.mp3', 966, '2026-09-14 05:00:08.392413', 'a2526b18a18cb33172f50da3fb66d38baec12a1003ba9402d1837db6766eff00', 'validated', '{"audio_key":"94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0","entity_key":"lx_concession_and_contrast_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a2526b18a18cb33172f50da3fb66d38baec12a1003ba9402d1837db6766eff00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_contrast_01 -> audio/generated/it-IT/lexical/94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f1b3d0b-7f4d-528a-92e1-d3d00cdcbd27', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_contrast_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '074a332dc5f9e119022e6ca9b4547bea5d143c9c0a451e6cdc407d80d645c58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('607be3e2-d581-5a40-a10a-3e6b74dce953', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f1b3d0b-7f4d-528a-92e1-d3d00cdcbd27', 1), '074a332dc5f9e119022e6ca9b4547bea5d143c9c0a451e6cdc407d80d645c58d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0.mp3', 966, '2026-09-14 05:00:08.392413', 'a2526b18a18cb33172f50da3fb66d38baec12a1003ba9402d1837db6766eff00', 'validated', '{"audio_key":"94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0","entity_key":"wf_concession_and_contrast_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a2526b18a18cb33172f50da3fb66d38baec12a1003ba9402d1837db6766eff00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/94de34e46a23039e049543f7394b6b1656c1b473915aace17da2c02e52a0b8e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesive_argument_01 -> audio/generated/it-IT/lexical/9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('041aebcb-021e-544f-aee9-0408d2e1516f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesive_argument_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '071057e4a85a8d5eae986b5b04653b84cfffa278a55684326b2204db6f3515d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46f4e3e9-ca3f-5a97-b01f-c5bf38b39c70', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('041aebcb-021e-544f-aee9-0408d2e1516f', 1), '071057e4a85a8d5eae986b5b04653b84cfffa278a55684326b2204db6f3515d9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12.mp3', 1071, '2026-09-14 05:00:09.093311', '5f89fe308fa16e4901ec1e01da4d4238ed2e4a205b17cac1d9c8b2495c8c9473', 'validated', '{"audio_key":"9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12","entity_key":"lx_cohesive_argument_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5f89fe308fa16e4901ec1e01da4d4238ed2e4a205b17cac1d9c8b2495c8c9473","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesive_argument_01 -> audio/generated/it-IT/lexical/9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ca417f89-0589-59c1-8332-099edfab5344', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesive_argument_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '071057e4a85a8d5eae986b5b04653b84cfffa278a55684326b2204db6f3515d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10c9b05e-4077-5c0c-bc4a-a45abfc3b101', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ca417f89-0589-59c1-8332-099edfab5344', 1), '071057e4a85a8d5eae986b5b04653b84cfffa278a55684326b2204db6f3515d9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12.mp3', 1071, '2026-09-14 05:00:09.093311', '5f89fe308fa16e4901ec1e01da4d4238ed2e4a205b17cac1d9c8b2495c8c9473', 'validated', '{"audio_key":"9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12","entity_key":"wf_cohesive_argument_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5f89fe308fa16e4901ec1e01da4d4238ed2e4a205b17cac1d9c8b2495c8c9473","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9b40f801a389faf56aca7fa51f71e3a7256fd31cac0c0cad15df715413402c12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_discourse_04 -> audio/generated/it-IT/lexical/a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4ae1e875-f72c-5fbd-af07-7c9346b7d9e6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_discourse_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e6e34ba399ae067dde9428be4aa74c0eba744b41edc782e500337fdb4bcb323'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9cd0b19-68a8-5e3b-a873-4985e032743d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4ae1e875-f72c-5fbd-af07-7c9346b7d9e6', 1), '5e6e34ba399ae067dde9428be4aa74c0eba744b41edc782e500337fdb4bcb323',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14.mp3', 1201, '2026-09-14 05:00:09.522170', 'fa32c77db2d74a27c68651a8b9299bf2f784245027d0abb6b87b517fa2ab70ed', 'validated', '{"audio_key":"a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14","entity_key":"lx_reported_discourse_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fa32c77db2d74a27c68651a8b9299bf2f784245027d0abb6b87b517fa2ab70ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_discourse_04 -> audio/generated/it-IT/lexical/a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d054576-598e-5ee9-8266-0bac5e86053c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_discourse_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e6e34ba399ae067dde9428be4aa74c0eba744b41edc782e500337fdb4bcb323'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1d61cc3-6506-577d-bb35-71fcc03db4fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d054576-598e-5ee9-8266-0bac5e86053c', 1), '5e6e34ba399ae067dde9428be4aa74c0eba744b41edc782e500337fdb4bcb323',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14.mp3', 1201, '2026-09-14 05:00:09.522170', 'fa32c77db2d74a27c68651a8b9299bf2f784245027d0abb6b87b517fa2ab70ed', 'validated', '{"audio_key":"a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14","entity_key":"wf_reported_discourse_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fa32c77db2d74a27c68651a8b9299bf2f784245027d0abb6b87b517fa2ab70ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a3befec36205077bac9157a793e550c1ada1f2bb8c04d5587042b2a007ca4c14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesive_argument_02 -> audio/generated/it-IT/lexical/a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02a66cec-1db2-5d73-b11c-a8b8c302f906', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesive_argument_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4b1f91c6e48622517acf455970a98bae97663faf37f043f46167b5a0e39a710'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d292044b-e3ff-5743-b9e1-88929ccab27b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02a66cec-1db2-5d73-b11c-a8b8c302f906', 1), 'f4b1f91c6e48622517acf455970a98bae97663faf37f043f46167b5a0e39a710',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993.mp3', 1201, '2026-09-14 05:00:10.160593', 'd38477cb523aa1272e7ebd1eec17e70ae59d43559f4d4056a1a1b3f35b8866b6', 'validated', '{"audio_key":"a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993","entity_key":"lx_cohesive_argument_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d38477cb523aa1272e7ebd1eec17e70ae59d43559f4d4056a1a1b3f35b8866b6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesive_argument_02 -> audio/generated/it-IT/lexical/a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9810d7e1-d774-5c0b-b2f9-394da788c6ed', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesive_argument_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4b1f91c6e48622517acf455970a98bae97663faf37f043f46167b5a0e39a710'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7db4cdc6-cb73-557c-b616-7612051823e6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9810d7e1-d774-5c0b-b2f9-394da788c6ed', 1), 'f4b1f91c6e48622517acf455970a98bae97663faf37f043f46167b5a0e39a710',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993.mp3', 1201, '2026-09-14 05:00:10.160593', 'd38477cb523aa1272e7ebd1eec17e70ae59d43559f4d4056a1a1b3f35b8866b6', 'validated', '{"audio_key":"a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993","entity_key":"wf_cohesive_argument_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d38477cb523aa1272e7ebd1eec17e70ae59d43559f4d4056a1a1b3f35b8866b6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a6547fb912c9a2b673659346b35c08ff022fcece64f6c65e8acb782ed1df8993.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_claims_01 -> audio/generated/it-IT/lexical/ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b038910d-bbc8-5c4c-9022-7b213b247e83', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_claims_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba70ddc5159db25539e9f80a5b0524ff8a99e03ffea12dd2eb4023a3cdd639ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd549dd6-5ed3-5e10-b2c6-35e653b081d8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b038910d-bbc8-5c4c-9022-7b213b247e83', 1), 'ba70ddc5159db25539e9f80a5b0524ff8a99e03ffea12dd2eb4023a3cdd639ce',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec.mp3', 914, '2026-09-14 05:00:10.518475', '79f6e5f228aa4d24b2bdcbd8d78d7475e86bd5edbab68921b417934d95389cbe', 'validated', '{"audio_key":"ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec","entity_key":"lx_evidence_and_claims_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"79f6e5f228aa4d24b2bdcbd8d78d7475e86bd5edbab68921b417934d95389cbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_claims_01 -> audio/generated/it-IT/lexical/ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0764e96d-5cc3-5de6-b5f5-16da5ad6a958', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_claims_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba70ddc5159db25539e9f80a5b0524ff8a99e03ffea12dd2eb4023a3cdd639ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1bad52f-c68e-5a80-a5a2-c2522754545a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0764e96d-5cc3-5de6-b5f5-16da5ad6a958', 1), 'ba70ddc5159db25539e9f80a5b0524ff8a99e03ffea12dd2eb4023a3cdd639ce',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec.mp3', 914, '2026-09-14 05:00:10.518475', '79f6e5f228aa4d24b2bdcbd8d78d7475e86bd5edbab68921b417934d95389cbe', 'validated', '{"audio_key":"ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec","entity_key":"wf_evidence_and_claims_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"79f6e5f228aa4d24b2bdcbd8d78d7475e86bd5edbab68921b417934d95389cbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ab66fdb5bffa7708297fd29a84f91ab45411ed8be655f75f92dbc6c1b18f98ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesive_argument_03 -> audio/generated/it-IT/lexical/b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bce19310-2a7d-5869-bee3-82d8f1485bd4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesive_argument_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10e3dbbd86a44ecbf28c0a0aab6277fc7464bb4286a18180c80d387e5f5847fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f45db484-f8e8-511b-b9d3-6ea7985a715a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bce19310-2a7d-5869-bee3-82d8f1485bd4', 1), '10e3dbbd86a44ecbf28c0a0aab6277fc7464bb4286a18180c80d387e5f5847fa',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9.mp3', 1253, '2026-09-14 05:00:11.171689', 'aba3e3aac8c256de5522fc74696da0b554fdbc0aa2434e1ce5635b3d2b57b620', 'validated', '{"audio_key":"b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9","entity_key":"lx_cohesive_argument_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"aba3e3aac8c256de5522fc74696da0b554fdbc0aa2434e1ce5635b3d2b57b620","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesive_argument_03 -> audio/generated/it-IT/lexical/b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1d83866-dd9f-5950-91bc-47677eaee88a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesive_argument_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10e3dbbd86a44ecbf28c0a0aab6277fc7464bb4286a18180c80d387e5f5847fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9806e673-f1e0-5326-b0ef-87388521d21e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1d83866-dd9f-5950-91bc-47677eaee88a', 1), '10e3dbbd86a44ecbf28c0a0aab6277fc7464bb4286a18180c80d387e5f5847fa',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9.mp3', 1253, '2026-09-14 05:00:11.171689', 'aba3e3aac8c256de5522fc74696da0b554fdbc0aa2434e1ce5635b3d2b57b620', 'validated', '{"audio_key":"b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9","entity_key":"wf_cohesive_argument_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"aba3e3aac8c256de5522fc74696da0b554fdbc0aa2434e1ce5635b3d2b57b620","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b1eda6ab6e8bc99ca5adb47967ffa671b3dc60d0820a89219386b946f94d00b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_claims_03 -> audio/generated/it-IT/lexical/b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('472bbb9f-9cb7-5348-8835-a9c60950b961', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_claims_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58ec4bf8832f715ad0967cf11259cfb5a9069098cd31b90018d8eb0f4ef89ce7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4139dad2-6993-5f78-b9f8-7c2dc5531a95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('472bbb9f-9cb7-5348-8835-a9c60950b961', 1), '58ec4bf8832f715ad0967cf11259cfb5a9069098cd31b90018d8eb0f4ef89ce7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758.mp3', 1149, '2026-09-14 05:00:11.605654', 'f042c474db2bf1eae60873824c78605f28129070b067224a58b04cae76a0e732', 'validated', '{"audio_key":"b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758","entity_key":"lx_evidence_and_claims_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f042c474db2bf1eae60873824c78605f28129070b067224a58b04cae76a0e732","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_claims_03 -> audio/generated/it-IT/lexical/b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2add128e-3b70-53fe-9520-9f74b591bcab', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_claims_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58ec4bf8832f715ad0967cf11259cfb5a9069098cd31b90018d8eb0f4ef89ce7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bb2fcdc-1eb0-53fc-af2f-66aa8581a87e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2add128e-3b70-53fe-9520-9f74b591bcab', 1), '58ec4bf8832f715ad0967cf11259cfb5a9069098cd31b90018d8eb0f4ef89ce7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758.mp3', 1149, '2026-09-14 05:00:11.605654', 'f042c474db2bf1eae60873824c78605f28129070b067224a58b04cae76a0e732', 'validated', '{"audio_key":"b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758","entity_key":"wf_evidence_and_claims_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f042c474db2bf1eae60873824c78605f28129070b067224a58b04cae76a0e732","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b4d34cfcd6cdedf8f1a2c023ff0838afc97240fe224d411334a13542cef85758.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_nuance_06 -> audio/generated/it-IT/lexical/b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dbb3c230-3e48-58a4-8939-5d313ee3eb2b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61583247459b66e557ab078f0c0089094d9928bfdb7e1fcd76504196d4b95700'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2df4c97a-7515-5c34-916a-6ab89f01c213', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dbb3c230-3e48-58a4-8939-5d313ee3eb2b', 1), '61583247459b66e557ab078f0c0089094d9928bfdb7e1fcd76504196d4b95700',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1.mp3', 1253, '2026-09-14 05:00:12.185913', '9c0558d7f496dbf035939ec78a695769b3fb0c9da5b316c27853664a9dd0dcb9', 'validated', '{"audio_key":"b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1","entity_key":"lx_register_and_nuance_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9c0558d7f496dbf035939ec78a695769b3fb0c9da5b316c27853664a9dd0dcb9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_nuance_06 -> audio/generated/it-IT/lexical/b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('879ba4c3-be63-5137-9455-1251fd513322', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61583247459b66e557ab078f0c0089094d9928bfdb7e1fcd76504196d4b95700'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('640eee3f-c94a-5534-b112-54c474a4145e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('879ba4c3-be63-5137-9455-1251fd513322', 1), '61583247459b66e557ab078f0c0089094d9928bfdb7e1fcd76504196d4b95700',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1.mp3', 1253, '2026-09-14 05:00:12.185913', '9c0558d7f496dbf035939ec78a695769b3fb0c9da5b316c27853664a9dd0dcb9', 'validated', '{"audio_key":"b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1","entity_key":"wf_register_and_nuance_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9c0558d7f496dbf035939ec78a695769b3fb0c9da5b316c27853664a9dd0dcb9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b6975d514397378b2ea83b705a82097d4f6f1d79e9e868d538ca8c68198ad3b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_05 -> audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02487e22-9ad7-5f38-9639-fe8d7428aad7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('691c6321-a1c3-5499-8c07-cd1f301375f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02487e22-9ad7-5f38-9639-fe8d7428aad7', 1), 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3', 1097, '2026-09-14 05:00:12.664555', '8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159', 'validated', '{"audio_key":"b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe","entity_key":"lx_formal_negotiation_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_05 -> audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e42da953-7e84-5e76-9c4e-6eeff40fb3aa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2bcfaca-c326-5d70-aff5-01147e169888', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e42da953-7e84-5e76-9c4e-6eeff40fb3aa', 1), 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3', 1097, '2026-09-14 05:00:12.664555', '8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159', 'validated', '{"audio_key":"b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe","entity_key":"wf_formal_negotiation_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_debate_capstone_05 -> audio/generated/it-IT/lexical/b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('598928ed-d2f5-567c-b4fc-0420918fd86e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_debate_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef4dbc55d6b85743b963d27fbd73ef841f22213b995512c7a3f43c49ac85ab2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3146968-9015-5e48-9382-c316ddac085a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('598928ed-d2f5-567c-b4fc-0420918fd86e', 1), '7ef4dbc55d6b85743b963d27fbd73ef841f22213b995512c7a3f43c49ac85ab2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9.mp3', 1253, '2026-09-14 05:00:13.241458', 'ad29f6fbc4191138a5e3a73bd74b8cb0801bd4b4cc0de07537e43ec00296cadc', 'validated', '{"audio_key":"b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9","entity_key":"lx_b2_community_debate_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ad29f6fbc4191138a5e3a73bd74b8cb0801bd4b4cc0de07537e43ec00296cadc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_debate_capstone_05 -> audio/generated/it-IT/lexical/b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ebd4d059-6eb7-5705-a52d-a8d8cf031d86', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_debate_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef4dbc55d6b85743b963d27fbd73ef841f22213b995512c7a3f43c49ac85ab2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ce55b69-03fc-5ed7-b02e-7b60e1e7792b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ebd4d059-6eb7-5705-a52d-a8d8cf031d86', 1), '7ef4dbc55d6b85743b963d27fbd73ef841f22213b995512c7a3f43c49ac85ab2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9.mp3', 1253, '2026-09-14 05:00:13.241458', 'ad29f6fbc4191138a5e3a73bd74b8cb0801bd4b4cc0de07537e43ec00296cadc', 'validated', '{"audio_key":"b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9","entity_key":"wf_b2_community_debate_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ad29f6fbc4191138a5e3a73bd74b8cb0801bd4b4cc0de07537e43ec00296cadc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b9fee56609bdee81d1edcbfa9a56a5a8583f9cec872590907967809700632ed9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_discourse_06 -> audio/generated/it-IT/lexical/bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50821177-366b-527f-95ee-4fe36a713777', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_discourse_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21471059b7120646838668a5923c341fe5425e1ce9bc2fb35819f5b7f5181474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5ee35db-e266-5225-a3fe-13bee4339e7c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50821177-366b-527f-95ee-4fe36a713777', 1), '21471059b7120646838668a5923c341fe5425e1ce9bc2fb35819f5b7f5181474',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0.mp3', 1436, '2026-09-14 05:00:13.766758', '1990b674ca7578b7027b82760a97283b932bdda40f7d00adcb3dcbc8eb63f83f', 'validated', '{"audio_key":"bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0","entity_key":"lx_reported_discourse_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1990b674ca7578b7027b82760a97283b932bdda40f7d00adcb3dcbc8eb63f83f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_discourse_06 -> audio/generated/it-IT/lexical/bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('031c1273-345f-5956-a40c-5e0ee09e6ac2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_discourse_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21471059b7120646838668a5923c341fe5425e1ce9bc2fb35819f5b7f5181474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a39ff16-42b7-5615-877c-61c4c10c9a41', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('031c1273-345f-5956-a40c-5e0ee09e6ac2', 1), '21471059b7120646838668a5923c341fe5425e1ce9bc2fb35819f5b7f5181474',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0.mp3', 1436, '2026-09-14 05:00:13.766758', '1990b674ca7578b7027b82760a97283b932bdda40f7d00adcb3dcbc8eb63f83f', 'validated', '{"audio_key":"bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0","entity_key":"wf_reported_discourse_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1990b674ca7578b7027b82760a97283b932bdda40f7d00adcb3dcbc8eb63f83f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bc0902b45ab0a20eb5c2315acba6f0e6d98663c1703190e800dd9057f1ac47a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_subjunctive_01 -> audio/generated/it-IT/lexical/c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9be2e1ae-da6f-522f-aa17-6f7f66f692fa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_subjunctive_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bae98a49a951ce82dc51a786975a701fc5edee447eb3a60524232817ddc7f8b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('698daabe-7b4d-58c9-b369-9119a0d0f0f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9be2e1ae-da6f-522f-aa17-6f7f66f692fa', 1), 'bae98a49a951ce82dc51a786975a701fc5edee447eb3a60524232817ddc7f8b0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d.mp3', 1071, '2026-09-14 05:00:14.273525', '28a9db89685ab518dc2257555dac9889d57bf66fde3e039a20a358003dee9b4e', 'validated', '{"audio_key":"c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d","entity_key":"lx_stance_and_subjunctive_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28a9db89685ab518dc2257555dac9889d57bf66fde3e039a20a358003dee9b4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_subjunctive_01 -> audio/generated/it-IT/lexical/c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a3af49fc-07ab-5add-b431-20a36636f35b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_subjunctive_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bae98a49a951ce82dc51a786975a701fc5edee447eb3a60524232817ddc7f8b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9176a98-cea4-5436-8eaf-5a3768f35916', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a3af49fc-07ab-5add-b431-20a36636f35b', 1), 'bae98a49a951ce82dc51a786975a701fc5edee447eb3a60524232817ddc7f8b0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d.mp3', 1071, '2026-09-14 05:00:14.273525', '28a9db89685ab518dc2257555dac9889d57bf66fde3e039a20a358003dee9b4e', 'validated', '{"audio_key":"c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d","entity_key":"wf_stance_and_subjunctive_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28a9db89685ab518dc2257555dac9889d57bf66fde3e039a20a358003dee9b4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c0b00137985af5e91431731526e2b71f93a70c582f1d4a1435f710602e16539d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_contrast_06 -> audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3f6b8124-7ab5-5692-8b8f-2a542a33af35', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_contrast_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf83ae18-5053-5cf4-a4bb-d6fc40678153', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3f6b8124-7ab5-5692-8b8f-2a542a33af35', 1), 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3', 1280, '2026-09-14 05:00:14.801134', 'ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71', 'validated', '{"audio_key":"c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337","entity_key":"lx_concession_and_contrast_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_contrast_06 -> audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('766fd875-1492-5baa-b211-138d84f08260', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_contrast_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70b76c1f-35da-5f70-bff8-d89259532a13', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('766fd875-1492-5baa-b211-138d84f08260', 1), 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3', 1280, '2026-09-14 05:00:14.801134', 'ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71', 'validated', '{"audio_key":"c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337","entity_key":"wf_concession_and_contrast_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_nuance_04 -> audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb379206-cc36-53e2-a079-55b8aca3f4ba', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4eff3cba-e1f6-5995-819d-23edfffcaa95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb379206-cc36-53e2-a079-55b8aca3f4ba', 1), 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3', 1201, '2026-09-14 05:00:15.289488', '4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a', 'validated', '{"audio_key":"cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc","entity_key":"lx_register_and_nuance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_nuance_04 -> audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f9e3d8b8-ba5c-5f34-baeb-5be0f94379f8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d499e96c-04d7-5735-a902-485b1fb15490', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f9e3d8b8-ba5c-5f34-baeb-5be0f94379f8', 1), 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3', 1201, '2026-09-14 05:00:15.289488', '4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a', 'validated', '{"audio_key":"cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc","entity_key":"wf_register_and_nuance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_debate_capstone_04 -> audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('97ffd891-d492-5d99-8404-2a168355a84e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_debate_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53cc2889-34c3-5aed-861b-86c97b59149a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('97ffd891-d492-5d99-8404-2a168355a84e', 1), '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3', 1149, '2026-09-14 04:01:37.296005', '662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7', 'validated', '{"audio_key":"cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1","entity_key":"lx_b2_community_debate_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_debate_capstone_04 -> audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7095ab71-8cda-5b1b-81ce-9cabf2469054', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_debate_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d571eaa-7f6c-582e-8804-17d062bb81cb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7095ab71-8cda-5b1b-81ce-9cabf2469054', 1), '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3', 1149, '2026-09-14 04:01:37.296005', '662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7', 'validated', '{"audio_key":"cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1","entity_key":"wf_b2_community_debate_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_discourse_03 -> audio/generated/it-IT/lexical/da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3718c0af-e9b0-5113-a0fd-5960823e1ff0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_discourse_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d1278a0620b33d71fe55d16af81365591624c133d9024e80d429431b5b242ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('555e6435-e32f-5584-bc39-c20b82cf1ae7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3718c0af-e9b0-5113-a0fd-5960823e1ff0', 1), '6d1278a0620b33d71fe55d16af81365591624c133d9024e80d429431b5b242ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf.mp3', 966, '2026-09-14 05:00:15.870970', '85f2aaf3952e2eb2d69354d8cfd17060608205f1048c4689763ce01c2d510693', 'validated', '{"audio_key":"da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf","entity_key":"lx_reported_discourse_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"85f2aaf3952e2eb2d69354d8cfd17060608205f1048c4689763ce01c2d510693","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_discourse_03 -> audio/generated/it-IT/lexical/da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7b2203d8-3007-52cb-9b54-ac51f65367ca', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_discourse_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d1278a0620b33d71fe55d16af81365591624c133d9024e80d429431b5b242ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12f07a7a-4cf9-5e24-9ed9-ddecf04c5eba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7b2203d8-3007-52cb-9b54-ac51f65367ca', 1), '6d1278a0620b33d71fe55d16af81365591624c133d9024e80d429431b5b242ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf.mp3', 966, '2026-09-14 05:00:15.870970', '85f2aaf3952e2eb2d69354d8cfd17060608205f1048c4689763ce01c2d510693', 'validated', '{"audio_key":"da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf","entity_key":"wf_reported_discourse_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"85f2aaf3952e2eb2d69354d8cfd17060608205f1048c4689763ce01c2d510693","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/da050c30fc4315042d059b80e596de46c20427205da02a3f9a3aefe56e2945bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_and_claims_06 -> audio/generated/it-IT/lexical/db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31a37f12-a3fb-51d2-8768-4a24ee044db0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_and_claims_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ed0e865556ea5b58d15f5525061b41617639d0975487c67f05b6b00b02c001d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1f172a2-9e8f-5474-8305-ac687e994920', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31a37f12-a3fb-51d2-8768-4a24ee044db0', 1), '5ed0e865556ea5b58d15f5525061b41617639d0975487c67f05b6b00b02c001d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056.mp3', 1515, '2026-09-14 05:00:16.372324', '5836673d0a950bea73051fb2b40038f74e6f7e9d60b5e7c13d63e80932dccafa', 'validated', '{"audio_key":"db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056","entity_key":"lx_evidence_and_claims_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5836673d0a950bea73051fb2b40038f74e6f7e9d60b5e7c13d63e80932dccafa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_and_claims_06 -> audio/generated/it-IT/lexical/db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('033a2701-fd8c-5bd2-8ed9-c8f02bbaf7d5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_and_claims_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ed0e865556ea5b58d15f5525061b41617639d0975487c67f05b6b00b02c001d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5758eb20-fc4e-5aac-b116-42d3b1bab2d7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('033a2701-fd8c-5bd2-8ed9-c8f02bbaf7d5', 1), '5ed0e865556ea5b58d15f5525061b41617639d0975487c67f05b6b00b02c001d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056.mp3', 1515, '2026-09-14 05:00:16.372324', '5836673d0a950bea73051fb2b40038f74e6f7e9d60b5e7c13d63e80932dccafa', 'validated', '{"audio_key":"db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056","entity_key":"wf_evidence_and_claims_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5836673d0a950bea73051fb2b40038f74e6f7e9d60b5e7c13d63e80932dccafa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/db460f1de0c637c8f2b37cca07382a83731bc0a5e1d5d4969ea3bba4e3075056.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_contrast_02 -> audio/generated/it-IT/lexical/de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bef316cf-98a1-54ab-a173-784b544b0bb0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_contrast_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3fcad8f570ffb7920fbb40ddd133367654c97fbffa25fdc63c8a085da6e8735'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d536afb8-58d5-52aa-bbb0-38e8d3b4eeef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bef316cf-98a1-54ab-a173-784b544b0bb0', 1), 'f3fcad8f570ffb7920fbb40ddd133367654c97fbffa25fdc63c8a085da6e8735',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d.mp3', 1253, '2026-09-14 05:00:16.989177', 'd9aef8ef80d774c88ecf98d186572822fee171ae373fe5445f77d1fd156e25c9', 'validated', '{"audio_key":"de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d","entity_key":"lx_concession_and_contrast_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d9aef8ef80d774c88ecf98d186572822fee171ae373fe5445f77d1fd156e25c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_contrast_02 -> audio/generated/it-IT/lexical/de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b03e908e-3802-5601-b267-8f528a8e17df', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_contrast_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3fcad8f570ffb7920fbb40ddd133367654c97fbffa25fdc63c8a085da6e8735'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d413d24a-cb22-5f98-a1fe-a5d9da11823f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b03e908e-3802-5601-b267-8f528a8e17df', 1), 'f3fcad8f570ffb7920fbb40ddd133367654c97fbffa25fdc63c8a085da6e8735',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d.mp3', 1253, '2026-09-14 05:00:16.989177', 'd9aef8ef80d774c88ecf98d186572822fee171ae373fe5445f77d1fd156e25c9', 'validated', '{"audio_key":"de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d","entity_key":"wf_concession_and_contrast_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d9aef8ef80d774c88ecf98d186572822fee171ae373fe5445f77d1fd156e25c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/de6596c80952ecd428419205042293d4a85bd1ac072824a58949ea0590cff28d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_discourse_01 -> audio/generated/it-IT/lexical/eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c953d05-139c-5066-a1b5-69dd05db0085', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_discourse_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acfb5a1f522d6bca75bd4e227c6887d2a1638da2320808c14e101e43471b39d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a6669fe-f405-5c5f-97af-54066e458569', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c953d05-139c-5066-a1b5-69dd05db0085', 1), 'acfb5a1f522d6bca75bd4e227c6887d2a1638da2320808c14e101e43471b39d0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990.mp3', 1097, '2026-09-14 05:00:17.426336', 'dbcefa838d9f7872cb8865b3f42e109866298b777ecf373902c8556aeb8037c0', 'validated', '{"audio_key":"eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990","entity_key":"lx_reported_discourse_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dbcefa838d9f7872cb8865b3f42e109866298b777ecf373902c8556aeb8037c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_discourse_01 -> audio/generated/it-IT/lexical/eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3c76a7da-b097-59c6-a291-c84d45a644f3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_discourse_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acfb5a1f522d6bca75bd4e227c6887d2a1638da2320808c14e101e43471b39d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b693153-2c5c-5024-a065-b8e8a13c1f72', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3c76a7da-b097-59c6-a291-c84d45a644f3', 1), 'acfb5a1f522d6bca75bd4e227c6887d2a1638da2320808c14e101e43471b39d0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990.mp3', 1097, '2026-09-14 05:00:17.426336', 'dbcefa838d9f7872cb8865b3f42e109866298b777ecf373902c8556aeb8037c0', 'validated', '{"audio_key":"eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990","entity_key":"wf_reported_discourse_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dbcefa838d9f7872cb8865b3f42e109866298b777ecf373902c8556aeb8037c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/eac4efbd6b7f5d4249b386be233bc996294f8fa3f7a4fe7373a05fb8524d3990.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_and_impersonal_04 -> audio/generated/it-IT/lexical/f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0e8e9161-84bd-55e1-8868-cee3c0ddbeaf', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_and_impersonal_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f7666c26dd49e076b91aedbae3f1a56a1e0d4222c1efdac3c43450f1a52a451'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e757c31e-de48-55c7-996b-6829bee67d5c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0e8e9161-84bd-55e1-8868-cee3c0ddbeaf', 1), '2f7666c26dd49e076b91aedbae3f1a56a1e0d4222c1efdac3c43450f1a52a451',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f.mp3', 1018, '2026-09-14 05:00:17.944895', '59b7794297c53153d58fde9faf4161b70611a4d44e563c1ac1ae4a6609326b62', 'validated', '{"audio_key":"f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f","entity_key":"lx_passive_and_impersonal_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"59b7794297c53153d58fde9faf4161b70611a4d44e563c1ac1ae4a6609326b62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_and_impersonal_04 -> audio/generated/it-IT/lexical/f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d1c1c71-bf9c-562c-9451-74e1b14b5548', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_and_impersonal_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f7666c26dd49e076b91aedbae3f1a56a1e0d4222c1efdac3c43450f1a52a451'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5451d88-d647-5307-835d-fd9c40962b9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d1c1c71-bf9c-562c-9451-74e1b14b5548', 1), '2f7666c26dd49e076b91aedbae3f1a56a1e0d4222c1efdac3c43450f1a52a451',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f.mp3', 1018, '2026-09-14 05:00:17.944895', '59b7794297c53153d58fde9faf4161b70611a4d44e563c1ac1ae4a6609326b62', 'validated', '{"audio_key":"f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f","entity_key":"wf_passive_and_impersonal_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"59b7794297c53153d58fde9faf4161b70611a4d44e563c1ac1ae4a6609326b62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f1ef1b36684c801252456f358a8988cdda818320fb076435c106bb2ac7f3178f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_choices_03 -> audio/generated/it-IT/lexical/f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08b8f4ae-55aa-5324-b967-adc8e50593d9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_choices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92acc5b9d035ead3cae7f2466cf5c0105f2e6d2351e9ae94ee69dead4439bf41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c675c6d2-5918-538c-a389-11a69fcc25ea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08b8f4ae-55aa-5324-b967-adc8e50593d9', 1), '92acc5b9d035ead3cae7f2466cf5c0105f2e6d2351e9ae94ee69dead4439bf41',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41.mp3', 1149, '2026-09-14 05:00:18.420160', '4b914d80d58f3b4782b0476f1074a39392d1402602fc79df792656b7492c22d5', 'validated', '{"audio_key":"f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41","entity_key":"lx_counterfactual_choices_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4b914d80d58f3b4782b0476f1074a39392d1402602fc79df792656b7492c22d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_choices_03 -> audio/generated/it-IT/lexical/f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0d1ebece-2ca5-5b8b-8353-93fb92669b29', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_choices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92acc5b9d035ead3cae7f2466cf5c0105f2e6d2351e9ae94ee69dead4439bf41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d15101a-a180-5f35-9cf2-9b79ca347774', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0d1ebece-2ca5-5b8b-8353-93fb92669b29', 1), '92acc5b9d035ead3cae7f2466cf5c0105f2e6d2351e9ae94ee69dead4439bf41',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41.mp3', 1149, '2026-09-14 05:00:18.420160', '4b914d80d58f3b4782b0476f1074a39392d1402602fc79df792656b7492c22d5', 'validated', '{"audio_key":"f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41","entity_key":"wf_counterfactual_choices_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4b914d80d58f3b4782b0476f1074a39392d1402602fc79df792656b7492c22d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f3aa0b46d3d24a33021f09a2a072033f13aff9fe371f648c671766315375ed41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_nuance_01 -> audio/generated/it-IT/lexical/fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43dabfac-893e-5343-9cc2-fc1d16fa6594', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddea6da3af0b7fce795deb5c42adf6c28d0381c2eb22cba0e0cea68ef59806e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b40c0962-a016-5e4f-9abe-516d4ba0b0bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43dabfac-893e-5343-9cc2-fc1d16fa6594', 1), 'ddea6da3af0b7fce795deb5c42adf6c28d0381c2eb22cba0e0cea68ef59806e4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f.mp3', 1097, '2026-09-14 05:00:19.306187', 'e9bee07e44ac98ac8574f08e3ca088634259523fea7fa41e82c63c23eeb89e8b', 'validated', '{"audio_key":"fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f","entity_key":"lx_register_and_nuance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e9bee07e44ac98ac8574f08e3ca088634259523fea7fa41e82c63c23eeb89e8b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_nuance_01 -> audio/generated/it-IT/lexical/fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9d4ce9ca-c062-5471-95a0-a3477bec057c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddea6da3af0b7fce795deb5c42adf6c28d0381c2eb22cba0e0cea68ef59806e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('887e53cc-3fc1-5335-8804-4fb1b281fa5d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9d4ce9ca-c062-5471-95a0-a3477bec057c', 1), 'ddea6da3af0b7fce795deb5c42adf6c28d0381c2eb22cba0e0cea68ef59806e4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f.mp3', 1097, '2026-09-14 05:00:19.306187', 'e9bee07e44ac98ac8574f08e3ca088634259523fea7fa41e82c63c23eeb89e8b', 'validated', '{"audio_key":"fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f","entity_key":"wf_register_and_nuance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e9bee07e44ac98ac8574f08e3ca088634259523fea7fa41e82c63c23eeb89e8b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fbc56f926a21d6f8c0b63def8390d5e1f728fce1789312718188fd3f5987183f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cohesive_argument_06 -> audio/generated/it-IT/lexical/feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0dd71947-1f6f-5006-bdc7-33572ffa709b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cohesive_argument_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d41cf1c41dec0aee4ee1d0989736e1cf1587537bcb4dc78e30e83aad692fb64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5aebb66-428e-515b-92d5-f05457ea311f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0dd71947-1f6f-5006-bdc7-33572ffa709b', 1), '1d41cf1c41dec0aee4ee1d0989736e1cf1587537bcb4dc78e30e83aad692fb64',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee.mp3', 1097, '2026-09-14 05:00:19.445881', 'e3eeb9d55cba3b921c04a850d84c81edf927c048e6bdf4b25e25b615e4211a27', 'validated', '{"audio_key":"feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee","entity_key":"lx_cohesive_argument_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e3eeb9d55cba3b921c04a850d84c81edf927c048e6bdf4b25e25b615e4211a27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cohesive_argument_06 -> audio/generated/it-IT/lexical/feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('54aa8928-be51-506a-b4b4-d9df676beceb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cohesive_argument_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d41cf1c41dec0aee4ee1d0989736e1cf1587537bcb4dc78e30e83aad692fb64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a26c5d5-3599-52a9-8d13-5262ee6ce6ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('54aa8928-be51-506a-b4b4-d9df676beceb', 1), '1d41cf1c41dec0aee4ee1d0989736e1cf1587537bcb4dc78e30e83aad692fb64',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee.mp3', 1097, '2026-09-14 05:00:19.445881', 'e3eeb9d55cba3b921c04a850d84c81edf927c048e6bdf4b25e25b615e4211a27', 'validated', '{"audio_key":"feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee","entity_key":"wf_cohesive_argument_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e3eeb9d55cba3b921c04a850d84c81edf927c048e6bdf4b25e25b615e4211a27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/feebf53c912e2f29ef9ecbd1d5c109b63d3597bcec813156a7ac2fc74e8a97ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_subjunctive_01 -> audio/generated/it-IT/utterances/069b9e44d48312c5b34b289bb6bd19076337e07cf17ebea2c817914b9f267180.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0c44eb53-b8d5-5a1d-8481-402119b0a12c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_subjunctive_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a601d02f48bdb72b785c5020ca5f73a2f581c100a5deefa4d1e2d25b8b7808a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('171c5a81-6004-591a-a659-20a18bae3ff2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0c44eb53-b8d5-5a1d-8481-402119b0a12c', 1), '6a601d02f48bdb72b785c5020ca5f73a2f581c100a5deefa4d1e2d25b8b7808a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/069b9e44d48312c5b34b289bb6bd19076337e07cf17ebea2c817914b9f267180.mp3', 2925, '2026-09-14 05:00:20.575372', 'd4a3b3db5aa6a4168c0acd3f537f3c7799aa9955f0925a34d1e8e5fe4e4d1dad', 'validated', '{"audio_key":"069b9e44d48312c5b34b289bb6bd19076337e07cf17ebea2c817914b9f267180","entity_key":"u_stance_and_subjunctive_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4a3b3db5aa6a4168c0acd3f537f3c7799aa9955f0925a34d1e8e5fe4e4d1dad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/069b9e44d48312c5b34b289bb6bd19076337e07cf17ebea2c817914b9f267180.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_discourse_02 -> audio/generated/it-IT/utterances/1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8732b320-2568-544c-8dfb-e0c2f200242b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_discourse_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abd72514cc34b73a567b83af47e02c90c2f6a3171eeaff14355d40f15f0a9b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a65ab9bd-9e33-5d4f-9bcd-bb72c83f0e84', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8732b320-2568-544c-8dfb-e0c2f200242b', 1), 'abd72514cc34b73a567b83af47e02c90c2f6a3171eeaff14355d40f15f0a9b38',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be.mp3', 4022, '2026-09-14 05:00:20.815016', '30eb0b232f150e825daee7787e71840bc81451406f6c6072a0d7e4030c48a86f', 'validated', '{"audio_key":"1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be","entity_key":"u_reported_discourse_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"30eb0b232f150e825daee7787e71840bc81451406f6c6072a0d7e4030c48a86f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_discourse_01_listen -> audio/generated/it-IT/utterances/1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d1c93e2a-1706-5779-838a-efee9c8d6e52', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_discourse_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abd72514cc34b73a567b83af47e02c90c2f6a3171eeaff14355d40f15f0a9b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91ab00cf-5de6-5ffd-b396-c50baab95255', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d1c93e2a-1706-5779-838a-efee9c8d6e52', 1), 'abd72514cc34b73a567b83af47e02c90c2f6a3171eeaff14355d40f15f0a9b38',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be.mp3', 4022, '2026-09-14 05:00:20.815016', '30eb0b232f150e825daee7787e71840bc81451406f6c6072a0d7e4030c48a86f', 'validated', '{"audio_key":"1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be","entity_key":"e_reported_discourse_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"30eb0b232f150e825daee7787e71840bc81451406f6c6072a0d7e4030c48a86f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1cd7b53cf62b4ef425d5ceef1b8a94a3ae36da422ee7537055edc0e35df6b0be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_claims_03 -> audio/generated/it-IT/utterances/2d83a52b1cd696e4ba7e9dcf91173a2e7d6cfd8c223bd3c5231bfd12194ffc7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('40fbac90-5889-5465-afca-a8dd80a67b8a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_claims_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e3f8aab1b2f17548b3b3672e6d6010ce7985d2a547c575a7f78ac76f8394cca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6b3d85f-49e2-5423-bc40-1daa568a1867', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('40fbac90-5889-5465-afca-a8dd80a67b8a', 1), '0e3f8aab1b2f17548b3b3672e6d6010ce7985d2a547c575a7f78ac76f8394cca',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2d83a52b1cd696e4ba7e9dcf91173a2e7d6cfd8c223bd3c5231bfd12194ffc7c.mp3', 3944, '2026-09-14 05:00:21.934564', 'b84dcfe0a9aa2c47d5cd1515cbd9f260f221ebda4577a2a9b7d2a9d8cacc781c', 'validated', '{"audio_key":"2d83a52b1cd696e4ba7e9dcf91173a2e7d6cfd8c223bd3c5231bfd12194ffc7c","entity_key":"u_evidence_and_claims_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b84dcfe0a9aa2c47d5cd1515cbd9f260f221ebda4577a2a9b7d2a9d8cacc781c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2d83a52b1cd696e4ba7e9dcf91173a2e7d6cfd8c223bd3c5231bfd12194ffc7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_and_impersonal_02 -> audio/generated/it-IT/utterances/317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('979722b8-14a4-5b08-bfe7-7e56dbbd21db', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_and_impersonal_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72456607f6f53be553f59ec90ae9fc1b6fdf07f8b7f283890af0fa38b41b59cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca8f9143-0db7-5a03-8c81-7a08e3ca6d36', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('979722b8-14a4-5b08-bfe7-7e56dbbd21db', 1), '72456607f6f53be553f59ec90ae9fc1b6fdf07f8b7f283890af0fa38b41b59cb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6.mp3', 3108, '2026-09-14 05:00:22.043591', '28db8f436d30861d89b1e6c0883556b757da01020561ede22667973f8903e27a', 'validated', '{"audio_key":"317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6","entity_key":"u_passive_and_impersonal_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28db8f436d30861d89b1e6c0883556b757da01020561ede22667973f8903e27a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_passive_and_impersonal_01_listen -> audio/generated/it-IT/utterances/317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f72f70a5-baac-5b1d-837b-05838ab28e1c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_passive_and_impersonal_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72456607f6f53be553f59ec90ae9fc1b6fdf07f8b7f283890af0fa38b41b59cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37801c06-0019-5934-8573-f87a40cf5268', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f72f70a5-baac-5b1d-837b-05838ab28e1c', 1), '72456607f6f53be553f59ec90ae9fc1b6fdf07f8b7f283890af0fa38b41b59cb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6.mp3', 3108, '2026-09-14 05:00:22.043591', '28db8f436d30861d89b1e6c0883556b757da01020561ede22667973f8903e27a', 'validated', '{"audio_key":"317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6","entity_key":"e_passive_and_impersonal_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28db8f436d30861d89b1e6c0883556b757da01020561ede22667973f8903e27a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/317389cab53624ab0c58d78432f218c7e1412f11137b763b85dbc1e597b7bbf6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_subjunctive_03 -> audio/generated/it-IT/utterances/325205f471a6dfeb45291855e3729852b6aca33f57d11d29cd6e9b96942bb6a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3be9906d-7438-5a62-83cc-ee1804d8236e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_subjunctive_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61db273f6bdc90dd493d83fe47845aa9f9e3d0c468694ff3056c5881e79b7e9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb1d6ba4-ec10-5faa-b515-6d2b2f8005b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3be9906d-7438-5a62-83cc-ee1804d8236e', 1), '61db273f6bdc90dd493d83fe47845aa9f9e3d0c468694ff3056c5881e79b7e9d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/325205f471a6dfeb45291855e3729852b6aca33f57d11d29cd6e9b96942bb6a0.mp3', 3422, '2026-09-14 05:00:23.595581', 'c66444abb9d41adf2d203ad295c1b05602b043c84df9176b67e82ec52b0fcfe2', 'validated', '{"audio_key":"325205f471a6dfeb45291855e3729852b6aca33f57d11d29cd6e9b96942bb6a0","entity_key":"u_stance_and_subjunctive_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c66444abb9d41adf2d203ad295c1b05602b043c84df9176b67e82ec52b0fcfe2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/325205f471a6dfeb45291855e3729852b6aca33f57d11d29cd6e9b96942bb6a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_nuance_03 -> audio/generated/it-IT/utterances/3a8e03a84958c566b62436f3720d5797cdd033e38885df87094e5441f49d3380.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2d6fdcde-4ce7-5d6e-bd59-e7c619a443f0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8bd3cf1397328f6dca11ec693e175ae1f500126286263493e561de41dbf836b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeb45ecf-2b38-509d-8f72-6a78c1536010', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2d6fdcde-4ce7-5d6e-bd59-e7c619a443f0', 1), 'c8bd3cf1397328f6dca11ec693e175ae1f500126286263493e561de41dbf836b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3a8e03a84958c566b62436f3720d5797cdd033e38885df87094e5441f49d3380.mp3', 4205, '2026-09-14 05:00:23.439857', '47b2f225b6664647449293f808c5ddef77e2103bde7218612141bd72af8f8e52', 'validated', '{"audio_key":"3a8e03a84958c566b62436f3720d5797cdd033e38885df87094e5441f49d3380","entity_key":"u_register_and_nuance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"47b2f225b6664647449293f808c5ddef77e2103bde7218612141bd72af8f8e52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3a8e03a84958c566b62436f3720d5797cdd033e38885df87094e5441f49d3380.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_claims_01 -> audio/generated/it-IT/utterances/42b5ddfcff024626dc41843e968cfb9d4255e097002c9288a5582ef890144afa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ae7f87d9-96da-560a-ad99-9617f0a8d0e1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_claims_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '932b65421d6098a0223961eba69b3edc1fb7b0a3310f1bf7fbe565b1f4345d3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c7b80d7-ca93-5672-8bec-ba787b9826d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ae7f87d9-96da-560a-ad99-9617f0a8d0e1', 1), '932b65421d6098a0223961eba69b3edc1fb7b0a3310f1bf7fbe565b1f4345d3b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/42b5ddfcff024626dc41843e968cfb9d4255e097002c9288a5582ef890144afa.mp3', 3343, '2026-09-14 05:00:24.776237', '22f48752bbc4f837fce65f242102a4e371c223f2d4545f894ce0e2728d1e4889', 'validated', '{"audio_key":"42b5ddfcff024626dc41843e968cfb9d4255e097002c9288a5582ef890144afa","entity_key":"u_evidence_and_claims_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"22f48752bbc4f837fce65f242102a4e371c223f2d4545f894ce0e2728d1e4889","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/42b5ddfcff024626dc41843e968cfb9d4255e097002c9288a5582ef890144afa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_contrast_01 -> audio/generated/it-IT/utterances/4f508dbd5e91ba7d0379953b32c5ca13ce6067c25767e75671cbb09a6e119722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c95415fe-c6c2-51e1-8f0b-9fbf4f84447b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_contrast_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bd9adc27c8a1296eb10cfec28a1eb36e1a555cd253a8bce00c201519e0f887e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e18f6bd-c05f-52c7-af96-5fbf704edee7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c95415fe-c6c2-51e1-8f0b-9fbf4f84447b', 1), '2bd9adc27c8a1296eb10cfec28a1eb36e1a555cd253a8bce00c201519e0f887e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4f508dbd5e91ba7d0379953b32c5ca13ce6067c25767e75671cbb09a6e119722.mp3', 4179, '2026-09-14 05:00:24.980890', '9f14aab98db9fbc783276a93a17c9b70bc1e6ec637a9b1a5fd18f315218c4c2b', 'validated', '{"audio_key":"4f508dbd5e91ba7d0379953b32c5ca13ce6067c25767e75671cbb09a6e119722","entity_key":"u_concession_and_contrast_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9f14aab98db9fbc783276a93a17c9b70bc1e6ec637a9b1a5fd18f315218c4c2b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4f508dbd5e91ba7d0379953b32c5ca13ce6067c25767e75671cbb09a6e119722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_debate_capstone_01 -> audio/generated/it-IT/utterances/4f9e927f07631b585211b11ac553383e8c53c89a1a16e1fbda222e51a330a9bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('93aaa100-5e88-507b-817d-6fc142d21b13', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_debate_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcb8c8374a5762fbf5760058aebfa8fb1212a6c9280059410016296da8b65cc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79f8b72f-0c92-5b99-9d23-8c6ee48b505d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('93aaa100-5e88-507b-817d-6fc142d21b13', 1), 'bcb8c8374a5762fbf5760058aebfa8fb1212a6c9280059410016296da8b65cc6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4f9e927f07631b585211b11ac553383e8c53c89a1a16e1fbda222e51a330a9bd.mp3', 5015, '2026-09-14 05:00:26.231865', 'fa67a75b595a498401bf708ec0942f42ff3f29d79b2e397a1d44933e407bf71d', 'validated', '{"audio_key":"4f9e927f07631b585211b11ac553383e8c53c89a1a16e1fbda222e51a330a9bd","entity_key":"u_b2_community_debate_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fa67a75b595a498401bf708ec0942f42ff3f29d79b2e397a1d44933e407bf71d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4f9e927f07631b585211b11ac553383e8c53c89a1a16e1fbda222e51a330a9bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_nuance_04 -> audio/generated/it-IT/utterances/526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('57cf808e-4e2a-5d62-b527-8e25d5161332', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3907860771c9c4040591dc6bc01ff2e8b2fac74aa3abe671e356d0e8dc29d01e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a558c32a-9796-5672-9e42-fb53ae81f42b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('57cf808e-4e2a-5d62-b527-8e25d5161332', 1), '3907860771c9c4040591dc6bc01ff2e8b2fac74aa3abe671e356d0e8dc29d01e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc.mp3', 3526, '2026-09-14 05:00:26.255681', '41c611cdb74adc1db5479fe429fa6233781cd7eeb61aa8a703524d478df350f2', 'validated', '{"audio_key":"526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc","entity_key":"u_register_and_nuance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41c611cdb74adc1db5479fe429fa6233781cd7eeb61aa8a703524d478df350f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_and_nuance_02_listen -> audio/generated/it-IT/utterances/526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e0447979-06c8-5e93-9f14-b04aaa5ac3a2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_and_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3907860771c9c4040591dc6bc01ff2e8b2fac74aa3abe671e356d0e8dc29d01e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5c8b51a-3f24-5e7c-bf7a-fbbc49f88a81', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e0447979-06c8-5e93-9f14-b04aaa5ac3a2', 1), '3907860771c9c4040591dc6bc01ff2e8b2fac74aa3abe671e356d0e8dc29d01e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc.mp3', 3526, '2026-09-14 05:00:26.255681', '41c611cdb74adc1db5479fe429fa6233781cd7eeb61aa8a703524d478df350f2', 'validated', '{"audio_key":"526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc","entity_key":"e_register_and_nuance_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41c611cdb74adc1db5479fe429fa6233781cd7eeb61aa8a703524d478df350f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/526365fa2ab30465c985e5288f416cd25dc417c17b9ef2545c61c58833488dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_and_impersonal_01 -> audio/generated/it-IT/utterances/56c9b81006585fadf5c8bbe8b133a63576bf2db825ff89fe84d6a9dc42b3aa4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ad0b235d-b9d1-58b2-90c2-934db024ad75', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_and_impersonal_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df2330ec1f2a9cc32897685f10beb41eb0a99fc46ee9fa8e3fd107665de74782'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bac6a10-a769-525f-bb29-21fe0b63008f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ad0b235d-b9d1-58b2-90c2-934db024ad75', 1), 'df2330ec1f2a9cc32897685f10beb41eb0a99fc46ee9fa8e3fd107665de74782',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/56c9b81006585fadf5c8bbe8b133a63576bf2db825ff89fe84d6a9dc42b3aa4e.mp3', 2951, '2026-09-14 05:00:27.536206', '836433eb2a1378983ad52ced0d8722ddf239401561faea4b8c5afb72e6e48006', 'validated', '{"audio_key":"56c9b81006585fadf5c8bbe8b133a63576bf2db825ff89fe84d6a9dc42b3aa4e","entity_key":"u_passive_and_impersonal_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"836433eb2a1378983ad52ced0d8722ddf239401561faea4b8c5afb72e6e48006","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/56c9b81006585fadf5c8bbe8b133a63576bf2db825ff89fe84d6a9dc42b3aa4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_choices_03 -> audio/generated/it-IT/utterances/59890236682fefd67b23a3f97c0819e5c59fe8279c7572a357d5e6079bca7151.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b57995a9-a0de-52c1-94c9-22e41c6bfe4d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_choices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2ce763ea078fc4476f0ff85b55628f111c40d1cb37ad777a2a63505357d5dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e21eb02e-56ab-51ae-a756-62fe5a1682f1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b57995a9-a0de-52c1-94c9-22e41c6bfe4d', 1), 'd2ce763ea078fc4476f0ff85b55628f111c40d1cb37ad777a2a63505357d5dc3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/59890236682fefd67b23a3f97c0819e5c59fe8279c7572a357d5e6079bca7151.mp3', 3657, '2026-09-14 05:00:27.691978', 'f663abac2df19c324a1d99f429ef5b52fd34e37c467777dd9f9444c25a0f565c', 'validated', '{"audio_key":"59890236682fefd67b23a3f97c0819e5c59fe8279c7572a357d5e6079bca7151","entity_key":"u_counterfactual_choices_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f663abac2df19c324a1d99f429ef5b52fd34e37c467777dd9f9444c25a0f565c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/59890236682fefd67b23a3f97c0819e5c59fe8279c7572a357d5e6079bca7151.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_contrast_04 -> audio/generated/it-IT/utterances/61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('21c9e739-41af-5e77-a8cd-071efea2809a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_contrast_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9bfbedf892b30a755072d860eb764ca2ceb028e3fdd7803b70fadc3ce2bf785'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da027c27-5415-5ef8-9455-bb9dd39d3343', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('21c9e739-41af-5e77-a8cd-071efea2809a', 1), 'd9bfbedf892b30a755072d860eb764ca2ceb028e3fdd7803b70fadc3ce2bf785',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994.mp3', 4075, '2026-09-14 05:00:29.005472', '91030edf5eb30edb6cdd54e1864640dd9f54adfb1d8ceb3773afe7083345b040', 'validated', '{"audio_key":"61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994","entity_key":"u_concession_and_contrast_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91030edf5eb30edb6cdd54e1864640dd9f54adfb1d8ceb3773afe7083345b040","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_contrast_02_listen -> audio/generated/it-IT/utterances/61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c4c27785-1427-58ef-a751-b83d9b9dacff', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_contrast_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9bfbedf892b30a755072d860eb764ca2ceb028e3fdd7803b70fadc3ce2bf785'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ec3d067-ac2a-5d8f-9540-b7713e145b92', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c4c27785-1427-58ef-a751-b83d9b9dacff', 1), 'd9bfbedf892b30a755072d860eb764ca2ceb028e3fdd7803b70fadc3ce2bf785',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994.mp3', 4075, '2026-09-14 05:00:29.005472', '91030edf5eb30edb6cdd54e1864640dd9f54adfb1d8ceb3773afe7083345b040', 'validated', '{"audio_key":"61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994","entity_key":"e_concession_and_contrast_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91030edf5eb30edb6cdd54e1864640dd9f54adfb1d8ceb3773afe7083345b040","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/61c94bec7f3a8dd45fd5d5dbcddb37223760338a7f3d79497905f1732445e994.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_choices_02 -> audio/generated/it-IT/utterances/6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a359986c-fbc6-5ffb-87c2-39aefdb142d0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_choices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e4a2cc56f78a9587fd78218868878d4e99c3e52636da099b068f5832119070f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('164f5489-f2cf-5e88-97e0-c8c2a082ebf2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a359986c-fbc6-5ffb-87c2-39aefdb142d0', 1), '2e4a2cc56f78a9587fd78218868878d4e99c3e52636da099b068f5832119070f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518.mp3', 3369, '2026-09-14 05:00:29.006483', '5ed8569c53f45b61794d6526172671e76198dd0418e8971aba07d8dbca6e1da8', 'validated', '{"audio_key":"6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518","entity_key":"u_counterfactual_choices_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5ed8569c53f45b61794d6526172671e76198dd0418e8971aba07d8dbca6e1da8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_choices_01_listen -> audio/generated/it-IT/utterances/6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c09cf8a1-4b54-57b7-bb67-2c2c768b7682', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_choices_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e4a2cc56f78a9587fd78218868878d4e99c3e52636da099b068f5832119070f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d41e2ed-90c1-5997-ab2c-5f077e4d9269', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c09cf8a1-4b54-57b7-bb67-2c2c768b7682', 1), '2e4a2cc56f78a9587fd78218868878d4e99c3e52636da099b068f5832119070f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518.mp3', 3369, '2026-09-14 05:00:29.006483', '5ed8569c53f45b61794d6526172671e76198dd0418e8971aba07d8dbca6e1da8', 'validated', '{"audio_key":"6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518","entity_key":"e_counterfactual_choices_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5ed8569c53f45b61794d6526172671e76198dd0418e8971aba07d8dbca6e1da8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6769aca3d74d400a3b0db35c81597cd0768393b80864e9f080d5042ab3361518.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_01 -> audio/generated/it-IT/utterances/6823618d0f525eebe9c882d01a23a0d4c22c21b4942ced341f9917e88072e6df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4d78f4ed-b36d-50b8-84a0-af9903818487', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a32c26d010df1dc5b61f484eb38982c40c46f2152cff143594ac591965a9d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e767fbe-1750-520c-bdf0-0bb4f4fa85a4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4d78f4ed-b36d-50b8-84a0-af9903818487', 1), '1a32c26d010df1dc5b61f484eb38982c40c46f2152cff143594ac591965a9d8b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6823618d0f525eebe9c882d01a23a0d4c22c21b4942ced341f9917e88072e6df.mp3', 3761, '2026-09-14 05:00:30.318128', '01681db3554c47e8a7d76e276a29ce945e4dd90a76c41390007f801694556e62', 'validated', '{"audio_key":"6823618d0f525eebe9c882d01a23a0d4c22c21b4942ced341f9917e88072e6df","entity_key":"u_formal_negotiation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"01681db3554c47e8a7d76e276a29ce945e4dd90a76c41390007f801694556e62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6823618d0f525eebe9c882d01a23a0d4c22c21b4942ced341f9917e88072e6df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_claims_02 -> audio/generated/it-IT/utterances/6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b44b8a4-8074-5b2a-b27a-29159324a38c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_claims_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c94c5e77397d45ab4006183e2a3454c4c5f3e07443ab1f78d62da970519af70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42fa0839-feac-5faf-9d7d-d25f5500acf7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b44b8a4-8074-5b2a-b27a-29159324a38c', 1), '1c94c5e77397d45ab4006183e2a3454c4c5f3e07443ab1f78d62da970519af70',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b.mp3', 3291, '2026-09-14 05:00:30.306191', 'b09259fb8559b809f487372cd7c77093effdbe0a6a2dcfad3b240e4ae038d96e', 'validated', '{"audio_key":"6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b","entity_key":"u_evidence_and_claims_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b09259fb8559b809f487372cd7c77093effdbe0a6a2dcfad3b240e4ae038d96e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_evidence_and_claims_01_listen -> audio/generated/it-IT/utterances/6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('39a9df61-4131-5de0-9489-21289f35d52a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_evidence_and_claims_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c94c5e77397d45ab4006183e2a3454c4c5f3e07443ab1f78d62da970519af70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11caf321-f50b-5a7a-a4cd-9efb36c3b602', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('39a9df61-4131-5de0-9489-21289f35d52a', 1), '1c94c5e77397d45ab4006183e2a3454c4c5f3e07443ab1f78d62da970519af70',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b.mp3', 3291, '2026-09-14 05:00:30.306191', 'b09259fb8559b809f487372cd7c77093effdbe0a6a2dcfad3b240e4ae038d96e', 'validated', '{"audio_key":"6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b","entity_key":"e_evidence_and_claims_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b09259fb8559b809f487372cd7c77093effdbe0a6a2dcfad3b240e4ae038d96e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6f5960e2e0b6606c390b38108bab0f1c6adf80145564b2057caa7e8d7c7e5f3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_contrast_03 -> audio/generated/it-IT/utterances/79eba0416cc825631311cc7c63acc9b21afeee1454a4686e0e6ea27693e8f8fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f8a9195-283d-5944-a7ac-35f45a70762a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_contrast_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45a948d8396ef039ad01c55d0e4fa9c9d0f72f7f72d82d7bcaa484bb85f329d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f1d9ff0-ac4b-57a5-be89-2fb56d8d108e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f8a9195-283d-5944-a7ac-35f45a70762a', 1), '45a948d8396ef039ad01c55d0e4fa9c9d0f72f7f72d82d7bcaa484bb85f329d2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/79eba0416cc825631311cc7c63acc9b21afeee1454a4686e0e6ea27693e8f8fc.mp3', 4728, '2026-09-14 05:00:32.306496', '2944d6b73f47b1a86127f2b02558fd8b7d07d31b39a4ce3548d4ef44a1bdf708', 'validated', '{"audio_key":"79eba0416cc825631311cc7c63acc9b21afeee1454a4686e0e6ea27693e8f8fc","entity_key":"u_concession_and_contrast_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2944d6b73f47b1a86127f2b02558fd8b7d07d31b39a4ce3548d4ef44a1bdf708","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/79eba0416cc825631311cc7c63acc9b21afeee1454a4686e0e6ea27693e8f8fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_choices_01 -> audio/generated/it-IT/utterances/7fb0b38e80df892ff76a7566f9f012f72f4e80b821b806332010aae02d17645b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25355fa1-fb16-5db6-88cb-d2902808ad33', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_choices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc931415444c4421917c4761406caa3a76615c4eeb1f791377eeec24d26f5105'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('997d1a32-c9a0-5a9d-91f9-4532a5e01455', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25355fa1-fb16-5db6-88cb-d2902808ad33', 1), 'dc931415444c4421917c4761406caa3a76615c4eeb1f791377eeec24d26f5105',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7fb0b38e80df892ff76a7566f9f012f72f4e80b821b806332010aae02d17645b.mp3', 3526, '2026-09-14 05:00:31.648509', '0af1477e54dfc91088905877ceaba9b03e716750e2466229343d09a67662d18e', 'validated', '{"audio_key":"7fb0b38e80df892ff76a7566f9f012f72f4e80b821b806332010aae02d17645b","entity_key":"u_counterfactual_choices_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0af1477e54dfc91088905877ceaba9b03e716750e2466229343d09a67662d18e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7fb0b38e80df892ff76a7566f9f012f72f4e80b821b806332010aae02d17645b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_nuance_02 -> audio/generated/it-IT/utterances/8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('99bf40b6-e168-5487-9c1d-fd83e0833712', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c899b2fb32a035545d248045a1168012abeb48b7dad34ce1dea7e0a9f65411'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f955325-b7e8-5146-81a9-90634f882636', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('99bf40b6-e168-5487-9c1d-fd83e0833712', 1), '08c899b2fb32a035545d248045a1168012abeb48b7dad34ce1dea7e0a9f65411',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3.mp3', 3422, '2026-09-14 05:00:33.025963', 'dc925ff424f954b5c071504c8972614b7ec07b877b6d2ce5973c85443ffc5b62', 'validated', '{"audio_key":"8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3","entity_key":"u_register_and_nuance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dc925ff424f954b5c071504c8972614b7ec07b877b6d2ce5973c85443ffc5b62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_and_nuance_01_listen -> audio/generated/it-IT/utterances/8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5cd70af4-03ce-528d-8a9d-8755296cde97', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_and_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c899b2fb32a035545d248045a1168012abeb48b7dad34ce1dea7e0a9f65411'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd3a9204-3c5c-5ec4-ab53-bf34c68b0947', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5cd70af4-03ce-528d-8a9d-8755296cde97', 1), '08c899b2fb32a035545d248045a1168012abeb48b7dad34ce1dea7e0a9f65411',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3.mp3', 3422, '2026-09-14 05:00:33.025963', 'dc925ff424f954b5c071504c8972614b7ec07b877b6d2ce5973c85443ffc5b62', 'validated', '{"audio_key":"8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3","entity_key":"e_register_and_nuance_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dc925ff424f954b5c071504c8972614b7ec07b877b6d2ce5973c85443ffc5b62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8d0fb32e262e578c7b04bef94e042a678e0f2c6497dde6db589e6e7d9fca08c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_and_impersonal_03 -> audio/generated/it-IT/utterances/96554cfd006c5fde24b653eab63156a6920fb66ee76c1666314b8c4ccffe7ab2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('08b6a625-f081-58bd-b8a8-f3faa3bd1b72', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_and_impersonal_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af5a8890e9394f23738385522ef928708601d9620e3871b1a4f4876655aa39b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08ffe145-fea4-5594-8c3b-97d3f05a4d10', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('08b6a625-f081-58bd-b8a8-f3faa3bd1b72', 1), 'af5a8890e9394f23738385522ef928708601d9620e3871b1a4f4876655aa39b6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/96554cfd006c5fde24b653eab63156a6920fb66ee76c1666314b8c4ccffe7ab2.mp3', 2821, '2026-09-14 05:00:33.437403', '96f40948a7a3883ca15b2d6e1c19f4de544ac4eeda4e29eb6801d88b69b6bc80', 'validated', '{"audio_key":"96554cfd006c5fde24b653eab63156a6920fb66ee76c1666314b8c4ccffe7ab2","entity_key":"u_passive_and_impersonal_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96f40948a7a3883ca15b2d6e1c19f4de544ac4eeda4e29eb6801d88b69b6bc80","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/96554cfd006c5fde24b653eab63156a6920fb66ee76c1666314b8c4ccffe7ab2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesive_argument_04 -> audio/generated/it-IT/utterances/99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('870f58fa-ad25-5093-b1c5-b9a4c3f08c04', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesive_argument_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f312de6039e179f615b53c4ba00a3d9ab9d246a70594aa41c5f65ab601593eda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5f0b2cc-ae08-5a12-9568-26c16c5a17ac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('870f58fa-ad25-5093-b1c5-b9a4c3f08c04', 1), 'f312de6039e179f615b53c4ba00a3d9ab9d246a70594aa41c5f65ab601593eda',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b.mp3', 3761, '2026-09-14 05:00:34.349417', 'dd2b159a6508193b9cc5b9d47184bb83e352c5c37a05f5337bd9497086f54f11', 'validated', '{"audio_key":"99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b","entity_key":"u_cohesive_argument_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dd2b159a6508193b9cc5b9d47184bb83e352c5c37a05f5337bd9497086f54f11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cohesive_argument_02_listen -> audio/generated/it-IT/utterances/99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b3612ce2-259e-5db3-9373-a321eede2c21', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cohesive_argument_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f312de6039e179f615b53c4ba00a3d9ab9d246a70594aa41c5f65ab601593eda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4c2c644-f82a-5d56-b617-d0af8e6fd729', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b3612ce2-259e-5db3-9373-a321eede2c21', 1), 'f312de6039e179f615b53c4ba00a3d9ab9d246a70594aa41c5f65ab601593eda',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b.mp3', 3761, '2026-09-14 05:00:34.349417', 'dd2b159a6508193b9cc5b9d47184bb83e352c5c37a05f5337bd9497086f54f11', 'validated', '{"audio_key":"99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b","entity_key":"e_cohesive_argument_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dd2b159a6508193b9cc5b9d47184bb83e352c5c37a05f5337bd9497086f54f11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99aa845eba9b87c5beda81a4245960a4a16aaf7ae710499113e5b66920e5fb7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_04 -> audio/generated/it-IT/utterances/99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1270375a-1d65-511f-8fab-71bef7cdd437', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dacc01b418f40815550cfa247d244fa007f4a21d58909cc06aef43538adb282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbd02a48-09e1-5209-ae33-52a1ccee98b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1270375a-1d65-511f-8fab-71bef7cdd437', 1), '2dacc01b418f40815550cfa247d244fa007f4a21d58909cc06aef43538adb282',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78.mp3', 3186, '2026-09-14 05:00:35.430312', '93bc50c044c048e4cf68dfaf977390f7a7d60c4911af15d1136005e2e220b3cb', 'validated', '{"audio_key":"99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78","entity_key":"u_formal_negotiation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"93bc50c044c048e4cf68dfaf977390f7a7d60c4911af15d1136005e2e220b3cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_negotiation_02_listen -> audio/generated/it-IT/utterances/99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('955a49d1-8fd6-5768-9a20-c1b8ad442bf7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dacc01b418f40815550cfa247d244fa007f4a21d58909cc06aef43538adb282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9471b493-a8e0-5cf4-81f8-ac66f5ce261b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('955a49d1-8fd6-5768-9a20-c1b8ad442bf7', 1), '2dacc01b418f40815550cfa247d244fa007f4a21d58909cc06aef43538adb282',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78.mp3', 3186, '2026-09-14 05:00:35.430312', '93bc50c044c048e4cf68dfaf977390f7a7d60c4911af15d1136005e2e220b3cb', 'validated', '{"audio_key":"99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78","entity_key":"e_formal_negotiation_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"93bc50c044c048e4cf68dfaf977390f7a7d60c4911af15d1136005e2e220b3cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99e95308d1faa019d3486dfd937ef1d5d1bcad97260e1f93a72a8249bf9f3e78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_debate_capstone_02 -> audio/generated/it-IT/utterances/a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc929fe7-4b9c-5e41-887e-db42f1c7161c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_debate_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ecbd245a829a0eeebb28542ec86bb313ff105e5de25221e3943c82cd524a696'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a4f76fb-7293-5121-87d3-1bb79f68076d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc929fe7-4b9c-5e41-887e-db42f1c7161c', 1), '1ecbd245a829a0eeebb28542ec86bb313ff105e5de25221e3943c82cd524a696',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42.mp3', 4963, '2026-09-14 05:00:35.850646', 'b2361fa50bbf1be39ceade044834090c8d7f2350fd70e67333b6636dc93ce7ef', 'validated', '{"audio_key":"a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42","entity_key":"u_b2_community_debate_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b2361fa50bbf1be39ceade044834090c8d7f2350fd70e67333b6636dc93ce7ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b2_community_debate_capstone_01_listen -> audio/generated/it-IT/utterances/a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2a45ebe3-3164-5966-83a4-0056a5cfe969', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b2_community_debate_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ecbd245a829a0eeebb28542ec86bb313ff105e5de25221e3943c82cd524a696'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8099d03-9935-53c0-89bd-4db80247a5e4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2a45ebe3-3164-5966-83a4-0056a5cfe969', 1), '1ecbd245a829a0eeebb28542ec86bb313ff105e5de25221e3943c82cd524a696',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42.mp3', 4963, '2026-09-14 05:00:35.850646', 'b2361fa50bbf1be39ceade044834090c8d7f2350fd70e67333b6636dc93ce7ef', 'validated', '{"audio_key":"a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42","entity_key":"e_b2_community_debate_capstone_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b2361fa50bbf1be39ceade044834090c8d7f2350fd70e67333b6636dc93ce7ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a2f26f8a8d0c7895b8708333e14891c546ec55fa0ffef12bb24cbb1b75874f42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_and_impersonal_04 -> audio/generated/it-IT/utterances/a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c4c76ae-b12c-5004-9b0a-ddb0c5c6b38c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_and_impersonal_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45a3681b900a6265a3cd72ab67e1c250b95b3df2ccb97e5c61f396ec115b6cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f44ec329-10ec-53fe-9c7e-e3a782959c2e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c4c76ae-b12c-5004-9b0a-ddb0c5c6b38c', 1), 'c45a3681b900a6265a3cd72ab67e1c250b95b3df2ccb97e5c61f396ec115b6cc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8.mp3', 3787, '2026-09-14 05:00:36.784849', '53c449f5e7f48b3ad9371f2bca524ae59c04bf27bc5933ca9fdfcfad9a36364d', 'validated', '{"audio_key":"a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8","entity_key":"u_passive_and_impersonal_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"53c449f5e7f48b3ad9371f2bca524ae59c04bf27bc5933ca9fdfcfad9a36364d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_passive_and_impersonal_02_listen -> audio/generated/it-IT/utterances/a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('658775ba-bd77-5554-8abc-cfac80ead9de', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_passive_and_impersonal_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45a3681b900a6265a3cd72ab67e1c250b95b3df2ccb97e5c61f396ec115b6cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('097b8f6a-76aa-5387-95ea-2a2236fbc57e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('658775ba-bd77-5554-8abc-cfac80ead9de', 1), 'c45a3681b900a6265a3cd72ab67e1c250b95b3df2ccb97e5c61f396ec115b6cc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8.mp3', 3787, '2026-09-14 05:00:36.784849', '53c449f5e7f48b3ad9371f2bca524ae59c04bf27bc5933ca9fdfcfad9a36364d', 'validated', '{"audio_key":"a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8","entity_key":"e_passive_and_impersonal_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"53c449f5e7f48b3ad9371f2bca524ae59c04bf27bc5933ca9fdfcfad9a36364d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a6afdd11ff186172e6da9a4cfaa2ea198808a6ace2d3255d84d0fe1aeaa81aa8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_contrast_02 -> audio/generated/it-IT/utterances/a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ef82e5a9-1e5a-5b93-bda7-8d97846a755b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_contrast_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a8dcd6efc7b498ad7ff703e38fa6eb39571007f4c8fd2981b955af912dfb065'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e1073cb-47d7-5d18-9258-9122535af351', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ef82e5a9-1e5a-5b93-bda7-8d97846a755b', 1), '6a8dcd6efc7b498ad7ff703e38fa6eb39571007f4c8fd2981b955af912dfb065',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d.mp3', 4623, '2026-09-14 05:00:37.360626', '26a9cafb1f05e3f928a40122bebc7c3293d2d88bc107a8ee4186919b623eca3d', 'validated', '{"audio_key":"a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d","entity_key":"u_concession_and_contrast_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"26a9cafb1f05e3f928a40122bebc7c3293d2d88bc107a8ee4186919b623eca3d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_contrast_01_listen -> audio/generated/it-IT/utterances/a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('07a85f93-d26c-5d1a-82c0-a21afbfa17b5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_contrast_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a8dcd6efc7b498ad7ff703e38fa6eb39571007f4c8fd2981b955af912dfb065'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80b840c9-ce99-5d38-b163-4df585d748e1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('07a85f93-d26c-5d1a-82c0-a21afbfa17b5', 1), '6a8dcd6efc7b498ad7ff703e38fa6eb39571007f4c8fd2981b955af912dfb065',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d.mp3', 4623, '2026-09-14 05:00:37.360626', '26a9cafb1f05e3f928a40122bebc7c3293d2d88bc107a8ee4186919b623eca3d', 'validated', '{"audio_key":"a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d","entity_key":"e_concession_and_contrast_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"26a9cafb1f05e3f928a40122bebc7c3293d2d88bc107a8ee4186919b623eca3d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a9f2626a19cd9fa07001eb808f8e03a0c2c42f18eaecc2a8e49646a55af77b7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_and_claims_04 -> audio/generated/it-IT/utterances/aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2894352f-a033-5a68-89c1-4e70f6f0eac9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_and_claims_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6ed58516313429aeb1c58d7826a806a4e250bd5b07c09c60cf76a960054e779'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9429885-ced0-5f84-8057-09c5b91312f2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2894352f-a033-5a68-89c1-4e70f6f0eac9', 1), 'b6ed58516313429aeb1c58d7826a806a4e250bd5b07c09c60cf76a960054e779',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04.mp3', 4179, '2026-09-14 05:00:38.112377', 'fb4b07222b6ac13e1a9a84e5601473494799848082f3fb364e79c0959bd28725', 'validated', '{"audio_key":"aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04","entity_key":"u_evidence_and_claims_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fb4b07222b6ac13e1a9a84e5601473494799848082f3fb364e79c0959bd28725","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_evidence_and_claims_02_listen -> audio/generated/it-IT/utterances/aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7eb07242-52f1-5c5c-87cd-46e5ec349eda', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_evidence_and_claims_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6ed58516313429aeb1c58d7826a806a4e250bd5b07c09c60cf76a960054e779'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd6bb8b2-ce7c-5346-af44-7a29f090d196', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7eb07242-52f1-5c5c-87cd-46e5ec349eda', 1), 'b6ed58516313429aeb1c58d7826a806a4e250bd5b07c09c60cf76a960054e779',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04.mp3', 4179, '2026-09-14 05:00:38.112377', 'fb4b07222b6ac13e1a9a84e5601473494799848082f3fb364e79c0959bd28725', 'validated', '{"audio_key":"aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04","entity_key":"e_evidence_and_claims_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fb4b07222b6ac13e1a9a84e5601473494799848082f3fb364e79c0959bd28725","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/aac004e255ba94d5342512dc74f4f3ba14e63484f1d590085bc672acf2e0cc04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_03 -> audio/generated/it-IT/utterances/ac6418a02f2b726ffc0d3d53cc616cae51a3150812bba2fe8e0551d5d5d8f713.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd831d44-a1df-5994-b753-a791237e6ef3', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e2626a113eb89e7456b7bb6e587e6caba46c134c0317dd444df77fcf1859866'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc510cd8-bab5-5801-8b55-e9fe48699e79', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd831d44-a1df-5994-b753-a791237e6ef3', 1), '9e2626a113eb89e7456b7bb6e587e6caba46c134c0317dd444df77fcf1859866',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ac6418a02f2b726ffc0d3d53cc616cae51a3150812bba2fe8e0551d5d5d8f713.mp3', 3108, '2026-09-14 05:00:38.580051', '7815d2f4481bfb0b7132e899bd7c82563c0d1cd40cdf09e0900a2fc429f88e0c', 'validated', '{"audio_key":"ac6418a02f2b726ffc0d3d53cc616cae51a3150812bba2fe8e0551d5d5d8f713","entity_key":"u_formal_negotiation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7815d2f4481bfb0b7132e899bd7c82563c0d1cd40cdf09e0900a2fc429f88e0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ac6418a02f2b726ffc0d3d53cc616cae51a3150812bba2fe8e0551d5d5d8f713.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_discourse_03 -> audio/generated/it-IT/utterances/b0f2e4ea9b086040b7af6bc531432f2db37f764347014f03dca1335a282ab465.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d27509f6-50b2-5cae-9928-2c30f9e32c34', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_discourse_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3595591c30555370008d1ad87b778b51d4303a8b050895518663fd3ccf8d645f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96d5d27e-a919-5f22-9c06-db1da432f55b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d27509f6-50b2-5cae-9928-2c30f9e32c34', 1), '3595591c30555370008d1ad87b778b51d4303a8b050895518663fd3ccf8d645f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b0f2e4ea9b086040b7af6bc531432f2db37f764347014f03dca1335a282ab465.mp3', 4362, '2026-09-14 05:00:39.486877', 'f5a040de455f317c90d40913d45c26b4fb651cad0c1e3d371ddc2cc9137fedd9', 'validated', '{"audio_key":"b0f2e4ea9b086040b7af6bc531432f2db37f764347014f03dca1335a282ab465","entity_key":"u_reported_discourse_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5a040de455f317c90d40913d45c26b4fb651cad0c1e3d371ddc2cc9137fedd9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b0f2e4ea9b086040b7af6bc531432f2db37f764347014f03dca1335a282ab465.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_debate_capstone_03 -> audio/generated/it-IT/utterances/b8ebac1fcf3d5c2a2b5d4b615e66ec53a15b5fb4dd51cbd68ed64db897593df3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e9386c8b-3b72-54a6-9dd3-0b68c949debe', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_debate_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8808d925f6af72c0d33c84fdfe35517c6bee014b500127290dcd038592cbd87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27813250-34f1-5266-b222-9059eb61651e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e9386c8b-3b72-54a6-9dd3-0b68c949debe', 1), 'f8808d925f6af72c0d33c84fdfe35517c6bee014b500127290dcd038592cbd87',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b8ebac1fcf3d5c2a2b5d4b615e66ec53a15b5fb4dd51cbd68ed64db897593df3.mp3', 4911, '2026-09-14 05:00:40.123586', '990dfa40291eb7c0b93abc1cdfe357d863e6a89c5c72b9a5a8856db55bf1588e', 'validated', '{"audio_key":"b8ebac1fcf3d5c2a2b5d4b615e66ec53a15b5fb4dd51cbd68ed64db897593df3","entity_key":"u_b2_community_debate_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"990dfa40291eb7c0b93abc1cdfe357d863e6a89c5c72b9a5a8856db55bf1588e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b8ebac1fcf3d5c2a2b5d4b615e66ec53a15b5fb4dd51cbd68ed64db897593df3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_choices_04 -> audio/generated/it-IT/utterances/bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b3c3c857-e0bd-54c9-afed-8bc14b04868d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_choices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3705f4bcf154a48b1be6c9770578d3b921b9dfcecda510820d2d908529dddabe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36d9f18f-e9ef-568c-829d-810d3429c0c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b3c3c857-e0bd-54c9-afed-8bc14b04868d', 1), '3705f4bcf154a48b1be6c9770578d3b921b9dfcecda510820d2d908529dddabe',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a.mp3', 2586, '2026-09-14 05:00:40.767261', 'c7c32b4e220387c7800a34673ef1912434b99d4aed97020938ed540a922bef63', 'validated', '{"audio_key":"bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a","entity_key":"u_counterfactual_choices_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c7c32b4e220387c7800a34673ef1912434b99d4aed97020938ed540a922bef63","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_choices_02_listen -> audio/generated/it-IT/utterances/bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7d9197f0-e78f-59fa-818c-bbb49cc2c13d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_choices_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3705f4bcf154a48b1be6c9770578d3b921b9dfcecda510820d2d908529dddabe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d760dbc8-2e37-55cf-88a9-fedbc99f0d20', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7d9197f0-e78f-59fa-818c-bbb49cc2c13d', 1), '3705f4bcf154a48b1be6c9770578d3b921b9dfcecda510820d2d908529dddabe',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a.mp3', 2586, '2026-09-14 05:00:40.767261', 'c7c32b4e220387c7800a34673ef1912434b99d4aed97020938ed540a922bef63', 'validated', '{"audio_key":"bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a","entity_key":"e_counterfactual_choices_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c7c32b4e220387c7800a34673ef1912434b99d4aed97020938ed540a922bef63","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/bd96615f8ee94430693334e1ae43cb99f4a0ed43f0deb947fab0177d9d19bf7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_discourse_01 -> audio/generated/it-IT/utterances/cbb0d68ede74b6970d6a2a936bd0324ce2b47b6b99d45f8ffeed35b9c146a3be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2b6f1bc-cad9-5f81-afd7-8ef0b50a99b4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_discourse_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6baceadaf3c819057061ef65512f82a1f888f55f837e925d731bcc1905836235'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('008a0fc8-9de4-549f-877e-6d687b11e5a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2b6f1bc-cad9-5f81-afd7-8ef0b50a99b4', 1), '6baceadaf3c819057061ef65512f82a1f888f55f837e925d731bcc1905836235',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cbb0d68ede74b6970d6a2a936bd0324ce2b47b6b99d45f8ffeed35b9c146a3be.mp3', 2638, '2026-09-14 05:00:41.256248', 'e26ceba26ef91b4b1e1db2753620c7358d9a4574ed241c595065e68261f09d22', 'validated', '{"audio_key":"cbb0d68ede74b6970d6a2a936bd0324ce2b47b6b99d45f8ffeed35b9c146a3be","entity_key":"u_reported_discourse_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e26ceba26ef91b4b1e1db2753620c7358d9a4574ed241c595065e68261f09d22","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cbb0d68ede74b6970d6a2a936bd0324ce2b47b6b99d45f8ffeed35b9c146a3be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_discourse_04 -> audio/generated/it-IT/utterances/cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9ac11af6-1b8e-5e20-bdab-1825c326cadd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_discourse_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5b3ab89515905e03b14bc6d26ae6e5747eaa4cadbef33997deb3984b9945950'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0ff2fe7-5ab6-52d0-9df1-505a923507cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9ac11af6-1b8e-5e20-bdab-1825c326cadd', 1), 'f5b3ab89515905e03b14bc6d26ae6e5747eaa4cadbef33997deb3984b9945950',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a.mp3', 2586, '2026-09-14 05:00:41.887773', '3c4e57c16c8a5343b0783d1ba87b3abfe6df93c60bdf411c4b2eee5f7b3d72b1', 'validated', '{"audio_key":"cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a","entity_key":"u_reported_discourse_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3c4e57c16c8a5343b0783d1ba87b3abfe6df93c60bdf411c4b2eee5f7b3d72b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_discourse_02_listen -> audio/generated/it-IT/utterances/cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('71f7fa4a-c8fa-57f5-9b4e-14d631b24c82', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_discourse_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5b3ab89515905e03b14bc6d26ae6e5747eaa4cadbef33997deb3984b9945950'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed18baff-5a28-580c-a711-c6ea6a58d43b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('71f7fa4a-c8fa-57f5-9b4e-14d631b24c82', 1), 'f5b3ab89515905e03b14bc6d26ae6e5747eaa4cadbef33997deb3984b9945950',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a.mp3', 2586, '2026-09-14 05:00:41.887773', '3c4e57c16c8a5343b0783d1ba87b3abfe6df93c60bdf411c4b2eee5f7b3d72b1', 'validated', '{"audio_key":"cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a","entity_key":"e_reported_discourse_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3c4e57c16c8a5343b0783d1ba87b3abfe6df93c60bdf411c4b2eee5f7b3d72b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cd1424469644c62f0949fb860bc05440a45358c77817830f60f70d1854672b3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_debate_capstone_04 -> audio/generated/it-IT/utterances/d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58216074-0dd8-595b-b524-9e08f4a8211c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_debate_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5d6802abed9488aa59bc95f1ac935d3303971dd7614e908184d12c0e7a6f71a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2ae728c-9b60-567a-8cec-abd96c1af60f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58216074-0dd8-595b-b524-9e08f4a8211c', 1), 'a5d6802abed9488aa59bc95f1ac935d3303971dd7614e908184d12c0e7a6f71a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f.mp3', 4832, '2026-09-14 05:00:42.747166', '7b3876951bf2c5003ae2da49fc8a5e5e96f992f3751727b59e54004938f004fa', 'validated', '{"audio_key":"d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f","entity_key":"u_b2_community_debate_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7b3876951bf2c5003ae2da49fc8a5e5e96f992f3751727b59e54004938f004fa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b2_community_debate_capstone_02_listen -> audio/generated/it-IT/utterances/d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e0ca891e-f982-5a14-bd48-b8f8ba4d33b2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b2_community_debate_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5d6802abed9488aa59bc95f1ac935d3303971dd7614e908184d12c0e7a6f71a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9290651b-681d-5c9a-87f3-ce79b87c632c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e0ca891e-f982-5a14-bd48-b8f8ba4d33b2', 1), 'a5d6802abed9488aa59bc95f1ac935d3303971dd7614e908184d12c0e7a6f71a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f.mp3', 4832, '2026-09-14 05:00:42.747166', '7b3876951bf2c5003ae2da49fc8a5e5e96f992f3751727b59e54004938f004fa', 'validated', '{"audio_key":"d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f","entity_key":"e_b2_community_debate_capstone_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7b3876951bf2c5003ae2da49fc8a5e5e96f992f3751727b59e54004938f004fa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d375d9aae733afc90d12f9d2ceb93c37b76ba02d87ec3affd55ef2c9984b188f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_subjunctive_02 -> audio/generated/it-IT/utterances/d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54dbc38b-8013-5b44-81fa-ed01cc7f9f1e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_subjunctive_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98f13ee15845825378b0155ba8da7d5401735fd3e0f5b67eef16dcbe29d4aa3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeef376a-43b7-51a0-b090-b93efb3e0568', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54dbc38b-8013-5b44-81fa-ed01cc7f9f1e', 1), '98f13ee15845825378b0155ba8da7d5401735fd3e0f5b67eef16dcbe29d4aa3d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477.mp3', 2272, '2026-09-14 05:00:43.049531', 'd06697c0d5707c2aea05ffe7640e807d3607533ad2c66875116a7e56eaa9ca4c', 'validated', '{"audio_key":"d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477","entity_key":"u_stance_and_subjunctive_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d06697c0d5707c2aea05ffe7640e807d3607533ad2c66875116a7e56eaa9ca4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stance_and_subjunctive_01_listen -> audio/generated/it-IT/utterances/d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('afd664d8-636e-515d-b36f-7d34d354132b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stance_and_subjunctive_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98f13ee15845825378b0155ba8da7d5401735fd3e0f5b67eef16dcbe29d4aa3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20afc06c-465d-552a-adf3-42bc1ee2acc2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('afd664d8-636e-515d-b36f-7d34d354132b', 1), '98f13ee15845825378b0155ba8da7d5401735fd3e0f5b67eef16dcbe29d4aa3d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477.mp3', 2272, '2026-09-14 05:00:43.049531', 'd06697c0d5707c2aea05ffe7640e807d3607533ad2c66875116a7e56eaa9ca4c', 'validated', '{"audio_key":"d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477","entity_key":"e_stance_and_subjunctive_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d06697c0d5707c2aea05ffe7640e807d3607533ad2c66875116a7e56eaa9ca4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d70b264959bc6b778c18ce8a3ac659f0e6bb8a02c111c7b708d2424ec3d78477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_02 -> audio/generated/it-IT/utterances/d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ca923670-3a06-55ce-a3ee-e85e312a1521', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7516d9bc09e2baf5451028923466328ae2ea70d7d60817143f6f5315dd29d7aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ff043ae-29c9-5415-9f66-57ce45f286c4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ca923670-3a06-55ce-a3ee-e85e312a1521', 1), '7516d9bc09e2baf5451028923466328ae2ea70d7d60817143f6f5315dd29d7aa',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6.mp3', 4623, '2026-09-14 05:00:44.256151', 'da387b2c8fcc876d66bd6fe3f387d2c32e566f6037921304ab107998e2251819', 'validated', '{"audio_key":"d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6","entity_key":"u_formal_negotiation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"da387b2c8fcc876d66bd6fe3f387d2c32e566f6037921304ab107998e2251819","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_negotiation_01_listen -> audio/generated/it-IT/utterances/d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f062ec7a-6fb8-5232-85ee-baf22656441d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7516d9bc09e2baf5451028923466328ae2ea70d7d60817143f6f5315dd29d7aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87c95530-3e3e-5f0d-ae8c-27725613a858', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f062ec7a-6fb8-5232-85ee-baf22656441d', 1), '7516d9bc09e2baf5451028923466328ae2ea70d7d60817143f6f5315dd29d7aa',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6.mp3', 4623, '2026-09-14 05:00:44.256151', 'da387b2c8fcc876d66bd6fe3f387d2c32e566f6037921304ab107998e2251819', 'validated', '{"audio_key":"d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6","entity_key":"e_formal_negotiation_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"da387b2c8fcc876d66bd6fe3f387d2c32e566f6037921304ab107998e2251819","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d7a4f73f018380875cece99e3f18f4c61d333bf8e9b6464a36669080f74a4eb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesive_argument_01 -> audio/generated/it-IT/utterances/e0e8b1113febe6ca1617218c9f344394798497682eddfd0c56bbbed7dd72824e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1aa708b9-a2f1-5b21-9860-a58bdf37ef7e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesive_argument_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45cef8691c9cef2b20cbd3376a91b2f9e13b35c2fad16763d19c27e1a1f6efa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2c75329-91a2-57c9-b779-c9a2b95b6dfc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1aa708b9-a2f1-5b21-9860-a58bdf37ef7e', 1), '45cef8691c9cef2b20cbd3376a91b2f9e13b35c2fad16763d19c27e1a1f6efa2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e0e8b1113febe6ca1617218c9f344394798497682eddfd0c56bbbed7dd72824e.mp3', 4858, '2026-09-14 05:00:44.588128', '2681b3d31394e2da4d31aaef2c50d0a4eda97e2c17271b3dd3c11e84d76a7990', 'validated', '{"audio_key":"e0e8b1113febe6ca1617218c9f344394798497682eddfd0c56bbbed7dd72824e","entity_key":"u_cohesive_argument_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2681b3d31394e2da4d31aaef2c50d0a4eda97e2c17271b3dd3c11e84d76a7990","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e0e8b1113febe6ca1617218c9f344394798497682eddfd0c56bbbed7dd72824e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_nuance_01 -> audio/generated/it-IT/utterances/e60e4496e78d7a51c5a0817b9535e473570433cb9687711c5ab03717c52bb9f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e9e6e837-6170-52c2-94a0-d4921d62c560', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7c810109bae1ad0230a110dea5407b0d9eef993bb0a81b6936a6a631374bb66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25db1cd9-c935-5d04-b426-6060edf6c94a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e9e6e837-6170-52c2-94a0-d4921d62c560', 1), 'd7c810109bae1ad0230a110dea5407b0d9eef993bb0a81b6936a6a631374bb66',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e60e4496e78d7a51c5a0817b9535e473570433cb9687711c5ab03717c52bb9f7.mp3', 4545, '2026-09-14 05:00:45.729883', '7d8dddb78ae8c2d39a99161f117aa9ffb0b392446a969ea6f68797482b8d81eb', 'validated', '{"audio_key":"e60e4496e78d7a51c5a0817b9535e473570433cb9687711c5ab03717c52bb9f7","entity_key":"u_register_and_nuance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7d8dddb78ae8c2d39a99161f117aa9ffb0b392446a969ea6f68797482b8d81eb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e60e4496e78d7a51c5a0817b9535e473570433cb9687711c5ab03717c52bb9f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesive_argument_03 -> audio/generated/it-IT/utterances/e9cc02ea3aeb82dae6e61ed33d4e8c162b1282c7f509e0ff686240faf00601b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fc1c1d4d-4937-5986-be37-e15109b2e341', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesive_argument_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '558fa12e229fff6df29854e67db02a4f3670a701c6c049a002891cf4d4eed321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b4c5fcc-74a6-5d7c-aadc-2a00530cccca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fc1c1d4d-4937-5986-be37-e15109b2e341', 1), '558fa12e229fff6df29854e67db02a4f3670a701c6c049a002891cf4d4eed321',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e9cc02ea3aeb82dae6e61ed33d4e8c162b1282c7f509e0ff686240faf00601b5.mp3', 4545, '2026-09-14 05:00:46.004220', '480302593859efab966850edf419522d2f0e7076a13af31080f2332963663ee7', 'validated', '{"audio_key":"e9cc02ea3aeb82dae6e61ed33d4e8c162b1282c7f509e0ff686240faf00601b5","entity_key":"u_cohesive_argument_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"480302593859efab966850edf419522d2f0e7076a13af31080f2332963663ee7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e9cc02ea3aeb82dae6e61ed33d4e8c162b1282c7f509e0ff686240faf00601b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_subjunctive_04 -> audio/generated/it-IT/utterances/f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c3614aa-a3c5-5a96-ac57-978956238836', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_subjunctive_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07df56983fce3ac84e4575bc84a6be1f0c2bc10ac771e9fe5c262d61e398e9ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('377db9a0-0812-54e1-8e97-b122b0594d31', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c3614aa-a3c5-5a96-ac57-978956238836', 1), '07df56983fce3ac84e4575bc84a6be1f0c2bc10ac771e9fe5c262d61e398e9ed',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325.mp3', 4414, '2026-09-14 05:00:47.051313', '276c5b6407c7964ab7aae824b9ec6775ea227af1d4b3927d9a933bd348c090ff', 'validated', '{"audio_key":"f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325","entity_key":"u_stance_and_subjunctive_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"276c5b6407c7964ab7aae824b9ec6775ea227af1d4b3927d9a933bd348c090ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stance_and_subjunctive_02_listen -> audio/generated/it-IT/utterances/f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f920dd0a-3310-52db-9647-a6920f11ff93', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stance_and_subjunctive_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07df56983fce3ac84e4575bc84a6be1f0c2bc10ac771e9fe5c262d61e398e9ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('558b9797-5d26-5b74-82e3-e66c985c9d48', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f920dd0a-3310-52db-9647-a6920f11ff93', 1), '07df56983fce3ac84e4575bc84a6be1f0c2bc10ac771e9fe5c262d61e398e9ed',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325.mp3', 4414, '2026-09-14 05:00:47.051313', '276c5b6407c7964ab7aae824b9ec6775ea227af1d4b3927d9a933bd348c090ff', 'validated', '{"audio_key":"f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325","entity_key":"e_stance_and_subjunctive_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"276c5b6407c7964ab7aae824b9ec6775ea227af1d4b3927d9a933bd348c090ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f86aa815c803f74143f456ed2833f6d7c2e2841c5c6db6469c36cdf1f0aeb325.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cohesive_argument_02 -> audio/generated/it-IT/utterances/f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('210a4a16-3734-5681-9ad9-06f9597e9c6f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cohesive_argument_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c336b0b9dfe8a83fbe0e9fb098fad3bdef8fad692646473ceec07573ca6a940c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc76d32f-49f5-596d-a1a0-c9252f470795', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('210a4a16-3734-5681-9ad9-06f9597e9c6f', 1), 'c336b0b9dfe8a83fbe0e9fb098fad3bdef8fad692646473ceec07573ca6a940c',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0.mp3', 3604, '2026-09-14 05:00:47.600859', 'ee44c9f573f8724c311ec43304e77948119ae54ef99368086a92c5a7ef5fbc2e', 'validated', '{"audio_key":"f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0","entity_key":"u_cohesive_argument_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee44c9f573f8724c311ec43304e77948119ae54ef99368086a92c5a7ef5fbc2e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cohesive_argument_01_listen -> audio/generated/it-IT/utterances/f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a50ec240-8ae3-54f6-9383-7dc2befbba51', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cohesive_argument_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c336b0b9dfe8a83fbe0e9fb098fad3bdef8fad692646473ceec07573ca6a940c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29a62b76-2f08-51b2-b9a9-fc4fdd7c3f9c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a50ec240-8ae3-54f6-9383-7dc2befbba51', 1), 'c336b0b9dfe8a83fbe0e9fb098fad3bdef8fad692646473ceec07573ca6a940c',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0.mp3', 3604, '2026-09-14 05:00:47.600859', 'ee44c9f573f8724c311ec43304e77948119ae54ef99368086a92c5a7ef5fbc2e', 'validated', '{"audio_key":"f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0","entity_key":"e_cohesive_argument_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee44c9f573f8724c311ec43304e77948119ae54ef99368086a92c5a7ef5fbc2e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f8c9c11e67f2e1f7b7185cc6b6183b0e22fded21ba4443cd4015e9670a04aba0.mp3"}'
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

-- Generated audio link import for de-DE C1
-- Source manifest: audio/manifests/de/C1-batch-1.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_policy_interpretation_03:1 -> audio/generated/de-DE/dialogues/040f35d52855a01986ab833f9539d2786eedef336860306428033a7595a0cadd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f050729c-7377-5f07-9265-3be7502cfac2', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad3d815e8905c0746165a548d65fa0162398d930385c3fa0fb693282e4a8f6a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f636975c-ac98-5dae-971f-b948e799ecd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f050729c-7377-5f07-9265-3be7502cfac2', 1), 'ad3d815e8905c0746165a548d65fa0162398d930385c3fa0fb693282e4a8f6a8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/040f35d52855a01986ab833f9539d2786eedef336860306428033a7595a0cadd.mp3', 3343, '2026-09-13 09:39:30.262677', '9c895242e047c15279639301551bbb7858ed48b94764f9d943820874f9c1b794', 'validated', '{"audio_key":"040f35d52855a01986ab833f9539d2786eedef336860306428033a7595a0cadd","entity_key":"d_policy_interpretation_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9c895242e047c15279639301551bbb7858ed48b94764f9d943820874f9c1b794","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/040f35d52855a01986ab833f9539d2786eedef336860306428033a7595a0cadd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_03:4 -> audio/generated/de-DE/dialogues/068eee899df93be9693ec871df86ae623f388e33c4cd0c409c4b2e690cbf3ca9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf659dce-aa55-5df1-af84-899137a21052', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5960e0aaff6a3bc15c04db000112114708f16372a45753d49883292946e5675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('891dafb4-941b-595a-b889-c57b536e5733', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf659dce-aa55-5df1-af84-899137a21052', 1), 'e5960e0aaff6a3bc15c04db000112114708f16372a45753d49883292946e5675',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/068eee899df93be9693ec871df86ae623f388e33c4cd0c409c4b2e690cbf3ca9.mp3', 3004, '2026-09-13 09:39:30.236823', '56bff07ddd0185910883a50484d48b18becb5ddbbbf9074264453f4117214fa3', 'validated', '{"audio_key":"068eee899df93be9693ec871df86ae623f388e33c4cd0c409c4b2e690cbf3ca9","entity_key":"d_strategic_recommendations_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"56bff07ddd0185910883a50484d48b18becb5ddbbbf9074264453f4117214fa3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/068eee899df93be9693ec871df86ae623f388e33c4cd0c409c4b2e690cbf3ca9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_03:3 -> audio/generated/de-DE/dialogues/082d4f26a6a15bae83f8c5e5bd97b5fbc5a37c9b2cc27cb5ae71ff76b60d7024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b6019b2-4c06-5098-8009-8da77330bab9', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4e46f012da2b752a16e8359f7478add7f3dd605a8b664fe7251bb516b4c2a49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e336e0e2-a05a-52b4-b33d-d511a55b532a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b6019b2-4c06-5098-8009-8da77330bab9', 1), 'd4e46f012da2b752a16e8359f7478add7f3dd605a8b664fe7251bb516b4c2a49',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/082d4f26a6a15bae83f8c5e5bd97b5fbc5a37c9b2cc27cb5ae71ff76b60d7024.mp3', 4963, '2026-09-13 09:39:31.613808', '9b59ae4127f9ee8c7af3ee94c629f72b8c618c6db5df7616a88f431f34fc9229', 'validated', '{"audio_key":"082d4f26a6a15bae83f8c5e5bd97b5fbc5a37c9b2cc27cb5ae71ff76b60d7024","entity_key":"d_policy_interpretation_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9b59ae4127f9ee8c7af3ee94c629f72b8c618c6db5df7616a88f431f34fc9229","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/082d4f26a6a15bae83f8c5e5bd97b5fbc5a37c9b2cc27cb5ae71ff76b60d7024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:4 -> audio/generated/de-DE/dialogues/08f339b27ee892309451955d082cfc8d1f5498b4c922bc615c9ae5d45f9f374c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7fc2a08-eca2-50e1-93fe-60827fa06409', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d703a9989784f4403252ce1c7b9138092a97e3e86a41fc9cc58cd901bd7a7c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1025d8bc-0498-51bf-ab5b-85d645ad89fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7fc2a08-eca2-50e1-93fe-60827fa06409', 1), '7d703a9989784f4403252ce1c7b9138092a97e3e86a41fc9cc58cd901bd7a7c8',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/08f339b27ee892309451955d082cfc8d1f5498b4c922bc615c9ae5d45f9f374c.mp3', 7340, '2026-09-13 09:39:31.979523', 'ed8d4030a44a610d7ad9b198dd8430d73948f13a3f22dd800fc3e235c91016c9', 'validated', '{"audio_key":"08f339b27ee892309451955d082cfc8d1f5498b4c922bc615c9ae5d45f9f374c","entity_key":"d_multi_source_synthesis_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ed8d4030a44a610d7ad9b198dd8430d73948f13a3f22dd800fc3e235c91016c9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/08f339b27ee892309451955d082cfc8d1f5498b4c922bc615c9ae5d45f9f374c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_03:2 -> audio/generated/de-DE/dialogues/0b988ff70c267e51a695c33792d6fa1fa9516926792eed6849ed00e0c7f43571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa380d60-1f34-5b98-a8e0-ea4f7048c198', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70ee18606f3ab237f18a4e7a639e9c24d51e1110157285beef30b0e604f716a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e84723b-35fd-565c-b1a6-9a0d3644cdfe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa380d60-1f34-5b98-a8e0-ea4f7048c198', 1), '70ee18606f3ab237f18a4e7a639e9c24d51e1110157285beef30b0e604f716a2',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0b988ff70c267e51a695c33792d6fa1fa9516926792eed6849ed00e0c7f43571.mp3', 6635, '2026-09-13 09:39:33.341175', 'e1a7f6b04bfdf19c207f1b937912bb70b615da8cbddef98b00ea01cd26992f00', 'validated', '{"audio_key":"0b988ff70c267e51a695c33792d6fa1fa9516926792eed6849ed00e0c7f43571","entity_key":"d_evidence_briefing_capstone_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e1a7f6b04bfdf19c207f1b937912bb70b615da8cbddef98b00ea01cd26992f00","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0b988ff70c267e51a695c33792d6fa1fa9516926792eed6849ed00e0c7f43571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_02:2 -> audio/generated/de-DE/dialogues/1641258543766ce613add79962dbb5e9056d3e6b88f1400110fffdbe5bc4d24c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94c49349-2984-5685-9c5f-70292e88803a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9381cf0bbbb1a7fe66e21327f8e5b2f79636b8e5b74348cb7dcb2c74a2edf034'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba229b2b-73be-5914-9414-7a676cf4995a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94c49349-2984-5685-9c5f-70292e88803a', 1), '9381cf0bbbb1a7fe66e21327f8e5b2f79636b8e5b74348cb7dcb2c74a2edf034',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1641258543766ce613add79962dbb5e9056d3e6b88f1400110fffdbe5bc4d24c.mp3', 2821, '2026-09-13 09:39:33.087018', '0a967f5bd63cbdf0b6d616c136a15f8ff61a8d1b0c95a852facf197b56aa00f7', 'validated', '{"audio_key":"1641258543766ce613add79962dbb5e9056d3e6b88f1400110fffdbe5bc4d24c","entity_key":"d_consensus_facilitation_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a967f5bd63cbdf0b6d616c136a15f8ff61a8d1b0c95a852facf197b56aa00f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1641258543766ce613add79962dbb5e9056d3e6b88f1400110fffdbe5bc4d24c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_02:3 -> audio/generated/de-DE/dialogues/1896a226b5dcd1d6827105a1b8ff052686de15e416e634bb9880a5975adc0e8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('339867d6-61c2-58e4-ac09-59a9c3237f02', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e67697421eb0ad2d1aaf821c66ad8b5af405c31da395d076fe68e22446a8404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f287dd4-bdaf-5ba1-9588-6d33c8d09f20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('339867d6-61c2-58e4-ac09-59a9c3237f02', 1), '3e67697421eb0ad2d1aaf821c66ad8b5af405c31da395d076fe68e22446a8404',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1896a226b5dcd1d6827105a1b8ff052686de15e416e634bb9880a5975adc0e8c.mp3', 4310, '2026-09-13 09:39:34.360922', 'e2dfb80d0b9c628b0318b3392e50de04c98b4c149eeab8a63f1aaacc89867d33', 'validated', '{"audio_key":"1896a226b5dcd1d6827105a1b8ff052686de15e416e634bb9880a5975adc0e8c","entity_key":"d_strategic_recommendations_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e2dfb80d0b9c628b0318b3392e50de04c98b4c149eeab8a63f1aaacc89867d33","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1896a226b5dcd1d6827105a1b8ff052686de15e416e634bb9880a5975adc0e8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_02:1 -> audio/generated/de-DE/dialogues/191ac7c5ad9081cc20dcbb954262f603ae0a071447180959d4cb212ff0b9b5c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2eb573f5-7bb3-5975-bcf3-f05f72c4435e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a1a6cf2cfce39733874ee9b2975042afbb8518353a518d24aed757e37fb9feb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6548274b-2520-5584-81e6-01c66c520bb6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2eb573f5-7bb3-5975-bcf3-f05f72c4435e', 1), '9a1a6cf2cfce39733874ee9b2975042afbb8518353a518d24aed757e37fb9feb',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/191ac7c5ad9081cc20dcbb954262f603ae0a071447180959d4cb212ff0b9b5c0.mp3', 3160, '2026-09-13 09:39:34.572437', '3271bd81e80ecf6e11a05d01b31e1388d309c22d4b9ceabf8d3bbbe8d19078bf', 'validated', '{"audio_key":"191ac7c5ad9081cc20dcbb954262f603ae0a071447180959d4cb212ff0b9b5c0","entity_key":"d_formal_analysis_writing_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3271bd81e80ecf6e11a05d01b31e1388d309c22d4b9ceabf8d3bbbe8d19078bf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/191ac7c5ad9081cc20dcbb954262f603ae0a071447180959d4cb212ff0b9b5c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_01:4 -> audio/generated/de-DE/dialogues/19b72a33f84209e380391e6a98f02fae3d25a9a97a4dd67c4439dcb6777785dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34cfa8da-54d1-5cd7-886a-d6073f9a4733', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4b13610c9b73e5f22b63eee6226b095693ab64331eec5fe75b5734dfe6e3941'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2578f97e-2369-5240-9e03-f8ecd13c3a27', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34cfa8da-54d1-5cd7-886a-d6073f9a4733', 1), 'd4b13610c9b73e5f22b63eee6226b095693ab64331eec5fe75b5734dfe6e3941',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/19b72a33f84209e380391e6a98f02fae3d25a9a97a4dd67c4439dcb6777785dc.mp3', 4310, '2026-09-13 09:39:35.746660', '66f0ad88ac33f79fd40b706be9c23e0479ee73400c95efdda2f9a06e9c77ae08', 'validated', '{"audio_key":"19b72a33f84209e380391e6a98f02fae3d25a9a97a4dd67c4439dcb6777785dc","entity_key":"d_consensus_facilitation_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"66f0ad88ac33f79fd40b706be9c23e0479ee73400c95efdda2f9a06e9c77ae08","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/19b72a33f84209e380391e6a98f02fae3d25a9a97a4dd67c4439dcb6777785dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_01:1 -> audio/generated/de-DE/dialogues/1aa92b6decefa8d7cbbe54b2a7d520f69bef1bde68a78ad4c75b630dbe2632bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b580b7cc-5259-5146-8a1b-6404afbe392a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbbeaf74f94e68f8c9c66ce1b7a64e47e714b50d48d6ed72c149163ed0a81b2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2f6805e-5750-52e9-8ea0-fd1d1643b804', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b580b7cc-5259-5146-8a1b-6404afbe392a', 1), 'dbbeaf74f94e68f8c9c66ce1b7a64e47e714b50d48d6ed72c149163ed0a81b2b',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1aa92b6decefa8d7cbbe54b2a7d520f69bef1bde68a78ad4c75b630dbe2632bd.mp3', 3108, '2026-09-13 09:39:35.745083', 'fde9c3420972ea08b90d80e98f58c40d53b4bc6794e38e2ec1f8675cddd4a17b', 'validated', '{"audio_key":"1aa92b6decefa8d7cbbe54b2a7d520f69bef1bde68a78ad4c75b630dbe2632bd","entity_key":"d_policy_interpretation_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fde9c3420972ea08b90d80e98f58c40d53b4bc6794e38e2ec1f8675cddd4a17b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1aa92b6decefa8d7cbbe54b2a7d520f69bef1bde68a78ad4c75b630dbe2632bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_01:3 -> audio/generated/de-DE/dialogues/1ac9fff4ebd1b7583e474fc548de881eea7bf9a8264fce3883238fad8692d6b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('638d7b38-87ec-5c73-bcdf-981cc0556a9c', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9335b0dc819dbff290f453d7b4ef71ee2e757cff3304abf89960d5ff2ff2c5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32d33d11-d1ae-5a33-97cb-fae80356f39f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('638d7b38-87ec-5c73-bcdf-981cc0556a9c', 1), 'b9335b0dc819dbff290f453d7b4ef71ee2e757cff3304abf89960d5ff2ff2c5a',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1ac9fff4ebd1b7583e474fc548de881eea7bf9a8264fce3883238fad8692d6b7.mp3', 3526, '2026-09-13 09:39:37.035270', '25ebb61aba4ddff8da78ef80aea5518c323e91e73c3c3b6454e81d170be2d026', 'validated', '{"audio_key":"1ac9fff4ebd1b7583e474fc548de881eea7bf9a8264fce3883238fad8692d6b7","entity_key":"d_consensus_facilitation_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25ebb61aba4ddff8da78ef80aea5518c323e91e73c3c3b6454e81d170be2d026","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1ac9fff4ebd1b7583e474fc548de881eea7bf9a8264fce3883238fad8692d6b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_03:4 -> audio/generated/de-DE/dialogues/1b6fc152223b941c0ae593c7c668769cbda39ca61b7fe5dcd63e2483b1886bc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dec55d9b-1601-56b2-a81b-0455fb7fc8e1', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8cce585953bcf165eac0f8e1bd51c1a26ebb545f183e6f6dde98538b008c573'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4df4ba1a-b11f-5a04-970a-cdbb177d00e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dec55d9b-1601-56b2-a81b-0455fb7fc8e1', 1), 'f8cce585953bcf165eac0f8e1bd51c1a26ebb545f183e6f6dde98538b008c573',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b6fc152223b941c0ae593c7c668769cbda39ca61b7fe5dcd63e2483b1886bc3.mp3', 4022, '2026-09-13 09:39:37.078565', '790f946b0397b810a2baff5d474eb66bb0c6645a74dec0e206b4152d6fb6c241', 'validated', '{"audio_key":"1b6fc152223b941c0ae593c7c668769cbda39ca61b7fe5dcd63e2483b1886bc3","entity_key":"d_policy_interpretation_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"790f946b0397b810a2baff5d474eb66bb0c6645a74dec0e206b4152d6fb6c241","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1b6fc152223b941c0ae593c7c668769cbda39ca61b7fe5dcd63e2483b1886bc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_02:4 -> audio/generated/de-DE/dialogues/1b8f926b6d1cf8ebb954c99cefe6b88a3e5bb47d9b7080e217802325a810e9e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db33cb1e-234c-5765-a0bc-cfd401371feb', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4db8203dd20b7eb880a71a2ad56efef68668f93ea869044447bb5e74e854f86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4733700-6b3e-56fd-a0dc-312b6761577e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db33cb1e-234c-5765-a0bc-cfd401371feb', 1), 'a4db8203dd20b7eb880a71a2ad56efef68668f93ea869044447bb5e74e854f86',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b8f926b6d1cf8ebb954c99cefe6b88a3e5bb47d9b7080e217802325a810e9e1.mp3', 4493, '2026-09-13 09:39:38.282319', '52ed52cc568258e1944bd309dd3eb3fa3f50ea10ea029dfbcfd1eec7e48e3dda', 'validated', '{"audio_key":"1b8f926b6d1cf8ebb954c99cefe6b88a3e5bb47d9b7080e217802325a810e9e1","entity_key":"d_evidence_briefing_capstone_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"52ed52cc568258e1944bd309dd3eb3fa3f50ea10ea029dfbcfd1eec7e48e3dda","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1b8f926b6d1cf8ebb954c99cefe6b88a3e5bb47d9b7080e217802325a810e9e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_03:1 -> audio/generated/de-DE/dialogues/20c30ed9702e12e575f5063b9d547cd6b3c8bbfa39efaa3336bb2a8536d28c22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5102d648-8802-53ca-a7fb-8842f13a451f', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5f808b006fa0740cb52e3e72cd2c1b7739e1ebf371ab0e6a3825e88c7588096'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0de51533-4c33-5b1c-ae6c-accd4b750637', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5102d648-8802-53ca-a7fb-8842f13a451f', 1), 'c5f808b006fa0740cb52e3e72cd2c1b7739e1ebf371ab0e6a3825e88c7588096',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/20c30ed9702e12e575f5063b9d547cd6b3c8bbfa39efaa3336bb2a8536d28c22.mp3', 3709, '2026-09-13 09:39:38.509555', '7cd01df9b7230bca0a5fa39b31d8f8de4cf8835a5a57ea62a88aeb9438077bf2', 'validated', '{"audio_key":"20c30ed9702e12e575f5063b9d547cd6b3c8bbfa39efaa3336bb2a8536d28c22","entity_key":"d_implicit_meaning_register_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7cd01df9b7230bca0a5fa39b31d8f8de4cf8835a5a57ea62a88aeb9438077bf2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/20c30ed9702e12e575f5063b9d547cd6b3c8bbfa39efaa3336bb2a8536d28c22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_01:1 -> audio/generated/de-DE/dialogues/21b387084be0020917f3cd72f054498315311c1589350443063380b2f3b51002.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e78c3ef1-c49f-51d2-a779-3be11438c4d0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d3deaadb3df3480b1bb2e932e54e71df8732f4651814dc303a12a97a200962'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('941ff401-5be4-50d7-b19e-ef23f2a03d20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e78c3ef1-c49f-51d2-a779-3be11438c4d0', 1), '28d3deaadb3df3480b1bb2e932e54e71df8732f4651814dc303a12a97a200962',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/21b387084be0020917f3cd72f054498315311c1589350443063380b2f3b51002.mp3', 5093, '2026-09-13 09:39:39.857463', '980d2d1035cc2b78e485356216977f1bf8da3e013179e7de827666a4827f81c2', 'validated', '{"audio_key":"21b387084be0020917f3cd72f054498315311c1589350443063380b2f3b51002","entity_key":"d_consensus_facilitation_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"980d2d1035cc2b78e485356216977f1bf8da3e013179e7de827666a4827f81c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/21b387084be0020917f3cd72f054498315311c1589350443063380b2f3b51002.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_01:4 -> audio/generated/de-DE/dialogues/2323840ce94eb4eedc63148c95bfc89822d98ba58222b98eb8cf3f7629742a3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dee212d2-b7db-5a19-b90d-478b27041693', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21607047b04791fd502886509fd144e9a26d2af2724f1b2a36e04a0ed7be4446'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('764d4877-01f4-5da1-9d3f-bc3ff274a1a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dee212d2-b7db-5a19-b90d-478b27041693', 1), '21607047b04791fd502886509fd144e9a26d2af2724f1b2a36e04a0ed7be4446',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2323840ce94eb4eedc63148c95bfc89822d98ba58222b98eb8cf3f7629742a3b.mp3', 4179, '2026-09-13 09:39:39.825299', 'f80151a089e86ce296e055d6ebc7dbf013bf5228aafaefe28fa8567c6510d246', 'validated', '{"audio_key":"2323840ce94eb4eedc63148c95bfc89822d98ba58222b98eb8cf3f7629742a3b","entity_key":"d_implicit_meaning_register_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f80151a089e86ce296e055d6ebc7dbf013bf5228aafaefe28fa8567c6510d246","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2323840ce94eb4eedc63148c95bfc89822d98ba58222b98eb8cf3f7629742a3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_01:3 -> audio/generated/de-DE/dialogues/272fc4fdb801afe7c7df1fbbb8195889d8ef68a54c71a8b99be6347af1d9351d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19ed14d2-a570-5e5e-b403-f8c4e9c10e3a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c439f2d354bc04f4d3f0b1654c9c207fb78c2fc7f68ea9ddd51d5a08b08393f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbdf743e-d6fe-5290-a389-c879f7ac426b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19ed14d2-a570-5e5e-b403-f8c4e9c10e3a', 1), '2c439f2d354bc04f4d3f0b1654c9c207fb78c2fc7f68ea9ddd51d5a08b08393f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/272fc4fdb801afe7c7df1fbbb8195889d8ef68a54c71a8b99be6347af1d9351d.mp3', 3657, '2026-09-13 09:39:41.040812', 'ca73e167d50517696bff3359911b234b3bf6544c634c61b250005a99ffc713b3', 'validated', '{"audio_key":"272fc4fdb801afe7c7df1fbbb8195889d8ef68a54c71a8b99be6347af1d9351d","entity_key":"d_policy_interpretation_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca73e167d50517696bff3359911b234b3bf6544c634c61b250005a99ffc713b3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/272fc4fdb801afe7c7df1fbbb8195889d8ef68a54c71a8b99be6347af1d9351d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_02:2 -> audio/generated/de-DE/dialogues/27aa3e11de6620768b7225ea0e987c51b83ce98b6e9cabc71871161156f0b3cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c08cb66-ff8d-5d63-9f4b-f6499fb407d6', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0566e440716b8c0b0100bff7ad077cdf289044049c96a53b4fc6edcfd811bf79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d02fd157-e707-5c6a-a707-54c598a7ba9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c08cb66-ff8d-5d63-9f4b-f6499fb407d6', 1), '0566e440716b8c0b0100bff7ad077cdf289044049c96a53b4fc6edcfd811bf79',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27aa3e11de6620768b7225ea0e987c51b83ce98b6e9cabc71871161156f0b3cc.mp3', 2586, '2026-09-13 09:39:40.971028', 'd143058d0d54a6485e8535046f6f545e0b982a105b7bc7454453fa81858ec4e7', 'validated', '{"audio_key":"27aa3e11de6620768b7225ea0e987c51b83ce98b6e9cabc71871161156f0b3cc","entity_key":"d_crisis_communication_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d143058d0d54a6485e8535046f6f545e0b982a105b7bc7454453fa81858ec4e7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/27aa3e11de6620768b7225ea0e987c51b83ce98b6e9cabc71871161156f0b3cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_01:4 -> audio/generated/de-DE/dialogues/284d86b84f1d8ea8128fdc01a3bc28b883f35422aecda2438de52de759f3a5df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a73c14ea-0cda-59b7-99a5-fd2de519c12a', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6da2f7396298a9ccc8841db0bf0e7157ad0f76e7d88783f015bb0f4e91beda7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cc4bf7c-7fbc-5845-ad67-4973f06dd55f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a73c14ea-0cda-59b7-99a5-fd2de519c12a', 1), 'd6da2f7396298a9ccc8841db0bf0e7157ad0f76e7d88783f015bb0f4e91beda7',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/284d86b84f1d8ea8128fdc01a3bc28b883f35422aecda2438de52de759f3a5df.mp3', 5041, '2026-09-13 09:39:42.391784', '5934328ac26fdab9b1cfaf3cea2a14b5dca6c826fa839ce501b36227be497515', 'validated', '{"audio_key":"284d86b84f1d8ea8128fdc01a3bc28b883f35422aecda2438de52de759f3a5df","entity_key":"d_claims_hedging_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"5934328ac26fdab9b1cfaf3cea2a14b5dca6c826fa839ce501b36227be497515","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/284d86b84f1d8ea8128fdc01a3bc28b883f35422aecda2438de52de759f3a5df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_01:2 -> audio/generated/de-DE/dialogues/2d2b58968f3d60bb17ecd2a63f67aab2bbcf61d97803d1290317c97e25a344c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('05a5f5b8-d121-586b-ae41-ae7907c76d43', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5597d1f9ead538a553b8859652852b6c9c74a9dd5c7910d29b05db32f7f3287e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3848b878-91be-5765-8357-d696fede4faa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('05a5f5b8-d121-586b-ae41-ae7907c76d43', 1), '5597d1f9ead538a553b8859652852b6c9c74a9dd5c7910d29b05db32f7f3287e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d2b58968f3d60bb17ecd2a63f67aab2bbcf61d97803d1290317c97e25a344c0.mp3', 5015, '2026-09-13 09:39:42.466243', 'ec6833553552d410c4346f5bd1c375232ebcf5c05992162711c192bf2c468295', 'validated', '{"audio_key":"2d2b58968f3d60bb17ecd2a63f67aab2bbcf61d97803d1290317c97e25a344c0","entity_key":"d_strategic_recommendations_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ec6833553552d410c4346f5bd1c375232ebcf5c05992162711c192bf2c468295","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2d2b58968f3d60bb17ecd2a63f67aab2bbcf61d97803d1290317c97e25a344c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_03:1 -> audio/generated/de-DE/dialogues/2f4afd804721081f8626713359a4cea791cbf9b0844e3c56a9c3c3b783d043e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32a10572-4585-50e0-870c-ea6564d7491d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a0a49997a630f6583548391303aa8d3973b77707f8c699bd4b4d0ec7cd44b3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4e95182-d036-593a-aa6c-d58d0b838544', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32a10572-4585-50e0-870c-ea6564d7491d', 1), '9a0a49997a630f6583548391303aa8d3973b77707f8c699bd4b4d0ec7cd44b3a',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2f4afd804721081f8626713359a4cea791cbf9b0844e3c56a9c3c3b783d043e0.mp3', 3369, '2026-09-13 09:39:43.593921', 'f86d39faeee956781489e2c06d5881ccb1a30cb75fabeb0dc8a8fa0a9eee56ef', 'validated', '{"audio_key":"2f4afd804721081f8626713359a4cea791cbf9b0844e3c56a9c3c3b783d043e0","entity_key":"d_multi_source_synthesis_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f86d39faeee956781489e2c06d5881ccb1a30cb75fabeb0dc8a8fa0a9eee56ef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2f4afd804721081f8626713359a4cea791cbf9b0844e3c56a9c3c3b783d043e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_03:3 -> audio/generated/de-DE/dialogues/2fab7482bf1aa0c199cbf99814debe4f489906d7132f80d8c0e67214d6e8ec0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9ef59ee-9f5d-5824-9e61-b9f0b1a922d0', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54b9f2084dbcfcaa0c13b12324157dd927baf0c7fc3bd7728b10286a0e623592'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c171af5-bc1d-5956-8c50-69ec8e6791c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9ef59ee-9f5d-5824-9e61-b9f0b1a922d0', 1), '54b9f2084dbcfcaa0c13b12324157dd927baf0c7fc3bd7728b10286a0e623592',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2fab7482bf1aa0c199cbf99814debe4f489906d7132f80d8c0e67214d6e8ec0b.mp3', 6948, '2026-09-13 09:39:44.060136', '096372a35371c7a4b823712a2df722523523234333c8c0dc4da4f6c89bba058e', 'validated', '{"audio_key":"2fab7482bf1aa0c199cbf99814debe4f489906d7132f80d8c0e67214d6e8ec0b","entity_key":"d_strategic_recommendations_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"096372a35371c7a4b823712a2df722523523234333c8c0dc4da4f6c89bba058e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2fab7482bf1aa0c199cbf99814debe4f489906d7132f80d8c0e67214d6e8ec0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_02:3 -> audio/generated/de-DE/dialogues/306a20816229a057ffc3146d17b2036e943f63e17c0b3d2fbe2887dbf6e99e5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2e0768e-2c10-5453-ae27-4cc4bd436f9d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd67ba3cecacf1d14647140e94ac74892c5bf3ca2449cee0214dc6f005cc76562'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66601400-44f8-5376-984a-1c2f65d726ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2e0768e-2c10-5453-ae27-4cc4bd436f9d', 1), 'd67ba3cecacf1d14647140e94ac74892c5bf3ca2449cee0214dc6f005cc76562',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/306a20816229a057ffc3146d17b2036e943f63e17c0b3d2fbe2887dbf6e99e5b.mp3', 4832, '2026-09-13 09:39:45.011904', '79d4fc07a41c72bb2b531596776315bb7b4af0d5d37071972f68f5441bb2136c', 'validated', '{"audio_key":"306a20816229a057ffc3146d17b2036e943f63e17c0b3d2fbe2887dbf6e99e5b","entity_key":"d_formal_analysis_writing_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"79d4fc07a41c72bb2b531596776315bb7b4af0d5d37071972f68f5441bb2136c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/306a20816229a057ffc3146d17b2036e943f63e17c0b3d2fbe2887dbf6e99e5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:4 -> audio/generated/de-DE/dialogues/315771c2b95f45b4df48babf8a755a3f407c8a0e0fc8abbaabd0666dc84beaef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b36e93d-a87d-5f9a-9dba-d8c27f1299b0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9ce527248e06309aa91486327d2046d013d20449da47ea68b5d594982c80391'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f10a700d-c13c-55ca-9618-0310f78e91b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b36e93d-a87d-5f9a-9dba-d8c27f1299b0', 1), 'f9ce527248e06309aa91486327d2046d013d20449da47ea68b5d594982c80391',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/315771c2b95f45b4df48babf8a755a3f407c8a0e0fc8abbaabd0666dc84beaef.mp3', 3186, '2026-09-13 09:39:45.244328', '649f1e934d71325e1ee89a657cbfbefc8b494e3140a0ba6f2ee70463ad410bdd', 'validated', '{"audio_key":"315771c2b95f45b4df48babf8a755a3f407c8a0e0fc8abbaabd0666dc84beaef","entity_key":"d_multi_source_synthesis_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"649f1e934d71325e1ee89a657cbfbefc8b494e3140a0ba6f2ee70463ad410bdd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/315771c2b95f45b4df48babf8a755a3f407c8a0e0fc8abbaabd0666dc84beaef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:1 -> audio/generated/de-DE/dialogues/3290bfceb05023c69225134d4afdd679203e1b120270a65386dc54b08592dce9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51d2cc3d-490c-5a5e-bde8-9ddca1af3f21', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13a1794fed9d80cd3a3887030a2893163b6d8666603311978cfd53ebc016c2ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b02770f4-5303-519b-88f5-aeb06d64ffe1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51d2cc3d-490c-5a5e-bde8-9ddca1af3f21', 1), '13a1794fed9d80cd3a3887030a2893163b6d8666603311978cfd53ebc016c2ec',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3290bfceb05023c69225134d4afdd679203e1b120270a65386dc54b08592dce9.mp3', 3239, '2026-09-13 09:39:46.213486', '0230079a0eaf1b1fca92685ccae8fba0308cab5a958adfb48009457eab50bdd9', 'validated', '{"audio_key":"3290bfceb05023c69225134d4afdd679203e1b120270a65386dc54b08592dce9","entity_key":"d_multi_source_synthesis_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0230079a0eaf1b1fca92685ccae8fba0308cab5a958adfb48009457eab50bdd9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3290bfceb05023c69225134d4afdd679203e1b120270a65386dc54b08592dce9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:2 -> audio/generated/de-DE/dialogues/34e7b36da49e74905bd6c487f0d56cd8c7c4110f7bd844c6ded676c8ee54d95c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0f343d9-f909-5c52-909e-306f29182195', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11f7fb8f7135313a6b14e4d98fde0c02740cb59ce75213003621e9e391eb1763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48760d99-263a-59f0-8810-6fba27018677', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0f343d9-f909-5c52-909e-306f29182195', 1), '11f7fb8f7135313a6b14e4d98fde0c02740cb59ce75213003621e9e391eb1763',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/34e7b36da49e74905bd6c487f0d56cd8c7c4110f7bd844c6ded676c8ee54d95c.mp3', 4022, '2026-09-13 09:39:46.503851', '1431a2cf835323a9e49dbdca31c15a917def876879874a52a42a60c1cf4f9510', 'validated', '{"audio_key":"34e7b36da49e74905bd6c487f0d56cd8c7c4110f7bd844c6ded676c8ee54d95c","entity_key":"d_multi_source_synthesis_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1431a2cf835323a9e49dbdca31c15a917def876879874a52a42a60c1cf4f9510","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/34e7b36da49e74905bd6c487f0d56cd8c7c4110f7bd844c6ded676c8ee54d95c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_02:2 -> audio/generated/de-DE/dialogues/3ed19018e4d766e3b5ea4da874c1a20d43159644ce689e9b2acac8654cc3be9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('174d6207-e92d-5109-87c8-7c8ae1046e28', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d0f6a1745df0b0221098b4f9f090facb1b0fa281d2f1efb7f1ed9fbe44e914a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc6fdc4-799e-57be-8f4f-418636382fc2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('174d6207-e92d-5109-87c8-7c8ae1046e28', 1), '8d0f6a1745df0b0221098b4f9f090facb1b0fa281d2f1efb7f1ed9fbe44e914a',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ed19018e4d766e3b5ea4da874c1a20d43159644ce689e9b2acac8654cc3be9e.mp3', 3343, '2026-09-13 09:39:47.434805', 'ca081d533a639c41002d59273215791a624bdee0e14e2b43417a03caae69e643', 'validated', '{"audio_key":"3ed19018e4d766e3b5ea4da874c1a20d43159644ce689e9b2acac8654cc3be9e","entity_key":"d_reported_speech_attribution_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ca081d533a639c41002d59273215791a624bdee0e14e2b43417a03caae69e643","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3ed19018e4d766e3b5ea4da874c1a20d43159644ce689e9b2acac8654cc3be9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_01:4 -> audio/generated/de-DE/dialogues/40c38d36c41158469f7218cd0f39a96b6a696cf62a1188bee4a78ab7309fae22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ae37045-1827-5cd0-8f5a-fda789b370f1', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25b49fceb6f8e5729cfcf71319ec276f957cff51355f8b0168b9b17052b4a48f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5340ca0-b3aa-58f7-93ac-2a35a6ef35c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ae37045-1827-5cd0-8f5a-fda789b370f1', 1), '25b49fceb6f8e5729cfcf71319ec276f957cff51355f8b0168b9b17052b4a48f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/40c38d36c41158469f7218cd0f39a96b6a696cf62a1188bee4a78ab7309fae22.mp3', 4310, '2026-09-13 09:39:47.936653', 'b30400a3b794d0eb602a11daa551f83277a601a086d261cd5cfc132a000e4f7b', 'validated', '{"audio_key":"40c38d36c41158469f7218cd0f39a96b6a696cf62a1188bee4a78ab7309fae22","entity_key":"d_crisis_communication_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b30400a3b794d0eb602a11daa551f83277a601a086d261cd5cfc132a000e4f7b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/40c38d36c41158469f7218cd0f39a96b6a696cf62a1188bee4a78ab7309fae22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_02:3 -> audio/generated/de-DE/dialogues/420ae63bcfcdaf1c108293992362e5ea6c92280b9dbc7e0c07671d739d0a21b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e343187-981f-52bf-8998-035bd69486d2', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80c71fc3ab03943f6befe41bba52631d1b05e08be6e5776e62a0a38a02265e4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd6489ab-1b5a-5d34-8d57-227024f0bc69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e343187-981f-52bf-8998-035bd69486d2', 1), '80c71fc3ab03943f6befe41bba52631d1b05e08be6e5776e62a0a38a02265e4c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/420ae63bcfcdaf1c108293992362e5ea6c92280b9dbc7e0c07671d739d0a21b6.mp3', 4493, '2026-09-13 09:39:48.818641', 'a5ba30347c6e164df968ad2afbf25c386e32f6117e262107ecc9b510bd448f9e', 'validated', '{"audio_key":"420ae63bcfcdaf1c108293992362e5ea6c92280b9dbc7e0c07671d739d0a21b6","entity_key":"d_consensus_facilitation_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a5ba30347c6e164df968ad2afbf25c386e32f6117e262107ecc9b510bd448f9e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/420ae63bcfcdaf1c108293992362e5ea6c92280b9dbc7e0c07671d739d0a21b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_02:1 -> audio/generated/de-DE/dialogues/4af47130278a73117d98b929f2c8c4fd29d16712648229041656d79a5282ff7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51ba66c5-28ba-5eca-9ed9-364bd7176338', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5b7bc9862d99b8402928b91a4a65e15ea532dd4a9d56dd69df307dd81a87827'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aefd47d-b1d1-5606-a15b-a491997ec61b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51ba66c5-28ba-5eca-9ed9-364bd7176338', 1), 'd5b7bc9862d99b8402928b91a4a65e15ea532dd4a9d56dd69df307dd81a87827',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4af47130278a73117d98b929f2c8c4fd29d16712648229041656d79a5282ff7f.mp3', 3474, '2026-09-13 09:39:49.172237', '76b6f5f8076fbe18a19b2c937d74e20a1363c77e296e439de09d7d9b021bee21', 'validated', '{"audio_key":"4af47130278a73117d98b929f2c8c4fd29d16712648229041656d79a5282ff7f","entity_key":"d_claims_hedging_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"76b6f5f8076fbe18a19b2c937d74e20a1363c77e296e439de09d7d9b021bee21","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4af47130278a73117d98b929f2c8c4fd29d16712648229041656d79a5282ff7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_01:4 -> audio/generated/de-DE/dialogues/4b4d204ef99fba5231c66f59f8ae9ebcbe1cd0a6e74530c5977830e2da8e5dd3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8d1a330-7399-5d9f-80e1-850e514cd0b5', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64ee7f409135bb11763fdd6c45b2cd79a5c8a63c99fbf562d8a339014bd1365'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc50255d-2ed6-5b22-ba35-18029dcbaaa5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8d1a330-7399-5d9f-80e1-850e514cd0b5', 1), 'c64ee7f409135bb11763fdd6c45b2cd79a5c8a63c99fbf562d8a339014bd1365',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b4d204ef99fba5231c66f59f8ae9ebcbe1cd0a6e74530c5977830e2da8e5dd3.mp3', 4545, '2026-09-13 09:39:50.217014', 'bc1f6673b029c4ab73df14d4f4246143107b4ab10d329c7780e32bcd6fd5da3c', 'validated', '{"audio_key":"4b4d204ef99fba5231c66f59f8ae9ebcbe1cd0a6e74530c5977830e2da8e5dd3","entity_key":"d_reported_speech_attribution_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bc1f6673b029c4ab73df14d4f4246143107b4ab10d329c7780e32bcd6fd5da3c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4b4d204ef99fba5231c66f59f8ae9ebcbe1cd0a6e74530c5977830e2da8e5dd3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_01:3 -> audio/generated/de-DE/dialogues/4c99e9d3f184362b38c971c38fdb1cc63836a2d391cb905a4e23f8ec1ff35ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f776f79-b911-5ae4-8c70-b965100c05cf', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '978f778600d4bb0bafb6a2637b815cfd6791d5ca5ace2c0aefef76f5ac87e049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('281d7cb6-c6ce-58a5-96a9-8f83a4146296', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f776f79-b911-5ae4-8c70-b965100c05cf', 1), '978f778600d4bb0bafb6a2637b815cfd6791d5ca5ace2c0aefef76f5ac87e049',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4c99e9d3f184362b38c971c38fdb1cc63836a2d391cb905a4e23f8ec1ff35ac5.mp3', 5015, '2026-09-13 09:39:50.586108', 'a3204198ff28bd0389a4d3844ed83b74a4048e9fcdf1c1fc85d424b45441f9f5', 'validated', '{"audio_key":"4c99e9d3f184362b38c971c38fdb1cc63836a2d391cb905a4e23f8ec1ff35ac5","entity_key":"d_crisis_communication_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a3204198ff28bd0389a4d3844ed83b74a4048e9fcdf1c1fc85d424b45441f9f5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4c99e9d3f184362b38c971c38fdb1cc63836a2d391cb905a4e23f8ec1ff35ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_03:4 -> audio/generated/de-DE/dialogues/4ddd95d4f2453a19db35d0676a1c736e5de3ae1c324c788edd42e7270fa2cf79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24457662-4695-5b5f-ad39-f875613700a4', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d3726db4e9f8eb1c6770f601d73688a22fc131b97fb5f0054718087dcf0fd8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0306f43b-a0d1-5c0a-9d7f-f8118e684d47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24457662-4695-5b5f-ad39-f875613700a4', 1), '5d3726db4e9f8eb1c6770f601d73688a22fc131b97fb5f0054718087dcf0fd8c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ddd95d4f2453a19db35d0676a1c736e5de3ae1c324c788edd42e7270fa2cf79.mp3', 5877, '2026-09-13 09:39:51.758693', '4f04e7bf3e21902d819362121ec81aca190be3d8e5c942b8227191df6b9ef34d', 'validated', '{"audio_key":"4ddd95d4f2453a19db35d0676a1c736e5de3ae1c324c788edd42e7270fa2cf79","entity_key":"d_implicit_meaning_register_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4f04e7bf3e21902d819362121ec81aca190be3d8e5c942b8227191df6b9ef34d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ddd95d4f2453a19db35d0676a1c736e5de3ae1c324c788edd42e7270fa2cf79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_01:4 -> audio/generated/de-DE/dialogues/53a73f68df84c06558e7c679bb07379556741733f1fcae9567b7ef44f3b56f2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5504923-b363-54bc-8400-56f3071a6b88', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8516f5b0bdb54d1eed3e3dbd1b0203e7ecda88784092cef297b7989dd36408bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f7387cc-1d26-5bd2-9427-9a4687b32957', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5504923-b363-54bc-8400-56f3071a6b88', 1), '8516f5b0bdb54d1eed3e3dbd1b0203e7ecda88784092cef297b7989dd36408bb',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/53a73f68df84c06558e7c679bb07379556741733f1fcae9567b7ef44f3b56f2e.mp3', 5146, '2026-09-13 09:39:51.958822', '9c4348feadbd0e834cf9627bd260b271a3ec3af2edc14fc7adbf8ce4aa8e66ef', 'validated', '{"audio_key":"53a73f68df84c06558e7c679bb07379556741733f1fcae9567b7ef44f3b56f2e","entity_key":"d_evidence_briefing_capstone_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9c4348feadbd0e834cf9627bd260b271a3ec3af2edc14fc7adbf8ce4aa8e66ef","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/53a73f68df84c06558e7c679bb07379556741733f1fcae9567b7ef44f3b56f2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_01:3 -> audio/generated/de-DE/dialogues/5c64207b8aa26fa307b25dbd5d0d516af887cd1b7008685969db55b3f765d38e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bed3639f-307f-5d4b-ab96-688ab1d4bbef', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '772b8535a56b0f64164c7073613a0fbae19bc5b41f42ae7bec17711d580dc4e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae7eb485-b77a-5878-b1dd-9d85fe98f24a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bed3639f-307f-5d4b-ab96-688ab1d4bbef', 1), '772b8535a56b0f64164c7073613a0fbae19bc5b41f42ae7bec17711d580dc4e7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5c64207b8aa26fa307b25dbd5d0d516af887cd1b7008685969db55b3f765d38e.mp3', 3840, '2026-09-13 09:39:52.988393', '4b185255f9c293eab69db8d131a3df0afe9f57aae9bf5f5e9dc7ac1a1e796c4c', 'validated', '{"audio_key":"5c64207b8aa26fa307b25dbd5d0d516af887cd1b7008685969db55b3f765d38e","entity_key":"d_claims_hedging_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4b185255f9c293eab69db8d131a3df0afe9f57aae9bf5f5e9dc7ac1a1e796c4c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5c64207b8aa26fa307b25dbd5d0d516af887cd1b7008685969db55b3f765d38e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_03:1 -> audio/generated/de-DE/dialogues/5ebc5eedd120f996278a1938340983739bbcaaa682122682ce5db92f793200cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3341f447-5253-5a00-827d-a60b0a24c469', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6841c4ebf13120bd8b89c01192284cac8dbaab2a6a0d8a1a342fe6fdcd3bb425'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22938bd9-f458-5151-89b1-0cd3bd655abc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3341f447-5253-5a00-827d-a60b0a24c469', 1), '6841c4ebf13120bd8b89c01192284cac8dbaab2a6a0d8a1a342fe6fdcd3bb425',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5ebc5eedd120f996278a1938340983739bbcaaa682122682ce5db92f793200cb.mp3', 4179, '2026-09-13 09:39:53.253592', '843506ff7aff6f115fd7199766f45d9363381278746b4ed1521c8ac63c30c8e0', 'validated', '{"audio_key":"5ebc5eedd120f996278a1938340983739bbcaaa682122682ce5db92f793200cb","entity_key":"d_crisis_communication_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"843506ff7aff6f115fd7199766f45d9363381278746b4ed1521c8ac63c30c8e0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5ebc5eedd120f996278a1938340983739bbcaaa682122682ce5db92f793200cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_03:3 -> audio/generated/de-DE/dialogues/603c4445a0713846720a92674e2854695c78a27a37dfc60c48727d00b49288f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d641a645-add5-5153-936c-f2f0e524795e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02a26d462f2b5fef3560ce6ef8c4957d2b793e5600d46cf44400fda05daaade6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb398aaf-4f83-57c1-ab5e-cc614bf84262', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d641a645-add5-5153-936c-f2f0e524795e', 1), '02a26d462f2b5fef3560ce6ef8c4957d2b793e5600d46cf44400fda05daaade6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/603c4445a0713846720a92674e2854695c78a27a37dfc60c48727d00b49288f3.mp3', 5851, '2026-09-13 09:39:54.505650', '7d02007b4f5f27fa575c9d1179de22ac289b6bf4bb607b88738bc63b4ae36361', 'validated', '{"audio_key":"603c4445a0713846720a92674e2854695c78a27a37dfc60c48727d00b49288f3","entity_key":"d_consensus_facilitation_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7d02007b4f5f27fa575c9d1179de22ac289b6bf4bb607b88738bc63b4ae36361","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/603c4445a0713846720a92674e2854695c78a27a37dfc60c48727d00b49288f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_03:3 -> audio/generated/de-DE/dialogues/697bfb75c3bf519971802bf61afff2b97fdabc9465cd43e68923d79b0d8120a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('59b8f8a6-7d54-5be6-8310-879b24da5471', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80acb84dfdd0d870669bb86b86befba272498606ca07528bf8f0e19f4cd9a277'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f6272dc-4e48-5478-8349-ab3228a1db64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('59b8f8a6-7d54-5be6-8310-879b24da5471', 1), '80acb84dfdd0d870669bb86b86befba272498606ca07528bf8f0e19f4cd9a277',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/697bfb75c3bf519971802bf61afff2b97fdabc9465cd43e68923d79b0d8120a9.mp3', 5041, '2026-09-13 09:39:54.677038', '18df0c739009a63bf9d2ea6777c428d0762c11f4e25d3ccadf10d52aa6e7a895', 'validated', '{"audio_key":"697bfb75c3bf519971802bf61afff2b97fdabc9465cd43e68923d79b0d8120a9","entity_key":"d_crisis_communication_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"18df0c739009a63bf9d2ea6777c428d0762c11f4e25d3ccadf10d52aa6e7a895","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/697bfb75c3bf519971802bf61afff2b97fdabc9465cd43e68923d79b0d8120a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_01:1 -> audio/generated/de-DE/dialogues/6aaa868d3139e763be7a1b69eeec02cbc43d7dd9686fef927ab136dfa5ce3a4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7526b48-b852-5c49-9721-5198272aa2e4', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edade1cccfbf7ecb168ebc0018b2273b31c7b8c62a3976039ea21b9f145ef99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('661fcfed-ba1b-5d34-b5ef-c5610ec7e6cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7526b48-b852-5c49-9721-5198272aa2e4', 1), '6edade1cccfbf7ecb168ebc0018b2273b31c7b8c62a3976039ea21b9f145ef99',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6aaa868d3139e763be7a1b69eeec02cbc43d7dd9686fef927ab136dfa5ce3a4c.mp3', 3761, '2026-09-13 09:39:55.788058', 'b680f29987f4d45b9503a2f8eb42ed9d2738e87fce9b988929a2caa679d98a9a', 'validated', '{"audio_key":"6aaa868d3139e763be7a1b69eeec02cbc43d7dd9686fef927ab136dfa5ce3a4c","entity_key":"d_strategic_recommendations_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b680f29987f4d45b9503a2f8eb42ed9d2738e87fce9b988929a2caa679d98a9a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6aaa868d3139e763be7a1b69eeec02cbc43d7dd9686fef927ab136dfa5ce3a4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_02:1 -> audio/generated/de-DE/dialogues/6d6363fe7041c41cc4a8646b8d790bef39e40e59d3248b573bd071cca188d1b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ffce60a-718d-558b-bcfe-138349ce9dd0', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb12194941d758956d973f712dd326715c9988ae23e3ad38d66d4b6aed836746'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5973f240-3fdb-5edc-8ba5-a610693d4771', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ffce60a-718d-558b-bcfe-138349ce9dd0', 1), 'fb12194941d758956d973f712dd326715c9988ae23e3ad38d66d4b6aed836746',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d6363fe7041c41cc4a8646b8d790bef39e40e59d3248b573bd071cca188d1b2.mp3', 3422, '2026-09-13 09:39:55.941919', 'c38647a0cd9f067b48f848e7332e11d4ac0800587235dd4bdde1dff9cda63ace', 'validated', '{"audio_key":"6d6363fe7041c41cc4a8646b8d790bef39e40e59d3248b573bd071cca188d1b2","entity_key":"d_policy_interpretation_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c38647a0cd9f067b48f848e7332e11d4ac0800587235dd4bdde1dff9cda63ace","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6d6363fe7041c41cc4a8646b8d790bef39e40e59d3248b573bd071cca188d1b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_03:1 -> audio/generated/de-DE/dialogues/6dc3e33a23684ac237b77d4e987c2b370bf109d2a957c1af3835924ea289dcb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32fae4a4-d94e-5160-a2a1-319444c8d63e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '203444dfdd71049170da939d505192f3d97f214bcfc2e2d138c4e0d7a7bcffbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4da0d890-c791-56aa-9f1c-3129360ec0af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32fae4a4-d94e-5160-a2a1-319444c8d63e', 1), '203444dfdd71049170da939d505192f3d97f214bcfc2e2d138c4e0d7a7bcffbe',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6dc3e33a23684ac237b77d4e987c2b370bf109d2a957c1af3835924ea289dcb7.mp3', 2925, '2026-09-13 09:39:56.889624', '7cb6ca967f6677bcae503ac4e75fc22b6e908d0e11da8f3d9b68532c2eff31cc', 'validated', '{"audio_key":"6dc3e33a23684ac237b77d4e987c2b370bf109d2a957c1af3835924ea289dcb7","entity_key":"d_reported_speech_attribution_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7cb6ca967f6677bcae503ac4e75fc22b6e908d0e11da8f3d9b68532c2eff31cc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6dc3e33a23684ac237b77d4e987c2b370bf109d2a957c1af3835924ea289dcb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_02:2 -> audio/generated/de-DE/dialogues/7200a766ee26717273692e4940430aa75e34a4cebb0fe15a2d239080e1d503e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7e1cde2-0e8a-5d57-b005-47140fa59159', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2524aab93ecce80582a1e457ba0ec1e7c4d5676bafbbc3d937d1b8eeeca30083'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b36ad9f-6e47-531a-9830-2a75eae614cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7e1cde2-0e8a-5d57-b005-47140fa59159', 1), '2524aab93ecce80582a1e457ba0ec1e7c4d5676bafbbc3d937d1b8eeeca30083',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7200a766ee26717273692e4940430aa75e34a4cebb0fe15a2d239080e1d503e4.mp3', 6635, '2026-09-13 09:39:57.528050', '5c4244da2f4b598b2b124e8d3958c5acaa6512f7cd85d7b73871b6c05913a8aa', 'validated', '{"audio_key":"7200a766ee26717273692e4940430aa75e34a4cebb0fe15a2d239080e1d503e4","entity_key":"d_evidence_briefing_capstone_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"5c4244da2f4b598b2b124e8d3958c5acaa6512f7cd85d7b73871b6c05913a8aa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7200a766ee26717273692e4940430aa75e34a4cebb0fe15a2d239080e1d503e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_02:2 -> audio/generated/de-DE/dialogues/72260feb33a43a9408e263387051264b61a2e338250d9ce9815a8d128573f7b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf7ab307-b621-589d-8e46-1569f6b1a0fd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b35fa61c5e707192ea0b662fac418d0a782bec0b3b329be7c6287ba368306e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5db9d17c-db62-5df2-bfc7-19a687eeb5a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf7ab307-b621-589d-8e46-1569f6b1a0fd', 1), '8b35fa61c5e707192ea0b662fac418d0a782bec0b3b329be7c6287ba368306e3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/72260feb33a43a9408e263387051264b61a2e338250d9ce9815a8d128573f7b9.mp3', 4623, '2026-09-13 09:39:58.248581', '15b1227312457dd504b176810ab29b6805cc082e3749fd6d669f85007a8b3ad2', 'validated', '{"audio_key":"72260feb33a43a9408e263387051264b61a2e338250d9ce9815a8d128573f7b9","entity_key":"d_strategic_recommendations_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"15b1227312457dd504b176810ab29b6805cc082e3749fd6d669f85007a8b3ad2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/72260feb33a43a9408e263387051264b61a2e338250d9ce9815a8d128573f7b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_03:4 -> audio/generated/de-DE/dialogues/7483f277e312fb2f180e51717f31388bb4467b2d545ffc4beda239b61b447ee6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad3ecf67-8f11-5ae9-ad63-8114add956b3', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ba81a7b21e5de531a1c5da8a6999a0975ea2f4b99a22bbfbef941233ba9d707'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ca51cfe-24b8-5605-bb77-09998988987b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad3ecf67-8f11-5ae9-ad63-8114add956b3', 1), '3ba81a7b21e5de531a1c5da8a6999a0975ea2f4b99a22bbfbef941233ba9d707',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7483f277e312fb2f180e51717f31388bb4467b2d545ffc4beda239b61b447ee6.mp3', 3578, '2026-09-13 09:39:58.761272', '723a146fa04cf481f41f7f862d71c62f7609112809e18938f4b35f02a58827fb', 'validated', '{"audio_key":"7483f277e312fb2f180e51717f31388bb4467b2d545ffc4beda239b61b447ee6","entity_key":"d_reported_speech_attribution_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"723a146fa04cf481f41f7f862d71c62f7609112809e18938f4b35f02a58827fb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7483f277e312fb2f180e51717f31388bb4467b2d545ffc4beda239b61b447ee6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_02:3 -> audio/generated/de-DE/dialogues/755c5f90555106b094c9d070b568ed748f54ba3ced8e7d78792ff555610c5b60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da62bd8b-0e24-5fa0-9cb4-ae9f27c4a652', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6f1f5cb6969b331d8810facb1eecc4721c38c27c7c5c940f0a6f61579f3cd62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('905034ea-d5d2-56c1-8783-30cd25a4f6ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da62bd8b-0e24-5fa0-9cb4-ae9f27c4a652', 1), 'a6f1f5cb6969b331d8810facb1eecc4721c38c27c7c5c940f0a6f61579f3cd62',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/755c5f90555106b094c9d070b568ed748f54ba3ced8e7d78792ff555610c5b60.mp3', 4414, '2026-09-13 09:39:59.542512', '53996b6d259db7ae9b14a4e9ac5c8ff3261c918d4c705352f9c7976b69402c43', 'validated', '{"audio_key":"755c5f90555106b094c9d070b568ed748f54ba3ced8e7d78792ff555610c5b60","entity_key":"d_claims_hedging_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"53996b6d259db7ae9b14a4e9ac5c8ff3261c918d4c705352f9c7976b69402c43","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/755c5f90555106b094c9d070b568ed748f54ba3ced8e7d78792ff555610c5b60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_02:2 -> audio/generated/de-DE/dialogues/780b807cb0436fe1bf940d22230c22ed11d53c0df5c1978370962c9e45bb7634.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('524412f1-601f-58d8-b565-3560e53d27ab', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecc7e8b0674d7a69e634ed52070fe1108a75d1a049909f7e2ff35ef4439d9340'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dff8f8f-de75-5428-9b5e-28415f2baef8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('524412f1-601f-58d8-b565-3560e53d27ab', 1), 'ecc7e8b0674d7a69e634ed52070fe1108a75d1a049909f7e2ff35ef4439d9340',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/780b807cb0436fe1bf940d22230c22ed11d53c0df5c1978370962c9e45bb7634.mp3', 3604, '2026-09-13 09:40:00.030717', 'd70d8d4f28ab5fb3f087461fb0aece23ca7069aaca0b1c5a42866c710eb89c8a', 'validated', '{"audio_key":"780b807cb0436fe1bf940d22230c22ed11d53c0df5c1978370962c9e45bb7634","entity_key":"d_claims_hedging_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d70d8d4f28ab5fb3f087461fb0aece23ca7069aaca0b1c5a42866c710eb89c8a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/780b807cb0436fe1bf940d22230c22ed11d53c0df5c1978370962c9e45bb7634.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_02:4 -> audio/generated/de-DE/dialogues/7a5679ee0f00593a567a51d4b34d1f65782badb216660509d71a611fad07f4de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75e433f4-cb4c-56af-bc15-d4723ead7d36', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b256c95574072648cacb369d77d39613a4c3049dc1b0160947d1dd2b1db3beee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7034872-7bb3-52b3-a811-1a98911ee581', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75e433f4-cb4c-56af-bc15-d4723ead7d36', 1), 'b256c95574072648cacb369d77d39613a4c3049dc1b0160947d1dd2b1db3beee',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a5679ee0f00593a567a51d4b34d1f65782badb216660509d71a611fad07f4de.mp3', 4127, '2026-09-13 09:40:00.836810', '399073ddf9f7b4cc1d339a5652d4c8912d48646a97f26c4ad2f19b0e1158b083', 'validated', '{"audio_key":"7a5679ee0f00593a567a51d4b34d1f65782badb216660509d71a611fad07f4de","entity_key":"d_claims_hedging_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"399073ddf9f7b4cc1d339a5652d4c8912d48646a97f26c4ad2f19b0e1158b083","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7a5679ee0f00593a567a51d4b34d1f65782badb216660509d71a611fad07f4de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_01:3 -> audio/generated/de-DE/dialogues/85f330aa8aed38b7444adb24b3302abb422cf1ba02639e7cde1cffb1c2c5298f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0eff9b4e-63ff-5f38-afaa-17588724a5a2', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c411d20b90d0f4299044e447c19129fc5b89a7f05414b49863836970d0b8d19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b27eaadc-977e-5412-b798-49ab0e5008ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0eff9b4e-63ff-5f38-afaa-17588724a5a2', 1), '9c411d20b90d0f4299044e447c19129fc5b89a7f05414b49863836970d0b8d19',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/85f330aa8aed38b7444adb24b3302abb422cf1ba02639e7cde1cffb1c2c5298f.mp3', 4075, '2026-09-13 09:40:01.295786', '9699558f5e8e80ea44d098843d86d06f4eac522b575ba573cef99015ae5ba5b0', 'validated', '{"audio_key":"85f330aa8aed38b7444adb24b3302abb422cf1ba02639e7cde1cffb1c2c5298f","entity_key":"d_strategic_recommendations_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9699558f5e8e80ea44d098843d86d06f4eac522b575ba573cef99015ae5ba5b0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/85f330aa8aed38b7444adb24b3302abb422cf1ba02639e7cde1cffb1c2c5298f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_01:3 -> audio/generated/de-DE/dialogues/89d25d1c484123b6e93dcfabeac7f807e55166d75a50682214b693f3a8aa4dfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a1c209f-2b03-57ff-8e79-61bce4bb8730', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7b9a4130ee5ced37199485bfdb9391a8ddc8e0d36e6d77cfe9f6be68f8146cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a59f0e7f-e259-585c-8448-bc3ddf990cd9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a1c209f-2b03-57ff-8e79-61bce4bb8730', 1), 'f7b9a4130ee5ced37199485bfdb9391a8ddc8e0d36e6d77cfe9f6be68f8146cd',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89d25d1c484123b6e93dcfabeac7f807e55166d75a50682214b693f3a8aa4dfd.mp3', 6034, '2026-09-13 09:40:02.374495', '3c28dd29ce55d3e734ce0f9b643f5684d6e3038cbc685afc796f33301a4789dd', 'validated', '{"audio_key":"89d25d1c484123b6e93dcfabeac7f807e55166d75a50682214b693f3a8aa4dfd","entity_key":"d_reported_speech_attribution_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3c28dd29ce55d3e734ce0f9b643f5684d6e3038cbc685afc796f33301a4789dd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/89d25d1c484123b6e93dcfabeac7f807e55166d75a50682214b693f3a8aa4dfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_02:4 -> audio/generated/de-DE/dialogues/8d44aced019ffc4633038173486d3475c92191685e7258d4dbef21a2732cf3cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('855042d2-0bde-5a2e-b9df-61c60c6ebf10', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '309ced01af2f2a27e9b1923706263757aa33527bf19010c5327f293ab64516ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8230b5ea-21fa-5d0e-ac47-bd9dc70930d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('855042d2-0bde-5a2e-b9df-61c60c6ebf10', 1), '309ced01af2f2a27e9b1923706263757aa33527bf19010c5327f293ab64516ea',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8d44aced019ffc4633038173486d3475c92191685e7258d4dbef21a2732cf3cf.mp3', 5694, '2026-09-13 09:40:02.780498', '876964d4e0a19f56194d79da2af749bece8b9d38c72e16ce397f03e14d7cc40c', 'validated', '{"audio_key":"8d44aced019ffc4633038173486d3475c92191685e7258d4dbef21a2732cf3cf","entity_key":"d_policy_interpretation_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"876964d4e0a19f56194d79da2af749bece8b9d38c72e16ce397f03e14d7cc40c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8d44aced019ffc4633038173486d3475c92191685e7258d4dbef21a2732cf3cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_03:4 -> audio/generated/de-DE/dialogues/925a225b840d44d692d190405afc1039f2b9c892381c6c4572a9acc224595028.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7a37b67-8cc3-5ac1-b610-9010395a006f', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cecb1adc4f352784c357c59eeff165d7c02b5a5285b1300670bd50853c4dea83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d295d6ac-5b03-504e-afb1-45187c6842ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7a37b67-8cc3-5ac1-b610-9010395a006f', 1), 'cecb1adc4f352784c357c59eeff165d7c02b5a5285b1300670bd50853c4dea83',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/925a225b840d44d692d190405afc1039f2b9c892381c6c4572a9acc224595028.mp3', 2168, '2026-09-13 09:40:03.410483', '3475fc321cc3df2eca6669466359af0768cf1ce48ca686f1c7f1514ac9ccdf61', 'validated', '{"audio_key":"925a225b840d44d692d190405afc1039f2b9c892381c6c4572a9acc224595028","entity_key":"d_consensus_facilitation_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3475fc321cc3df2eca6669466359af0768cf1ce48ca686f1c7f1514ac9ccdf61","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/925a225b840d44d692d190405afc1039f2b9c892381c6c4572a9acc224595028.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_03:2 -> audio/generated/de-DE/dialogues/92608199eb61b704e56c2bfb81af6684b5c11901192fe1e664852822bce2a726.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b240e134-3403-5e48-a2a3-b4d2b45f05c5', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce25ed1cfcf3a3a12f755d70cef90a4a89a961de5f26821bea3f40d0450f95f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f9750ce-2a5d-5c61-9765-8e5814f5c79c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b240e134-3403-5e48-a2a3-b4d2b45f05c5', 1), 'ce25ed1cfcf3a3a12f755d70cef90a4a89a961de5f26821bea3f40d0450f95f4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/92608199eb61b704e56c2bfb81af6684b5c11901192fe1e664852822bce2a726.mp3', 4911, '2026-09-13 09:40:04.228225', 'd9c704afe66acfac1c22a8b4463cc8bca719b3951005c216f570650b1ff094e9', 'validated', '{"audio_key":"92608199eb61b704e56c2bfb81af6684b5c11901192fe1e664852822bce2a726","entity_key":"d_consensus_facilitation_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d9c704afe66acfac1c22a8b4463cc8bca719b3951005c216f570650b1ff094e9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/92608199eb61b704e56c2bfb81af6684b5c11901192fe1e664852822bce2a726.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_02:1 -> audio/generated/de-DE/dialogues/9519ce3295adffab6a2052ec36398f5d10c2b0d5dbd53cfb5afd082383f1d3dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0084903-82c4-5904-87e3-d9ffadc22a6e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f939e402b3d3425bf332b6a843761e9f48979abfbab7f519914f0c035e2287d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ac38959-7d15-5449-ad6e-7acc7aad032e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0084903-82c4-5904-87e3-d9ffadc22a6e', 1), 'f939e402b3d3425bf332b6a843761e9f48979abfbab7f519914f0c035e2287d6',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9519ce3295adffab6a2052ec36398f5d10c2b0d5dbd53cfb5afd082383f1d3dc.mp3', 3291, '2026-09-13 09:40:04.584062', 'b572c2b6b141b4b7b35684c911e2f89416b91392e17b925f98bdf564f6cdd76f', 'validated', '{"audio_key":"9519ce3295adffab6a2052ec36398f5d10c2b0d5dbd53cfb5afd082383f1d3dc","entity_key":"d_consensus_facilitation_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b572c2b6b141b4b7b35684c911e2f89416b91392e17b925f98bdf564f6cdd76f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9519ce3295adffab6a2052ec36398f5d10c2b0d5dbd53cfb5afd082383f1d3dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_03:4 -> audio/generated/de-DE/dialogues/953bac64ddf3aa7037e13ec7689439a4f548ade52d7bf5318c78a9e2567a6a8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ac3f325-ec64-5e4f-b662-a0772f2996ef', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d442867561d9ef24b7e730e9329dd634009be989ce872aecee881c80897db3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('053fadcb-8f34-5602-840b-4e5d4c8252ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ac3f325-ec64-5e4f-b662-a0772f2996ef', 1), '05d442867561d9ef24b7e730e9329dd634009be989ce872aecee881c80897db3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/953bac64ddf3aa7037e13ec7689439a4f548ade52d7bf5318c78a9e2567a6a8a.mp3', 4257, '2026-09-13 09:40:05.561479', '61012297b90d193aba51c1f872aeb782fb625788da49e50fc217686d6fde4ed9', 'validated', '{"audio_key":"953bac64ddf3aa7037e13ec7689439a4f548ade52d7bf5318c78a9e2567a6a8a","entity_key":"d_crisis_communication_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"61012297b90d193aba51c1f872aeb782fb625788da49e50fc217686d6fde4ed9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/953bac64ddf3aa7037e13ec7689439a4f548ade52d7bf5318c78a9e2567a6a8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_02:4 -> audio/generated/de-DE/dialogues/95cb3852b56e676a40aad262d070d3e05f46eca9704afead605a943293d54643.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dded203f-b31a-5feb-8828-714480e3cc8c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8699e87ad25f8f0d939329d8503544ce9352c13060c479bbaf63f667cc182c98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bc40421-4f29-5240-81b6-5933379095c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dded203f-b31a-5feb-8828-714480e3cc8c', 1), '8699e87ad25f8f0d939329d8503544ce9352c13060c479bbaf63f667cc182c98',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/95cb3852b56e676a40aad262d070d3e05f46eca9704afead605a943293d54643.mp3', 5616, '2026-09-13 09:40:06.021342', 'fa4f59e8d17980ddecf163cc90506cdb850a25a56b93cc58345b0ee30146ba5b', 'validated', '{"audio_key":"95cb3852b56e676a40aad262d070d3e05f46eca9704afead605a943293d54643","entity_key":"d_implicit_meaning_register_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fa4f59e8d17980ddecf163cc90506cdb850a25a56b93cc58345b0ee30146ba5b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/95cb3852b56e676a40aad262d070d3e05f46eca9704afead605a943293d54643.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_02:3 -> audio/generated/de-DE/dialogues/98aab0ff3fbca2f9cdac6004e5a7a3c986ba9fa3b9c4a76a7594fce1e168a8c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cca7236-a952-5a88-903c-6a835dfc574f', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d691fb210c4b97c2f924bc7962e936762ae7406555c3687a8f016c2e6895f29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45360dea-f965-5a3c-8b3f-ecf5ad583a1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cca7236-a952-5a88-903c-6a835dfc574f', 1), '1d691fb210c4b97c2f924bc7962e936762ae7406555c3687a8f016c2e6895f29',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/98aab0ff3fbca2f9cdac6004e5a7a3c986ba9fa3b9c4a76a7594fce1e168a8c1.mp3', 4623, '2026-09-13 09:40:06.944743', '8f3f5c28c45866e54267144e3571408fc63a12b3f4d1617be99289638d8176b5', 'validated', '{"audio_key":"98aab0ff3fbca2f9cdac6004e5a7a3c986ba9fa3b9c4a76a7594fce1e168a8c1","entity_key":"d_implicit_meaning_register_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8f3f5c28c45866e54267144e3571408fc63a12b3f4d1617be99289638d8176b5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/98aab0ff3fbca2f9cdac6004e5a7a3c986ba9fa3b9c4a76a7594fce1e168a8c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_01:2 -> audio/generated/de-DE/dialogues/98e06f5c7049c697bac49f65c1412e42f639a8e0f67a464239c1a9efd17d34ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9e27575-ab78-5f5e-9a06-8a84d1a2298c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd8a92e8c2d9a115b5d824e0bb9eb158d6bcd3e9ac652eb78238ace18550d004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43f127f2-f238-5396-801e-5b61c166af81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9e27575-ab78-5f5e-9a06-8a84d1a2298c', 1), 'fd8a92e8c2d9a115b5d824e0bb9eb158d6bcd3e9ac652eb78238ace18550d004',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/98e06f5c7049c697bac49f65c1412e42f639a8e0f67a464239c1a9efd17d34ca.mp3', 3604, '2026-09-13 09:40:07.284511', 'f66466dd3279c50ca6bb7beb980993e54ac50437843be38411f0715b48ba9fcc', 'validated', '{"audio_key":"98e06f5c7049c697bac49f65c1412e42f639a8e0f67a464239c1a9efd17d34ca","entity_key":"d_implicit_meaning_register_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f66466dd3279c50ca6bb7beb980993e54ac50437843be38411f0715b48ba9fcc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/98e06f5c7049c697bac49f65c1412e42f639a8e0f67a464239c1a9efd17d34ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_01:2 -> audio/generated/de-DE/dialogues/990336195fac1bd1701787ab144c894257be085bfad451ee0912ec19854e565b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e0787a22-cd67-51a5-bcc2-3d47bf9a5f84', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9689c2f521b9cfd2b529d62d056fb3c5d6cf526e0f058e2e353a5f0317608532'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b5b854a-25cb-5208-8035-586fc7675c59', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e0787a22-cd67-51a5-bcc2-3d47bf9a5f84', 1), '9689c2f521b9cfd2b529d62d056fb3c5d6cf526e0f058e2e353a5f0317608532',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/990336195fac1bd1701787ab144c894257be085bfad451ee0912ec19854e565b.mp3', 4545, '2026-09-13 09:40:08.279028', '97c2ce2d68719f4452ab8c4fb41fb0bd4cc2c30472bf9973b8f5a677ef31a638', 'validated', '{"audio_key":"990336195fac1bd1701787ab144c894257be085bfad451ee0912ec19854e565b","entity_key":"d_formal_analysis_writing_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"97c2ce2d68719f4452ab8c4fb41fb0bd4cc2c30472bf9973b8f5a677ef31a638","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/990336195fac1bd1701787ab144c894257be085bfad451ee0912ec19854e565b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_01:1 -> audio/generated/de-DE/dialogues/99ee6cc8d361e76cfe6bb4db5496362791b30e9c513620e0eca28f3437c1922f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbba8c4f-95a8-513e-a434-710d952dd8b4', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cd98b844aec8cbc5b91cc51d16e616a1ef5c2c76b55f4aae9b1a0189933144f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('558e52f1-d622-5c13-ac56-1d6e7ec85b25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbba8c4f-95a8-513e-a434-710d952dd8b4', 1), '1cd98b844aec8cbc5b91cc51d16e616a1ef5c2c76b55f4aae9b1a0189933144f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99ee6cc8d361e76cfe6bb4db5496362791b30e9c513620e0eca28f3437c1922f.mp3', 3578, '2026-09-13 09:40:08.501798', 'e1d2c094d3f7b911469a26c4ee6b28f62ee96c679e13633a8166ec71e623c97a', 'validated', '{"audio_key":"99ee6cc8d361e76cfe6bb4db5496362791b30e9c513620e0eca28f3437c1922f","entity_key":"d_reported_speech_attribution_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1d2c094d3f7b911469a26c4ee6b28f62ee96c679e13633a8166ec71e623c97a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/99ee6cc8d361e76cfe6bb4db5496362791b30e9c513620e0eca28f3437c1922f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_02:3 -> audio/generated/de-DE/dialogues/9b0837c1191ef10c5b9d99043abd70d9b396c239926727f185131bcd7ffad165.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a25b2a5-5d1c-55a2-ade2-f0a307734736', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9bcf3ca7dbc1cb259d4f93dc58e7798e3254d211b75c214227d4b2b9150b13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d89eb070-82ce-5885-aa3f-e41858126e20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a25b2a5-5d1c-55a2-ade2-f0a307734736', 1), '5f9bcf3ca7dbc1cb259d4f93dc58e7798e3254d211b75c214227d4b2b9150b13',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9b0837c1191ef10c5b9d99043abd70d9b396c239926727f185131bcd7ffad165.mp3', 6400, '2026-09-13 09:40:09.870075', '2374383d75cd3924283dd4c39c9b9eeb8bb204612135f739f82d62df0dcdfc56', 'validated', '{"audio_key":"9b0837c1191ef10c5b9d99043abd70d9b396c239926727f185131bcd7ffad165","entity_key":"d_reported_speech_attribution_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2374383d75cd3924283dd4c39c9b9eeb8bb204612135f739f82d62df0dcdfc56","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9b0837c1191ef10c5b9d99043abd70d9b396c239926727f185131bcd7ffad165.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_02:3 -> audio/generated/de-DE/dialogues/9ba9a8665d53e1e7af42e291740916221c2205ff367842d18aa64016606c2d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d779e36-152c-5d9b-90cd-b32c67457855', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2272c04361d8f8d5523df4e7be765d0afa757450c2038784880207956de19875'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0a30255-7389-5a2b-942f-7dbe74cd4978', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d779e36-152c-5d9b-90cd-b32c67457855', 1), '2272c04361d8f8d5523df4e7be765d0afa757450c2038784880207956de19875',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9ba9a8665d53e1e7af42e291740916221c2205ff367842d18aa64016606c2d5c.mp3', 3422, '2026-09-13 09:40:09.779939', 'd6a79a51d5d06297bd4463a3fb463d8b6fd2fb03f82ce6ac06e91707eb1807e2', 'validated', '{"audio_key":"9ba9a8665d53e1e7af42e291740916221c2205ff367842d18aa64016606c2d5c","entity_key":"d_policy_interpretation_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d6a79a51d5d06297bd4463a3fb463d8b6fd2fb03f82ce6ac06e91707eb1807e2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9ba9a8665d53e1e7af42e291740916221c2205ff367842d18aa64016606c2d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_02:1 -> audio/generated/de-DE/dialogues/9c434906d264883b34042e706105fe90354fdc55b081cbfe8decde0afb99ad13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e2778155-be79-5692-8663-08b8df0f1379', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a892605ce6414be3132325b1d49152a12fd8551b676cbbe49739ef461e8337'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b01e03bd-e3a8-54d8-bd8d-67ac7c7dfa7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e2778155-be79-5692-8663-08b8df0f1379', 1), 'f6a892605ce6414be3132325b1d49152a12fd8551b676cbbe49739ef461e8337',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c434906d264883b34042e706105fe90354fdc55b081cbfe8decde0afb99ad13.mp3', 3787, '2026-09-13 09:40:11.031196', '437e949cf881083738a7a1566db8a621929e0ad89b40b5551f4ceada5d764381', 'validated', '{"audio_key":"9c434906d264883b34042e706105fe90354fdc55b081cbfe8decde0afb99ad13","entity_key":"d_reported_speech_attribution_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"437e949cf881083738a7a1566db8a621929e0ad89b40b5551f4ceada5d764381","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9c434906d264883b34042e706105fe90354fdc55b081cbfe8decde0afb99ad13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_03:2 -> audio/generated/de-DE/dialogues/9e792abe19cea0d7fec8c4c7adbdea7ada997a429acdd82068a6b2d31dc8f400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d5f2624-346a-58d8-8cbc-02e630e1b0a1', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d0b5ac0cc84411b7f6960613c12af414e79b40989bad118f6ea2f0c23c8d98b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b43434b-f711-59d3-b311-65f02c56a64e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d5f2624-346a-58d8-8cbc-02e630e1b0a1', 1), '1d0b5ac0cc84411b7f6960613c12af414e79b40989bad118f6ea2f0c23c8d98b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e792abe19cea0d7fec8c4c7adbdea7ada997a429acdd82068a6b2d31dc8f400.mp3', 3160, '2026-09-13 09:40:11.027121', '5c99bc777bcd07861eb38adcc6d24bd989c237f9db2b205cbbb7588f17e40951', 'validated', '{"audio_key":"9e792abe19cea0d7fec8c4c7adbdea7ada997a429acdd82068a6b2d31dc8f400","entity_key":"d_multi_source_synthesis_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"5c99bc777bcd07861eb38adcc6d24bd989c237f9db2b205cbbb7588f17e40951","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9e792abe19cea0d7fec8c4c7adbdea7ada997a429acdd82068a6b2d31dc8f400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_01:2 -> audio/generated/de-DE/dialogues/a1551685a7f67cb2cac6facd7439841d219aca89b57f094f099ee524e4fc622b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d620ae02-367e-5fd4-9cca-5967db444527', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff7b0143ceb5d9867f6b9ffb96e50f608ededffe4e8db38d12f39c97e50ffe1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89e438d3-6176-582e-a14b-4923dc462106', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d620ae02-367e-5fd4-9cca-5967db444527', 1), 'ff7b0143ceb5d9867f6b9ffb96e50f608ededffe4e8db38d12f39c97e50ffe1b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a1551685a7f67cb2cac6facd7439841d219aca89b57f094f099ee524e4fc622b.mp3', 3578, '2026-09-13 09:40:13.829061', '92440e01bb8dadaf7c9f39eadd5df276afff009086de779d9902c4f0ef66c163', 'validated', '{"audio_key":"a1551685a7f67cb2cac6facd7439841d219aca89b57f094f099ee524e4fc622b","entity_key":"d_policy_interpretation_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"92440e01bb8dadaf7c9f39eadd5df276afff009086de779d9902c4f0ef66c163","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a1551685a7f67cb2cac6facd7439841d219aca89b57f094f099ee524e4fc622b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_02:2 -> audio/generated/de-DE/dialogues/a5eb4ac020990c9a6bd2accbbd3cefd41588151ad4655c1a1467d2b6f49df142.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82be0a85-9613-5a69-8223-c7ace5f745c9', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '193686828724667ecb4ec02c31c7a13c6f7e6e8bd3d3291ba9bc4d970e673a3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1894a747-7823-55f2-a253-d04b420b24b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82be0a85-9613-5a69-8223-c7ace5f745c9', 1), '193686828724667ecb4ec02c31c7a13c6f7e6e8bd3d3291ba9bc4d970e673a3c',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a5eb4ac020990c9a6bd2accbbd3cefd41588151ad4655c1a1467d2b6f49df142.mp3', 3996, '2026-09-13 09:40:12.319915', 'ed39dbcc7812ee5196bf1ce9ff44a7c787b2175c372dc551ea78029f77a39b56', 'validated', '{"audio_key":"a5eb4ac020990c9a6bd2accbbd3cefd41588151ad4655c1a1467d2b6f49df142","entity_key":"d_policy_interpretation_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ed39dbcc7812ee5196bf1ce9ff44a7c787b2175c372dc551ea78029f77a39b56","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a5eb4ac020990c9a6bd2accbbd3cefd41588151ad4655c1a1467d2b6f49df142.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_01:4 -> audio/generated/de-DE/dialogues/a60437a9af399527301b25b263871f2e28230573b6be6bf719d10898db603a87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac1421dd-0ad2-5bd6-a3b6-a585225799cc', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6500cf721c7858e73d56d5dc9d872ad1921037300db9abe0728ef34647b4557f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13f51dd3-f910-5b0b-a896-0fb8529d9e0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac1421dd-0ad2-5bd6-a3b6-a585225799cc', 1), '6500cf721c7858e73d56d5dc9d872ad1921037300db9abe0728ef34647b4557f',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a60437a9af399527301b25b263871f2e28230573b6be6bf719d10898db603a87.mp3', 2742, '2026-09-13 09:40:13.431578', 'ec50275df463efb4b4e80d32a1e97b2e32c35c47926d52d6cccf04a2e6e7abd1', 'validated', '{"audio_key":"a60437a9af399527301b25b263871f2e28230573b6be6bf719d10898db603a87","entity_key":"d_formal_analysis_writing_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ec50275df463efb4b4e80d32a1e97b2e32c35c47926d52d6cccf04a2e6e7abd1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a60437a9af399527301b25b263871f2e28230573b6be6bf719d10898db603a87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_03:4 -> audio/generated/de-DE/dialogues/aba0767db2c48e87f7b427d7490baf4058b48d347e8ab43346a9d93178c12312.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c93850d5-d291-5f72-8439-2fe6cdb17d2d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca40172b387f6f570f1a4a1722aa0cdc875140ead7246fd99f0f39a622ff75dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a8f394d-2ac7-5ca8-a4bd-5d85a2549202', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c93850d5-d291-5f72-8439-2fe6cdb17d2d', 1), 'ca40172b387f6f570f1a4a1722aa0cdc875140ead7246fd99f0f39a622ff75dc',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aba0767db2c48e87f7b427d7490baf4058b48d347e8ab43346a9d93178c12312.mp3', 3944, '2026-09-13 09:40:14.640875', '133a34ea96d20f91e6654ff0326fcf46dec8940ed5284eb612cc30f892ab0bc7', 'validated', '{"audio_key":"aba0767db2c48e87f7b427d7490baf4058b48d347e8ab43346a9d93178c12312","entity_key":"d_claims_hedging_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"133a34ea96d20f91e6654ff0326fcf46dec8940ed5284eb612cc30f892ab0bc7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/aba0767db2c48e87f7b427d7490baf4058b48d347e8ab43346a9d93178c12312.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_02:1 -> audio/generated/de-DE/dialogues/abfa9a1254e9bfb45e203b84385d06b9131a5a97483ab0df55da932bf8bb262e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d2083ae-3f2e-59b4-b982-1c966135b1e6', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80cf0d9d2b309ac7b4b126531c0d4190d89846b3ce4ba46da0a53a9910b044ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3286b92a-327f-538c-8143-197b41604a17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d2083ae-3f2e-59b4-b982-1c966135b1e6', 1), '80cf0d9d2b309ac7b4b126531c0d4190d89846b3ce4ba46da0a53a9910b044ad',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/abfa9a1254e9bfb45e203b84385d06b9131a5a97483ab0df55da932bf8bb262e.mp3', 3761, '2026-09-13 09:40:15.695421', '2d1834da7bd9b7b14b4ffe8cbf6d53ef5521ad67b824b78bbf86af6966efafa9', 'validated', '{"audio_key":"abfa9a1254e9bfb45e203b84385d06b9131a5a97483ab0df55da932bf8bb262e","entity_key":"d_implicit_meaning_register_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2d1834da7bd9b7b14b4ffe8cbf6d53ef5521ad67b824b78bbf86af6966efafa9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/abfa9a1254e9bfb45e203b84385d06b9131a5a97483ab0df55da932bf8bb262e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_02:1 -> audio/generated/de-DE/dialogues/ac05406fc5139448cea85b217b5409e406206ac475b2acbbf03b6ac3c2c3725f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f5b2d98-26f1-5e2c-b291-b8ad6a5b11fe', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b08ba1aa1ec0a6a4d17181e8ca5a132dfa85ecf6111a0631da610ce7925203b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fd74882-9d8a-5b39-bbea-82de39a2411e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f5b2d98-26f1-5e2c-b291-b8ad6a5b11fe', 1), '3b08ba1aa1ec0a6a4d17181e8ca5a132dfa85ecf6111a0631da610ce7925203b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ac05406fc5139448cea85b217b5409e406206ac475b2acbbf03b6ac3c2c3725f.mp3', 4623, '2026-09-13 09:40:16.059351', 'cfd0df5710420deb31cf54a05c1aa32ae9e6b22b1db069757324e66f0cd2c049', 'validated', '{"audio_key":"ac05406fc5139448cea85b217b5409e406206ac475b2acbbf03b6ac3c2c3725f","entity_key":"d_crisis_communication_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cfd0df5710420deb31cf54a05c1aa32ae9e6b22b1db069757324e66f0cd2c049","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ac05406fc5139448cea85b217b5409e406206ac475b2acbbf03b6ac3c2c3725f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_03:4 -> audio/generated/de-DE/dialogues/b009c7fb4af78bdd5b83b99d992b3d5e22e43a91b73433011cd57198fb9bdcf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7278386e-38ae-5d74-ba63-473de3910132', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc707ea191ac188427f47401c496284706a0b226760c004f040c1bc972facd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b1d7f15-b47d-53e5-a3bf-3cd36c68cd4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7278386e-38ae-5d74-ba63-473de3910132', 1), 'bdc707ea191ac188427f47401c496284706a0b226760c004f040c1bc972facd2',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b009c7fb4af78bdd5b83b99d992b3d5e22e43a91b73433011cd57198fb9bdcf2.mp3', 4963, '2026-09-13 09:40:17.100815', '78a2b7bf5b052f8b842ac9093eb5f974e5d1abe27b59c7253d614e5fb0163dd6', 'validated', '{"audio_key":"b009c7fb4af78bdd5b83b99d992b3d5e22e43a91b73433011cd57198fb9bdcf2","entity_key":"d_formal_analysis_writing_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"78a2b7bf5b052f8b842ac9093eb5f974e5d1abe27b59c7253d614e5fb0163dd6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b009c7fb4af78bdd5b83b99d992b3d5e22e43a91b73433011cd57198fb9bdcf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_03:2 -> audio/generated/de-DE/dialogues/b0d4d6edec12e4597e5aff9b7ba2b6fa393f865a1464f89a96a7bd1b36a2a9a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('884651ae-b9aa-5b40-945e-1939d97a8670', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7469b4ee8b4a9db6607c2d26dc082fcfdd76e21d378fcfef7d5aca79f36b4a2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f9e482a-4af4-53c0-baf6-7f66e72f099c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('884651ae-b9aa-5b40-945e-1939d97a8670', 1), '7469b4ee8b4a9db6607c2d26dc082fcfdd76e21d378fcfef7d5aca79f36b4a2e',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b0d4d6edec12e4597e5aff9b7ba2b6fa393f865a1464f89a96a7bd1b36a2a9a0.mp3', 5929, '2026-09-13 09:40:17.586584', 'de1210a1e4342df63c113fdcf9a5c1eb7aa0538b7ba0a2bc09c691cfb1f4d47c', 'validated', '{"audio_key":"b0d4d6edec12e4597e5aff9b7ba2b6fa393f865a1464f89a96a7bd1b36a2a9a0","entity_key":"d_crisis_communication_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"de1210a1e4342df63c113fdcf9a5c1eb7aa0538b7ba0a2bc09c691cfb1f4d47c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b0d4d6edec12e4597e5aff9b7ba2b6fa393f865a1464f89a96a7bd1b36a2a9a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_03:1 -> audio/generated/de-DE/dialogues/b1033a6925aa4fb4465979c083f49734a1ced9d2260396bacf18c1726a4451b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a897ff6b-9ae2-577e-916b-e5dcea4b0169', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94501d51dcf01abd0f3f769db323e1c9f8d485ab849d048401d4d5ff2c138257'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d464d129-766b-5976-ae93-2c6ca5880e15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a897ff6b-9ae2-577e-916b-e5dcea4b0169', 1), '94501d51dcf01abd0f3f769db323e1c9f8d485ab849d048401d4d5ff2c138257',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1033a6925aa4fb4465979c083f49734a1ced9d2260396bacf18c1726a4451b1.mp3', 3996, '2026-09-13 09:40:18.395164', '1525b7a66ca09fd1b41ffcfbd14a86909208df28389c7133e27d7b486cf93646', 'validated', '{"audio_key":"b1033a6925aa4fb4465979c083f49734a1ced9d2260396bacf18c1726a4451b1","entity_key":"d_formal_analysis_writing_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1525b7a66ca09fd1b41ffcfbd14a86909208df28389c7133e27d7b486cf93646","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b1033a6925aa4fb4465979c083f49734a1ced9d2260396bacf18c1726a4451b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_02:4 -> audio/generated/de-DE/dialogues/b2850ac80e2734acf73c55232eec5833f7488d68db827bca31974b4933a99942.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c28c9c7f-0392-5fd8-9154-aa539f0eaa8e', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2abab7118428efcd03d66c9326a8c4b190ab3d89da7f988d52d017f2f41186a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a89f7e5-5c24-5de5-85d1-7fc52abe5baf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c28c9c7f-0392-5fd8-9154-aa539f0eaa8e', 1), '2abab7118428efcd03d66c9326a8c4b190ab3d89da7f988d52d017f2f41186a9',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b2850ac80e2734acf73c55232eec5833f7488d68db827bca31974b4933a99942.mp3', 6635, '2026-09-13 09:40:19.205340', '984c52b88d7903a4504ebd5f95efdc716e63c2425c272b43baf9ec1833a0d7e0', 'validated', '{"audio_key":"b2850ac80e2734acf73c55232eec5833f7488d68db827bca31974b4933a99942","entity_key":"d_reported_speech_attribution_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"984c52b88d7903a4504ebd5f95efdc716e63c2425c272b43baf9ec1833a0d7e0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b2850ac80e2734acf73c55232eec5833f7488d68db827bca31974b4933a99942.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_03:3 -> audio/generated/de-DE/dialogues/b2ef4971aa9b342f775b2cf603b4ed7b7e66e0d689c8f724f1b79f67c60e01ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0e2c885-7754-526d-935e-4b142c788465', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cfb2f50675f89931cf269e970c0961e9136bba2d57cec63876e600abe619ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba8403b5-78da-5d3d-8cbe-dfc77f71a79a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0e2c885-7754-526d-935e-4b142c788465', 1), '8cfb2f50675f89931cf269e970c0961e9136bba2d57cec63876e600abe619ca6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b2ef4971aa9b342f775b2cf603b4ed7b7e66e0d689c8f724f1b79f67c60e01ec.mp3', 4963, '2026-09-13 09:40:19.803316', '0cfd550d0c84ab64fad225cab99a06f6d0bf4616b048a8f022e01be213a2173a', 'validated', '{"audio_key":"b2ef4971aa9b342f775b2cf603b4ed7b7e66e0d689c8f724f1b79f67c60e01ec","entity_key":"d_implicit_meaning_register_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0cfd550d0c84ab64fad225cab99a06f6d0bf4616b048a8f022e01be213a2173a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b2ef4971aa9b342f775b2cf603b4ed7b7e66e0d689c8f724f1b79f67c60e01ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_01:1 -> audio/generated/de-DE/dialogues/b426946f538b33b06c7d0034e04a49344bdad61fe3be628df877204a714ece8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a18e56e-861c-5576-b7bd-c1cf208585e4', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7926da0ce6b17c332149706e1107a95de184ef0d834ee23379bd83e67b61305'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e20106e9-5fd6-5609-b166-c08a8ec24c78', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a18e56e-861c-5576-b7bd-c1cf208585e4', 1), 'a7926da0ce6b17c332149706e1107a95de184ef0d834ee23379bd83e67b61305',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b426946f538b33b06c7d0034e04a49344bdad61fe3be628df877204a714ece8d.mp3', 3840, '2026-09-13 09:40:20.467364', 'cf14cceaa31f38e29d449083f0f723968c1f1058b05451eb9fb3dc91221cd573', 'validated', '{"audio_key":"b426946f538b33b06c7d0034e04a49344bdad61fe3be628df877204a714ece8d","entity_key":"d_evidence_briefing_capstone_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf14cceaa31f38e29d449083f0f723968c1f1058b05451eb9fb3dc91221cd573","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b426946f538b33b06c7d0034e04a49344bdad61fe3be628df877204a714ece8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_01:4 -> audio/generated/de-DE/dialogues/b435607d2eae1d38f9c5408b95f41cb09cec3efc802d1394e1e8917eadc89602.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aed6e557-a302-5d36-935a-19065c50d26a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d42e4b99dc24ccb237ab9fe5b434888f02d0b8126c2631dec39c01c81ac2c26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6188024-fc86-54eb-bd2f-c260ce5afe58', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aed6e557-a302-5d36-935a-19065c50d26a', 1), '5d42e4b99dc24ccb237ab9fe5b434888f02d0b8126c2631dec39c01c81ac2c26',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b435607d2eae1d38f9c5408b95f41cb09cec3efc802d1394e1e8917eadc89602.mp3', 4127, '2026-09-13 09:40:21.058138', 'ba08eccc22a54bce56091b5ba181b4fe3f72535b395bf0339843b7a540cac0c1', 'validated', '{"audio_key":"b435607d2eae1d38f9c5408b95f41cb09cec3efc802d1394e1e8917eadc89602","entity_key":"d_policy_interpretation_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ba08eccc22a54bce56091b5ba181b4fe3f72535b395bf0339843b7a540cac0c1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b435607d2eae1d38f9c5408b95f41cb09cec3efc802d1394e1e8917eadc89602.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_03:1 -> audio/generated/de-DE/dialogues/b70230ccf9e05fad208dbce7a5bd282f7729b07a5dde3e3520109e7c266ecc37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a57e8f5e-d9ca-5637-9598-7f3abb1da03e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '024e5a53d2fbad2bc8ba29e5776a28d31233e3a82898b671514c758db54a37bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24c3be9b-39f7-56b8-98fe-89baf36af7d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a57e8f5e-d9ca-5637-9598-7f3abb1da03e', 1), '024e5a53d2fbad2bc8ba29e5776a28d31233e3a82898b671514c758db54a37bd',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b70230ccf9e05fad208dbce7a5bd282f7729b07a5dde3e3520109e7c266ecc37.mp3', 3474, '2026-09-13 09:40:21.651939', 'af1f8af2cbeeadb526efbb5049ac8a7440b7e7b0e8093e3ce37bc2a78d53b381', 'validated', '{"audio_key":"b70230ccf9e05fad208dbce7a5bd282f7729b07a5dde3e3520109e7c266ecc37","entity_key":"d_evidence_briefing_capstone_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"af1f8af2cbeeadb526efbb5049ac8a7440b7e7b0e8093e3ce37bc2a78d53b381","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b70230ccf9e05fad208dbce7a5bd282f7729b07a5dde3e3520109e7c266ecc37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_03:2 -> audio/generated/de-DE/dialogues/b89b6239a0dd65513ec8d2746bffe98ddfc01cc8415b99e07d01973b760ce0e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a6cbe17-775a-51fc-82be-6ba8c40de1f4', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1e4d781cddb40d8399875ac2240fe7ce2684c7cdb56d420a1502bcbb45e42f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a89ca99a-baf1-5ca0-ba3e-efaafbb45da4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a6cbe17-775a-51fc-82be-6ba8c40de1f4', 1), 'a1e4d781cddb40d8399875ac2240fe7ce2684c7cdb56d420a1502bcbb45e42f2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b89b6239a0dd65513ec8d2746bffe98ddfc01cc8415b99e07d01973b760ce0e3.mp3', 2742, '2026-09-13 09:40:22.247242', 'a86c1d38fa909ee0665580812445f0ba6839bd0476fbc1072496fb7bf0c21a2e', 'validated', '{"audio_key":"b89b6239a0dd65513ec8d2746bffe98ddfc01cc8415b99e07d01973b760ce0e3","entity_key":"d_reported_speech_attribution_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a86c1d38fa909ee0665580812445f0ba6839bd0476fbc1072496fb7bf0c21a2e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b89b6239a0dd65513ec8d2746bffe98ddfc01cc8415b99e07d01973b760ce0e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:1 -> audio/generated/de-DE/dialogues/ba5ca129329d8558c773acbb0983b3f1e88a6ebb5c76ee8167662b1597a342bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b67ed2ff-b834-5805-9b96-d4decb70978e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e88b25310b6074286da7f380d850a2836922a9d84634a5c85fcd264e11d60fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07bdc858-d703-5c21-a5f7-cc9a15de2857', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b67ed2ff-b834-5805-9b96-d4decb70978e', 1), '0e88b25310b6074286da7f380d850a2836922a9d84634a5c85fcd264e11d60fb',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba5ca129329d8558c773acbb0983b3f1e88a6ebb5c76ee8167662b1597a342bb.mp3', 4440, '2026-09-13 09:40:22.918727', 'a2ce5eb549c6a988876ac06d50e53a75232763925f6a2de2a9bfc0b688e719ce', 'validated', '{"audio_key":"ba5ca129329d8558c773acbb0983b3f1e88a6ebb5c76ee8167662b1597a342bb","entity_key":"d_multi_source_synthesis_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a2ce5eb549c6a988876ac06d50e53a75232763925f6a2de2a9bfc0b688e719ce","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ba5ca129329d8558c773acbb0983b3f1e88a6ebb5c76ee8167662b1597a342bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_01:2 -> audio/generated/de-DE/dialogues/bb01e104a23b483dcedddfd7e235956c7c95ff0760528b5b969fac4ee2813d0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b78d3e99-9168-5d66-b17a-fd83da030146', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e28b7272986fd9bfe0283718c7faff2182cc42de54a5cbb7f9c8c6cd7b75817'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('200fd75d-b86f-5d5e-86ae-f942e8e74953', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b78d3e99-9168-5d66-b17a-fd83da030146', 1), '4e28b7272986fd9bfe0283718c7faff2182cc42de54a5cbb7f9c8c6cd7b75817',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bb01e104a23b483dcedddfd7e235956c7c95ff0760528b5b969fac4ee2813d0b.mp3', 6922, '2026-09-13 09:40:23.834594', '6ef975f07cc1606177d860cb70218c614629c32f791675d4ed21d4e664cca945', 'validated', '{"audio_key":"bb01e104a23b483dcedddfd7e235956c7c95ff0760528b5b969fac4ee2813d0b","entity_key":"d_evidence_briefing_capstone_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6ef975f07cc1606177d860cb70218c614629c32f791675d4ed21d4e664cca945","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bb01e104a23b483dcedddfd7e235956c7c95ff0760528b5b969fac4ee2813d0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_01:1 -> audio/generated/de-DE/dialogues/bc8d2ba7e58a6debc6930083ef861e842926c07d535a534a80984ebb0805eff8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9b5a72a-fe1a-5080-a953-e68ea7337d44', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2920cdf6bd56d6dc69a0d990211f9d597626621fa4bcaf40f833d3c1f3374a91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1af17cc5-709b-5e27-9171-1005870a86a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9b5a72a-fe1a-5080-a953-e68ea7337d44', 1), '2920cdf6bd56d6dc69a0d990211f9d597626621fa4bcaf40f833d3c1f3374a91',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bc8d2ba7e58a6debc6930083ef861e842926c07d535a534a80984ebb0805eff8.mp3', 3604, '2026-09-13 09:40:24.101078', 'd6fe8be88733477a2799811d47d39cc8ab188cc4e40851260cd0105ee4bf461f', 'validated', '{"audio_key":"bc8d2ba7e58a6debc6930083ef861e842926c07d535a534a80984ebb0805eff8","entity_key":"d_implicit_meaning_register_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d6fe8be88733477a2799811d47d39cc8ab188cc4e40851260cd0105ee4bf461f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bc8d2ba7e58a6debc6930083ef861e842926c07d535a534a80984ebb0805eff8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_01:2 -> audio/generated/de-DE/dialogues/bcaa50a079fd01821a721a64eb7e29e9027ddb9c4a6f99be7875705654fa7578.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43dc0ccc-0068-5b58-8d5f-3ad0bb0bf695', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78be02a10e0cb81e98a27d2eafe90fc3cf64f9cf69c13779fefba4e9df94de92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8415057a-d34d-5598-b26b-891bc0532a22', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43dc0ccc-0068-5b58-8d5f-3ad0bb0bf695', 1), '78be02a10e0cb81e98a27d2eafe90fc3cf64f9cf69c13779fefba4e9df94de92',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bcaa50a079fd01821a721a64eb7e29e9027ddb9c4a6f99be7875705654fa7578.mp3', 1488, '2026-09-13 09:40:24.807945', '1816f382ee9339008ecf9c8376931f870215bc554df62f1dbac8f1f6625d6105', 'validated', '{"audio_key":"bcaa50a079fd01821a721a64eb7e29e9027ddb9c4a6f99be7875705654fa7578","entity_key":"d_reported_speech_attribution_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1816f382ee9339008ecf9c8376931f870215bc554df62f1dbac8f1f6625d6105","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bcaa50a079fd01821a721a64eb7e29e9027ddb9c4a6f99be7875705654fa7578.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_03:2 -> audio/generated/de-DE/dialogues/c2681a3a5362e787bdda7fd3284d4b54c55e93d0fbdaca1d2f291fe2353d3adb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0edb7b4-8ce8-5cbe-a310-c9c23bd08ca6', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4105c96f80d63c7c81541f50669cffe2d0ae423464f51509f33c89bd2783b28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60f46751-0bda-576b-8b7b-a19c375f80d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0edb7b4-8ce8-5cbe-a310-c9c23bd08ca6', 1), 'a4105c96f80d63c7c81541f50669cffe2d0ae423464f51509f33c89bd2783b28',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c2681a3a5362e787bdda7fd3284d4b54c55e93d0fbdaca1d2f291fe2353d3adb.mp3', 8542, '2026-09-13 09:40:25.822421', '45e787bda9b64bcbbabd44436b59c2d24dd1a1843168dc27d556c13d70cb05f0', 'validated', '{"audio_key":"c2681a3a5362e787bdda7fd3284d4b54c55e93d0fbdaca1d2f291fe2353d3adb","entity_key":"d_formal_analysis_writing_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"45e787bda9b64bcbbabd44436b59c2d24dd1a1843168dc27d556c13d70cb05f0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c2681a3a5362e787bdda7fd3284d4b54c55e93d0fbdaca1d2f291fe2353d3adb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_03:1 -> audio/generated/de-DE/dialogues/c29f40386362b2a7324796fcbbede20de80ee55756f12af407bd609c422128c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d56e196-7d83-5792-8e1a-ce46a91948fc', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e71be4309324186ee6bd4e353acbc9a65b69457815d677bb8a027211d557b223'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85b3a912-3d37-5989-ad4a-eb42e9141b5e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d56e196-7d83-5792-8e1a-ce46a91948fc', 1), 'e71be4309324186ee6bd4e353acbc9a65b69457815d677bb8a027211d557b223',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c29f40386362b2a7324796fcbbede20de80ee55756f12af407bd609c422128c6.mp3', 3108, '2026-09-13 09:40:25.990962', '5880ab2f2b24c8549698d66126881bbcdfbbdd1f5c4effb0f5755b6170663f6e', 'validated', '{"audio_key":"c29f40386362b2a7324796fcbbede20de80ee55756f12af407bd609c422128c6","entity_key":"d_strategic_recommendations_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5880ab2f2b24c8549698d66126881bbcdfbbdd1f5c4effb0f5755b6170663f6e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c29f40386362b2a7324796fcbbede20de80ee55756f12af407bd609c422128c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_02:1 -> audio/generated/de-DE/dialogues/c43675732a07b030d309f8c5008413c1b3f7caeab23c5cb3cd9f04314264bd59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5bea0d11-167d-5fd8-a699-06bb62fc5239', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22d1567565c535c5865d87c858af4606ede66d383f15002d66136fe8278f4de9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('044d2382-2cd2-54b4-b943-e547cb087a5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5bea0d11-167d-5fd8-a699-06bb62fc5239', 1), '22d1567565c535c5865d87c858af4606ede66d383f15002d66136fe8278f4de9',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c43675732a07b030d309f8c5008413c1b3f7caeab23c5cb3cd9f04314264bd59.mp3', 4623, '2026-09-13 09:40:27.144368', 'd64f919caec0e3be3935815e8fb6899c0a9d28e7deb1b86138f14202c6492f82', 'validated', '{"audio_key":"c43675732a07b030d309f8c5008413c1b3f7caeab23c5cb3cd9f04314264bd59","entity_key":"d_evidence_briefing_capstone_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d64f919caec0e3be3935815e8fb6899c0a9d28e7deb1b86138f14202c6492f82","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c43675732a07b030d309f8c5008413c1b3f7caeab23c5cb3cd9f04314264bd59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_02:4 -> audio/generated/de-DE/dialogues/c5d4f0eb59be2f12e13f53285589988b826477c9a053453152cc9c7824ffd583.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b602b4b-9222-598a-8bdb-61a50ade0743', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd290fd760899791c4472dd49dcc79d7a117b38c3e0c9d3a806944e564257f404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25842c73-ac2d-58f8-8359-a1a97ec299ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b602b4b-9222-598a-8bdb-61a50ade0743', 1), 'd290fd760899791c4472dd49dcc79d7a117b38c3e0c9d3a806944e564257f404',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c5d4f0eb59be2f12e13f53285589988b826477c9a053453152cc9c7824ffd583.mp3', 3840, '2026-09-13 09:40:27.216900', '5f57b49afa2be5212d0bd572b1e3fd124f5176e1ad804feb6c93785614bd5131', 'validated', '{"audio_key":"c5d4f0eb59be2f12e13f53285589988b826477c9a053453152cc9c7824ffd583","entity_key":"d_strategic_recommendations_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5f57b49afa2be5212d0bd572b1e3fd124f5176e1ad804feb6c93785614bd5131","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c5d4f0eb59be2f12e13f53285589988b826477c9a053453152cc9c7824ffd583.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_01:1 -> audio/generated/de-DE/dialogues/c8de634dfd731e9520681ae07ed9026903a0cbdec712d219d54ceaef147cbc0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cb0ae76-a78b-5a04-a2cf-e0627241c81f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efd61cb046df24b61fd08468c58d2a14c4e832b2f2aea307fe0eaae60423620f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b33c4107-75b0-5602-9ee8-0d7c58a2823a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cb0ae76-a78b-5a04-a2cf-e0627241c81f', 1), 'efd61cb046df24b61fd08468c58d2a14c4e832b2f2aea307fe0eaae60423620f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c8de634dfd731e9520681ae07ed9026903a0cbdec712d219d54ceaef147cbc0f.mp3', 2351, '2026-09-13 09:40:28.240073', '05c9f94e36e457f4811b3aed80a7c21b58bb6bf2d4dd816a50faa84fe7256163', 'validated', '{"audio_key":"c8de634dfd731e9520681ae07ed9026903a0cbdec712d219d54ceaef147cbc0f","entity_key":"d_formal_analysis_writing_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"05c9f94e36e457f4811b3aed80a7c21b58bb6bf2d4dd816a50faa84fe7256163","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c8de634dfd731e9520681ae07ed9026903a0cbdec712d219d54ceaef147cbc0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_01:2 -> audio/generated/de-DE/dialogues/c95c763eea0929a81f6ee503ead5b2fab8c89a67c6ef189b51e028445d0926f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6afd3a2f-9066-5d83-9fff-a4999b604631', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c187036e8cdae0fcc09d58d05d55f022d2e2b744e9016d10d1bf89ac953625d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02ccfc25-2d70-5904-9ddb-b13f772d6f91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6afd3a2f-9066-5d83-9fff-a4999b604631', 1), 'c187036e8cdae0fcc09d58d05d55f022d2e2b744e9016d10d1bf89ac953625d5',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c95c763eea0929a81f6ee503ead5b2fab8c89a67c6ef189b51e028445d0926f0.mp3', 4963, '2026-09-13 09:40:28.616765', 'db3c008726e226746e0cca0c4af12cc27247f280b1f1d1f2a75bce9b15c7706d', 'validated', '{"audio_key":"c95c763eea0929a81f6ee503ead5b2fab8c89a67c6ef189b51e028445d0926f0","entity_key":"d_crisis_communication_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"db3c008726e226746e0cca0c4af12cc27247f280b1f1d1f2a75bce9b15c7706d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c95c763eea0929a81f6ee503ead5b2fab8c89a67c6ef189b51e028445d0926f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_01:3 -> audio/generated/de-DE/dialogues/ca394648772b0b400aad5c262e98a1b4728a8fea495b11db1b4089dbd52eba97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a6c22a9-042e-577b-9daf-363a8aa7c31b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9810304fb684d77af3ff3766df50c85ab487cdbe2c687d61edbba7a0328811c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5a6cb55-6725-50c4-a8e8-8f839bf8af6d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a6c22a9-042e-577b-9daf-363a8aa7c31b', 1), 'f9810304fb684d77af3ff3766df50c85ab487cdbe2c687d61edbba7a0328811c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ca394648772b0b400aad5c262e98a1b4728a8fea495b11db1b4089dbd52eba97.mp3', 4728, '2026-09-13 09:40:29.591370', '814af86c6e9d98daa04ba35fed3ee156a3b1bba0f79461c5955de3fcdda56cea', 'validated', '{"audio_key":"ca394648772b0b400aad5c262e98a1b4728a8fea495b11db1b4089dbd52eba97","entity_key":"d_formal_analysis_writing_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"814af86c6e9d98daa04ba35fed3ee156a3b1bba0f79461c5955de3fcdda56cea","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ca394648772b0b400aad5c262e98a1b4728a8fea495b11db1b4089dbd52eba97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_02:3 -> audio/generated/de-DE/dialogues/ca9e3c466caf57838dabbefe24e0463eae6ea88adcff805bc9a78bd9249877d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9e853f8-3e40-5920-85af-c767d8b65635', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d364f1b8069a10ce45641270496985b325db613c4f62a30facc3e0e6c185714'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4c78656-f56a-5f7d-b4b4-ab8c10900a1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9e853f8-3e40-5920-85af-c767d8b65635', 1), '1d364f1b8069a10ce45641270496985b325db613c4f62a30facc3e0e6c185714',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ca9e3c466caf57838dabbefe24e0463eae6ea88adcff805bc9a78bd9249877d7.mp3', 4310, '2026-09-13 09:40:29.876448', '03471cd1b034e1b75246e58c16bb9949097e574be7ffcd31a4d296244a412d5f', 'validated', '{"audio_key":"ca9e3c466caf57838dabbefe24e0463eae6ea88adcff805bc9a78bd9249877d7","entity_key":"d_evidence_briefing_capstone_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"03471cd1b034e1b75246e58c16bb9949097e574be7ffcd31a4d296244a412d5f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ca9e3c466caf57838dabbefe24e0463eae6ea88adcff805bc9a78bd9249877d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:2 -> audio/generated/de-DE/dialogues/cc420202a6e14ba08c692fd357e496c43fbc661e01626b94d2bc4c0198adb0d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2945de93-9c4b-5949-aadf-6a30eaac6255', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd2143ae63b3a2aad5791a8e4f2f7f144ce9fa27951a651db11a025bcacd7a92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14d2e95d-67ca-5a44-9cd8-d182579f5b64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2945de93-9c4b-5949-aadf-6a30eaac6255', 1), 'bd2143ae63b3a2aad5791a8e4f2f7f144ce9fa27951a651db11a025bcacd7a92',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc420202a6e14ba08c692fd357e496c43fbc661e01626b94d2bc4c0198adb0d9.mp3', 3944, '2026-09-13 09:40:30.827085', '29623ef7aea18a8f8a42d67226e9ae096443dada8bb5b9275005efd63ca450d2', 'validated', '{"audio_key":"cc420202a6e14ba08c692fd357e496c43fbc661e01626b94d2bc4c0198adb0d9","entity_key":"d_multi_source_synthesis_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"29623ef7aea18a8f8a42d67226e9ae096443dada8bb5b9275005efd63ca450d2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cc420202a6e14ba08c692fd357e496c43fbc661e01626b94d2bc4c0198adb0d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_03:4 -> audio/generated/de-DE/dialogues/cc7200d28466ba2cf3f76055c16712fc49a6662d94f8b9265909e48ec14ab8cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ae755274-4984-542e-ac0f-30e32d52be9e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2758944d2ba09161b00ae565236eeff3338efe5354badfbf687119829b9e064a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc88a900-85aa-506f-bc3f-244cdac2460f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ae755274-4984-542e-ac0f-30e32d52be9e', 1), '2758944d2ba09161b00ae565236eeff3338efe5354badfbf687119829b9e064a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc7200d28466ba2cf3f76055c16712fc49a6662d94f8b9265909e48ec14ab8cd.mp3', 3186, '2026-09-13 09:40:31.085273', '058dfb9e80320ef603118386b1efaeff25008c2481467f72157e3efbc9efb945', 'validated', '{"audio_key":"cc7200d28466ba2cf3f76055c16712fc49a6662d94f8b9265909e48ec14ab8cd","entity_key":"d_evidence_briefing_capstone_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"058dfb9e80320ef603118386b1efaeff25008c2481467f72157e3efbc9efb945","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cc7200d28466ba2cf3f76055c16712fc49a6662d94f8b9265909e48ec14ab8cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_01:3 -> audio/generated/de-DE/dialogues/d051e8a96f4f1717e5146f0f8f4509c9a918def36b99c19eac303651e3433811.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71bea82d-51ff-5cdd-ba8b-ab425e9ee125', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38fe5eff3ccac39110992ee9eb5d42ff048974d72f1cfa8ac02b16769ba93f1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a9b1c32-6381-53f2-a70d-e10a06e9b9f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71bea82d-51ff-5cdd-ba8b-ab425e9ee125', 1), '38fe5eff3ccac39110992ee9eb5d42ff048974d72f1cfa8ac02b16769ba93f1d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d051e8a96f4f1717e5146f0f8f4509c9a918def36b99c19eac303651e3433811.mp3', 1906, '2026-09-13 09:40:31.813473', 'a56ef2f4279c0a7cc7d064319fff4d1bb7964a0578cd19aba4af2ce5e1fe6cfe', 'validated', '{"audio_key":"d051e8a96f4f1717e5146f0f8f4509c9a918def36b99c19eac303651e3433811","entity_key":"d_implicit_meaning_register_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a56ef2f4279c0a7cc7d064319fff4d1bb7964a0578cd19aba4af2ce5e1fe6cfe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d051e8a96f4f1717e5146f0f8f4509c9a918def36b99c19eac303651e3433811.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_01:1 -> audio/generated/de-DE/dialogues/d2a2c179204db207c33c3cd4e8e814ac15b58effdd3667274f7289de736fc04d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f824603-17bb-5406-868a-bd7197df1ada', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e794679f891f854ea413cfda832382255a63be4723a99451ef9483eb503d891f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e38a95a9-752a-52a9-ae0f-3d80b8ebdef7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f824603-17bb-5406-868a-bd7197df1ada', 1), 'e794679f891f854ea413cfda832382255a63be4723a99451ef9483eb503d891f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2a2c179204db207c33c3cd4e8e814ac15b58effdd3667274f7289de736fc04d.mp3', 3108, '2026-09-13 09:40:32.252517', '8e6cc7bdf3a5daa78595d2fd95e937c943d73a111ad0f6628df1d8dc1addd92e', 'validated', '{"audio_key":"d2a2c179204db207c33c3cd4e8e814ac15b58effdd3667274f7289de736fc04d","entity_key":"d_claims_hedging_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8e6cc7bdf3a5daa78595d2fd95e937c943d73a111ad0f6628df1d8dc1addd92e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2a2c179204db207c33c3cd4e8e814ac15b58effdd3667274f7289de736fc04d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_03:2 -> audio/generated/de-DE/dialogues/d73c52d60ee5cf16c5397ebb37cafd05392cfae2b8bae69aac2bca456231375c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e581b8f7-f110-534f-a53d-76205ca09608', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b586ac6724e8443399e45b0d97ec2b093d674f0853427ad1b84b36664f487b9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13ed1365-0cb2-57b8-86fd-4313b86926f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e581b8f7-f110-534f-a53d-76205ca09608', 1), 'b586ac6724e8443399e45b0d97ec2b093d674f0853427ad1b84b36664f487b9e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d73c52d60ee5cf16c5397ebb37cafd05392cfae2b8bae69aac2bca456231375c.mp3', 3343, '2026-09-13 09:40:32.972349', 'fe85ba956867c15523e06437773aa30e064e4752637d790edfd532f5202707ab', 'validated', '{"audio_key":"d73c52d60ee5cf16c5397ebb37cafd05392cfae2b8bae69aac2bca456231375c","entity_key":"d_implicit_meaning_register_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fe85ba956867c15523e06437773aa30e064e4752637d790edfd532f5202707ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d73c52d60ee5cf16c5397ebb37cafd05392cfae2b8bae69aac2bca456231375c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_02:2 -> audio/generated/de-DE/dialogues/d858f829b1aa79b84ea5edbf7c631b374fc93a04d7d4ee1858c1defc2315f4c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0bf40146-7a5e-50ba-b41b-2f4f47b7bedd', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '653b1bba2feab9ee5b276face6822f05691769974390f84690106127853e1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('479b902d-96d7-57e5-b165-876c658857b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0bf40146-7a5e-50ba-b41b-2f4f47b7bedd', 1), '653b1bba2feab9ee5b276face6822f05691769974390f84690106127853e1bea',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d858f829b1aa79b84ea5edbf7c631b374fc93a04d7d4ee1858c1defc2315f4c5.mp3', 3108, '2026-09-13 09:40:33.430125', 'aeec12dc01cb303c6bd9a0d2e2cd1c13cb6b81c31329705899f78e53f111accc', 'validated', '{"audio_key":"d858f829b1aa79b84ea5edbf7c631b374fc93a04d7d4ee1858c1defc2315f4c5","entity_key":"d_formal_analysis_writing_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aeec12dc01cb303c6bd9a0d2e2cd1c13cb6b81c31329705899f78e53f111accc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d858f829b1aa79b84ea5edbf7c631b374fc93a04d7d4ee1858c1defc2315f4c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:3 -> audio/generated/de-DE/dialogues/da5743e10a33519d5d7a9666e8b4462661929514ee65f901e72d611451c1a1ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f190988a-d1c0-5dc0-836c-12b50d05ec84', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a14456f41837a362d00d719729632280f1db3d44df8e80147dcefbb92ff418b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8c1a0b3-1c88-5720-9e42-c47ca5ec1033', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f190988a-d1c0-5dc0-836c-12b50d05ec84', 1), '0a14456f41837a362d00d719729632280f1db3d44df8e80147dcefbb92ff418b',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da5743e10a33519d5d7a9666e8b4462661929514ee65f901e72d611451c1a1ac.mp3', 4440, '2026-09-13 09:40:34.251331', 'ad79df893cb3cdbd7e556dd0a4dfe14e3416c0c3c5fa3c5ddd750638466724ee', 'validated', '{"audio_key":"da5743e10a33519d5d7a9666e8b4462661929514ee65f901e72d611451c1a1ac","entity_key":"d_multi_source_synthesis_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ad79df893cb3cdbd7e556dd0a4dfe14e3416c0c3c5fa3c5ddd750638466724ee","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/da5743e10a33519d5d7a9666e8b4462661929514ee65f901e72d611451c1a1ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_03:2 -> audio/generated/de-DE/dialogues/db5d80ba4eb6efb53a01525b631aa47d9505a23f6df5f68ed91d00ec4bfb26bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ca4632c-7baa-5c4a-8842-9930b120358a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f687385b7c55a05fbe5e4c1a761ab98de4096cc4fc8665e1ed7e8634dbc22e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd7352b6-5bca-55b8-9549-6ea243839d45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ca4632c-7baa-5c4a-8842-9930b120358a', 1), '5f687385b7c55a05fbe5e4c1a761ab98de4096cc4fc8665e1ed7e8634dbc22e9',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db5d80ba4eb6efb53a01525b631aa47d9505a23f6df5f68ed91d00ec4bfb26bb.mp3', 2455, '2026-09-13 09:40:34.507865', '51996fffa7bde0364f098adc36073ff07a33d90df01dc94322147f2eed369c2f', 'validated', '{"audio_key":"db5d80ba4eb6efb53a01525b631aa47d9505a23f6df5f68ed91d00ec4bfb26bb","entity_key":"d_claims_hedging_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"51996fffa7bde0364f098adc36073ff07a33d90df01dc94322147f2eed369c2f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/db5d80ba4eb6efb53a01525b631aa47d9505a23f6df5f68ed91d00ec4bfb26bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_01:4 -> audio/generated/de-DE/dialogues/db7800b0cd692763e2c60ca6f9dc11513ba492c98643c55deffadbad31214133.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd648653-65b8-53bf-8b0e-2843584aa0a0', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '285d3744b7b55ad42d4d322e45145602c69be3cef68cedae091bb882d5807c32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb518ffe-9774-51f6-9f87-3a33af99cffc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd648653-65b8-53bf-8b0e-2843584aa0a0', 1), '285d3744b7b55ad42d4d322e45145602c69be3cef68cedae091bb882d5807c32',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db7800b0cd692763e2c60ca6f9dc11513ba492c98643c55deffadbad31214133.mp3', 5616, '2026-09-13 09:40:35.686866', 'f0f3495e03f2d54a76855ebfd212aa7cd06c437956b13d7cbaa00bcfd19e4b8b', 'validated', '{"audio_key":"db7800b0cd692763e2c60ca6f9dc11513ba492c98643c55deffadbad31214133","entity_key":"d_strategic_recommendations_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f0f3495e03f2d54a76855ebfd212aa7cd06c437956b13d7cbaa00bcfd19e4b8b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/db7800b0cd692763e2c60ca6f9dc11513ba492c98643c55deffadbad31214133.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_03:3 -> audio/generated/de-DE/dialogues/dccf73ae7b824b9ca12fe61a007426f9182a0d229d145e1c628f1751f495642c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50ea7187-b75a-586b-bb4b-e90a0fc07a19', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a861f0d7d03a17c2f98efe8b5ca43c01bee4ad5e7f9836d648ea2daefb946d5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e80a74e-4095-550d-ba4d-2c5fb2a57333', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50ea7187-b75a-586b-bb4b-e90a0fc07a19', 1), 'a861f0d7d03a17c2f98efe8b5ca43c01bee4ad5e7f9836d648ea2daefb946d5d',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dccf73ae7b824b9ca12fe61a007426f9182a0d229d145e1c628f1751f495642c.mp3', 6452, '2026-09-13 09:40:36.110434', 'd427d80420706a9eb20da07482f2c6d0ef6d74826736618accbd8a807e8bbc27', 'validated', '{"audio_key":"dccf73ae7b824b9ca12fe61a007426f9182a0d229d145e1c628f1751f495642c","entity_key":"d_evidence_briefing_capstone_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d427d80420706a9eb20da07482f2c6d0ef6d74826736618accbd8a807e8bbc27","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dccf73ae7b824b9ca12fe61a007426f9182a0d229d145e1c628f1751f495642c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_03:4 -> audio/generated/de-DE/dialogues/e010d25e7b6591d8af60159fc1fb6740c4f1566a90142ccff80d4b46ac475126.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8ca0a63-eded-54e5-b980-db86cd17d241', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd73e6bab1ffad3d47f2ca32f19db88806328bc5f6ffe525774827e28ba7fbd0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e611365-63e3-5c61-b478-26e3db918449', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8ca0a63-eded-54e5-b980-db86cd17d241', 1), 'd73e6bab1ffad3d47f2ca32f19db88806328bc5f6ffe525774827e28ba7fbd0f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e010d25e7b6591d8af60159fc1fb6740c4f1566a90142ccff80d4b46ac475126.mp3', 4493, '2026-09-13 09:40:37.093837', '68ab9e7386553392d3d5fd4e69b40fcadec61a26addc23da10fd112a281f8079', 'validated', '{"audio_key":"e010d25e7b6591d8af60159fc1fb6740c4f1566a90142ccff80d4b46ac475126","entity_key":"d_multi_source_synthesis_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"68ab9e7386553392d3d5fd4e69b40fcadec61a26addc23da10fd112a281f8079","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e010d25e7b6591d8af60159fc1fb6740c4f1566a90142ccff80d4b46ac475126.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_02:1 -> audio/generated/de-DE/dialogues/e24ab6f4f2d379d54e5046b1c3f4c083a8220f93b88d739f76caf7b33edeb7ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1af7117-01d8-5598-a2a6-7857d584a089', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5095a6280dcdd24701a7529a1ae985876d480060c90ea78bfbef87c4e6b53622'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1cf32e7-c1fc-5ffd-a908-eea1e5a3d8d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1af7117-01d8-5598-a2a6-7857d584a089', 1), '5095a6280dcdd24701a7529a1ae985876d480060c90ea78bfbef87c4e6b53622',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e24ab6f4f2d379d54e5046b1c3f4c083a8220f93b88d739f76caf7b33edeb7ef.mp3', 4075, '2026-09-13 09:40:37.375788', '46023c2437a199f9fb74ceff33266f52c88573960830d9e43a4be0fb8fa5d3bb', 'validated', '{"audio_key":"e24ab6f4f2d379d54e5046b1c3f4c083a8220f93b88d739f76caf7b33edeb7ef","entity_key":"d_strategic_recommendations_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"46023c2437a199f9fb74ceff33266f52c88573960830d9e43a4be0fb8fa5d3bb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e24ab6f4f2d379d54e5046b1c3f4c083a8220f93b88d739f76caf7b33edeb7ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_03:1 -> audio/generated/de-DE/dialogues/e26f81e26259919acfc6ebbb8506ffe9c6295ce67099c2df7aa8ac6696812448.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44080668-97f1-5933-98d0-294a2f48d735', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d31195c2d8f3d408f8705a060aaca865cde2a01e69360b56ce4edcc31ceff06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ebb7d2a-a20a-5f4f-950b-c35dc1071cba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44080668-97f1-5933-98d0-294a2f48d735', 1), '7d31195c2d8f3d408f8705a060aaca865cde2a01e69360b56ce4edcc31ceff06',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e26f81e26259919acfc6ebbb8506ffe9c6295ce67099c2df7aa8ac6696812448.mp3', 3239, '2026-09-13 09:40:38.297175', 'b0c14acf9de4ddd8e80d0c87242ad4ad8e57e62b39ab821af3977aa2a40d7644', 'validated', '{"audio_key":"e26f81e26259919acfc6ebbb8506ffe9c6295ce67099c2df7aa8ac6696812448","entity_key":"d_consensus_facilitation_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b0c14acf9de4ddd8e80d0c87242ad4ad8e57e62b39ab821af3977aa2a40d7644","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e26f81e26259919acfc6ebbb8506ffe9c6295ce67099c2df7aa8ac6696812448.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:3 -> audio/generated/de-DE/dialogues/e2b236af2cda00e784559adebd31f2fdd4bf21b23c9c694578403acc5f8fee97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48a488ae-323b-5655-8919-5ee57e0cfbb2', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a981c69d19bc559ef3c4a1e52f0692c1d43b953f0d4c9ab18a9e94436a10888f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a7e016d-bf10-5f9a-8643-d3fa453eb3fe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48a488ae-323b-5655-8919-5ee57e0cfbb2', 1), 'a981c69d19bc559ef3c4a1e52f0692c1d43b953f0d4c9ab18a9e94436a10888f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e2b236af2cda00e784559adebd31f2fdd4bf21b23c9c694578403acc5f8fee97.mp3', 4675, '2026-09-13 09:40:38.780143', 'cdf9ebbd63345dd229d65ce0263f9b639deadec8cacafc2d285d5dd7e374f86d', 'validated', '{"audio_key":"e2b236af2cda00e784559adebd31f2fdd4bf21b23c9c694578403acc5f8fee97","entity_key":"d_multi_source_synthesis_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cdf9ebbd63345dd229d65ce0263f9b639deadec8cacafc2d285d5dd7e374f86d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e2b236af2cda00e784559adebd31f2fdd4bf21b23c9c694578403acc5f8fee97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_03:1 -> audio/generated/de-DE/dialogues/e479a9e0e61d85ec73580f65cb3fa943ed26036fe154e1c8923c1c443fa279a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e4b3e53-570f-511b-91e6-fd33d152c324', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ddd526278ea0d8b47a59ed7844c59fe3e645a9d7013b3daf9e30789ea21570d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3bc5e7c-a01a-51cb-a04d-1fabcdd2f4bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e4b3e53-570f-511b-91e6-fd33d152c324', 1), '3ddd526278ea0d8b47a59ed7844c59fe3e645a9d7013b3daf9e30789ea21570d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e479a9e0e61d85ec73580f65cb3fa943ed26036fe154e1c8923c1c443fa279a9.mp3', 3160, '2026-09-13 09:40:39.587929', '1ac4ce5022645516b23e33a8b9ff2a6a03f1a6f81c25a14e6a72bd059651ff3e', 'validated', '{"audio_key":"e479a9e0e61d85ec73580f65cb3fa943ed26036fe154e1c8923c1c443fa279a9","entity_key":"d_claims_hedging_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1ac4ce5022645516b23e33a8b9ff2a6a03f1a6f81c25a14e6a72bd059651ff3e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e479a9e0e61d85ec73580f65cb3fa943ed26036fe154e1c8923c1c443fa279a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_02:4 -> audio/generated/de-DE/dialogues/e571ac24fa27665f689c90db938aaed790f9fbfa0d99a6d17105333c0728b359.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad9d449c-29ca-58cf-a1e7-64c04b1ddd6d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dbe5e65fca7321f879e464f97587746efb0ce0649b7d76d425b8f1c637f5db1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a10223d5-9b86-52cf-911d-81cd883817fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad9d449c-29ca-58cf-a1e7-64c04b1ddd6d', 1), '8dbe5e65fca7321f879e464f97587746efb0ce0649b7d76d425b8f1c637f5db1',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e571ac24fa27665f689c90db938aaed790f9fbfa0d99a6d17105333c0728b359.mp3', 4440, '2026-09-13 09:40:40.112899', 'ec9e9ea0255e54906f9ca4891f168b0f887ccdd70d9d6b7581108c00e9633791', 'validated', '{"audio_key":"e571ac24fa27665f689c90db938aaed790f9fbfa0d99a6d17105333c0728b359","entity_key":"d_consensus_facilitation_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ec9e9ea0255e54906f9ca4891f168b0f887ccdd70d9d6b7581108c00e9633791","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e571ac24fa27665f689c90db938aaed790f9fbfa0d99a6d17105333c0728b359.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_strategic_recommendations_03:2 -> audio/generated/de-DE/dialogues/e577781c62ccffde6619831d63e743ab7bbc638e75c21ee908b9417dc0c110c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c5b3eae-82fa-51f2-987f-d75598ddd5e1', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_strategic_recommendations_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648d5b35d389d53b6ef472e4807b8a162215a52152772b8215ed940292d16582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f9b119d-608c-585d-aba7-7040bbe58e64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c5b3eae-82fa-51f2-987f-d75598ddd5e1', 1), '648d5b35d389d53b6ef472e4807b8a162215a52152772b8215ed940292d16582',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e577781c62ccffde6619831d63e743ab7bbc638e75c21ee908b9417dc0c110c2.mp3', 3892, '2026-09-13 09:40:40.880493', 'ff94f15e0d3c855d490e0fcdc73ab00ddd0251fd6acc192304fdac2d285d6fb3', 'validated', '{"audio_key":"e577781c62ccffde6619831d63e743ab7bbc638e75c21ee908b9417dc0c110c2","entity_key":"d_strategic_recommendations_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ff94f15e0d3c855d490e0fcdc73ab00ddd0251fd6acc192304fdac2d285d6fb3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e577781c62ccffde6619831d63e743ab7bbc638e75c21ee908b9417dc0c110c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_consensus_facilitation_01:2 -> audio/generated/de-DE/dialogues/e8e4e6619173545c530d822265314d1124200dbaae6e455806f482827aa1adb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e975b77-5499-5af6-883b-1f7b4aa871ec', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_consensus_facilitation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb6fffc4c13e64749eb61cc0b09ee9060ad2b27d48d2dfbdb8ef614eaa41b79d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40337581-d359-55c8-b951-6e700ff55b6b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e975b77-5499-5af6-883b-1f7b4aa871ec', 1), 'cb6fffc4c13e64749eb61cc0b09ee9060ad2b27d48d2dfbdb8ef614eaa41b79d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8e4e6619173545c530d822265314d1124200dbaae6e455806f482827aa1adb1.mp3', 3996, '2026-09-13 09:40:41.379807', 'b3e1c932cfc4263f6aecdc9ea87de3c64666d9c159124f0b9512276d4989e2cc', 'validated', '{"audio_key":"e8e4e6619173545c530d822265314d1124200dbaae6e455806f482827aa1adb1","entity_key":"d_consensus_facilitation_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b3e1c932cfc4263f6aecdc9ea87de3c64666d9c159124f0b9512276d4989e2cc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e8e4e6619173545c530d822265314d1124200dbaae6e455806f482827aa1adb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_speech_attribution_03:3 -> audio/generated/de-DE/dialogues/eb342c18be1951aefcb7d398a2519a138b83d4f0188f0e86cee9efb08b4042d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ea31807-4163-53fe-b301-0bb5b7f586d6', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_speech_attribution_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c992c995c8820bae0bd27389353eb35db9ffc56571b3ab740824e7189f303c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c363c8e-ef1a-52a0-896c-d6ad83aff505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ea31807-4163-53fe-b301-0bb5b7f586d6', 1), '9c992c995c8820bae0bd27389353eb35db9ffc56571b3ab740824e7189f303c9',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb342c18be1951aefcb7d398a2519a138b83d4f0188f0e86cee9efb08b4042d2.mp3', 5328, '2026-09-13 09:40:42.278193', '02f7d00372975e2e9eafb658360240e79bd36a9e1d1e514dc94f3a43d769407d', 'validated', '{"audio_key":"eb342c18be1951aefcb7d398a2519a138b83d4f0188f0e86cee9efb08b4042d2","entity_key":"d_reported_speech_attribution_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"02f7d00372975e2e9eafb658360240e79bd36a9e1d1e514dc94f3a43d769407d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/eb342c18be1951aefcb7d398a2519a138b83d4f0188f0e86cee9efb08b4042d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_03:3 -> audio/generated/de-DE/dialogues/eca17187e2fc3115baa60faaeb16fb911019caeabaff677a3ea9f549eabe9e9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71519861-bce8-5f2a-9e32-7fa4bfde529d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9db6187cf3f7464b4427a1809fe03efea5cf2c16ff4fdeca43babe23898fbe1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c8afb0-9caf-584e-aa5a-f58d615da6c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71519861-bce8-5f2a-9e32-7fa4bfde529d', 1), '9db6187cf3f7464b4427a1809fe03efea5cf2c16ff4fdeca43babe23898fbe1c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eca17187e2fc3115baa60faaeb16fb911019caeabaff677a3ea9f549eabe9e9c.mp3', 5328, '2026-09-13 09:40:42.776925', 'f997e093ac1b875af0216d1a8c54a89144eb7734689131fc5a000557de294ce1', 'validated', '{"audio_key":"eca17187e2fc3115baa60faaeb16fb911019caeabaff677a3ea9f549eabe9e9c","entity_key":"d_multi_source_synthesis_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f997e093ac1b875af0216d1a8c54a89144eb7734689131fc5a000557de294ce1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/eca17187e2fc3115baa60faaeb16fb911019caeabaff677a3ea9f549eabe9e9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_02:4 -> audio/generated/de-DE/dialogues/f0520aab2793ae323cdb4879664ad1f04c846e3bbf721ad91dc24d3b5d5d593d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c8d86a2-2d56-51c2-877e-89ff6b2258e1', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba88a05b9be25add96c94fc1e22649d4f74005558703f02418cd03aa659543fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3b5a0f7-db26-537b-a7f1-bcd9c33dd988', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c8d86a2-2d56-51c2-877e-89ff6b2258e1', 1), 'ba88a05b9be25add96c94fc1e22649d4f74005558703f02418cd03aa659543fc',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0520aab2793ae323cdb4879664ad1f04c846e3bbf721ad91dc24d3b5d5d593d.mp3', 4911, '2026-09-13 09:40:43.649792', '10fd0249737c40323824af9cde3ae57c00a375644f824ddaae60aed98d0e51a7', 'validated', '{"audio_key":"f0520aab2793ae323cdb4879664ad1f04c846e3bbf721ad91dc24d3b5d5d593d","entity_key":"d_formal_analysis_writing_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"10fd0249737c40323824af9cde3ae57c00a375644f824ddaae60aed98d0e51a7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f0520aab2793ae323cdb4879664ad1f04c846e3bbf721ad91dc24d3b5d5d593d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_02:3 -> audio/generated/de-DE/dialogues/f41fb4db792d5576699ce253e05ca49680dd6036b6e793f9e1ceb8bf74ad5127.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('41b1a5a8-d2b6-5621-8833-7ffb12f658a8', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e90bf51fe41079c9a9ad1e7827b4748191365bfd9b008dca9e122d4a55a7427'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf6d953e-ce07-518e-b2de-fd28cf83af91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('41b1a5a8-d2b6-5621-8833-7ffb12f658a8', 1), '0e90bf51fe41079c9a9ad1e7827b4748191365bfd9b008dca9e122d4a55a7427',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f41fb4db792d5576699ce253e05ca49680dd6036b6e793f9e1ceb8bf74ad5127.mp3', 5093, '2026-09-13 09:40:44.229067', 'fd71d2d3403a9d322ed5ac02261be91ad3d7612a546fb0127141dffa30f6189d', 'validated', '{"audio_key":"f41fb4db792d5576699ce253e05ca49680dd6036b6e793f9e1ceb8bf74ad5127","entity_key":"d_crisis_communication_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fd71d2d3403a9d322ed5ac02261be91ad3d7612a546fb0127141dffa30f6189d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f41fb4db792d5576699ce253e05ca49680dd6036b6e793f9e1ceb8bf74ad5127.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_02:4 -> audio/generated/de-DE/dialogues/f473b2153ce708ad1f31812e637236e70f6a5880f4fa51e2800febecc76e3627.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8293a3db-30c1-526f-a8d8-77f7614b49aa', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7635a17fd70b2c759a7ba22b2472ce41a18a5fbbd8b9d123cb85f8e6885f77d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91b3566f-8e05-59c0-9c3d-97dfc65b023f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8293a3db-30c1-526f-a8d8-77f7614b49aa', 1), '7635a17fd70b2c759a7ba22b2472ce41a18a5fbbd8b9d123cb85f8e6885f77d2',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f473b2153ce708ad1f31812e637236e70f6a5880f4fa51e2800febecc76e3627.mp3', 4545, '2026-09-13 09:40:44.990057', '7166ba277848799a0cfc6165faf565c1152b0a3bbc7ff04fd5e7bc632a98c002', 'validated', '{"audio_key":"f473b2153ce708ad1f31812e637236e70f6a5880f4fa51e2800febecc76e3627","entity_key":"d_crisis_communication_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7166ba277848799a0cfc6165faf565c1152b0a3bbc7ff04fd5e7bc632a98c002","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f473b2153ce708ad1f31812e637236e70f6a5880f4fa51e2800febecc76e3627.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_03:3 -> audio/generated/de-DE/dialogues/f794312c7b11b33e113556bff4d99ddcbd2bd69e254af20e45f096b13f181d32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aedd7219-db60-582e-a966-ecc86d78b12f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edca38c6f06ca0a6cf2bdc4d691e1deeb27c5c6d357f812073de2c834186a8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15faa877-e64b-545b-8eee-d66b60d2293b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aedd7219-db60-582e-a966-ecc86d78b12f', 1), '6edca38c6f06ca0a6cf2bdc4d691e1deeb27c5c6d357f812073de2c834186a8c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f794312c7b11b33e113556bff4d99ddcbd2bd69e254af20e45f096b13f181d32.mp3', 3996, '2026-09-13 09:40:45.520650', 'f8d0b5de1542b419aa0f7448894797adb378cd18c6328334d3d5f9c412a8c69e', 'validated', '{"audio_key":"f794312c7b11b33e113556bff4d99ddcbd2bd69e254af20e45f096b13f181d32","entity_key":"d_claims_hedging_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f8d0b5de1542b419aa0f7448894797adb378cd18c6328334d3d5f9c412a8c69e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f794312c7b11b33e113556bff4d99ddcbd2bd69e254af20e45f096b13f181d32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_register_02:2 -> audio/generated/de-DE/dialogues/f8b8381f08b93c9f3e7ced65061a617ba45e1b79b741ffbbc8ba111bfe1ea053.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31fe6b06-34c8-52c7-a7d7-a8716e7127fe', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_register_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8157be35ec75099a29c9f5d5b5abd20314cfd0bd73cc67376a54de1553381803'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2638e21-eff4-5ce1-97e2-a0ea9a11302c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31fe6b06-34c8-52c7-a7d7-a8716e7127fe', 1), '8157be35ec75099a29c9f5d5b5abd20314cfd0bd73cc67376a54de1553381803',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8b8381f08b93c9f3e7ced65061a617ba45e1b79b741ffbbc8ba111bfe1ea053.mp3', 3944, '2026-09-13 09:40:46.251187', '4b1e36a102fa6ed82620271606d840c8695b5efa9777d92821b9e6255c355d5b', 'validated', '{"audio_key":"f8b8381f08b93c9f3e7ced65061a617ba45e1b79b741ffbbc8ba111bfe1ea053","entity_key":"d_implicit_meaning_register_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4b1e36a102fa6ed82620271606d840c8695b5efa9777d92821b9e6255c355d5b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f8b8381f08b93c9f3e7ced65061a617ba45e1b79b741ffbbc8ba111bfe1ea053.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_analysis_writing_03:3 -> audio/generated/de-DE/dialogues/f905cafacfe2b47b397bf884c710bae9696cc69d791120fd9597d201419272de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c612d7ee-b741-56cb-9afa-3502a51b5c95', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_analysis_writing_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c0e3254860f0cc60dd019275e971bec51fc7db9d798145d1461f1e3abe474a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0210064-3f5a-525b-bfe8-f61bc111585e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c612d7ee-b741-56cb-9afa-3502a51b5c95', 1), '0c0e3254860f0cc60dd019275e971bec51fc7db9d798145d1461f1e3abe474a4',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f905cafacfe2b47b397bf884c710bae9696cc69d791120fd9597d201419272de.mp3', 3186, '2026-09-13 09:40:46.765488', '9811f2a5e54bda7d30fb13ef140a98985540ea0fea342d38e63a17fa864aebb0', 'validated', '{"audio_key":"f905cafacfe2b47b397bf884c710bae9696cc69d791120fd9597d201419272de","entity_key":"d_formal_analysis_writing_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9811f2a5e54bda7d30fb13ef140a98985540ea0fea342d38e63a17fa864aebb0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f905cafacfe2b47b397bf884c710bae9696cc69d791120fd9597d201419272de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_interpretation_03:2 -> audio/generated/de-DE/dialogues/f989069ce5c9940bd7f0a39713cbd92dda7d22f9816c43ea55417a1fe4e249c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46f2234a-1924-543a-a17a-33a1fc15eb73', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_interpretation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a3b81575d952685bfadf640fd8ae7b11cdfecb3e9fe82813f7b64ec954cc484'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a08c230-a84d-5638-b408-a3e27d4c79e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46f2234a-1924-543a-a17a-33a1fc15eb73', 1), '0a3b81575d952685bfadf640fd8ae7b11cdfecb3e9fe82813f7b64ec954cc484',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f989069ce5c9940bd7f0a39713cbd92dda7d22f9816c43ea55417a1fe4e249c8.mp3', 2951, '2026-09-13 09:40:47.380610', '2d52b5d48d947804b57d435ee89041dde4b6875480c11699bbff99e15b614295', 'validated', '{"audio_key":"f989069ce5c9940bd7f0a39713cbd92dda7d22f9816c43ea55417a1fe4e249c8","entity_key":"d_policy_interpretation_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"2d52b5d48d947804b57d435ee89041dde4b6875480c11699bbff99e15b614295","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f989069ce5c9940bd7f0a39713cbd92dda7d22f9816c43ea55417a1fe4e249c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidence_briefing_capstone_01:3 -> audio/generated/de-DE/dialogues/fb34e727ff7fbc78b77aedf03ec0a6f8455d1648411993e0bf1fde296a5a02fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f886898-7a3c-50c8-819a-455a764b230d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidence_briefing_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2acb36bdfde99021a710695541393fd61afcd68050198112c229db1995707b86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6836d22f-223a-5479-8d13-65e2ab657122', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f886898-7a3c-50c8-819a-455a764b230d', 1), '2acb36bdfde99021a710695541393fd61afcd68050198112c229db1995707b86',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fb34e727ff7fbc78b77aedf03ec0a6f8455d1648411993e0bf1fde296a5a02fa.mp3', 4780, '2026-09-13 09:40:48.159329', '6dddf72498ad336613bb0097daf7bf45f66ff854ca815deefe6d8eb23649079d', 'validated', '{"audio_key":"fb34e727ff7fbc78b77aedf03ec0a6f8455d1648411993e0bf1fde296a5a02fa","entity_key":"d_evidence_briefing_capstone_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6dddf72498ad336613bb0097daf7bf45f66ff854ca815deefe6d8eb23649079d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fb34e727ff7fbc78b77aedf03ec0a6f8455d1648411993e0bf1fde296a5a02fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_crisis_communication_01:1 -> audio/generated/de-DE/dialogues/fdaa0c8ff410274dd37662fc6bb424fef10385794b3f7a831e96fc8c3a37d32d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1af2a91-f110-52c5-b7ae-81eacdd7fe87', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_crisis_communication_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48813b5903aecf24130ffdf9818c27ef4eaf87d870baabc28e00c53d79561aa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7862db45-9133-5aa8-bcbd-a44858a6b8cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1af2a91-f110-52c5-b7ae-81eacdd7fe87', 1), '48813b5903aecf24130ffdf9818c27ef4eaf87d870baabc28e00c53d79561aa9',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fdaa0c8ff410274dd37662fc6bb424fef10385794b3f7a831e96fc8c3a37d32d.mp3', 3422, '2026-09-13 09:40:48.570818', 'fb3d13d3f710e0d67a0df6c2f983677bcb7d066d7648b7fc11b04c6c249dd7af', 'validated', '{"audio_key":"fdaa0c8ff410274dd37662fc6bb424fef10385794b3f7a831e96fc8c3a37d32d","entity_key":"d_crisis_communication_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fb3d13d3f710e0d67a0df6c2f983677bcb7d066d7648b7fc11b04c6c249dd7af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fdaa0c8ff410274dd37662fc6bb424fef10385794b3f7a831e96fc8c3a37d32d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_claims_hedging_01:2 -> audio/generated/de-DE/dialogues/ffab6158e6646089322356834ba11e3170e22f6148d69ae4ebd4f6316d479ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7ddcc9c-ddad-56c4-9baa-901ffefb07cb', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_claims_hedging_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f574bc94798f4f7b5f52a063d960076702c364c03d51f3c6866f01ac24c1c45b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65079445-7adf-5089-ab12-a0320a99807d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7ddcc9c-ddad-56c4-9baa-901ffefb07cb', 1), 'f574bc94798f4f7b5f52a063d960076702c364c03d51f3c6866f01ac24c1c45b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ffab6158e6646089322356834ba11e3170e22f6148d69ae4ebd4f6316d479ccf.mp3', 3578, '2026-09-13 09:40:49.457376', '790185d52836dcf9796589e57b49511cc1256160695b6275ee68ec0a7a8d98dd', 'validated', '{"audio_key":"ffab6158e6646089322356834ba11e3170e22f6148d69ae4ebd4f6316d479ccf","entity_key":"d_claims_hedging_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"790185d52836dcf9796589e57b49511cc1256160695b6275ee68ec0a7a8d98dd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ffab6158e6646089322356834ba11e3170e22f6148d69ae4ebd4f6316d479ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_briefing_capstone_03 -> audio/generated/de-DE/lexical/015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('18bb0687-a7ea-57ac-8ba5-fa6f6c059ef1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0922a113e6cf9e153d9f69212909f36dd788e33ad31ed6e33d27a51138f794a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bea05043-a3c7-5579-8ac4-e3a6231fa502', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('18bb0687-a7ea-57ac-8ba5-fa6f6c059ef1', 1), '0922a113e6cf9e153d9f69212909f36dd788e33ad31ed6e33d27a51138f794a4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e.mp3', 1488, '2026-09-13 09:40:49.537450', '9e1b8b74c0ac0090e4ec4f8633ed6868c2cacbdc1e137c380be2402299fa5d2b', 'validated', '{"audio_key":"015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e","entity_key":"lx_evidence_briefing_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e1b8b74c0ac0090e4ec4f8633ed6868c2cacbdc1e137c380be2402299fa5d2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_briefing_capstone_03 -> audio/generated/de-DE/lexical/015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('93f3381b-4dec-5431-aa01-252ce41099c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0922a113e6cf9e153d9f69212909f36dd788e33ad31ed6e33d27a51138f794a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8192dbdb-09bd-5717-8df6-5bb56b986d7b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('93f3381b-4dec-5431-aa01-252ce41099c6', 1), '0922a113e6cf9e153d9f69212909f36dd788e33ad31ed6e33d27a51138f794a4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e.mp3', 1488, '2026-09-13 09:40:49.537450', '9e1b8b74c0ac0090e4ec4f8633ed6868c2cacbdc1e137c380be2402299fa5d2b', 'validated', '{"audio_key":"015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e","entity_key":"wf_evidence_briefing_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e1b8b74c0ac0090e4ec4f8633ed6868c2cacbdc1e137c380be2402299fa5d2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/015358c702614c7efbbe684978572f39ab68264e02116949342f0529885d798e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_register_02 -> audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('decfff23-1588-5040-a176-5976e79db41e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_register_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eab070a5-ba72-5c8f-ab2b-53d2b289b2b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('decfff23-1588-5040-a176-5976e79db41e', 1), '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3', 1018, '2026-09-13 09:40:50.387703', '420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1', 'validated', '{"audio_key":"02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0","entity_key":"lx_implicit_meaning_register_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_register_02 -> audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('38a38ec0-613c-5b2b-892e-d760ae5ab1ba', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_register_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc17c379-a97f-58d5-90e3-3950b1c49785', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('38a38ec0-613c-5b2b-892e-d760ae5ab1ba', 1), '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3', 1018, '2026-09-13 09:40:50.387703', '420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1', 'validated', '{"audio_key":"02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0","entity_key":"wf_implicit_meaning_register_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_briefing_capstone_04 -> audio/generated/de-DE/lexical/0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a15ee2c-cccc-5c48-9c2a-377d044197ca', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f11761cd438c29c7b0f08a9df26a30e1bc405b5585a23082192ccb1a699e01a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3dca1d4-54d3-54b1-9b48-70e460417e0f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a15ee2c-cccc-5c48-9c2a-377d044197ca', 1), 'f11761cd438c29c7b0f08a9df26a30e1bc405b5585a23082192ccb1a699e01a1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75.mp3', 1253, '2026-09-13 09:40:50.535411', 'de12d12e6092567b726f80caf81564ede9c9c14f8f441533cd02c8abfbe64168', 'validated', '{"audio_key":"0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75","entity_key":"lx_evidence_briefing_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de12d12e6092567b726f80caf81564ede9c9c14f8f441533cd02c8abfbe64168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_briefing_capstone_04 -> audio/generated/de-DE/lexical/0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad38283f-6c07-5e5b-be8b-da14d5aee201', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f11761cd438c29c7b0f08a9df26a30e1bc405b5585a23082192ccb1a699e01a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('241f227d-8e1d-58e8-abf3-ee8a58ebc49c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad38283f-6c07-5e5b-be8b-da14d5aee201', 1), 'f11761cd438c29c7b0f08a9df26a30e1bc405b5585a23082192ccb1a699e01a1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75.mp3', 1253, '2026-09-13 09:40:50.535411', 'de12d12e6092567b726f80caf81564ede9c9c14f8f441533cd02c8abfbe64168', 'validated', '{"audio_key":"0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75","entity_key":"wf_evidence_briefing_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de12d12e6092567b726f80caf81564ede9c9c14f8f441533cd02c8abfbe64168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0294e9fa6069af8ca31b80ba432986fb885794f7e0418773df95d133f11a0e75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_briefing_capstone_01 -> audio/generated/de-DE/lexical/0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('265dfed6-2670-5c94-ba60-315f7eb1715b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6e0a50d4fddc50b97bcde6553d0115580344c153611798b6021f0aa9269642e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86656212-d564-5634-81a7-8e792a0d69ee', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('265dfed6-2670-5c94-ba60-315f7eb1715b', 1), 'e6e0a50d4fddc50b97bcde6553d0115580344c153611798b6021f0aa9269642e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024.mp3', 1332, '2026-09-13 09:40:51.342561', '5989305c8954f3ee9b4c93e8c6af7dc0ec15fb67b9afb31a664442f3a464af75', 'validated', '{"audio_key":"0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024","entity_key":"lx_evidence_briefing_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5989305c8954f3ee9b4c93e8c6af7dc0ec15fb67b9afb31a664442f3a464af75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_briefing_capstone_01 -> audio/generated/de-DE/lexical/0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3398dc52-b993-5e1b-a6cd-12fcb642c8ff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6e0a50d4fddc50b97bcde6553d0115580344c153611798b6021f0aa9269642e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e995d440-4964-5643-8210-4402828071e2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3398dc52-b993-5e1b-a6cd-12fcb642c8ff', 1), 'e6e0a50d4fddc50b97bcde6553d0115580344c153611798b6021f0aa9269642e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024.mp3', 1332, '2026-09-13 09:40:51.342561', '5989305c8954f3ee9b4c93e8c6af7dc0ec15fb67b9afb31a664442f3a464af75', 'validated', '{"audio_key":"0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024","entity_key":"wf_evidence_briefing_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5989305c8954f3ee9b4c93e8c6af7dc0ec15fb67b9afb31a664442f3a464af75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0827cc6f1715c91e1c537f0960b039368e949be83c96fd126c8b9a8995eaa024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_speech_attribution_01 -> audio/generated/de-DE/lexical/0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d45982c2-c89f-5957-9ca1-29c212246816', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_speech_attribution_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77250e1c13a082dc036ec23cd9bb5efc568e0e3690f7365291729e4bc846de52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fc472e5-de76-5df0-8601-cbee6fe5d328', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d45982c2-c89f-5957-9ca1-29c212246816', 1), '77250e1c13a082dc036ec23cd9bb5efc568e0e3690f7365291729e4bc846de52',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8.mp3', 1280, '2026-09-13 09:40:51.538993', 'bca05b7dc126ff92505b130888537eab1fc09874f217c82898395345812ae835', 'validated', '{"audio_key":"0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8","entity_key":"lx_reported_speech_attribution_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bca05b7dc126ff92505b130888537eab1fc09874f217c82898395345812ae835","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_speech_attribution_01 -> audio/generated/de-DE/lexical/0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1321b311-8630-56a9-9ab8-fcef2e08041d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_speech_attribution_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77250e1c13a082dc036ec23cd9bb5efc568e0e3690f7365291729e4bc846de52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('975952c1-417b-561b-9fed-fb8aa9f48508', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1321b311-8630-56a9-9ab8-fcef2e08041d', 1), '77250e1c13a082dc036ec23cd9bb5efc568e0e3690f7365291729e4bc846de52',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8.mp3', 1280, '2026-09-13 09:40:51.538993', 'bca05b7dc126ff92505b130888537eab1fc09874f217c82898395345812ae835', 'validated', '{"audio_key":"0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8","entity_key":"wf_reported_speech_attribution_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bca05b7dc126ff92505b130888537eab1fc09874f217c82898395345812ae835","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ad1c113ea47d7b9d670e16dc30dcc87a03e169a43cd520b42a9ddbe4ad3b1d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_crisis_communication_05 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_crisis_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_crisis_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_crisis_communication_05 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89f9a0a6-42a9-5f55-9b70-3db92f386ce6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_crisis_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fbe6412-398e-526b-a899-b567f9e3a0c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89f9a0a6-42a9-5f55-9b70-3db92f386ce6', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_crisis_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_consensus_facilitation_06 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_consensus_facilitation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7fb0c14-b683-560b-98e1-23fea6d02b09', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"lx_consensus_facilitation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_consensus_facilitation_06 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ed37461-afa3-5672-9d5d-17dc003ead3e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_consensus_facilitation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bb32375-5612-5490-af68-921f9d1c4e1e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ed37461-afa3-5672-9d5d-17dc003ead3e', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"wf_consensus_facilitation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_analysis_writing_01 -> audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc76f97b-4422-5fde-b27b-c0f9a89756dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_analysis_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e434d45-fed3-595b-bb00-e41036abbe9b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc76f97b-4422-5fde-b27b-c0f9a89756dd', 1), 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3', 1097, '2026-09-13 09:40:52.296564', 'f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193', 'validated', '{"audio_key":"0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088","entity_key":"lx_formal_analysis_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_analysis_writing_01 -> audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('40140238-e0b8-5460-b3f7-4b64b3a883a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_analysis_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bca7913-a82d-5fd3-ac4a-c684f7117273', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('40140238-e0b8-5460-b3f7-4b64b3a883a0', 1), 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3', 1097, '2026-09-13 09:40:52.296564', 'f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193', 'validated', '{"audio_key":"0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088","entity_key":"wf_formal_analysis_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_recommendations_01 -> audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04d758e0-cd84-58a4-b0f2-d749266e01d1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_recommendations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba9cf499-ea9f-5bf2-86d5-1cd4e4f3e90c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04d758e0-cd84-58a4-b0f2-d749266e01d1', 1), '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3', 1201, '2026-09-13 09:40:52.551768', '2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8', 'validated', '{"audio_key":"1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde","entity_key":"lx_strategic_recommendations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_recommendations_01 -> audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c13fe75-0356-58c4-a39e-677b2de5c4d4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_recommendations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7152e669-63a9-577e-a171-95348b7c8cf6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c13fe75-0356-58c4-a39e-677b2de5c4d4', 1), '87ffcb69c9f6d211811676e541095290bac9d824b4da025f50e577b58b254bdf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3', 1201, '2026-09-13 09:40:52.551768', '2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8', 'validated', '{"audio_key":"1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde","entity_key":"wf_strategic_recommendations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d5586ebc97697bc225e5d542a9d98ae3ab3efa6947b95b8153fd96edb79e0a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fea515c22a726dc66cfa39eccc76b84af66928de9edd7b3434b29944e19edde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_claims_hedging_04 -> audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50a61b71-abe3-5306-860e-550a5039a2f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_claims_hedging_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb858c6a-865e-5663-bffd-306379bd2a0d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50a61b71-abe3-5306-860e-550a5039a2f2', 1), 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3', 1280, '2026-09-13 09:40:53.321942', '5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a', 'validated', '{"audio_key":"2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d","entity_key":"lx_claims_hedging_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_claims_hedging_04 -> audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b843534e-9b98-5a3d-908d-5e187124e8b2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_claims_hedging_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3840742-2784-593e-ba2e-8dcd3d75c310', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b843534e-9b98-5a3d-908d-5e187124e8b2', 1), 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3', 1280, '2026-09-13 09:40:53.321942', '5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a', 'validated', '{"audio_key":"2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d","entity_key":"wf_claims_hedging_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_claims_hedging_03 -> audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c792e8f-f844-515e-b5e9-8ecf56bf7689', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_claims_hedging_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20bfe716-a34a-5dba-9215-1f97415897ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c792e8f-f844-515e-b5e9-8ecf56bf7689', 1), '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3', 1280, '2026-09-13 09:40:53.678515', '7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52', 'validated', '{"audio_key":"3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103","entity_key":"lx_claims_hedging_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_claims_hedging_03 -> audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('de8c3d71-7b11-5904-8ee8-f9120a6e930c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_claims_hedging_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e27c716b-58a0-5ddb-9902-2f451af40bf1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('de8c3d71-7b11-5904-8ee8-f9120a6e930c', 1), '60614014fe585637e340a4196ce24d1e7ea55f35e541fb2f3c56e155bc1b45fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3', 1280, '2026-09-13 09:40:53.678515', '7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52', 'validated', '{"audio_key":"3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103","entity_key":"wf_claims_hedging_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7828ad8c61c521c894fecd9e024d7a219b64c20651d8364ef7238cce7b75cb52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3043cfa6980ad0c991d082922328e4f26e8edb711fcd4289ed6f6a4f41ec0103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_claims_hedging_06 -> audio/generated/de-DE/lexical/313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75805dd6-1e68-5196-a1ca-76eea034a138', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_claims_hedging_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5003fc1cbabd47c672f6e40b4a6d139e16003a538f6f292e1cae0e3e08fe09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6707274a-487a-5883-b83f-c0184ddf9f65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75805dd6-1e68-5196-a1ca-76eea034a138', 1), '8b5003fc1cbabd47c672f6e40b4a6d139e16003a538f6f292e1cae0e3e08fe09',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d.mp3', 1097, '2026-09-13 09:40:54.251401', 'b41ab2c250b91a68925cb90c824f31eac06465639048031834036e84313a9694', 'validated', '{"audio_key":"313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d","entity_key":"lx_claims_hedging_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b41ab2c250b91a68925cb90c824f31eac06465639048031834036e84313a9694","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_claims_hedging_06 -> audio/generated/de-DE/lexical/313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76c5611a-5c01-5700-a722-f8992bcdc3af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_claims_hedging_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5003fc1cbabd47c672f6e40b4a6d139e16003a538f6f292e1cae0e3e08fe09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8b1eff7-7177-50c4-bff8-bbe6d2af551e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76c5611a-5c01-5700-a722-f8992bcdc3af', 1), '8b5003fc1cbabd47c672f6e40b4a6d139e16003a538f6f292e1cae0e3e08fe09',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d.mp3', 1097, '2026-09-13 09:40:54.251401', 'b41ab2c250b91a68925cb90c824f31eac06465639048031834036e84313a9694', 'validated', '{"audio_key":"313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d","entity_key":"wf_claims_hedging_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b41ab2c250b91a68925cb90c824f31eac06465639048031834036e84313a9694","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/313d5c9024b4a13e7550b7bce5551cc4766ce8a286393ce52795056c82d4e74d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_register_01 -> audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c25e62e-9347-54e6-b693-71e9fabb4e6c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_register_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7108323-91dc-55b6-bdf5-3da17967a489', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c25e62e-9347-54e6-b693-71e9fabb4e6c', 1), 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3', 1071, '2026-09-13 09:40:54.631439', '1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c', 'validated', '{"audio_key":"3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc","entity_key":"lx_implicit_meaning_register_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_register_01 -> audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9d0ec381-4f3a-5aab-a442-acd4a7b3ee91', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_register_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('069deb8b-9663-594a-b2ed-14e326c47080', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9d0ec381-4f3a-5aab-a442-acd4a7b3ee91', 1), 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3', 1071, '2026-09-13 09:40:54.631439', '1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c', 'validated', '{"audio_key":"3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc","entity_key":"wf_implicit_meaning_register_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_recommendations_06 -> audio/generated/de-DE/lexical/336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0ced305-9e19-58d0-abcc-f0362ea309cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_recommendations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03947286e2062ae62ad7897ed1c2a6293f5e959ea41db0a8feff8307b565b85a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0742ff8b-cf59-5fb2-93f2-a6f7c0c7eb80', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0ced305-9e19-58d0-abcc-f0362ea309cf', 1), '03947286e2062ae62ad7897ed1c2a6293f5e959ea41db0a8feff8307b565b85a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047.mp3', 1201, '2026-09-13 09:40:55.203884', '712a1dcc3c5364cb4cd635ba0174be9ae7ef4bd1ea7df62f2c61f24e4cbb7892', 'validated', '{"audio_key":"336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047","entity_key":"lx_strategic_recommendations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"712a1dcc3c5364cb4cd635ba0174be9ae7ef4bd1ea7df62f2c61f24e4cbb7892","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_recommendations_06 -> audio/generated/de-DE/lexical/336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d9d6cd81-005d-5bed-82e7-dd5ec87d08fb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_recommendations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03947286e2062ae62ad7897ed1c2a6293f5e959ea41db0a8feff8307b565b85a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ce79290-6f8d-526d-a023-5dbd94bc18bd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d9d6cd81-005d-5bed-82e7-dd5ec87d08fb', 1), '03947286e2062ae62ad7897ed1c2a6293f5e959ea41db0a8feff8307b565b85a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047.mp3', 1201, '2026-09-13 09:40:55.203884', '712a1dcc3c5364cb4cd635ba0174be9ae7ef4bd1ea7df62f2c61f24e4cbb7892', 'validated', '{"audio_key":"336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047","entity_key":"wf_strategic_recommendations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"712a1dcc3c5364cb4cd635ba0174be9ae7ef4bd1ea7df62f2c61f24e4cbb7892","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/336861c55df1de9b827744a824e57bf22eab8038665bdfdd7417303842281047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_crisis_communication_02 -> audio/generated/de-DE/lexical/344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a7f0f7cf-0386-54a8-a69c-65b7aa4a37a9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_crisis_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62bc7c7f92fed68b73537e918fe9ec756aea338aa077f85b66365235725d06f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44b0a5c6-53b2-56ce-859a-5990c4b7a63c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a7f0f7cf-0386-54a8-a69c-65b7aa4a37a9', 1), '62bc7c7f92fed68b73537e918fe9ec756aea338aa077f85b66365235725d06f8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a.mp3', 1201, '2026-09-13 09:40:55.673533', '1214a39a872b052f0f44d4ee78bf96269973ce42948743b21d42ee8e98998393', 'validated', '{"audio_key":"344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a","entity_key":"lx_crisis_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1214a39a872b052f0f44d4ee78bf96269973ce42948743b21d42ee8e98998393","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_crisis_communication_02 -> audio/generated/de-DE/lexical/344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bc93c427-e610-557c-8c74-d80495abb8a1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_crisis_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62bc7c7f92fed68b73537e918fe9ec756aea338aa077f85b66365235725d06f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70538403-00b0-58af-ab66-4a33d8b85d4b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bc93c427-e610-557c-8c74-d80495abb8a1', 1), '62bc7c7f92fed68b73537e918fe9ec756aea338aa077f85b66365235725d06f8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a.mp3', 1201, '2026-09-13 09:40:55.673533', '1214a39a872b052f0f44d4ee78bf96269973ce42948743b21d42ee8e98998393', 'validated', '{"audio_key":"344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a","entity_key":"wf_crisis_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1214a39a872b052f0f44d4ee78bf96269973ce42948743b21d42ee8e98998393","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/344e06860f17c4334921ad0c9d2e971443235732474611567c3e49c1135c246a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_03 -> audio/generated/de-DE/lexical/3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eda28ae8-9ca8-5dd5-a55c-27319f26d8df', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd28bc4d6250ad2d8438dce6c0cf1d63897da752bb3b29637028307b2d0875d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bfe133b-6a3f-5364-b117-8c67b374e8c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eda28ae8-9ca8-5dd5-a55c-27319f26d8df', 1), 'd28bc4d6250ad2d8438dce6c0cf1d63897da752bb3b29637028307b2d0875d70',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb.mp3', 1253, '2026-09-13 09:40:56.206367', 'be5b14d9704e708527fad47126ce5fa65f36839a7fa983079037201e99f7b680', 'validated', '{"audio_key":"3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb","entity_key":"lx_multi_source_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be5b14d9704e708527fad47126ce5fa65f36839a7fa983079037201e99f7b680","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_03 -> audio/generated/de-DE/lexical/3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8bf4349f-91c9-5084-86e3-28572b7cca5a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd28bc4d6250ad2d8438dce6c0cf1d63897da752bb3b29637028307b2d0875d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52e0e027-a2f2-5d9e-9296-6b64a64d713d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8bf4349f-91c9-5084-86e3-28572b7cca5a', 1), 'd28bc4d6250ad2d8438dce6c0cf1d63897da752bb3b29637028307b2d0875d70',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb.mp3', 1253, '2026-09-13 09:40:56.206367', 'be5b14d9704e708527fad47126ce5fa65f36839a7fa983079037201e99f7b680', 'validated', '{"audio_key":"3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb","entity_key":"wf_multi_source_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be5b14d9704e708527fad47126ce5fa65f36839a7fa983079037201e99f7b680","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3c30dedae75b754ddebd9eb9ae97d35962e069d27172eeb3aa55a38dc0707fbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_analysis_writing_04 -> audio/generated/de-DE/lexical/3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('90657e03-aa26-54c7-a484-8c19c5cd0f1f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_analysis_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c99d4f586255a10dad25890a1915559695834f2777795ae2a50ecd2ddeadede'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ac86a12-c97d-5a2b-905b-f75abde12700', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('90657e03-aa26-54c7-a484-8c19c5cd0f1f', 1), '4c99d4f586255a10dad25890a1915559695834f2777795ae2a50ecd2ddeadede',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d.mp3', 1253, '2026-09-13 09:40:56.612783', 'c836b4bcd2e00e644a6c0af04e1b09158741574382f0cdc9a155c1d0990dcf61', 'validated', '{"audio_key":"3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d","entity_key":"lx_formal_analysis_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c836b4bcd2e00e644a6c0af04e1b09158741574382f0cdc9a155c1d0990dcf61","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_analysis_writing_04 -> audio/generated/de-DE/lexical/3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ecf1c40d-ec3a-5f76-b2f9-30f701007e57', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_analysis_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c99d4f586255a10dad25890a1915559695834f2777795ae2a50ecd2ddeadede'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56383b3d-5817-5275-936f-7e4f9eed4653', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ecf1c40d-ec3a-5f76-b2f9-30f701007e57', 1), '4c99d4f586255a10dad25890a1915559695834f2777795ae2a50ecd2ddeadede',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d.mp3', 1253, '2026-09-13 09:40:56.612783', 'c836b4bcd2e00e644a6c0af04e1b09158741574382f0cdc9a155c1d0990dcf61', 'validated', '{"audio_key":"3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d","entity_key":"wf_formal_analysis_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c836b4bcd2e00e644a6c0af04e1b09158741574382f0cdc9a155c1d0990dcf61","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d3a2d1ab994d4d05e3467cdc6e90187a1ccf4030d35b6d131d484eb7050199d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_recommendations_05 -> audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6b03f24f-fc27-53db-9e5b-2346ec3670ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_recommendations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d17c99a-690b-53b5-ad47-9c13bcd58e9c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6b03f24f-fc27-53db-9e5b-2346ec3670ee', 1), 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3', 1018, '2026-09-13 06:59:25.661838', '1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d', 'validated', '{"audio_key":"3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690","entity_key":"lx_strategic_recommendations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_recommendations_05 -> audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94de0bfc-2ca3-53e2-bbed-36d800fb2920', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_recommendations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a2a8972-d831-5a33-b8bb-5d7e9d762dc7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94de0bfc-2ca3-53e2-bbed-36d800fb2920', 1), 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3', 1018, '2026-09-13 06:59:25.661838', '1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d', 'validated', '{"audio_key":"3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690","entity_key":"wf_strategic_recommendations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_briefing_capstone_02 -> audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('479fdb0f-602f-51ad-9935-dae1bd288852', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89903bae-425d-50bd-962b-797ff9201a94', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('479fdb0f-602f-51ad-9935-dae1bd288852', 1), 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3', 1097, '2026-09-13 08:32:26.424830', 'fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca', 'validated', '{"audio_key":"4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4","entity_key":"lx_evidence_briefing_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_briefing_capstone_02 -> audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1e6bb0e1-9c1e-5949-9e56-c411daf56ba2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb3a1225-85c1-584e-810a-2b5c9ba3137d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1e6bb0e1-9c1e-5949-9e56-c411daf56ba2', 1), 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3', 1097, '2026-09-13 08:32:26.424830', 'fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca', 'validated', '{"audio_key":"4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4","entity_key":"wf_evidence_briefing_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_interpretation_05 -> audio/generated/de-DE/lexical/4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('985fe8df-34c8-50e4-a40b-82e3128a049d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_interpretation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '397e699ed5b3dc357a9faac3aff7b9c9f50479b605a4fac15aed71810a47814d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7db90bd4-3492-5831-b501-3ece788088c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('985fe8df-34c8-50e4-a40b-82e3128a049d', 1), '397e699ed5b3dc357a9faac3aff7b9c9f50479b605a4fac15aed71810a47814d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff.mp3', 1018, '2026-09-13 09:40:57.145610', 'e376707bbda9c6387bd0b165e3d74fe1e8352cb63f1bfc880bfe6bc4cbd3d32b', 'validated', '{"audio_key":"4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff","entity_key":"lx_policy_interpretation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e376707bbda9c6387bd0b165e3d74fe1e8352cb63f1bfc880bfe6bc4cbd3d32b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_interpretation_05 -> audio/generated/de-DE/lexical/4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47c35142-5758-5bc8-b763-885e0dc824ec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_interpretation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '397e699ed5b3dc357a9faac3aff7b9c9f50479b605a4fac15aed71810a47814d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a47ca9a-5845-5e7a-9829-d83bd346cadb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47c35142-5758-5bc8-b763-885e0dc824ec', 1), '397e699ed5b3dc357a9faac3aff7b9c9f50479b605a4fac15aed71810a47814d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff.mp3', 1018, '2026-09-13 09:40:57.145610', 'e376707bbda9c6387bd0b165e3d74fe1e8352cb63f1bfc880bfe6bc4cbd3d32b', 'validated', '{"audio_key":"4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff","entity_key":"wf_policy_interpretation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e376707bbda9c6387bd0b165e3d74fe1e8352cb63f1bfc880bfe6bc4cbd3d32b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f9a0170f572615701c4a90bd776f13f8c59de3378a0fd8a6c988b92d8782dff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_crisis_communication_01 -> audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('83b13137-3ed9-5a61-bc32-280f58e88319', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_crisis_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6ee3df7-a277-5c04-92b1-6f8887b04bef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('83b13137-3ed9-5a61-bc32-280f58e88319', 1), '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3', 1097, '2026-09-13 09:40:57.550321', '608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3', 'validated', '{"audio_key":"62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f","entity_key":"lx_crisis_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_crisis_communication_01 -> audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0625a8b-b494-5096-9854-cb44e89d3fbf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_crisis_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fa55863-ca76-5107-aa4d-b6ecf7a416cb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0625a8b-b494-5096-9854-cb44e89d3fbf', 1), '1ae66e2f10f1035d8c60b9cdadb11c329fe97035e39fbc00433a239e3bb87b3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3', 1097, '2026-09-13 09:40:57.550321', '608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3', 'validated', '{"audio_key":"62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f","entity_key":"wf_crisis_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"608000eace9338f5c4ba174e5e497158a6ea70268ecff349ce9225ca675193a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62b5ee86f65a64a153c8945253097b04ea2dfc84a7ff65d075aab163adfcc91f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_briefing_capstone_05 -> audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('80c25f82-d5ee-52ca-b516-4c798edcefad', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('481444ee-b807-5eb8-bc54-d01a9f08dc19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('80c25f82-d5ee-52ca-b516-4c798edcefad', 1), 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3', 1436, '2026-09-13 09:40:58.136800', '4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79', 'validated', '{"audio_key":"65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16","entity_key":"lx_evidence_briefing_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_briefing_capstone_05 -> audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85498863-1e6d-5894-b3ff-a76808142618', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6468945c-516c-5977-86e6-366030ac67cb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85498863-1e6d-5894-b3ff-a76808142618', 1), 'e51b7277f5a643e8d5fbf59991b6a4f255052a274259e0ae4253fe1abb1ec87c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3', 1436, '2026-09-13 09:40:58.136800', '4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79', 'validated', '{"audio_key":"65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16","entity_key":"wf_evidence_briefing_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4773a3864eab78e81bd4586bc26a74324eb1fcd761dea15a8d369724d342bb79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/65c4cb9af4e61efdcef3977983ba2b13bb33e0f7d6dbdd5d268ed5481812fb16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_claims_hedging_05 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_claims_hedging_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c4c3a8e-958d-56ca-b95e-1506b839bf72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"lx_claims_hedging_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_claims_hedging_05 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('43ca9e0c-a910-5d66-8f35-671c71e94baf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_claims_hedging_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1372d9f-4792-512d-bc38-5b79799c6b88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('43ca9e0c-a910-5d66-8f35-671c71e94baf', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"wf_claims_hedging_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_consensus_facilitation_04 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_consensus_facilitation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aff4bb1-be43-5c9e-8fc9-aa79c6e4f7ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"lx_consensus_facilitation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_consensus_facilitation_04 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('90c92da2-47fb-53da-a055-bcb115e64c00', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_consensus_facilitation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52466d44-300a-5acd-bb24-8f8747935a02', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('90c92da2-47fb-53da-a055-bcb115e64c00', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"wf_consensus_facilitation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_register_05 -> audio/generated/de-DE/lexical/728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bc0cb15a-e624-5702-b50f-0ecfc4f0ce12', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_register_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb2a7811c601d2c1b2a06e463e3ac3fa458ff8084c166082388ec8ee946ffc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef863694-a15c-5121-a9a2-4a2a9fe6de28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bc0cb15a-e624-5702-b50f-0ecfc4f0ce12', 1), '0fb2a7811c601d2c1b2a06e463e3ac3fa458ff8084c166082388ec8ee946ffc5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7.mp3', 966, '2026-09-13 09:40:58.461298', 'b025ce4510d3b70af3f51c8052f0dc787d2c8a436741d38a9aa0757ba565de6a', 'validated', '{"audio_key":"728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7","entity_key":"lx_implicit_meaning_register_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b025ce4510d3b70af3f51c8052f0dc787d2c8a436741d38a9aa0757ba565de6a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_register_05 -> audio/generated/de-DE/lexical/728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17d9bf44-d44e-574e-a97f-85d91addf793', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_register_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb2a7811c601d2c1b2a06e463e3ac3fa458ff8084c166082388ec8ee946ffc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b731ac0a-0e1c-580f-8831-a1fa4dfa940b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17d9bf44-d44e-574e-a97f-85d91addf793', 1), '0fb2a7811c601d2c1b2a06e463e3ac3fa458ff8084c166082388ec8ee946ffc5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7.mp3', 966, '2026-09-13 09:40:58.461298', 'b025ce4510d3b70af3f51c8052f0dc787d2c8a436741d38a9aa0757ba565de6a', 'validated', '{"audio_key":"728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7","entity_key":"wf_implicit_meaning_register_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b025ce4510d3b70af3f51c8052f0dc787d2c8a436741d38a9aa0757ba565de6a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/728dbb2a69b0f24f9a5495c971e4cf691a992898c77c346e59d0310e617243d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_interpretation_06 -> audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa03b8d8-66ef-5f08-8f40-2075f17b5a0d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_interpretation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76df5c4c-c81f-5d87-b078-9cfeac959abc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa03b8d8-66ef-5f08-8f40-2075f17b5a0d', 1), '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3', 1253, '2026-09-13 08:48:01.388368', 'f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58', 'validated', '{"audio_key":"762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110","entity_key":"lx_policy_interpretation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_interpretation_06 -> audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8aa0cdc4-fa04-5c57-8924-db935d8694ba', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_interpretation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8408241d-26c0-5b21-8342-26e282ef7c6e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8aa0cdc4-fa04-5c57-8924-db935d8694ba', 1), '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3', 1253, '2026-09-13 08:48:01.388368', 'f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58', 'validated', '{"audio_key":"762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110","entity_key":"wf_policy_interpretation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_register_06 -> audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed1e0491-8b62-52b4-8b9f-50d23794c10a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_register_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7be9b78-a900-591b-8417-a075efaf6106', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed1e0491-8b62-52b4-8b9f-50d23794c10a', 1), 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3', 1097, '2026-09-13 08:16:36.733526', 'd830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87', 'validated', '{"audio_key":"76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5","entity_key":"lx_implicit_meaning_register_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_register_06 -> audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5edbffbc-6ffe-56a9-8a9d-5efe39cefb8f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_register_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ed53fa9-66e1-5b72-9f0b-79560627f60f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5edbffbc-6ffe-56a9-8a9d-5efe39cefb8f', 1), 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3', 1097, '2026-09-13 08:16:36.733526', 'd830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87', 'validated', '{"audio_key":"76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5","entity_key":"wf_implicit_meaning_register_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_interpretation_03 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_interpretation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_policy_interpretation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_interpretation_03 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15f2579d-558d-5a2f-ba83-9dd1a638b0a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_interpretation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61af1016-c614-516b-bdf1-504643fd40e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15f2579d-558d-5a2f-ba83-9dd1a638b0a0', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_policy_interpretation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_analysis_writing_03 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_analysis_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('361c079f-d85c-519d-b931-34e1d1ecdb08', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1ab8080-0d18-5b6c-8ace-de11bdd8bda1', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"lx_formal_analysis_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_analysis_writing_03 -> audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80ec9624-fe08-500e-b89c-858a1eafc25a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_analysis_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf1e2da2-5fee-5ede-9998-7d79bf9f8dda', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80ec9624-fe08-500e-b89c-858a1eafc25a', 1), 'c73ccca3b5f4a35827a3576c1b6b02c5692af6700b9f58cbdd252b8eaa0cd494',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3', 1436, '2026-09-13 07:53:19.973962', '689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0', 'validated', '{"audio_key":"7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409","entity_key":"wf_formal_analysis_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"689b41af9162c87e81f7f11b6d53115ca6728880181ac9acc7a7f378228f71c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7cde5d3e555b57955d5e180fb5fe1843e765e16989d071f916d511cb1b857409.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidence_briefing_capstone_06 -> audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('23107994-d132-5fe1-a54f-8252458e3476', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidence_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('245dfbcf-bcc2-5544-b664-20b08cde6617', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('23107994-d132-5fe1-a54f-8252458e3476', 1), 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3', 1515, '2026-09-13 09:40:59.129780', '59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f', 'validated', '{"audio_key":"802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be","entity_key":"lx_evidence_briefing_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidence_briefing_capstone_06 -> audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e28c6713-e03b-5a8a-a53d-9b8d04cf8475', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidence_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f3e4f61-bd5c-5bce-8487-1b7d69efc968', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e28c6713-e03b-5a8a-a53d-9b8d04cf8475', 1), 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3', 1515, '2026-09-13 09:40:59.129780', '59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f', 'validated', '{"audio_key":"802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be","entity_key":"wf_evidence_briefing_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_recommendations_03 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_recommendations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_strategic_recommendations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_recommendations_03 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2be9a190-ea5e-55bd-a476-60fe7f249da6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_recommendations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d17f7ce-9e21-51f2-99ab-5a5a0e59e4cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2be9a190-ea5e-55bd-a476-60fe7f249da6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_strategic_recommendations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_recommendations_02 -> audio/generated/de-DE/lexical/88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('07288881-9732-58ed-b233-8141477ce0d7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_recommendations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507d9078ea10dae512ba1f472399196f3c9aaa87b5fbb1dc9aae7f778a260058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b000010-6161-589a-8202-43bf9af3979a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('07288881-9732-58ed-b233-8141477ce0d7', 1), '507d9078ea10dae512ba1f472399196f3c9aaa87b5fbb1dc9aae7f778a260058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5.mp3', 1253, '2026-09-13 09:40:59.438070', '6a520000fe55b64656426971c977b9ef93246ba2cbb33f78479c7443f1f4ed24', 'validated', '{"audio_key":"88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5","entity_key":"lx_strategic_recommendations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a520000fe55b64656426971c977b9ef93246ba2cbb33f78479c7443f1f4ed24","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_recommendations_02 -> audio/generated/de-DE/lexical/88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7a530bd-6d5b-5443-8eb5-d2a1c2064330', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_recommendations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507d9078ea10dae512ba1f472399196f3c9aaa87b5fbb1dc9aae7f778a260058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44dcaec8-d628-53b9-9bf9-2ddacc0067d1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7a530bd-6d5b-5443-8eb5-d2a1c2064330', 1), '507d9078ea10dae512ba1f472399196f3c9aaa87b5fbb1dc9aae7f778a260058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5.mp3', 1253, '2026-09-13 09:40:59.438070', '6a520000fe55b64656426971c977b9ef93246ba2cbb33f78479c7443f1f4ed24', 'validated', '{"audio_key":"88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5","entity_key":"wf_strategic_recommendations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a520000fe55b64656426971c977b9ef93246ba2cbb33f78479c7443f1f4ed24","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88a96ed40c5727b3a34f42f34bb882562bfac7e32db865aa1d64f230d1f907d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_analysis_writing_05 -> audio/generated/de-DE/lexical/88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7b51f41c-71c0-57d6-8a5c-e66f3ea2dd32', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_analysis_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7edeb22ccfe2d5ed20ccd565486b59ada99be72922fe3b21140337afbb39411'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f5fced1-fbab-5c54-9ead-84d6216892eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7b51f41c-71c0-57d6-8a5c-e66f3ea2dd32', 1), 'c7edeb22ccfe2d5ed20ccd565486b59ada99be72922fe3b21140337afbb39411',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64.mp3', 1436, '2026-09-13 09:41:00.120068', 'b067161878bb665898c1e71abe0edc378da82b4a81252e50895144b41787bb9c', 'validated', '{"audio_key":"88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64","entity_key":"lx_formal_analysis_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b067161878bb665898c1e71abe0edc378da82b4a81252e50895144b41787bb9c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_analysis_writing_05 -> audio/generated/de-DE/lexical/88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('23f1b012-e3af-54d8-a2f0-c4741979b669', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_analysis_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7edeb22ccfe2d5ed20ccd565486b59ada99be72922fe3b21140337afbb39411'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1aec0dbc-93cc-5a7e-8472-d19eb3a9c2ae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('23f1b012-e3af-54d8-a2f0-c4741979b669', 1), 'c7edeb22ccfe2d5ed20ccd565486b59ada99be72922fe3b21140337afbb39411',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64.mp3', 1436, '2026-09-13 09:41:00.120068', 'b067161878bb665898c1e71abe0edc378da82b4a81252e50895144b41787bb9c', 'validated', '{"audio_key":"88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64","entity_key":"wf_formal_analysis_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b067161878bb665898c1e71abe0edc378da82b4a81252e50895144b41787bb9c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88b753f169c329f6ab42627abf554d9c01f96d29123d0c5dbc5048c32f886c64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_02 -> audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f247ea7e-15ca-5806-a0f2-c4842b470c34', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20f098fa-fe14-5d49-b881-9bf04a009257', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f247ea7e-15ca-5806-a0f2-c4842b470c34', 1), 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3', 1097, '2026-09-13 09:41:00.399946', '21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d', 'validated', '{"audio_key":"8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af","entity_key":"lx_multi_source_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_02 -> audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fdd9e3bc-bed1-5ab9-a0cb-9fb25babf39d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea421864-9000-5d65-97fb-ad77395712dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fdd9e3bc-bed1-5ab9-a0cb-9fb25babf39d', 1), 'db89e994ebe9572dd56b3a7d68ab59de6cb683fd7f57593ab88ede27c743cc40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3', 1097, '2026-09-13 09:41:00.399946', '21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d', 'validated', '{"audio_key":"8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af","entity_key":"wf_multi_source_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21df9177c5722de41fb54fc3301b5d73575401f786fa8dc749c1ecae8a3ac27d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c6ef58b8a139274dac8b6bc218e08d49bd287190acd016dec3a8b47f77e91af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_register_04 -> audio/generated/de-DE/lexical/978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b8a34b80-5800-5170-96a3-421a6b0714c0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_register_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ebfb90793b3628dc9b340bb137956d55822a8f364c679fd4dcb4a637c59b3b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ac518d5-6ff1-5ec5-bd09-9ad292781daf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b8a34b80-5800-5170-96a3-421a6b0714c0', 1), '5ebfb90793b3628dc9b340bb137956d55822a8f364c679fd4dcb4a637c59b3b8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191.mp3', 1253, '2026-09-13 09:41:01.088156', '793bc3492405dbe54b9a4193c6777810608ec2d34741ead9f6474a7f84d22a47', 'validated', '{"audio_key":"978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191","entity_key":"lx_implicit_meaning_register_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"793bc3492405dbe54b9a4193c6777810608ec2d34741ead9f6474a7f84d22a47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_register_04 -> audio/generated/de-DE/lexical/978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9acb4d2c-eabd-5e42-af80-56db959d9c03', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_register_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ebfb90793b3628dc9b340bb137956d55822a8f364c679fd4dcb4a637c59b3b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bee8369a-47be-53d2-a3fc-40466f16bd85', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9acb4d2c-eabd-5e42-af80-56db959d9c03', 1), '5ebfb90793b3628dc9b340bb137956d55822a8f364c679fd4dcb4a637c59b3b8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191.mp3', 1253, '2026-09-13 09:41:01.088156', '793bc3492405dbe54b9a4193c6777810608ec2d34741ead9f6474a7f84d22a47', 'validated', '{"audio_key":"978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191","entity_key":"wf_implicit_meaning_register_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"793bc3492405dbe54b9a4193c6777810608ec2d34741ead9f6474a7f84d22a47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/978f6e6a65debcda869b5936b6d4c0c8cb757632db7365fa17e289389dba8191.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_claims_hedging_02 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_claims_hedging_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9efd8281-5208-57b2-80a4-ebc8db8d83db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d363a37f-ec6f-5500-babc-ae43363efd39', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"lx_claims_hedging_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_claims_hedging_02 -> audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47e6c224-8e6b-5029-83a9-31f35566df26', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_claims_hedging_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7878923c-d237-5a3e-82e1-24c5b2db5d54', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47e6c224-8e6b-5029-83a9-31f35566df26', 1), '6d8031be54eabd97e4abc8c1887b20958682538f69bfec36e52d3273baa45758',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3', 1097, '2026-09-13 07:53:24.344034', '64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346', 'validated', '{"audio_key":"993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b","entity_key":"wf_claims_hedging_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64479fdaff8ad8245f8b62dc6802acd28050751a19324a0fc590a5839cd38346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/993ee8a2a4603c1880f63338c83777f39e5966138b87916dc3fb410083861e9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_register_03 -> audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9f0f7cc-4e7f-55e4-ae4c-2cab8d8ba915', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_register_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f1bc4f7-ba6e-575c-91e1-10c2514d8fe0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9f0f7cc-4e7f-55e4-ae4c-2cab8d8ba915', 1), '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3', 1201, '2026-09-13 09:41:01.368571', '7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05', 'validated', '{"audio_key":"9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27","entity_key":"lx_implicit_meaning_register_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_register_03 -> audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e4477a7b-f23a-50c8-96ed-058c292b1f5b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_register_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abcf921-e5d3-5714-9c25-10a4d8565560', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e4477a7b-f23a-50c8-96ed-058c292b1f5b', 1), '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3', 1201, '2026-09-13 09:41:01.368571', '7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05', 'validated', '{"audio_key":"9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27","entity_key":"wf_implicit_meaning_register_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_speech_attribution_02 -> audio/generated/de-DE/lexical/9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cd21f2e8-126e-5bd8-baac-4f4ac63a1b4f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_speech_attribution_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1da7a3b4eea2f86e3d8f5970042197338aa903ce46aeb349b27723bf7cc472d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2948793-247e-5d4b-8404-aa8cd6403358', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cd21f2e8-126e-5bd8-baac-4f4ac63a1b4f', 1), '1da7a3b4eea2f86e3d8f5970042197338aa903ce46aeb349b27723bf7cc472d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4.mp3', 1149, '2026-09-13 09:41:02.373307', 'a32cdce679d23c32d26a934b1b829f38f18e54312d4b2e1a8635514e335b5d6c', 'validated', '{"audio_key":"9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4","entity_key":"lx_reported_speech_attribution_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a32cdce679d23c32d26a934b1b829f38f18e54312d4b2e1a8635514e335b5d6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_speech_attribution_02 -> audio/generated/de-DE/lexical/9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c930c219-1555-5b24-b235-a7ae26cf23f5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_speech_attribution_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1da7a3b4eea2f86e3d8f5970042197338aa903ce46aeb349b27723bf7cc472d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e07d7818-a301-544b-b412-f55e1d24e1dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c930c219-1555-5b24-b235-a7ae26cf23f5', 1), '1da7a3b4eea2f86e3d8f5970042197338aa903ce46aeb349b27723bf7cc472d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4.mp3', 1149, '2026-09-13 09:41:02.373307', 'a32cdce679d23c32d26a934b1b829f38f18e54312d4b2e1a8635514e335b5d6c', 'validated', '{"audio_key":"9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4","entity_key":"wf_reported_speech_attribution_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a32cdce679d23c32d26a934b1b829f38f18e54312d4b2e1a8635514e335b5d6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9cabb6b58871f76616036983025d9757980d2bb939299e9556ca30b24cbbedd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_06 -> audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d0f40d5f-a6c9-5adc-a9b2-e9e7149b4daa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1e7f5cf-4e90-5a8d-91c4-966674150240', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d0f40d5f-a6c9-5adc-a9b2-e9e7149b4daa', 1), 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3', 1071, '2026-09-13 09:41:02.311806', 'd266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad', 'validated', '{"audio_key":"9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035","entity_key":"lx_multi_source_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_06 -> audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('08b19fc1-3664-5bbf-8523-a4887fde8382', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bf5ce10-9bc7-56f7-bb14-a590379c31d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('08b19fc1-3664-5bbf-8523-a4887fde8382', 1), 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3', 1071, '2026-09-13 09:41:02.311806', 'd266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad', 'validated', '{"audio_key":"9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035","entity_key":"wf_multi_source_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_claims_hedging_01 -> audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c7e159c7-052a-59c9-adcd-d6d5c887a584', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_claims_hedging_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3416bb46-218f-5f01-b8fd-0eee1b0bcd6b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c7e159c7-052a-59c9-adcd-d6d5c887a584', 1), 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3', 1201, '2026-09-13 09:41:03.252719', 'ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53', 'validated', '{"audio_key":"a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e","entity_key":"lx_claims_hedging_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_claims_hedging_01 -> audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a8c96e46-3f7b-50a4-87db-b47c6b34379d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_claims_hedging_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('baabeaad-dd9f-5fdc-9e16-543189964d69', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a8c96e46-3f7b-50a4-87db-b47c6b34379d', 1), 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3', 1201, '2026-09-13 09:41:03.252719', 'ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53', 'validated', '{"audio_key":"a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e","entity_key":"wf_claims_hedging_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_interpretation_01 -> audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('18d26662-8109-5c9a-a866-abc42d07fb06', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_interpretation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5663ecd3-8673-5288-96c3-97863e9fa771', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('18d26662-8109-5c9a-a866-abc42d07fb06', 1), '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3', 1384, '2026-09-13 09:41:03.346911', 'c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082', 'validated', '{"audio_key":"a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede","entity_key":"lx_policy_interpretation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_interpretation_01 -> audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ddcd308e-596d-5bc7-b411-9c4e7186b170', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_interpretation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0faaf98-93df-598e-9616-b18dd5dbf554', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ddcd308e-596d-5bc7-b411-9c4e7186b170', 1), '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3', 1384, '2026-09-13 09:41:03.346911', 'c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082', 'validated', '{"audio_key":"a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede","entity_key":"wf_policy_interpretation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_consensus_facilitation_02 -> audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d1478954-1ebe-5027-abc6-2a52deb4a595', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_consensus_facilitation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adfb9562-0f1d-5b80-9514-cb8f125c6535', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d1478954-1ebe-5027-abc6-2a52deb4a595', 1), 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3', 1280, '2026-09-13 09:41:04.252565', '7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3', 'validated', '{"audio_key":"a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd","entity_key":"lx_consensus_facilitation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_consensus_facilitation_02 -> audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b13992a6-d370-508d-89d4-aa4c4e49912b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_consensus_facilitation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12cb2c54-0620-588d-adc3-30f4db546e55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b13992a6-d370-508d-89d4-aa4c4e49912b', 1), 'c74cf3ff3705df576bebca3519e2fad616e85ce51ee8c07bcdd9163ec9aa8540',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3', 1280, '2026-09-13 09:41:04.252565', '7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3', 'validated', '{"audio_key":"a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd","entity_key":"wf_consensus_facilitation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b2e0195a75f6e72d52bc6507f12c56b64be113164f8bed52d74871322cdd4d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a54b22f9a353b1c17d4f0ebfcd67c3ad2930a189afe2b8f2a98519c58777f8dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_crisis_communication_06 -> audio/generated/de-DE/lexical/a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ff94549-ab8a-5061-98cc-221522d939ac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_crisis_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10e9f5602d2492b386b4dc750c3b0f9a5d2e55df2855637d7a485144177ab21a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56d4198d-32ae-5a43-b4d7-4ed7ed8d100c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ff94549-ab8a-5061-98cc-221522d939ac', 1), '10e9f5602d2492b386b4dc750c3b0f9a5d2e55df2855637d7a485144177ab21a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d.mp3', 1201, '2026-09-13 09:41:04.415911', '7290e64bdfa82cbedd370fbc49d3e0ac35a1c79f8522e6267c41f9ac6fb515dd', 'validated', '{"audio_key":"a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d","entity_key":"lx_crisis_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7290e64bdfa82cbedd370fbc49d3e0ac35a1c79f8522e6267c41f9ac6fb515dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_crisis_communication_06 -> audio/generated/de-DE/lexical/a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fe6e92c4-0332-5987-8eab-3ce2b9538e2c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_crisis_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10e9f5602d2492b386b4dc750c3b0f9a5d2e55df2855637d7a485144177ab21a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0619532-6e9d-5260-ad8b-bd014b5f2119', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fe6e92c4-0332-5987-8eab-3ce2b9538e2c', 1), '10e9f5602d2492b386b4dc750c3b0f9a5d2e55df2855637d7a485144177ab21a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d.mp3', 1201, '2026-09-13 09:41:04.415911', '7290e64bdfa82cbedd370fbc49d3e0ac35a1c79f8522e6267c41f9ac6fb515dd', 'validated', '{"audio_key":"a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d","entity_key":"wf_crisis_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7290e64bdfa82cbedd370fbc49d3e0ac35a1c79f8522e6267c41f9ac6fb515dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8104515ef2e645fea07c42d4c62f9ff3b1d5fdc3f853d2c2bb3e08b50fc9e6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_speech_attribution_04 -> audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('89d63ab9-72ad-54af-9a53-386f9dfb213c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_speech_attribution_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80a3dbd0-b1e0-581b-94ea-a5f26e620be9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('89d63ab9-72ad-54af-9a53-386f9dfb213c', 1), 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3', 1201, '2026-09-13 06:43:09.108581', 'a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f', 'validated', '{"audio_key":"b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3","entity_key":"lx_reported_speech_attribution_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_speech_attribution_04 -> audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85fb997c-e212-54c4-a832-8ba464609219', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_speech_attribution_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b1386e0-972b-51a4-9c10-7ebcb5bd213b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85fb997c-e212-54c4-a832-8ba464609219', 1), 'd6455ad7b4683548d59c7b3aac25706d7af454ae7812e829a42fdc8a6d6807a3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3', 1201, '2026-09-13 06:43:09.108581', 'a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f', 'validated', '{"audio_key":"b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3","entity_key":"wf_reported_speech_attribution_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2fb0b01fcdbe3ecd6b9cbd782e11929afc56052ccd65cae8cd625bc9a33d69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5488ce20e99282619c6f120b6d7e556598722a19d745db752b1be2ace83bda3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_speech_attribution_06 -> audio/generated/de-DE/lexical/ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('edbe69b2-ccb1-51f8-9c66-fd64e934962a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_speech_attribution_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15b7fc716a39e0c7e55a537299c44f7e85bcc634b91be26918911a52f2cfcae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f484330a-d0ee-5f41-b8b6-a0bfea8496ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('edbe69b2-ccb1-51f8-9c66-fd64e934962a', 1), '15b7fc716a39e0c7e55a537299c44f7e85bcc634b91be26918911a52f2cfcae7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2.mp3', 1097, '2026-09-13 09:41:05.330306', '934552f93646c1698368d20b24873e515a3dbe968ac33cbf5b15fe335393a5f8', 'validated', '{"audio_key":"ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2","entity_key":"lx_reported_speech_attribution_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934552f93646c1698368d20b24873e515a3dbe968ac33cbf5b15fe335393a5f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_speech_attribution_06 -> audio/generated/de-DE/lexical/ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48d20be0-7e71-52c8-9ee4-1fe5a7d467e0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_speech_attribution_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15b7fc716a39e0c7e55a537299c44f7e85bcc634b91be26918911a52f2cfcae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12f61a2f-7e4e-58db-9fd2-79aab82dbc9b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48d20be0-7e71-52c8-9ee4-1fe5a7d467e0', 1), '15b7fc716a39e0c7e55a537299c44f7e85bcc634b91be26918911a52f2cfcae7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2.mp3', 1097, '2026-09-13 09:41:05.330306', '934552f93646c1698368d20b24873e515a3dbe968ac33cbf5b15fe335393a5f8', 'validated', '{"audio_key":"ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2","entity_key":"wf_reported_speech_attribution_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"934552f93646c1698368d20b24873e515a3dbe968ac33cbf5b15fe335393a5f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba049d7b89362708f16407c895bfb3af4773e9eb0a360acdfdc04468c1014fb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_interpretation_02 -> audio/generated/de-DE/lexical/ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b20c4624-e042-578b-8159-e7132953fce3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_interpretation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e6f59771b76b8886bc094af8760810c86fe6feed31042a2eff405b516588bb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b77f4b5d-7c97-5494-b166-eb39ba69deb9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b20c4624-e042-578b-8159-e7132953fce3', 1), '5e6f59771b76b8886bc094af8760810c86fe6feed31042a2eff405b516588bb6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5.mp3', 1384, '2026-09-13 09:41:05.399023', '95b6e16bdd039bd9f38898f3cbc86093f483d0ae0671958dd08e2e49e855c578', 'validated', '{"audio_key":"ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5","entity_key":"lx_policy_interpretation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95b6e16bdd039bd9f38898f3cbc86093f483d0ae0671958dd08e2e49e855c578","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_interpretation_02 -> audio/generated/de-DE/lexical/ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5fee4cce-4718-53aa-9840-b7076794e09f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_interpretation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e6f59771b76b8886bc094af8760810c86fe6feed31042a2eff405b516588bb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50e2e415-b7fc-543d-8ad4-f2a3f670ab33', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5fee4cce-4718-53aa-9840-b7076794e09f', 1), '5e6f59771b76b8886bc094af8760810c86fe6feed31042a2eff405b516588bb6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5.mp3', 1384, '2026-09-13 09:41:05.399023', '95b6e16bdd039bd9f38898f3cbc86093f483d0ae0671958dd08e2e49e855c578', 'validated', '{"audio_key":"ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5","entity_key":"wf_policy_interpretation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95b6e16bdd039bd9f38898f3cbc86093f483d0ae0671958dd08e2e49e855c578","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba8425df62dfe5c678a2d41e90a10c296ec28b98d3ae847bf2f2d23b825e84e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_speech_attribution_05 -> audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('687e28d4-3bfa-541d-afed-d5d7d6695808', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_speech_attribution_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1a1fd9f-4616-56bb-92d7-452a891f169a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('687e28d4-3bfa-541d-afed-d5d7d6695808', 1), '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3', 1071, '2026-09-13 07:53:27.327333', 'cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5', 'validated', '{"audio_key":"be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8","entity_key":"lx_reported_speech_attribution_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_speech_attribution_05 -> audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80322772-35fb-5ceb-810a-41c2749922e8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_speech_attribution_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df302ed5-59cd-5210-89ce-4182434dd84e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80322772-35fb-5ceb-810a-41c2749922e8', 1), '06c3fe946b3528e507425ca2ce791958c9afc94c4d87b6d9473318c38fccc47f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3', 1071, '2026-09-13 07:53:27.327333', 'cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5', 'validated', '{"audio_key":"be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8","entity_key":"wf_reported_speech_attribution_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacc1499c63372d4b3a41d4789d0a01bff15401e0ff29e732683ae49e9c8cfc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/be33b469a4a783b2dba859405757d50a64e25b1c09c2db7781996c44af8211f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_04 -> audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b37fdb0f-c7c9-500b-95e4-287470a6d8bf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7755994d-8002-5f47-b69f-6355a9efc747', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b37fdb0f-c7c9-500b-95e4-287470a6d8bf', 1), '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3', 1097, '2026-09-13 09:41:06.499851', '544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4', 'validated', '{"audio_key":"c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c","entity_key":"lx_multi_source_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_04 -> audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c9bf264-298c-5f0e-bf83-9afb0558c432', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b3b30d6-82e5-58e9-a339-5c6b38ebf850', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c9bf264-298c-5f0e-bf83-9afb0558c432', 1), '638b2e0bb5ac1c64bb74a5eb39cbe13ace7b9341a65f8e9085b25925cd465d0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3', 1097, '2026-09-13 09:41:06.499851', '544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4', 'validated', '{"audio_key":"c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c","entity_key":"wf_multi_source_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"544966a7f90b286119689bb11741d334b426b5987c6a9223f19584917fe4d7a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7141d3675aa83ba3ed7b4909defc60af6db5d6fc077e2f1a9860b6bd06c826c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_crisis_communication_04 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_crisis_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a2ebf2-ace9-5fad-9a1f-2af88061d174', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"lx_crisis_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_crisis_communication_04 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('260e3912-bdec-5678-a4f7-7961403e6d15', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_crisis_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ca92142-8a08-54d9-9acc-f60ac79e5040', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('260e3912-bdec-5678-a4f7-7961403e6d15', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"wf_crisis_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_interpretation_04 -> audio/generated/de-DE/lexical/cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('98e76850-34f8-51bd-95ee-912dd240ee32', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_interpretation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '944846ab4cdf201559802ac7ba67ec78b59e414d4ea94b073e0ff887ef8ae91e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4416bd37-6cfd-5362-ad6b-bbb64c109f0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('98e76850-34f8-51bd-95ee-912dd240ee32', 1), '944846ab4cdf201559802ac7ba67ec78b59e414d4ea94b073e0ff887ef8ae91e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498.mp3', 1071, '2026-09-13 09:41:06.381112', '118427f53e4e5e4cee1a05e12c334df8e97170ef456b1385c2798678f480400e', 'validated', '{"audio_key":"cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498","entity_key":"lx_policy_interpretation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118427f53e4e5e4cee1a05e12c334df8e97170ef456b1385c2798678f480400e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_interpretation_04 -> audio/generated/de-DE/lexical/cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6bb13ed-88f7-5f72-b4f6-5f0b9970dc45', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_interpretation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '944846ab4cdf201559802ac7ba67ec78b59e414d4ea94b073e0ff887ef8ae91e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b0356bb-0bd9-5b20-9ac7-22cda57be811', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6bb13ed-88f7-5f72-b4f6-5f0b9970dc45', 1), '944846ab4cdf201559802ac7ba67ec78b59e414d4ea94b073e0ff887ef8ae91e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498.mp3', 1071, '2026-09-13 09:41:06.381112', '118427f53e4e5e4cee1a05e12c334df8e97170ef456b1385c2798678f480400e', 'validated', '{"audio_key":"cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498","entity_key":"wf_policy_interpretation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118427f53e4e5e4cee1a05e12c334df8e97170ef456b1385c2798678f480400e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cd48506f999eb14d3a89cff0cc2a8e239dade7e0851f65de4450edcc91dd6498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_crisis_communication_03 -> audio/generated/de-DE/lexical/ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('097d28e6-46a3-55ca-982a-076d5352f980', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_crisis_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66529b7757a102fec987e3e912bc2a1116442a5b40c92aa4725c34c170f56dcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9282691-02a4-5614-ae4c-c4bccc7ec7bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('097d28e6-46a3-55ca-982a-076d5352f980', 1), '66529b7757a102fec987e3e912bc2a1116442a5b40c92aa4725c34c170f56dcf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c.mp3', 1515, '2026-09-13 09:41:07.360353', 'df73205aff653b4179d99db45bde0cac36455b83b4405d515732ffdedb464de9', 'validated', '{"audio_key":"ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c","entity_key":"lx_crisis_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df73205aff653b4179d99db45bde0cac36455b83b4405d515732ffdedb464de9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_crisis_communication_03 -> audio/generated/de-DE/lexical/ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c7286cc3-4c43-5d9a-90f2-6fd48732e7e6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_crisis_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66529b7757a102fec987e3e912bc2a1116442a5b40c92aa4725c34c170f56dcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52506409-2581-5621-9bc3-3ed5c04e5752', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c7286cc3-4c43-5d9a-90f2-6fd48732e7e6', 1), '66529b7757a102fec987e3e912bc2a1116442a5b40c92aa4725c34c170f56dcf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c.mp3', 1515, '2026-09-13 09:41:07.360353', 'df73205aff653b4179d99db45bde0cac36455b83b4405d515732ffdedb464de9', 'validated', '{"audio_key":"ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c","entity_key":"wf_crisis_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df73205aff653b4179d99db45bde0cac36455b83b4405d515732ffdedb464de9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ce67a638ba1a93c1ba959bea570a4e4d08f6ca4156a60db24eaedc58b349896c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_consensus_facilitation_05 -> audio/generated/de-DE/lexical/d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5cfcc48b-26f4-5784-94dc-841854fbea6e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_consensus_facilitation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f120acdf5f752fdb51afa6958438caf00d634ae5b8620412c11ab6cb8d0ed687'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8d33df4-99ca-5bba-a344-c5738f958cac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5cfcc48b-26f4-5784-94dc-841854fbea6e', 1), 'f120acdf5f752fdb51afa6958438caf00d634ae5b8620412c11ab6cb8d0ed687',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e.mp3', 1149, '2026-09-13 09:41:07.470385', '987141e7985c7714ba7766502d84abbb87b0fd4fb9daa8fc217770a3bc77efc5', 'validated', '{"audio_key":"d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e","entity_key":"lx_consensus_facilitation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"987141e7985c7714ba7766502d84abbb87b0fd4fb9daa8fc217770a3bc77efc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_consensus_facilitation_05 -> audio/generated/de-DE/lexical/d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8885417e-0e38-5c8b-af8a-ad711f6c8666', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_consensus_facilitation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f120acdf5f752fdb51afa6958438caf00d634ae5b8620412c11ab6cb8d0ed687'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56c9a466-ac25-5eb3-ba5f-648287c783a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8885417e-0e38-5c8b-af8a-ad711f6c8666', 1), 'f120acdf5f752fdb51afa6958438caf00d634ae5b8620412c11ab6cb8d0ed687',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e.mp3', 1149, '2026-09-13 09:41:07.470385', '987141e7985c7714ba7766502d84abbb87b0fd4fb9daa8fc217770a3bc77efc5', 'validated', '{"audio_key":"d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e","entity_key":"wf_consensus_facilitation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"987141e7985c7714ba7766502d84abbb87b0fd4fb9daa8fc217770a3bc77efc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d40c27dd0cb9f45d399760dc3c36bc733a9dd5934b0e94f24ea12f6e77d2e78e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_analysis_writing_02 -> audio/generated/de-DE/lexical/dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('64ed23b9-b159-5569-bb7a-d922de94eed6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_analysis_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7a97cbee61a34cc420266ee8bef105992d2763163ae6cf82124c276c73a9fae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9036b032-5038-5b33-8356-1d308311c9ef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('64ed23b9-b159-5569-bb7a-d922de94eed6', 1), 'f7a97cbee61a34cc420266ee8bef105992d2763163ae6cf82124c276c73a9fae',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce.mp3', 1018, '2026-09-13 09:41:08.369608', 'b51327aa1ca559e397623c916ca01af3bf54977fc0014871370fe5ab91511d09', 'validated', '{"audio_key":"dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce","entity_key":"lx_formal_analysis_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51327aa1ca559e397623c916ca01af3bf54977fc0014871370fe5ab91511d09","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_analysis_writing_02 -> audio/generated/de-DE/lexical/dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69b2d217-1d45-5a37-ba81-e8ea4f7afb3f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_analysis_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7a97cbee61a34cc420266ee8bef105992d2763163ae6cf82124c276c73a9fae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2205664-e612-5d0e-926a-11baa5c035ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69b2d217-1d45-5a37-ba81-e8ea4f7afb3f', 1), 'f7a97cbee61a34cc420266ee8bef105992d2763163ae6cf82124c276c73a9fae',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce.mp3', 1018, '2026-09-13 09:41:08.369608', 'b51327aa1ca559e397623c916ca01af3bf54977fc0014871370fe5ab91511d09', 'validated', '{"audio_key":"dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce","entity_key":"wf_formal_analysis_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51327aa1ca559e397623c916ca01af3bf54977fc0014871370fe5ab91511d09","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dfd97a3907855fe7dd905d8e24693c57871249801cadfc47fc2ec230f63412ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_05 -> audio/generated/de-DE/lexical/e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5f1a6858-adcb-51d5-ac07-9a5f56815297', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '030b4e00a544f1e9bbf9f372df8d6d2f0ceeb28956915494379b8910bef11273'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5082fea-9b16-51fc-9553-93c227a39d27', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5f1a6858-adcb-51d5-ac07-9a5f56815297', 1), '030b4e00a544f1e9bbf9f372df8d6d2f0ceeb28956915494379b8910bef11273',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e.mp3', 1018, '2026-09-13 09:41:08.519185', 'b04fc79a162fcc2ef9a3338c4b6b18904eb86c0be06763ba1e52e52e0e038708', 'validated', '{"audio_key":"e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e","entity_key":"lx_multi_source_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b04fc79a162fcc2ef9a3338c4b6b18904eb86c0be06763ba1e52e52e0e038708","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_05 -> audio/generated/de-DE/lexical/e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e36241a0-04e5-5939-8abb-db6f9afc5b92', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '030b4e00a544f1e9bbf9f372df8d6d2f0ceeb28956915494379b8910bef11273'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4650bb67-b43d-579e-b3b6-05f43320f82f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e36241a0-04e5-5939-8abb-db6f9afc5b92', 1), '030b4e00a544f1e9bbf9f372df8d6d2f0ceeb28956915494379b8910bef11273',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e.mp3', 1018, '2026-09-13 09:41:08.519185', 'b04fc79a162fcc2ef9a3338c4b6b18904eb86c0be06763ba1e52e52e0e038708', 'validated', '{"audio_key":"e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e","entity_key":"wf_multi_source_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b04fc79a162fcc2ef9a3338c4b6b18904eb86c0be06763ba1e52e52e0e038708","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e0013b6d2e748af32552d3ea4dfc1f95ece5ce492fbcdb4be1218043e270d46e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_consensus_facilitation_01 -> audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('63466ced-45d1-597e-b4af-5129c2c8f9cc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_consensus_facilitation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9afeba3-34da-5e61-a5e4-3f7c6b20dcc4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('63466ced-45d1-597e-b4af-5129c2c8f9cc', 1), '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3', 1384, '2026-09-13 09:41:09.350877', 'f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8', 'validated', '{"audio_key":"e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991","entity_key":"lx_consensus_facilitation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_consensus_facilitation_01 -> audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99a306b7-addf-5f55-8791-62ec50102260', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_consensus_facilitation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83b371ba-2e6f-56db-91b9-64a70d397451', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99a306b7-addf-5f55-8791-62ec50102260', 1), '4695fbf93986a7b155eb99d2fa260202eb025c4d2baf658acd5ab99c2e271266',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3', 1384, '2026-09-13 09:41:09.350877', 'f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8', 'validated', '{"audio_key":"e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991","entity_key":"wf_consensus_facilitation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f63282763d6ab8c359aae7dea5efaa110f7ec896314e6bd5f974818de13745a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e446857299cae17f8940eb0dddfa6369ef4134a83619d86d720b4bb4d8563991.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_01 -> audio/generated/de-DE/lexical/e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ae94bab2-9358-507e-9f55-b669db134091', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af40f00df754398aab8654fce38e92e50dad7d599f40bd249ee4e70bf14f535c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfad21ca-8261-5f93-aae6-d13ba096d15d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ae94bab2-9358-507e-9f55-b669db134091', 1), 'af40f00df754398aab8654fce38e92e50dad7d599f40bd249ee4e70bf14f535c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156.mp3', 1384, '2026-09-13 09:41:09.525489', '26c82925ac1e3d051d59a026ce4b32ad2b108340aec6e892aa2afc0a9743955c', 'validated', '{"audio_key":"e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156","entity_key":"lx_multi_source_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26c82925ac1e3d051d59a026ce4b32ad2b108340aec6e892aa2afc0a9743955c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_01 -> audio/generated/de-DE/lexical/e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('319e055c-60cc-5593-a940-715068fed965', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af40f00df754398aab8654fce38e92e50dad7d599f40bd249ee4e70bf14f535c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3b44815-21a2-5792-a944-a0ef256953be', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('319e055c-60cc-5593-a940-715068fed965', 1), 'af40f00df754398aab8654fce38e92e50dad7d599f40bd249ee4e70bf14f535c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156.mp3', 1384, '2026-09-13 09:41:09.525489', '26c82925ac1e3d051d59a026ce4b32ad2b108340aec6e892aa2afc0a9743955c', 'validated', '{"audio_key":"e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156","entity_key":"wf_multi_source_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26c82925ac1e3d051d59a026ce4b32ad2b108340aec6e892aa2afc0a9743955c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e470f3b1ba614d99253231d41ade7c5405638ffc66dafc987184ab1cece93156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_consensus_facilitation_03 -> audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdbcafb2-a970-51e9-bae8-96cdf23ee903', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_consensus_facilitation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14d89a4c-e948-53bb-a801-74e56310e29b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdbcafb2-a970-51e9-bae8-96cdf23ee903', 1), 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3', 1149, '2026-09-13 09:41:10.306327', '75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4', 'validated', '{"audio_key":"e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df","entity_key":"lx_consensus_facilitation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_consensus_facilitation_03 -> audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0e840b1-a4ab-5464-91e1-861a4789685a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_consensus_facilitation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26132f0e-d9b9-5655-bf62-6a1beddc9b1b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0e840b1-a4ab-5464-91e1-861a4789685a', 1), 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3', 1149, '2026-09-13 09:41:10.306327', '75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4', 'validated', '{"audio_key":"e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df","entity_key":"wf_consensus_facilitation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_analysis_writing_06 -> audio/generated/de-DE/lexical/eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d9df161-92eb-5f3a-aa78-c0f1376de492', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_analysis_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15ceeb513edbfdd36fd79540d567efbc31998a10b96a7e41dfa44f950be117cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94c5ed2d-8bc2-5338-9909-4d73dd21ac89', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d9df161-92eb-5f3a-aa78-c0f1376de492', 1), '15ceeb513edbfdd36fd79540d567efbc31998a10b96a7e41dfa44f950be117cd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853.mp3', 1201, '2026-09-13 09:41:10.462545', '8743bb7b7c2699477aebcfb51a9c3c10e58321b38ef7cd59912003307a7439e0', 'validated', '{"audio_key":"eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853","entity_key":"lx_formal_analysis_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8743bb7b7c2699477aebcfb51a9c3c10e58321b38ef7cd59912003307a7439e0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_analysis_writing_06 -> audio/generated/de-DE/lexical/eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc7e64a0-447b-57fa-88ef-2af9eac83f59', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_analysis_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15ceeb513edbfdd36fd79540d567efbc31998a10b96a7e41dfa44f950be117cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('559d52a5-a570-5bcf-8d86-26df2a330382', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc7e64a0-447b-57fa-88ef-2af9eac83f59', 1), '15ceeb513edbfdd36fd79540d567efbc31998a10b96a7e41dfa44f950be117cd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853.mp3', 1201, '2026-09-13 09:41:10.462545', '8743bb7b7c2699477aebcfb51a9c3c10e58321b38ef7cd59912003307a7439e0', 'validated', '{"audio_key":"eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853","entity_key":"wf_formal_analysis_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8743bb7b7c2699477aebcfb51a9c3c10e58321b38ef7cd59912003307a7439e0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eea7222ee89c97ee073c2356b6719b545883950c2ad1323b17de25d6464c7853.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_strategic_recommendations_04 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_strategic_recommendations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e259af70-aad9-56f1-97e8-c5cc4d1579b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"lx_strategic_recommendations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_strategic_recommendations_04 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cca80dba-e90c-5c84-b4d9-6fd20a68b642', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_strategic_recommendations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b31d515-8467-5117-8cd7-905f4e7c5652', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cca80dba-e90c-5c84-b4d9-6fd20a68b642', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"wf_strategic_recommendations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_speech_attribution_03 -> audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('91235ea8-ac08-5a6b-941e-ba883c1d90c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_speech_attribution_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('999b4c91-ebe2-546b-8565-18080c14a4f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('91235ea8-ac08-5a6b-941e-ba883c1d90c6', 1), '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3', 1071, '2026-09-13 09:41:11.277574', '107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e', 'validated', '{"audio_key":"fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606","entity_key":"lx_reported_speech_attribution_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_speech_attribution_03 -> audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d04a5fd8-e767-531b-b729-9afb46cd24e8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_speech_attribution_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9a5f322-7112-5ebb-a2cd-600137f9f096', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d04a5fd8-e767-531b-b729-9afb46cd24e8', 1), '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3', 1071, '2026-09-13 09:41:11.277574', '107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e', 'validated', '{"audio_key":"fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606","entity_key":"wf_reported_speech_attribution_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_interpretation_01 -> audio/generated/de-DE/utterances/016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e55d7f9-cc25-5f1b-9bac-e386f95f7800', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_interpretation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b8ca43ac2af4ad7ad23355d3396c248d2a549e00bde0a555462e770555bcaee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03da822d-ee55-557a-b111-f9eb54806a22', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e55d7f9-cc25-5f1b-9bac-e386f95f7800', 1), '2b8ca43ac2af4ad7ad23355d3396c248d2a549e00bde0a555462e770555bcaee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891.mp3', 6269, '2026-09-13 09:41:11.979146', '587c756dff7ab99a6efb00dc2fe38dddda4e1d13fb5735d522811fdc2ae5271c', 'validated', '{"audio_key":"016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891","entity_key":"u_policy_interpretation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"587c756dff7ab99a6efb00dc2fe38dddda4e1d13fb5735d522811fdc2ae5271c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_policy_interpretation_01_listen -> audio/generated/de-DE/utterances/016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8b638f08-4322-54fd-855d-cfd41c8e9312', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_policy_interpretation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b8ca43ac2af4ad7ad23355d3396c248d2a549e00bde0a555462e770555bcaee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6132c6a-c196-59af-9780-4b091e31a952', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8b638f08-4322-54fd-855d-cfd41c8e9312', 1), '2b8ca43ac2af4ad7ad23355d3396c248d2a549e00bde0a555462e770555bcaee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891.mp3', 6269, '2026-09-13 09:41:11.979146', '587c756dff7ab99a6efb00dc2fe38dddda4e1d13fb5735d522811fdc2ae5271c', 'validated', '{"audio_key":"016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891","entity_key":"ex_policy_interpretation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"587c756dff7ab99a6efb00dc2fe38dddda4e1d13fb5735d522811fdc2ae5271c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/016b1291204ef5d539b9288a9a06f25c9953db1aaefa7707c7e911dfe65c2891.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_04 -> audio/generated/de-DE/utterances/083576e7bdaa1ddeb9b43e4c0fed5c0305e8df42d4345fcf5b814a5e70990fa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5d80e21b-0ad1-5062-82a3-430d6947c5bb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eef0b88a77257d86dc28530b8b36d63cb3fa3c1f9be3ce96fa00103032144b02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('168f217b-e3cc-5bbc-91ce-a299b698509b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5d80e21b-0ad1-5062-82a3-430d6947c5bb', 1), 'eef0b88a77257d86dc28530b8b36d63cb3fa3c1f9be3ce96fa00103032144b02',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/083576e7bdaa1ddeb9b43e4c0fed5c0305e8df42d4345fcf5b814a5e70990fa7.mp3', 6086, '2026-09-13 09:41:12.782707', 'a9b699db3a23a9bc3af408ab52ca8318745544ca974a0333dec6f15822c65a38', 'validated', '{"audio_key":"083576e7bdaa1ddeb9b43e4c0fed5c0305e8df42d4345fcf5b814a5e70990fa7","entity_key":"u_multi_source_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9b699db3a23a9bc3af408ab52ca8318745544ca974a0333dec6f15822c65a38","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/083576e7bdaa1ddeb9b43e4c0fed5c0305e8df42d4345fcf5b814a5e70990fa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_crisis_communication_06 -> audio/generated/de-DE/utterances/0992342f8ca5f1a1eae0949a4a50dc0b18e7bfa05d64df9f70dc84f27b5e635d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d0a080b-ae62-5928-9276-c4457c530279', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_crisis_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11665cba2694f74c0f5807abdffa943b3e93d750918d96b600f9ab3aeb3313b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9594c2ef-24f3-5aeb-aa30-55e118d30fe8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d0a080b-ae62-5928-9276-c4457c530279', 1), '11665cba2694f74c0f5807abdffa943b3e93d750918d96b600f9ab3aeb3313b3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0992342f8ca5f1a1eae0949a4a50dc0b18e7bfa05d64df9f70dc84f27b5e635d.mp3', 8071, '2026-09-13 09:41:13.804642', 'e67cccfe0bf3e41bdc09b9ecba1d4eac61869dd27c0838b92cb1b48eb58d0ee1', 'validated', '{"audio_key":"0992342f8ca5f1a1eae0949a4a50dc0b18e7bfa05d64df9f70dc84f27b5e635d","entity_key":"u_crisis_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e67cccfe0bf3e41bdc09b9ecba1d4eac61869dd27c0838b92cb1b48eb58d0ee1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0992342f8ca5f1a1eae0949a4a50dc0b18e7bfa05d64df9f70dc84f27b5e635d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_speech_attribution_01 -> audio/generated/de-DE/utterances/0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('57b4c7f4-5da5-5726-9c4a-a79182c53d1e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_speech_attribution_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85803327ba1090c37898ebd2d519b75d80e19d4dbb043e9f0731842581cce6b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac51a5b5-4259-583a-bca6-342ca26b6bc3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('57b4c7f4-5da5-5726-9c4a-a79182c53d1e', 1), '85803327ba1090c37898ebd2d519b75d80e19d4dbb043e9f0731842581cce6b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a.mp3', 5433, '2026-09-13 09:41:14.214467', '9c762fe56a2fedd73f728bf9ef1c5ddae3f1b7b69cfb614f337ba84e5b23f3d2', 'validated', '{"audio_key":"0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a","entity_key":"u_reported_speech_attribution_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c762fe56a2fedd73f728bf9ef1c5ddae3f1b7b69cfb614f337ba84e5b23f3d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_reported_speech_attribution_01_listen -> audio/generated/de-DE/utterances/0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('45bfbef3-3ee5-5126-9ce8-d02dfe7b0961', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_reported_speech_attribution_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85803327ba1090c37898ebd2d519b75d80e19d4dbb043e9f0731842581cce6b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7e31480-b24d-573b-a885-0ede6b3b11ca', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('45bfbef3-3ee5-5126-9ce8-d02dfe7b0961', 1), '85803327ba1090c37898ebd2d519b75d80e19d4dbb043e9f0731842581cce6b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a.mp3', 5433, '2026-09-13 09:41:14.214467', '9c762fe56a2fedd73f728bf9ef1c5ddae3f1b7b69cfb614f337ba84e5b23f3d2', 'validated', '{"audio_key":"0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a","entity_key":"ex_reported_speech_attribution_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c762fe56a2fedd73f728bf9ef1c5ddae3f1b7b69cfb614f337ba84e5b23f3d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0b01a21727ac317b595073afebc396fc9f4e218db2e41b0a9b6df2a1609b546a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_recommendations_02 -> audio/generated/de-DE/utterances/0d7a40c9dad36508b387a9e33b0b1dbf980812134f0de5c0012f1d334b326544.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('95ee0cdb-3422-5da5-a3bc-d3d6282b46a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_recommendations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4e4a39e1a0878be28171c865621e587bc47f5df28affe675242ceaa159bfc08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38657057-aa90-5dd2-9e59-46117282e2b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('95ee0cdb-3422-5da5-a3bc-d3d6282b46a5', 1), 'c4e4a39e1a0878be28171c865621e587bc47f5df28affe675242ceaa159bfc08',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0d7a40c9dad36508b387a9e33b0b1dbf980812134f0de5c0012f1d334b326544.mp3', 6635, '2026-09-13 09:41:15.425348', '71d97ef264b83ecab9163f62ad7e84b31049742f034d72dc1db8ad45ec8ca4a4', 'validated', '{"audio_key":"0d7a40c9dad36508b387a9e33b0b1dbf980812134f0de5c0012f1d334b326544","entity_key":"u_strategic_recommendations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"71d97ef264b83ecab9163f62ad7e84b31049742f034d72dc1db8ad45ec8ca4a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0d7a40c9dad36508b387a9e33b0b1dbf980812134f0de5c0012f1d334b326544.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_consensus_facilitation_06 -> audio/generated/de-DE/utterances/11eebe825fe63d7b3964b18dfe8566fa6693f3736c0a5b24fd4cef6b4839c187.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ddc9e428-522c-59ef-83ea-12fd40b8ccf3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_consensus_facilitation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0ff11edcc6259e4d8ba94c79478f3cb97b4626311ca05176d4e8a9381618681'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7245cf95-f2ab-52a5-8fee-d91d192a5ec5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ddc9e428-522c-59ef-83ea-12fd40b8ccf3', 1), 'a0ff11edcc6259e4d8ba94c79478f3cb97b4626311ca05176d4e8a9381618681',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11eebe825fe63d7b3964b18dfe8566fa6693f3736c0a5b24fd4cef6b4839c187.mp3', 8359, '2026-09-13 09:41:16.107511', '559f7436656d92a88df274cc9d418a365b90be37e79fe0e20a2de3b63adc6e48', 'validated', '{"audio_key":"11eebe825fe63d7b3964b18dfe8566fa6693f3736c0a5b24fd4cef6b4839c187","entity_key":"u_consensus_facilitation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"559f7436656d92a88df274cc9d418a365b90be37e79fe0e20a2de3b63adc6e48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11eebe825fe63d7b3964b18dfe8566fa6693f3736c0a5b24fd4cef6b4839c187.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_briefing_capstone_03 -> audio/generated/de-DE/utterances/1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('845cce16-cdab-5e1f-8075-cf5d2b43ea79', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c3f4a2c52441d6957b7314dc2c8929bd98889f4847e160234ac63b9c0e7b02c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c52c0043-8f4b-5096-9535-517f8d85c546', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('845cce16-cdab-5e1f-8075-cf5d2b43ea79', 1), '2c3f4a2c52441d6957b7314dc2c8929bd98889f4847e160234ac63b9c0e7b02c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7.mp3', 6530, '2026-09-13 09:41:17.030790', '55da8b3d4938bb0e00635469643e91d5439b04dcc7a009fe8058fff0dfdc116d', 'validated', '{"audio_key":"1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7","entity_key":"u_evidence_briefing_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55da8b3d4938bb0e00635469643e91d5439b04dcc7a009fe8058fff0dfdc116d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidence_briefing_capstone_02_listen -> audio/generated/de-DE/utterances/1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f28c0cf8-fbb3-5694-8563-cef755577cd8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidence_briefing_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c3f4a2c52441d6957b7314dc2c8929bd98889f4847e160234ac63b9c0e7b02c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69e35876-0134-5a4d-b985-bb2c01316e73', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f28c0cf8-fbb3-5694-8563-cef755577cd8', 1), '2c3f4a2c52441d6957b7314dc2c8929bd98889f4847e160234ac63b9c0e7b02c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7.mp3', 6530, '2026-09-13 09:41:17.030790', '55da8b3d4938bb0e00635469643e91d5439b04dcc7a009fe8058fff0dfdc116d', 'validated', '{"audio_key":"1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7","entity_key":"ex_evidence_briefing_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55da8b3d4938bb0e00635469643e91d5439b04dcc7a009fe8058fff0dfdc116d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a1d27fe3faadf87231a06dedfb691b87fcb8a5a9fa79f1d7d2233a16b4796e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_claims_hedging_03 -> audio/generated/de-DE/utterances/21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('997a27dc-cdf4-5443-a543-cb4dd1d447c9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_claims_hedging_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '108d09e5b17f1f6b2a18c0a5d9fc25a36c42ab9567d1c59ad006fba330e7939e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('140cf02c-96aa-5b7d-a473-5a5a799485e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('997a27dc-cdf4-5443-a543-cb4dd1d447c9', 1), '108d09e5b17f1f6b2a18c0a5d9fc25a36c42ab9567d1c59ad006fba330e7939e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b.mp3', 5746, '2026-09-13 09:41:17.580473', 'f83cc333d0a8afa95b08fe6541049fc8c3295f8430ec61d0c6707a185b77cf47', 'validated', '{"audio_key":"21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b","entity_key":"u_claims_hedging_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f83cc333d0a8afa95b08fe6541049fc8c3295f8430ec61d0c6707a185b77cf47","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_claims_hedging_02_listen -> audio/generated/de-DE/utterances/21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d212462d-89c9-5b12-81fb-93dc1faee74b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_claims_hedging_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '108d09e5b17f1f6b2a18c0a5d9fc25a36c42ab9567d1c59ad006fba330e7939e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bc69dbc-549b-58aa-a074-81ac2e8f0331', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d212462d-89c9-5b12-81fb-93dc1faee74b', 1), '108d09e5b17f1f6b2a18c0a5d9fc25a36c42ab9567d1c59ad006fba330e7939e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b.mp3', 5746, '2026-09-13 09:41:17.580473', 'f83cc333d0a8afa95b08fe6541049fc8c3295f8430ec61d0c6707a185b77cf47', 'validated', '{"audio_key":"21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b","entity_key":"ex_claims_hedging_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f83cc333d0a8afa95b08fe6541049fc8c3295f8430ec61d0c6707a185b77cf47","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/21d77e1e72f05a72b28fb6d8eda099222ef987a0e9984dd6a35b3f0329625a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_interpretation_02 -> audio/generated/de-DE/utterances/2534b89606d5c2d3bc6d72689be43c416b5af91e89fca4d2501a2020d23b08dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bcacec96-db5e-517f-9afc-afe211278a11', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_interpretation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b71848898aed151ebced4a284d1a07c83a6a03d8e2e0a17f5a48abd6cda6a4fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1db4c7b-befa-5d7c-ab0c-ea1cbde0edc0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bcacec96-db5e-517f-9afc-afe211278a11', 1), 'b71848898aed151ebced4a284d1a07c83a6a03d8e2e0a17f5a48abd6cda6a4fd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2534b89606d5c2d3bc6d72689be43c416b5af91e89fca4d2501a2020d23b08dd.mp3', 5616, '2026-09-13 09:41:18.518781', '09e30be7f49d4d4da17bbc1913624041894702f7a0fafde102151dca9f732599', 'validated', '{"audio_key":"2534b89606d5c2d3bc6d72689be43c416b5af91e89fca4d2501a2020d23b08dd","entity_key":"u_policy_interpretation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09e30be7f49d4d4da17bbc1913624041894702f7a0fafde102151dca9f732599","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2534b89606d5c2d3bc6d72689be43c416b5af91e89fca4d2501a2020d23b08dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_06 -> audio/generated/de-DE/utterances/297b741db3841038f4c36bddf44e386a7c5de3caf28495875dabfd0dba47ccd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d39aa29-83ef-5abd-9fcb-7c7b26a54d56', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5960b163a4b98a4f2fdb63ebe9b6ae5d5bb4a90bf8ab75787b4a071c76fd04df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a13d64fe-83fb-58d4-ac64-e3ebbd5ebd2c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d39aa29-83ef-5abd-9fcb-7c7b26a54d56', 1), '5960b163a4b98a4f2fdb63ebe9b6ae5d5bb4a90bf8ab75787b4a071c76fd04df',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/297b741db3841038f4c36bddf44e386a7c5de3caf28495875dabfd0dba47ccd0.mp3', 6948, '2026-09-13 09:41:19.269015', '8079b18236cada03e04326b32742399fc18924c3488179d940379233df1586fb', 'validated', '{"audio_key":"297b741db3841038f4c36bddf44e386a7c5de3caf28495875dabfd0dba47ccd0","entity_key":"u_multi_source_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8079b18236cada03e04326b32742399fc18924c3488179d940379233df1586fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/297b741db3841038f4c36bddf44e386a7c5de3caf28495875dabfd0dba47ccd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_recommendations_01 -> audio/generated/de-DE/utterances/2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('12222734-ea3c-59f8-b790-2b0ef4785c32', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_recommendations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cc7c4932801664d3d09945c63f8dab1d9d7316859baab0062c9b571970ae8da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12fa6606-2398-5113-89b8-d8682b6af7e5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('12222734-ea3c-59f8-b790-2b0ef4785c32', 1), '6cc7c4932801664d3d09945c63f8dab1d9d7316859baab0062c9b571970ae8da',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6.mp3', 7523, '2026-09-13 09:41:20.214067', '2b2ebd2b0b3b216329270b28edc8c9596343e55726ce46a6807d9c2490ee4550', 'validated', '{"audio_key":"2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6","entity_key":"u_strategic_recommendations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b2ebd2b0b3b216329270b28edc8c9596343e55726ce46a6807d9c2490ee4550","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_strategic_recommendations_01_listen -> audio/generated/de-DE/utterances/2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('55e0051c-e763-5892-b8f8-077c67a3c4c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_strategic_recommendations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cc7c4932801664d3d09945c63f8dab1d9d7316859baab0062c9b571970ae8da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4309c8bf-ac58-5c7b-8895-c3b1b0cef175', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('55e0051c-e763-5892-b8f8-077c67a3c4c7', 1), '6cc7c4932801664d3d09945c63f8dab1d9d7316859baab0062c9b571970ae8da',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6.mp3', 7523, '2026-09-13 09:41:20.214067', '2b2ebd2b0b3b216329270b28edc8c9596343e55726ce46a6807d9c2490ee4550', 'validated', '{"audio_key":"2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6","entity_key":"ex_strategic_recommendations_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b2ebd2b0b3b216329270b28edc8c9596343e55726ce46a6807d9c2490ee4550","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2d91ffc0da0d78d66aa95df2abee231eaa9a600874c290660665d9ec4d3417a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_speech_attribution_03 -> audio/generated/de-DE/utterances/481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c0995bc-2b88-5106-b657-e3ae0e853f6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_speech_attribution_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c3991615427752c1831faa05fe4fc96592f5b8c4735a7b74666c9678b4c5253'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20018fb0-44b0-58d8-a947-3946df709657', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c0995bc-2b88-5106-b657-e3ae0e853f6a', 1), '9c3991615427752c1831faa05fe4fc96592f5b8c4735a7b74666c9678b4c5253',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006.mp3', 6870, '2026-09-13 09:41:20.885741', '1b8a13467cae71a79c9427d2052eff238fd194215842993e64292b036216496b', 'validated', '{"audio_key":"481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006","entity_key":"u_reported_speech_attribution_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b8a13467cae71a79c9427d2052eff238fd194215842993e64292b036216496b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_reported_speech_attribution_02_listen -> audio/generated/de-DE/utterances/481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68de5a1d-65dd-55ce-be6a-d7daa2a461c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_reported_speech_attribution_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c3991615427752c1831faa05fe4fc96592f5b8c4735a7b74666c9678b4c5253'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70946b44-afb6-5c89-adb5-d8d8c62b5e4c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68de5a1d-65dd-55ce-be6a-d7daa2a461c7', 1), '9c3991615427752c1831faa05fe4fc96592f5b8c4735a7b74666c9678b4c5253',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006.mp3', 6870, '2026-09-13 09:41:20.885741', '1b8a13467cae71a79c9427d2052eff238fd194215842993e64292b036216496b', 'validated', '{"audio_key":"481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006","entity_key":"ex_reported_speech_attribution_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b8a13467cae71a79c9427d2052eff238fd194215842993e64292b036216496b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/481f6f7972d9a3a361bbb59a0a76154cdbd020053a23e7609d8c92c41af20006.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_02 -> audio/generated/de-DE/utterances/49e6d6351b06bf23437d566576eb4c88b81e954129c5300243e22dcaf7068c24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('30c9e200-fc07-530f-a51c-ceea1a372138', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f72628e7cfc834250bfd6549d24be1adec9ad3ea070d7f9f9bb915286e958c0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff88a8c2-904b-55e4-b553-3446274b2367', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('30c9e200-fc07-530f-a51c-ceea1a372138', 1), 'f72628e7cfc834250bfd6549d24be1adec9ad3ea070d7f9f9bb915286e958c0f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/49e6d6351b06bf23437d566576eb4c88b81e954129c5300243e22dcaf7068c24.mp3', 6817, '2026-09-13 09:41:21.945353', '137f94152fe51ecb9f343f14ff0084d4646e6d43f08dced6c0bae66146d03a57', 'validated', '{"audio_key":"49e6d6351b06bf23437d566576eb4c88b81e954129c5300243e22dcaf7068c24","entity_key":"u_multi_source_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"137f94152fe51ecb9f343f14ff0084d4646e6d43f08dced6c0bae66146d03a57","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/49e6d6351b06bf23437d566576eb4c88b81e954129c5300243e22dcaf7068c24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_interpretation_06 -> audio/generated/de-DE/utterances/4a4db68098354a91dbe8accc8112f4d7c2449ff4f718213d6ad2d1aa0f14511b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('010d3d30-eaf4-50a7-96fa-28583375b50d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_interpretation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8eddfb53e04cf93ffb5487f92e8fce0d63fa80c49ce07cc3a4d069874d882812'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6d35554-1f42-5bd1-b99e-0bae56866e0a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('010d3d30-eaf4-50a7-96fa-28583375b50d', 1), '8eddfb53e04cf93ffb5487f92e8fce0d63fa80c49ce07cc3a4d069874d882812',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a4db68098354a91dbe8accc8112f4d7c2449ff4f718213d6ad2d1aa0f14511b.mp3', 5511, '2026-09-13 09:41:22.345460', '2f1362f666c84f506cc728fb052f8fa2ef5f681ce0c65156baa67d709c76c5c9', 'validated', '{"audio_key":"4a4db68098354a91dbe8accc8112f4d7c2449ff4f718213d6ad2d1aa0f14511b","entity_key":"u_policy_interpretation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f1362f666c84f506cc728fb052f8fa2ef5f681ce0c65156baa67d709c76c5c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a4db68098354a91dbe8accc8112f4d7c2449ff4f718213d6ad2d1aa0f14511b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_03 -> audio/generated/de-DE/utterances/4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2932e8e8-e667-5d7a-b695-7c4548e24eea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bb9261bf4bca07dfcbd12f14704de9193fba7348a00440e9292acab45b242e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9a85fc2-49d9-5393-8f5e-3fa2fd8e08b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2932e8e8-e667-5d7a-b695-7c4548e24eea', 1), '9bb9261bf4bca07dfcbd12f14704de9193fba7348a00440e9292acab45b242e5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e.mp3', 5982, '2026-09-13 09:41:23.489382', '344c66c619a336f63fb9b9c60377197926be78c6403b0816b6df002c6b758895', 'validated', '{"audio_key":"4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e","entity_key":"u_multi_source_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"344c66c619a336f63fb9b9c60377197926be78c6403b0816b6df002c6b758895","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_multi_source_synthesis_02_listen -> audio/generated/de-DE/utterances/4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('58e2f2f2-3d57-5791-a6ce-a07541868b19', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_multi_source_synthesis_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bb9261bf4bca07dfcbd12f14704de9193fba7348a00440e9292acab45b242e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f795158-d2c5-53b3-965c-5bac2f13d48a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('58e2f2f2-3d57-5791-a6ce-a07541868b19', 1), '9bb9261bf4bca07dfcbd12f14704de9193fba7348a00440e9292acab45b242e5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e.mp3', 5982, '2026-09-13 09:41:23.489382', '344c66c619a336f63fb9b9c60377197926be78c6403b0816b6df002c6b758895', 'validated', '{"audio_key":"4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e","entity_key":"ex_multi_source_synthesis_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"344c66c619a336f63fb9b9c60377197926be78c6403b0816b6df002c6b758895","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4c13b9bc6448b08aaf513dcd8a0263e8dc1452fd9117a4710f9b57d81469133e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_speech_attribution_04 -> audio/generated/de-DE/utterances/4c6e11c7aed4f6fd0d3a45da2c7f14b8a3af0cf8134d9d55a8d4c28fa2dd3852.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('10dd801a-291f-5012-b059-d2f3d468b7c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_speech_attribution_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8593924466dae7634b99ec6712040fa69467e031f2a2c9eb97aa1a284f06e6f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5d05667-5232-5ed0-9c8f-c3cbf5ca4e64', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('10dd801a-291f-5012-b059-d2f3d468b7c7', 1), '8593924466dae7634b99ec6712040fa69467e031f2a2c9eb97aa1a284f06e6f9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4c6e11c7aed4f6fd0d3a45da2c7f14b8a3af0cf8134d9d55a8d4c28fa2dd3852.mp3', 6347, '2026-09-13 09:41:23.888133', '8d81a3d0c42c2a7961097ab2463386fb6009f3dcaaf37e88df016b058bebeb8b', 'validated', '{"audio_key":"4c6e11c7aed4f6fd0d3a45da2c7f14b8a3af0cf8134d9d55a8d4c28fa2dd3852","entity_key":"u_reported_speech_attribution_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d81a3d0c42c2a7961097ab2463386fb6009f3dcaaf37e88df016b058bebeb8b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4c6e11c7aed4f6fd0d3a45da2c7f14b8a3af0cf8134d9d55a8d4c28fa2dd3852.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_analysis_writing_06 -> audio/generated/de-DE/utterances/4d1c2d4b5f75d24b07593db03f75da698cdd5452473344ec5ecbfe6a759f2ca0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b020b903-ae10-5d0e-8322-291c9d9068a6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_analysis_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22df8d1639c57df68fb5de7a876492bf9841afc1337be829ca05845a0a5452ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('993b617b-be09-5a9f-87e2-ed89ae372151', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b020b903-ae10-5d0e-8322-291c9d9068a6', 1), '22df8d1639c57df68fb5de7a876492bf9841afc1337be829ca05845a0a5452ec',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4d1c2d4b5f75d24b07593db03f75da698cdd5452473344ec5ecbfe6a759f2ca0.mp3', 5459, '2026-09-13 09:41:24.942513', 'b4591ae399674aa85f66667b4043eafbec52bc3e562c59546ae7d4c440f94d81', 'validated', '{"audio_key":"4d1c2d4b5f75d24b07593db03f75da698cdd5452473344ec5ecbfe6a759f2ca0","entity_key":"u_formal_analysis_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4591ae399674aa85f66667b4043eafbec52bc3e562c59546ae7d4c440f94d81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4d1c2d4b5f75d24b07593db03f75da698cdd5452473344ec5ecbfe6a759f2ca0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_analysis_writing_04 -> audio/generated/de-DE/utterances/4ee911154f540e45f11f3200ee34291a5bc41bdcf95dfea33d89a2df2de3ff7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b091144c-1391-512d-9f06-980061d87842', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_analysis_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0fbdc0efcb52ab53ae1064ddcbc382f6e235982da292c9066cec59cdac43ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20dd7820-292b-5bc6-bfb8-b1631b35cb27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b091144c-1391-512d-9f06-980061d87842', 1), 'ff0fbdc0efcb52ab53ae1064ddcbc382f6e235982da292c9066cec59cdac43ba',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ee911154f540e45f11f3200ee34291a5bc41bdcf95dfea33d89a2df2de3ff7e.mp3', 7053, '2026-09-13 09:41:25.596452', '744f627f6f1db8a0702d2a976c6d89d1ed6c2ca52ed9d0aed7e3a92e66e565bf', 'validated', '{"audio_key":"4ee911154f540e45f11f3200ee34291a5bc41bdcf95dfea33d89a2df2de3ff7e","entity_key":"u_formal_analysis_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"744f627f6f1db8a0702d2a976c6d89d1ed6c2ca52ed9d0aed7e3a92e66e565bf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ee911154f540e45f11f3200ee34291a5bc41bdcf95dfea33d89a2df2de3ff7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_claims_hedging_04 -> audio/generated/de-DE/utterances/4ef25a7fc099ce45445b7b8b764c9ff2e5c41387645fac2feb41dda5cb663a7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8f28dafc-f834-59e7-bbec-a183bd0a56a9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_claims_hedging_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e1d9d1a4365a2dabb29cb83f80c1240d82737891349be3b07ed524dc000e637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d336c78-ee68-5244-b80c-6f3134d697e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8f28dafc-f834-59e7-bbec-a183bd0a56a9', 1), '8e1d9d1a4365a2dabb29cb83f80c1240d82737891349be3b07ed524dc000e637',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ef25a7fc099ce45445b7b8b764c9ff2e5c41387645fac2feb41dda5cb663a7f.mp3', 5929, '2026-09-13 09:41:26.494991', 'e1622c073febd28abfe2745ca0a3725bbd5cc8eb4ca905e4cfa9346ac91951ef', 'validated', '{"audio_key":"4ef25a7fc099ce45445b7b8b764c9ff2e5c41387645fac2feb41dda5cb663a7f","entity_key":"u_claims_hedging_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1622c073febd28abfe2745ca0a3725bbd5cc8eb4ca905e4cfa9346ac91951ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ef25a7fc099ce45445b7b8b764c9ff2e5c41387645fac2feb41dda5cb663a7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_interpretation_05 -> audio/generated/de-DE/utterances/536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ec1746f-98fd-5592-bbcd-5be59a8c9654', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_interpretation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5af5e20fd491318a08fe20e5daae5b2bdff52bafe70b589601102591492ed91d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5781d507-7a3c-5dd6-8a2f-7727b1629340', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ec1746f-98fd-5592-bbcd-5be59a8c9654', 1), '5af5e20fd491318a08fe20e5daae5b2bdff52bafe70b589601102591492ed91d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064.mp3', 5015, '2026-09-13 09:41:27.082364', '1f8916bc25376664bc6ae8902c386932cd235234079291dd840dd044a1884f1c', 'validated', '{"audio_key":"536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064","entity_key":"u_policy_interpretation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f8916bc25376664bc6ae8902c386932cd235234079291dd840dd044a1884f1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_policy_interpretation_03_listen -> audio/generated/de-DE/utterances/536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1d941383-6adf-5ab9-aca7-4955f715f4fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_policy_interpretation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5af5e20fd491318a08fe20e5daae5b2bdff52bafe70b589601102591492ed91d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c38f7ee-6b9f-5206-be68-8536ee3ab251', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1d941383-6adf-5ab9-aca7-4955f715f4fd', 1), '5af5e20fd491318a08fe20e5daae5b2bdff52bafe70b589601102591492ed91d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064.mp3', 5015, '2026-09-13 09:41:27.082364', '1f8916bc25376664bc6ae8902c386932cd235234079291dd840dd044a1884f1c', 'validated', '{"audio_key":"536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064","entity_key":"ex_policy_interpretation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f8916bc25376664bc6ae8902c386932cd235234079291dd840dd044a1884f1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/536029a020cfe15bfd3574e84ea5dfb9b0bcd60ff94b4aeae5583b805b30f064.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_crisis_communication_03 -> audio/generated/de-DE/utterances/5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c784b52-d013-5f6b-88fe-b3c28ac5cfaf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_crisis_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b0bc2113838552236e67792012e03d1e7ae33c94cde929e02a9b502bbb2c43d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b26d3f76-adce-52dc-a867-f3e0bcb2d55e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c784b52-d013-5f6b-88fe-b3c28ac5cfaf', 1), '9b0bc2113838552236e67792012e03d1e7ae33c94cde929e02a9b502bbb2c43d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e.mp3', 7340, '2026-09-13 09:41:28.153117', 'dd38aeb84fee726fc8df539f6b80a14b3ce5d3ff4c2c28087935d6e70d367bba', 'validated', '{"audio_key":"5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e","entity_key":"u_crisis_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd38aeb84fee726fc8df539f6b80a14b3ce5d3ff4c2c28087935d6e70d367bba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_crisis_communication_02_listen -> audio/generated/de-DE/utterances/5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('db5bbb4e-45b8-5c46-b5c9-58932d5ec436', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_crisis_communication_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b0bc2113838552236e67792012e03d1e7ae33c94cde929e02a9b502bbb2c43d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c1acc69-b556-5be0-9a0e-91152006ef31', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('db5bbb4e-45b8-5c46-b5c9-58932d5ec436', 1), '9b0bc2113838552236e67792012e03d1e7ae33c94cde929e02a9b502bbb2c43d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e.mp3', 7340, '2026-09-13 09:41:28.153117', 'dd38aeb84fee726fc8df539f6b80a14b3ce5d3ff4c2c28087935d6e70d367bba', 'validated', '{"audio_key":"5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e","entity_key":"ex_crisis_communication_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd38aeb84fee726fc8df539f6b80a14b3ce5d3ff4c2c28087935d6e70d367bba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5a1efd5209e54c1ea2d1abb6eb1b1bd0099d2eb6f0704c27af6adf43bc04ed9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_briefing_capstone_04 -> audio/generated/de-DE/utterances/5c7d5948abc67fd42acb03fdfcffc94f23540192f3490dc23b4073e35e028a59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c70c2e4c-f96e-5a81-9a2d-632c9e664521', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b9aa74b3d0f3fe92ebe797ef4d654713ffd80da428ffd15c8329d3c2d8e8708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a323d150-04ca-5b2d-bd34-2fbc6c3cb914', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c70c2e4c-f96e-5a81-9a2d-632c9e664521', 1), '5b9aa74b3d0f3fe92ebe797ef4d654713ffd80da428ffd15c8329d3c2d8e8708',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5c7d5948abc67fd42acb03fdfcffc94f23540192f3490dc23b4073e35e028a59.mp3', 6948, '2026-09-13 09:41:28.850336', '072611422fcf6b8c893641f4432d33d01f668c5b1381d691090c2bb53cfa2d7f', 'validated', '{"audio_key":"5c7d5948abc67fd42acb03fdfcffc94f23540192f3490dc23b4073e35e028a59","entity_key":"u_evidence_briefing_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"072611422fcf6b8c893641f4432d33d01f668c5b1381d691090c2bb53cfa2d7f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5c7d5948abc67fd42acb03fdfcffc94f23540192f3490dc23b4073e35e028a59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_register_01 -> audio/generated/de-DE/utterances/5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2648b39-8d6d-5400-adb3-ef23586f8dc3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_register_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29aa27bd407b2d40ac5ba5e7445eaaf7984079555dcc29926bbf7f531a597009'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d51ba419-90bd-5b47-b687-6da800bfe4a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2648b39-8d6d-5400-adb3-ef23586f8dc3', 1), '29aa27bd407b2d40ac5ba5e7445eaaf7984079555dcc29926bbf7f531a597009',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3.mp3', 5328, '2026-09-13 09:41:29.591966', 'c158b78e453b6626b7bf6c3068c87a2f94e0e0501efa84a584e68bea120eef36', 'validated', '{"audio_key":"5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3","entity_key":"u_implicit_meaning_register_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c158b78e453b6626b7bf6c3068c87a2f94e0e0501efa84a584e68bea120eef36","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_implicit_meaning_register_01_listen -> audio/generated/de-DE/utterances/5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('23b3f7e2-092e-5619-bfc9-db23016d1523', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_implicit_meaning_register_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29aa27bd407b2d40ac5ba5e7445eaaf7984079555dcc29926bbf7f531a597009'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aab23824-ee6f-5ae8-8d63-6ae3b0f8f340', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('23b3f7e2-092e-5619-bfc9-db23016d1523', 1), '29aa27bd407b2d40ac5ba5e7445eaaf7984079555dcc29926bbf7f531a597009',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3.mp3', 5328, '2026-09-13 09:41:29.591966', 'c158b78e453b6626b7bf6c3068c87a2f94e0e0501efa84a584e68bea120eef36', 'validated', '{"audio_key":"5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3","entity_key":"ex_implicit_meaning_register_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c158b78e453b6626b7bf6c3068c87a2f94e0e0501efa84a584e68bea120eef36","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5fab8c6360ae2bfca33a43cdd6deb3c98f5a31322fe11ee5fe8edaef8ed5eee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_crisis_communication_01 -> audio/generated/de-DE/utterances/65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b21b9863-df7e-55c9-9f86-53d3489b090d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_crisis_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d189e68c4e61b39a2e905e1419cbc7710900ce25611191837ebe7509cda5b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d39e15a-d5e9-53ce-8274-468e3cb1062a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b21b9863-df7e-55c9-9f86-53d3489b090d', 1), '8d189e68c4e61b39a2e905e1419cbc7710900ce25611191837ebe7509cda5b63',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd.mp3', 7053, '2026-09-13 09:41:30.601124', '1333621d7d5501af25f49f2d89ba293293b8c3254e0b60d70647940d0f6ddcad', 'validated', '{"audio_key":"65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd","entity_key":"u_crisis_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1333621d7d5501af25f49f2d89ba293293b8c3254e0b60d70647940d0f6ddcad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_crisis_communication_01_listen -> audio/generated/de-DE/utterances/65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dc535f5d-23fe-5d0c-a65f-c01feacf1bb8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_crisis_communication_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d189e68c4e61b39a2e905e1419cbc7710900ce25611191837ebe7509cda5b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d09cda21-745b-5c8a-9bc4-93d00441020a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dc535f5d-23fe-5d0c-a65f-c01feacf1bb8', 1), '8d189e68c4e61b39a2e905e1419cbc7710900ce25611191837ebe7509cda5b63',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd.mp3', 7053, '2026-09-13 09:41:30.601124', '1333621d7d5501af25f49f2d89ba293293b8c3254e0b60d70647940d0f6ddcad', 'validated', '{"audio_key":"65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd","entity_key":"ex_crisis_communication_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1333621d7d5501af25f49f2d89ba293293b8c3254e0b60d70647940d0f6ddcad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/65d189c4a9aa2d49d804a2cd4c3129bb6a1103ab43da0bdfb80bcedb72c320bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_consensus_facilitation_05 -> audio/generated/de-DE/utterances/6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dc167e9b-165f-5105-ab5e-616f175b0a4f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_consensus_facilitation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9856466ae43d68103834c32d6482c274c482b065481de206cc3a3578b9a10704'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dea48e8d-d0fd-5b4d-937d-7788fe2523f5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dc167e9b-165f-5105-ab5e-616f175b0a4f', 1), '9856466ae43d68103834c32d6482c274c482b065481de206cc3a3578b9a10704',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac.mp3', 6400, '2026-09-13 09:41:31.203110', 'd8cc36d4b95df1b8acc305ea2e23fa31a8e5c3cf8e60498c93a7624ba7a464b0', 'validated', '{"audio_key":"6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac","entity_key":"u_consensus_facilitation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8cc36d4b95df1b8acc305ea2e23fa31a8e5c3cf8e60498c93a7624ba7a464b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_consensus_facilitation_03_listen -> audio/generated/de-DE/utterances/6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c07ce2ac-851d-5e46-bdd6-2c0169aab112', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_consensus_facilitation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9856466ae43d68103834c32d6482c274c482b065481de206cc3a3578b9a10704'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44f3cb97-bbe3-5e86-8174-92a0c98d3b24', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c07ce2ac-851d-5e46-bdd6-2c0169aab112', 1), '9856466ae43d68103834c32d6482c274c482b065481de206cc3a3578b9a10704',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac.mp3', 6400, '2026-09-13 09:41:31.203110', 'd8cc36d4b95df1b8acc305ea2e23fa31a8e5c3cf8e60498c93a7624ba7a464b0', 'validated', '{"audio_key":"6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac","entity_key":"ex_consensus_facilitation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8cc36d4b95df1b8acc305ea2e23fa31a8e5c3cf8e60498c93a7624ba7a464b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6d547d059c406e8444c811ad63397ce71cbbb7e248371c7f8a9a3ae702d86dac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_interpretation_03 -> audio/generated/de-DE/utterances/7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('942e9944-b087-5908-85cb-1c72fd51042c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_interpretation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bfeb50b6e670e74efc9e5e3f015bb5632275d5665c36572d7b5fcd12a173ccb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34222b18-2e8a-5b8c-9182-dd10a16af6e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('942e9944-b087-5908-85cb-1c72fd51042c', 1), '9bfeb50b6e670e74efc9e5e3f015bb5632275d5665c36572d7b5fcd12a173ccb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5.mp3', 6112, '2026-09-13 09:41:32.146552', 'a413fe2f37a80c29a6c21ba9716741e8bedbd133f779a9a8df2978fe53c8f898', 'validated', '{"audio_key":"7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5","entity_key":"u_policy_interpretation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a413fe2f37a80c29a6c21ba9716741e8bedbd133f779a9a8df2978fe53c8f898","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_policy_interpretation_02_listen -> audio/generated/de-DE/utterances/7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4d1c3688-27dd-5397-91aa-003aa6554389', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_policy_interpretation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bfeb50b6e670e74efc9e5e3f015bb5632275d5665c36572d7b5fcd12a173ccb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d14f96bb-2da9-57e4-ac1e-bfc928a46db6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4d1c3688-27dd-5397-91aa-003aa6554389', 1), '9bfeb50b6e670e74efc9e5e3f015bb5632275d5665c36572d7b5fcd12a173ccb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5.mp3', 6112, '2026-09-13 09:41:32.146552', 'a413fe2f37a80c29a6c21ba9716741e8bedbd133f779a9a8df2978fe53c8f898', 'validated', '{"audio_key":"7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5","entity_key":"ex_policy_interpretation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a413fe2f37a80c29a6c21ba9716741e8bedbd133f779a9a8df2978fe53c8f898","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7360a0b16e6e1ba2f0567311a5c5e4a66f1b7c89f09babfe48a4c486b1fd93c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_speech_attribution_05 -> audio/generated/de-DE/utterances/78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('21ea6976-56d8-55cf-8a66-939ff6a3949d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_speech_attribution_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc0885b0df3f676770f4dcb05d7c7429f2d911ecdd85254fc05fc53872ecda0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1210b411-1596-5530-9153-a809bfb03be7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('21ea6976-56d8-55cf-8a66-939ff6a3949d', 1), 'fc0885b0df3f676770f4dcb05d7c7429f2d911ecdd85254fc05fc53872ecda0e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f.mp3', 4675, '2026-09-13 09:41:32.624786', '524b306996b01ca53fe90edb266ffd72c697965aad2c2a25e4591f5759900abf', 'validated', '{"audio_key":"78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f","entity_key":"u_reported_speech_attribution_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"524b306996b01ca53fe90edb266ffd72c697965aad2c2a25e4591f5759900abf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_reported_speech_attribution_03_listen -> audio/generated/de-DE/utterances/78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('10f1898c-614f-5336-8577-4719400e80aa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_reported_speech_attribution_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc0885b0df3f676770f4dcb05d7c7429f2d911ecdd85254fc05fc53872ecda0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e75da9f-26d5-5e90-9607-1b3ee3a43b45', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('10f1898c-614f-5336-8577-4719400e80aa', 1), 'fc0885b0df3f676770f4dcb05d7c7429f2d911ecdd85254fc05fc53872ecda0e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f.mp3', 4675, '2026-09-13 09:41:32.624786', '524b306996b01ca53fe90edb266ffd72c697965aad2c2a25e4591f5759900abf', 'validated', '{"audio_key":"78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f","entity_key":"ex_reported_speech_attribution_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"524b306996b01ca53fe90edb266ffd72c697965aad2c2a25e4591f5759900abf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/78dbaefeba8d5b8ada06ac1dab007454b4334fa74788fb15d86e70ea7b1b9d7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_consensus_facilitation_02 -> audio/generated/de-DE/utterances/7d8739ac7a8b0cc97756c2573d4602e89889b2d9c0eec08f0891b9bb140d046f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('323c8b0c-7912-5077-a08f-13492d404a0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_consensus_facilitation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91864158cdb2b6f41b9a80f144f20b85f2cee3c944ecefb322b6e3a51cc8bac3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48d757c2-c565-5a69-a918-40180108a99b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('323c8b0c-7912-5077-a08f-13492d404a0d', 1), '91864158cdb2b6f41b9a80f144f20b85f2cee3c944ecefb322b6e3a51cc8bac3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7d8739ac7a8b0cc97756c2573d4602e89889b2d9c0eec08f0891b9bb140d046f.mp3', 6504, '2026-09-13 09:41:33.720395', 'aee384417cf41c9070b2f79c0d718109eb33d8aceed813304aeff2bdfbc08915', 'validated', '{"audio_key":"7d8739ac7a8b0cc97756c2573d4602e89889b2d9c0eec08f0891b9bb140d046f","entity_key":"u_consensus_facilitation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aee384417cf41c9070b2f79c0d718109eb33d8aceed813304aeff2bdfbc08915","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7d8739ac7a8b0cc97756c2573d4602e89889b2d9c0eec08f0891b9bb140d046f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_recommendations_04 -> audio/generated/de-DE/utterances/7db9a029f432806f3a8b38ef43eb5e301d889ac200dcd670f005cdcc0971bb60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('83ea1a52-b0b4-5df8-aaf6-7706f4fc1189', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_recommendations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1738771726396d57e82e069d729388163de7872f15e57ab5445d4cdc1916cc83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a0bb74a-e489-5d41-9879-879a3f9e64a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('83ea1a52-b0b4-5df8-aaf6-7706f4fc1189', 1), '1738771726396d57e82e069d729388163de7872f15e57ab5445d4cdc1916cc83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7db9a029f432806f3a8b38ef43eb5e301d889ac200dcd670f005cdcc0971bb60.mp3', 6635, '2026-09-13 09:41:34.164783', 'fc58b0ad31e0d7dbec17db796ed1f788e0472f2d86b1fc10ed3ad9b05ce02b29', 'validated', '{"audio_key":"7db9a029f432806f3a8b38ef43eb5e301d889ac200dcd670f005cdcc0971bb60","entity_key":"u_strategic_recommendations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc58b0ad31e0d7dbec17db796ed1f788e0472f2d86b1fc10ed3ad9b05ce02b29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7db9a029f432806f3a8b38ef43eb5e301d889ac200dcd670f005cdcc0971bb60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_claims_hedging_06 -> audio/generated/de-DE/utterances/7f363fa5a6e0e66c73b087b74454358f59a5454fff38b49df9b90fde07da59aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('efeda091-433f-563b-bea8-135f33bc3820', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_claims_hedging_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25af4494277d86343a081ad3fcb9fdcc499a746236ebdded3e5c7b20bc67518e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('173023ce-5a54-5cd6-be2a-e6158aa35279', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('efeda091-433f-563b-bea8-135f33bc3820', 1), '25af4494277d86343a081ad3fcb9fdcc499a746236ebdded3e5c7b20bc67518e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f363fa5a6e0e66c73b087b74454358f59a5454fff38b49df9b90fde07da59aa.mp3', 5381, '2026-09-13 09:41:35.212692', 'a2a2f41a80924806380427c436aad5a88dce00dba9bae89c4b66fda030f14e80', 'validated', '{"audio_key":"7f363fa5a6e0e66c73b087b74454358f59a5454fff38b49df9b90fde07da59aa","entity_key":"u_claims_hedging_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2a2f41a80924806380427c436aad5a88dce00dba9bae89c4b66fda030f14e80","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f363fa5a6e0e66c73b087b74454358f59a5454fff38b49df9b90fde07da59aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_register_03 -> audio/generated/de-DE/utterances/819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fbf422e8-3154-5640-babe-c11f310ae676', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_register_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ee58597ecce5fdee3cfcd6bb7b09633340d43b03811af6845fd3bf02e768f65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e39da7eb-65f6-565c-98d4-57abd42dacc4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fbf422e8-3154-5640-babe-c11f310ae676', 1), '2ee58597ecce5fdee3cfcd6bb7b09633340d43b03811af6845fd3bf02e768f65',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704.mp3', 4963, '2026-09-13 09:41:35.574813', '85f4883b723ed551a724f460bb7c50d9234b4063954e4189d3e3555a828fb908', 'validated', '{"audio_key":"819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704","entity_key":"u_implicit_meaning_register_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85f4883b723ed551a724f460bb7c50d9234b4063954e4189d3e3555a828fb908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_implicit_meaning_register_02_listen -> audio/generated/de-DE/utterances/819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c80e290f-c97f-5dac-a42c-005791b0772d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_implicit_meaning_register_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ee58597ecce5fdee3cfcd6bb7b09633340d43b03811af6845fd3bf02e768f65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d9d798a-55cd-5fc4-b3c3-0bfb36f85ec7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c80e290f-c97f-5dac-a42c-005791b0772d', 1), '2ee58597ecce5fdee3cfcd6bb7b09633340d43b03811af6845fd3bf02e768f65',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704.mp3', 4963, '2026-09-13 09:41:35.574813', '85f4883b723ed551a724f460bb7c50d9234b4063954e4189d3e3555a828fb908', 'validated', '{"audio_key":"819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704","entity_key":"ex_implicit_meaning_register_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85f4883b723ed551a724f460bb7c50d9234b4063954e4189d3e3555a828fb908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/819f891d808c83e47e2b7ba9c8aed97170cdc2fa935f775aa151cb7981ad5704.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_analysis_writing_03 -> audio/generated/de-DE/utterances/8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('57f99cf5-500b-52c4-a598-ac502cec6589', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_analysis_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7999a9b50e1b8a22c1eea3c5bde060856f850537a0d8b32336177d4a588bb867'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76350b50-71e2-5e5b-889b-72d8bafab49a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('57f99cf5-500b-52c4-a598-ac502cec6589', 1), '7999a9b50e1b8a22c1eea3c5bde060856f850537a0d8b32336177d4a588bb867',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22.mp3', 6400, '2026-09-13 09:41:36.813785', '022afc1af4e6e997acf532feeb03e69e8f94c55b4d77366c3d844836936dcd03', 'validated', '{"audio_key":"8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22","entity_key":"u_formal_analysis_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"022afc1af4e6e997acf532feeb03e69e8f94c55b4d77366c3d844836936dcd03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_analysis_writing_02_listen -> audio/generated/de-DE/utterances/8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('949e9a61-bad3-5bbe-b96f-7f0868871ded', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_analysis_writing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7999a9b50e1b8a22c1eea3c5bde060856f850537a0d8b32336177d4a588bb867'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b791a34-ff88-5270-960f-189573a844e5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('949e9a61-bad3-5bbe-b96f-7f0868871ded', 1), '7999a9b50e1b8a22c1eea3c5bde060856f850537a0d8b32336177d4a588bb867',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22.mp3', 6400, '2026-09-13 09:41:36.813785', '022afc1af4e6e997acf532feeb03e69e8f94c55b4d77366c3d844836936dcd03', 'validated', '{"audio_key":"8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22","entity_key":"ex_formal_analysis_writing_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"022afc1af4e6e997acf532feeb03e69e8f94c55b4d77366c3d844836936dcd03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8b2c63ee203ccb262e945cd5feb4f89b530c98697e2b61b054742c0edafc1c22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_claims_hedging_01 -> audio/generated/de-DE/utterances/8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a179ee16-5631-5c17-ab5c-32608064fd4a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_claims_hedging_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c477fb9a77c430c5a814641c62a0f83ee551efbd87ead3ab58a33e91191f7fd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1a9237f-f45c-5566-a0e0-b043a2101e9f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a179ee16-5631-5c17-ab5c-32608064fd4a', 1), 'c477fb9a77c430c5a814641c62a0f83ee551efbd87ead3ab58a33e91191f7fd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436.mp3', 4858, '2026-09-13 09:41:36.953601', '024dde9c55348914359a312c4f6a738bb75acdd52d5158c95a129721317c6b07', 'validated', '{"audio_key":"8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436","entity_key":"u_claims_hedging_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"024dde9c55348914359a312c4f6a738bb75acdd52d5158c95a129721317c6b07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_claims_hedging_01_listen -> audio/generated/de-DE/utterances/8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('31b25568-a055-52ac-a510-acfe4fe75bb8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_claims_hedging_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c477fb9a77c430c5a814641c62a0f83ee551efbd87ead3ab58a33e91191f7fd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d826ac6-255f-5dac-81b2-9bef722df96e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('31b25568-a055-52ac-a510-acfe4fe75bb8', 1), 'c477fb9a77c430c5a814641c62a0f83ee551efbd87ead3ab58a33e91191f7fd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436.mp3', 4858, '2026-09-13 09:41:36.953601', '024dde9c55348914359a312c4f6a738bb75acdd52d5158c95a129721317c6b07', 'validated', '{"audio_key":"8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436","entity_key":"ex_claims_hedging_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"024dde9c55348914359a312c4f6a738bb75acdd52d5158c95a129721317c6b07","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c99d5385cee4710375d5afeae5bae57c7472aae9a2613771c329da6c941d436.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_recommendations_06 -> audio/generated/de-DE/utterances/8cf3b4c0508f54c2d69f872262fcee207b3dc581c02d5ac86b98b877575885c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('165c9585-64a2-5759-a706-53c2de12e8b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_recommendations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c0b72b556b6cf39ca80992f35dd93b6df4f72efc8930e32880501d1728887'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac2a4027-c946-5667-8043-af1c3b7fe245', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('165c9585-64a2-5759-a706-53c2de12e8b5', 1), '8a5c0b72b556b6cf39ca80992f35dd93b6df4f72efc8930e32880501d1728887',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8cf3b4c0508f54c2d69f872262fcee207b3dc581c02d5ac86b98b877575885c4.mp3', 7784, '2026-09-13 09:41:38.670874', '5a07079955058812a0354832455996acfb0fc6c716326f633faa1738dd02c411', 'validated', '{"audio_key":"8cf3b4c0508f54c2d69f872262fcee207b3dc581c02d5ac86b98b877575885c4","entity_key":"u_strategic_recommendations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a07079955058812a0354832455996acfb0fc6c716326f633faa1738dd02c411","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8cf3b4c0508f54c2d69f872262fcee207b3dc581c02d5ac86b98b877575885c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_register_02 -> audio/generated/de-DE/utterances/902c5887195786a27c45677ac37914b96ab725076d62fd388da782bd5da8351c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('15c49ccb-4f9d-5170-b25f-af22aee51f75', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_register_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '170db47df3948b92bbf84c03ff273f478db17040760fe92ca5045f5106d37bc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5a3d742-79e0-5dcc-a717-72e7b7ff5788', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('15c49ccb-4f9d-5170-b25f-af22aee51f75', 1), '170db47df3948b92bbf84c03ff273f478db17040760fe92ca5045f5106d37bc7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/902c5887195786a27c45677ac37914b96ab725076d62fd388da782bd5da8351c.mp3', 6086, '2026-09-13 09:41:38.561465', '6f06b6cd044eff883bce611513a3317c1660ec4c7ba55b9d8931b8647975b49e', 'validated', '{"audio_key":"902c5887195786a27c45677ac37914b96ab725076d62fd388da782bd5da8351c","entity_key":"u_implicit_meaning_register_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f06b6cd044eff883bce611513a3317c1660ec4c7ba55b9d8931b8647975b49e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/902c5887195786a27c45677ac37914b96ab725076d62fd388da782bd5da8351c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_briefing_capstone_01 -> audio/generated/de-DE/utterances/90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('339e510f-d91c-5520-b11c-e935c53c55ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ee9bc658fc118fcbb4b11aedba6d996d27ecadbdc80ce8c793deeb4d291c312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('890204b0-760c-57b5-8363-5c101e1281f6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('339e510f-d91c-5520-b11c-e935c53c55ca', 1), '3ee9bc658fc118fcbb4b11aedba6d996d27ecadbdc80ce8c793deeb4d291c312',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68.mp3', 7235, '2026-09-13 09:41:40.175591', '472a991f43235b3bf8dc434b9901c03db290704180d6918564abfdf37f323c6d', 'validated', '{"audio_key":"90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68","entity_key":"u_evidence_briefing_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"472a991f43235b3bf8dc434b9901c03db290704180d6918564abfdf37f323c6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidence_briefing_capstone_01_listen -> audio/generated/de-DE/utterances/90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('37744313-ef25-5710-b491-d94281ccd745', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidence_briefing_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ee9bc658fc118fcbb4b11aedba6d996d27ecadbdc80ce8c793deeb4d291c312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39a40b15-dbdf-5d3b-8fb5-906f245855a0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('37744313-ef25-5710-b491-d94281ccd745', 1), '3ee9bc658fc118fcbb4b11aedba6d996d27ecadbdc80ce8c793deeb4d291c312',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68.mp3', 7235, '2026-09-13 09:41:40.175591', '472a991f43235b3bf8dc434b9901c03db290704180d6918564abfdf37f323c6d', 'validated', '{"audio_key":"90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68","entity_key":"ex_evidence_briefing_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"472a991f43235b3bf8dc434b9901c03db290704180d6918564abfdf37f323c6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90ae1f119dddd091c66629c396860add07244d3272ad5d32901a867087e11a68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_05 -> audio/generated/de-DE/utterances/958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('129c82d9-2973-57d5-882f-9ab90877f469', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5aaee5b150f7646732520f76301182c7e6ee2638aa87e26ca6369fc02ebe5529'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f66089e-affc-5faf-a1fc-c0820e840ac0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('129c82d9-2973-57d5-882f-9ab90877f469', 1), '5aaee5b150f7646732520f76301182c7e6ee2638aa87e26ca6369fc02ebe5529',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749.mp3', 5982, '2026-09-13 09:41:40.106639', 'a3d1912fc423dc65a881d1fb5bdbd951ac95dd37163a1bb70ae2ffff3b4dd3a5', 'validated', '{"audio_key":"958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749","entity_key":"u_multi_source_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3d1912fc423dc65a881d1fb5bdbd951ac95dd37163a1bb70ae2ffff3b4dd3a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_multi_source_synthesis_03_listen -> audio/generated/de-DE/utterances/958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('82433029-0ac2-5096-988b-e3bad577eafe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_multi_source_synthesis_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5aaee5b150f7646732520f76301182c7e6ee2638aa87e26ca6369fc02ebe5529'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9296744-f5b8-54c3-a920-b08e276bb82e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('82433029-0ac2-5096-988b-e3bad577eafe', 1), '5aaee5b150f7646732520f76301182c7e6ee2638aa87e26ca6369fc02ebe5529',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749.mp3', 5982, '2026-09-13 09:41:40.106639', 'a3d1912fc423dc65a881d1fb5bdbd951ac95dd37163a1bb70ae2ffff3b4dd3a5', 'validated', '{"audio_key":"958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749","entity_key":"ex_multi_source_synthesis_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3d1912fc423dc65a881d1fb5bdbd951ac95dd37163a1bb70ae2ffff3b4dd3a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/958921b173930d8ab44e6bc5530383949be94df23ccad1d50bae8bafd4f12749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_consensus_facilitation_04 -> audio/generated/de-DE/utterances/99fdf91492f9a239bb82b2ade35715d0d37368f4288f0047e1ce5a9a0e35011f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('50f8b244-360e-5995-aca2-0242161a5eba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_consensus_facilitation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce86576cc5bf68ffb761b4c5ac0c222e1401fea2ebc23eb36015396db0116369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('742fa534-bc15-5c79-b984-f15e86eb8255', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('50f8b244-360e-5995-aca2-0242161a5eba', 1), 'ce86576cc5bf68ffb761b4c5ac0c222e1401fea2ebc23eb36015396db0116369',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99fdf91492f9a239bb82b2ade35715d0d37368f4288f0047e1ce5a9a0e35011f.mp3', 7653, '2026-09-13 09:41:41.763952', 'e7612f9bb0552e0dfee01049e408054c38b904ef582e6ebebd0d32878e165c8b', 'validated', '{"audio_key":"99fdf91492f9a239bb82b2ade35715d0d37368f4288f0047e1ce5a9a0e35011f","entity_key":"u_consensus_facilitation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7612f9bb0552e0dfee01049e408054c38b904ef582e6ebebd0d32878e165c8b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99fdf91492f9a239bb82b2ade35715d0d37368f4288f0047e1ce5a9a0e35011f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_analysis_writing_05 -> audio/generated/de-DE/utterances/9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c0f80d5f-1994-5775-a74c-901392613e69', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_analysis_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be460fd5b15c4094e9f0328a7333fc2996694bf1f55d72f7986ade159ed74265'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60f6a6c5-16d6-5082-9360-6eef988a50e1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c0f80d5f-1994-5775-a74c-901392613e69', 1), 'be460fd5b15c4094e9f0328a7333fc2996694bf1f55d72f7986ade159ed74265',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567.mp3', 5929, '2026-09-13 09:41:41.638998', '042bd3883701d556e051e69fb1dfdce43ee315b28ba1c36f6c70678069ad0285', 'validated', '{"audio_key":"9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567","entity_key":"u_formal_analysis_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"042bd3883701d556e051e69fb1dfdce43ee315b28ba1c36f6c70678069ad0285","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_analysis_writing_03_listen -> audio/generated/de-DE/utterances/9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('35504080-6521-54bb-883e-70cc5b1441cc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_analysis_writing_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be460fd5b15c4094e9f0328a7333fc2996694bf1f55d72f7986ade159ed74265'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ee7ec85-a3f0-51d8-b610-169e96c0de85', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('35504080-6521-54bb-883e-70cc5b1441cc', 1), 'be460fd5b15c4094e9f0328a7333fc2996694bf1f55d72f7986ade159ed74265',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567.mp3', 5929, '2026-09-13 09:41:41.638998', '042bd3883701d556e051e69fb1dfdce43ee315b28ba1c36f6c70678069ad0285', 'validated', '{"audio_key":"9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567","entity_key":"ex_formal_analysis_writing_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"042bd3883701d556e051e69fb1dfdce43ee315b28ba1c36f6c70678069ad0285","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9c67eb36a6b63cf34a034c3e1106097db0efa484442e47abeae78fedc5a5b567.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_analysis_writing_02 -> audio/generated/de-DE/utterances/ae664514e06a00721f33dcf8ffb7a5705277622899adb916faa7a07f58e3273a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('27413768-8734-50d6-bc50-ba685c4ed907', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_analysis_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '761f1c0ec8d90b22ee60de28a8bd897cc960b7ea0bef2a09b9d2317e1d19d095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf62e282-e3a4-54db-a782-13a1f1dffa0a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('27413768-8734-50d6-bc50-ba685c4ed907', 1), '761f1c0ec8d90b22ee60de28a8bd897cc960b7ea0bef2a09b9d2317e1d19d095',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ae664514e06a00721f33dcf8ffb7a5705277622899adb916faa7a07f58e3273a.mp3', 6817, '2026-09-13 09:41:43.293239', 'ef4d78e07779a41fa583d85cc0729abd15f73c0144ce4aa978c82c47d4e59a1b', 'validated', '{"audio_key":"ae664514e06a00721f33dcf8ffb7a5705277622899adb916faa7a07f58e3273a","entity_key":"u_formal_analysis_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef4d78e07779a41fa583d85cc0729abd15f73c0144ce4aa978c82c47d4e59a1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ae664514e06a00721f33dcf8ffb7a5705277622899adb916faa7a07f58e3273a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_claims_hedging_05 -> audio/generated/de-DE/utterances/b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('876bd174-57f9-5c7c-97b3-7b9d720a30ae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_claims_hedging_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd59366342b95e16e38112262464635e8ed4c1d4406a7809fd6297aeec7a7cc42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59f92541-a4d8-5bb3-b3ec-710a2de55540', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('876bd174-57f9-5c7c-97b3-7b9d720a30ae', 1), 'd59366342b95e16e38112262464635e8ed4c1d4406a7809fd6297aeec7a7cc42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462.mp3', 5877, '2026-09-13 09:41:43.207214', '8364ac1b444a13b64787c0e0525e2827cb23817a598aaa2370d0d96f62be00a6', 'validated', '{"audio_key":"b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462","entity_key":"u_claims_hedging_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8364ac1b444a13b64787c0e0525e2827cb23817a598aaa2370d0d96f62be00a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_claims_hedging_03_listen -> audio/generated/de-DE/utterances/b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ce561f26-ceb6-569d-954d-f9497fddb3bc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_claims_hedging_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd59366342b95e16e38112262464635e8ed4c1d4406a7809fd6297aeec7a7cc42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1038bc56-c3fa-568b-a718-2f395067759b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ce561f26-ceb6-569d-954d-f9497fddb3bc', 1), 'd59366342b95e16e38112262464635e8ed4c1d4406a7809fd6297aeec7a7cc42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462.mp3', 5877, '2026-09-13 09:41:43.207214', '8364ac1b444a13b64787c0e0525e2827cb23817a598aaa2370d0d96f62be00a6', 'validated', '{"audio_key":"b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462","entity_key":"ex_claims_hedging_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8364ac1b444a13b64787c0e0525e2827cb23817a598aaa2370d0d96f62be00a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b56bf204f9b2001ed3f65a5701083b110351a2dc4e626ad7b52ca18b4adce462.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_speech_attribution_02 -> audio/generated/de-DE/utterances/bb08038ffaa28783c1dd1225d4d1e1a029d8ad9ced5509aceb6f864dd8a84bfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e645bebb-7053-59c8-9e9a-c5ee475b5a87', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_speech_attribution_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '098d1f4d32a438344c9dc8999746740ca539871bfd256012aef2e9b9e3b18854'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ab207d9-8024-5453-9892-223004336367', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e645bebb-7053-59c8-9e9a-c5ee475b5a87', 1), '098d1f4d32a438344c9dc8999746740ca539871bfd256012aef2e9b9e3b18854',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb08038ffaa28783c1dd1225d4d1e1a029d8ad9ced5509aceb6f864dd8a84bfb.mp3', 5328, '2026-09-13 09:41:44.682372', '8be4a6e8ebcdd5f1b9e03c5fa227da82169091d778aefb799c8ddf4fdd748868', 'validated', '{"audio_key":"bb08038ffaa28783c1dd1225d4d1e1a029d8ad9ced5509aceb6f864dd8a84bfb","entity_key":"u_reported_speech_attribution_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8be4a6e8ebcdd5f1b9e03c5fa227da82169091d778aefb799c8ddf4fdd748868","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb08038ffaa28783c1dd1225d4d1e1a029d8ad9ced5509aceb6f864dd8a84bfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_register_06 -> audio/generated/de-DE/utterances/bc82f7ed13d75bcb5a75b857170326dfe03e0f7f493b293273ad4b631b45d9cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7cfad98d-99bb-5d01-9924-2f509821af56', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_register_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ae70b56012c5514655cf932e0ccb316defeb973cd4914b5342b1e79bfc7806a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66251a2d-33f0-551e-ac4d-d476a695bd0e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7cfad98d-99bb-5d01-9924-2f509821af56', 1), '4ae70b56012c5514655cf932e0ccb316defeb973cd4914b5342b1e79bfc7806a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bc82f7ed13d75bcb5a75b857170326dfe03e0f7f493b293273ad4b631b45d9cc.mp3', 6530, '2026-09-13 09:41:44.920484', '313d371fc8533875da2533da4b37971bc62109decd68fef5dc80e7c404f34e0f', 'validated', '{"audio_key":"bc82f7ed13d75bcb5a75b857170326dfe03e0f7f493b293273ad4b631b45d9cc","entity_key":"u_implicit_meaning_register_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"313d371fc8533875da2533da4b37971bc62109decd68fef5dc80e7c404f34e0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bc82f7ed13d75bcb5a75b857170326dfe03e0f7f493b293273ad4b631b45d9cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_recommendations_03 -> audio/generated/de-DE/utterances/bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3c869b6-8a9d-58d7-b71e-523e5f815561', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_recommendations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d73921748cc2210dcb7a7cc3113ff22a4ad7aedd28748f83799c96c05c28e2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f09aeecf-319f-5b1a-a523-bcba9aec834b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3c869b6-8a9d-58d7-b71e-523e5f815561', 1), '6d73921748cc2210dcb7a7cc3113ff22a4ad7aedd28748f83799c96c05c28e2b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4.mp3', 6269, '2026-09-13 09:41:46.494150', '563b394043d64c5decaa3b40eb5202ecff0dc374238a5b8df1eda385dc2a8645', 'validated', '{"audio_key":"bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4","entity_key":"u_strategic_recommendations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"563b394043d64c5decaa3b40eb5202ecff0dc374238a5b8df1eda385dc2a8645","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_strategic_recommendations_02_listen -> audio/generated/de-DE/utterances/bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8c26e52c-3f13-5311-a965-d9d3cf6d6d36', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_strategic_recommendations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d73921748cc2210dcb7a7cc3113ff22a4ad7aedd28748f83799c96c05c28e2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d557c1a6-0493-5bd6-9481-8db1673368fd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8c26e52c-3f13-5311-a965-d9d3cf6d6d36', 1), '6d73921748cc2210dcb7a7cc3113ff22a4ad7aedd28748f83799c96c05c28e2b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4.mp3', 6269, '2026-09-13 09:41:46.494150', '563b394043d64c5decaa3b40eb5202ecff0dc374238a5b8df1eda385dc2a8645', 'validated', '{"audio_key":"bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4","entity_key":"ex_strategic_recommendations_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"563b394043d64c5decaa3b40eb5202ecff0dc374238a5b8df1eda385dc2a8645","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bcd687e09cd9a7140411314dbcba05b41851cd80f816ed4e334fed31a3ea20a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_claims_hedging_02 -> audio/generated/de-DE/utterances/bf24253d50b25a712b318e1b64aff23491dee95800232f23323e940967e5b47f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d25bbc2-0af6-57ec-8f21-85306dc1f000', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_claims_hedging_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cd2153b73fc08e5b271508a5c1cb235692d42e536b13f6993dcb10141173464'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a59f0ce8-729a-5439-81ee-f951e55f992e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d25bbc2-0af6-57ec-8f21-85306dc1f000', 1), '8cd2153b73fc08e5b271508a5c1cb235692d42e536b13f6993dcb10141173464',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bf24253d50b25a712b318e1b64aff23491dee95800232f23323e940967e5b47f.mp3', 4858, '2026-09-13 09:41:46.408551', '8de17dc3a23b9cc7c54df38468b056490734882cd8787a91b5bb56970be48238', 'validated', '{"audio_key":"bf24253d50b25a712b318e1b64aff23491dee95800232f23323e940967e5b47f","entity_key":"u_claims_hedging_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8de17dc3a23b9cc7c54df38468b056490734882cd8787a91b5bb56970be48238","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bf24253d50b25a712b318e1b64aff23491dee95800232f23323e940967e5b47f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_strategic_recommendations_05 -> audio/generated/de-DE/utterances/bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f6147701-4386-58f4-ae8a-d1b4469b078f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_strategic_recommendations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddb718a1a9c01a921e1a8e98a4089c0d90e435dd53f0fdd52c196075d1a38f88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a317c920-b262-5149-9751-9849d8de8f44', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f6147701-4386-58f4-ae8a-d1b4469b078f', 1), 'ddb718a1a9c01a921e1a8e98a4089c0d90e435dd53f0fdd52c196075d1a38f88',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6.mp3', 6687, '2026-09-13 09:41:47.976533', '07af5bc53f38bdc9ba52aaf3430bae28ea1822d84e2f1c1e81a0141eb26a29cf', 'validated', '{"audio_key":"bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6","entity_key":"u_strategic_recommendations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07af5bc53f38bdc9ba52aaf3430bae28ea1822d84e2f1c1e81a0141eb26a29cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_strategic_recommendations_03_listen -> audio/generated/de-DE/utterances/bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9900e606-387b-5162-9b3c-da050c79e7e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_strategic_recommendations_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddb718a1a9c01a921e1a8e98a4089c0d90e435dd53f0fdd52c196075d1a38f88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f28c1c95-0315-51bc-9c61-5024193c17fd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9900e606-387b-5162-9b3c-da050c79e7e3', 1), 'ddb718a1a9c01a921e1a8e98a4089c0d90e435dd53f0fdd52c196075d1a38f88',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6.mp3', 6687, '2026-09-13 09:41:47.976533', '07af5bc53f38bdc9ba52aaf3430bae28ea1822d84e2f1c1e81a0141eb26a29cf', 'validated', '{"audio_key":"bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6","entity_key":"ex_strategic_recommendations_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07af5bc53f38bdc9ba52aaf3430bae28ea1822d84e2f1c1e81a0141eb26a29cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bf24b378ea77761b4e143029fc5c2da27e5c8a4bad4afd6f01aac111b6c373b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_01 -> audio/generated/de-DE/utterances/c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('911fb6b1-dc92-5506-ab28-4d3239f2a7b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '542bd6e8e0e4564b2f80ad993172694084313b65c2f4bda413dbd9ed71f1efbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79194373-fb19-5555-93b8-29303479c474', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('911fb6b1-dc92-5506-ab28-4d3239f2a7b3', 1), '542bd6e8e0e4564b2f80ad993172694084313b65c2f4bda413dbd9ed71f1efbc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c.mp3', 5616, '2026-09-13 09:41:47.935215', 'dd1c68b08dd1cf63332b1680a80a87d1a1911879025b06de2d7427806db66496', 'validated', '{"audio_key":"c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c","entity_key":"u_multi_source_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd1c68b08dd1cf63332b1680a80a87d1a1911879025b06de2d7427806db66496","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_multi_source_synthesis_01_listen -> audio/generated/de-DE/utterances/c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ab7dbb26-07ad-5cd3-bb6c-b3ca4e71b767', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_multi_source_synthesis_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '542bd6e8e0e4564b2f80ad993172694084313b65c2f4bda413dbd9ed71f1efbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0864afcc-16ae-5e7d-af09-831d8d0149a6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ab7dbb26-07ad-5cd3-bb6c-b3ca4e71b767', 1), '542bd6e8e0e4564b2f80ad993172694084313b65c2f4bda413dbd9ed71f1efbc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c.mp3', 5616, '2026-09-13 09:41:47.935215', 'dd1c68b08dd1cf63332b1680a80a87d1a1911879025b06de2d7427806db66496', 'validated', '{"audio_key":"c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c","entity_key":"ex_multi_source_synthesis_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd1c68b08dd1cf63332b1680a80a87d1a1911879025b06de2d7427806db66496","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c1eef1f8f70c24e71970f490eeb2793d9b635c80440a488d028462925e70552c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_interpretation_04 -> audio/generated/de-DE/utterances/c3370fc0ea3252559896ef3c2b740ecdb2bd5e216199f55a88bee968d39ebd72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd79ddd9-1564-5f43-9e20-411649140ded', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_interpretation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8936e1cf4e087bfd76035ed8782453fc756bd7ce106a42714e4d01b66ec8bcd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00f56335-95eb-5058-b33b-208ac8a94b59', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd79ddd9-1564-5f43-9e20-411649140ded', 1), '8936e1cf4e087bfd76035ed8782453fc756bd7ce106a42714e4d01b66ec8bcd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c3370fc0ea3252559896ef3c2b740ecdb2bd5e216199f55a88bee968d39ebd72.mp3', 6295, '2026-09-13 09:41:49.546716', '65fd6e58ab3da46f7e2aad6221538b3c267cbc836571518dc61bf7a77959189e', 'validated', '{"audio_key":"c3370fc0ea3252559896ef3c2b740ecdb2bd5e216199f55a88bee968d39ebd72","entity_key":"u_policy_interpretation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65fd6e58ab3da46f7e2aad6221538b3c267cbc836571518dc61bf7a77959189e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c3370fc0ea3252559896ef3c2b740ecdb2bd5e216199f55a88bee968d39ebd72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_briefing_capstone_05 -> audio/generated/de-DE/utterances/c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5d7f8d2-f837-531d-ad56-eb1a9326d1f1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15e1e49c62d11c2ef654e309a84fac4c8763d0b7ae19234a6e0aae7f5b3532bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c9c675c-64ca-513f-bd10-44647e751e70', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5d7f8d2-f837-531d-ad56-eb1a9326d1f1', 1), '15e1e49c62d11c2ef654e309a84fac4c8763d0b7ae19234a6e0aae7f5b3532bd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a.mp3', 6635, '2026-09-13 09:41:49.523564', '7476b4ba32f030cc99715c64cf37e435b222869849f7fd8fe59121e30a43b93c', 'validated', '{"audio_key":"c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a","entity_key":"u_evidence_briefing_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7476b4ba32f030cc99715c64cf37e435b222869849f7fd8fe59121e30a43b93c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidence_briefing_capstone_03_listen -> audio/generated/de-DE/utterances/c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5f4fe52d-c385-55d7-9b85-db89a97385c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidence_briefing_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15e1e49c62d11c2ef654e309a84fac4c8763d0b7ae19234a6e0aae7f5b3532bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9f89464-a0c7-58c0-ac3b-f8e0e078be58', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5f4fe52d-c385-55d7-9b85-db89a97385c7', 1), '15e1e49c62d11c2ef654e309a84fac4c8763d0b7ae19234a6e0aae7f5b3532bd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a.mp3', 6635, '2026-09-13 09:41:49.523564', '7476b4ba32f030cc99715c64cf37e435b222869849f7fd8fe59121e30a43b93c', 'validated', '{"audio_key":"c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a","entity_key":"ex_evidence_briefing_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7476b4ba32f030cc99715c64cf37e435b222869849f7fd8fe59121e30a43b93c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c42a2ee262f1e913c2dd5fc38d83182a645b8281edd692dd8da085ba8b0d953a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_analysis_writing_01 -> audio/generated/de-DE/utterances/c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('487f1a6d-6c40-5169-93ca-b7f0083e032f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_analysis_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4925ba33e868d2a55ff3135ff2930d7e16cf6e20bcad4dc10cb23c634cd4e3a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b266807f-2516-5627-a872-307ff06f539c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('487f1a6d-6c40-5169-93ca-b7f0083e032f', 1), '4925ba33e868d2a55ff3135ff2930d7e16cf6e20bcad4dc10cb23c634cd4e3a9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e.mp3', 6112, '2026-09-13 09:41:51.037290', '8684ca2c13cb504ac86b5b180e40afb9403da68b95f3eb9847f93bd633b0cc93', 'validated', '{"audio_key":"c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e","entity_key":"u_formal_analysis_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8684ca2c13cb504ac86b5b180e40afb9403da68b95f3eb9847f93bd633b0cc93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_formal_analysis_writing_01_listen -> audio/generated/de-DE/utterances/c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e095b552-532f-55fa-bc7f-bfcc19334e45', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_formal_analysis_writing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4925ba33e868d2a55ff3135ff2930d7e16cf6e20bcad4dc10cb23c634cd4e3a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('350be04f-13fa-5839-bd73-2dca8a904851', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e095b552-532f-55fa-bc7f-bfcc19334e45', 1), '4925ba33e868d2a55ff3135ff2930d7e16cf6e20bcad4dc10cb23c634cd4e3a9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e.mp3', 6112, '2026-09-13 09:41:51.037290', '8684ca2c13cb504ac86b5b180e40afb9403da68b95f3eb9847f93bd633b0cc93', 'validated', '{"audio_key":"c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e","entity_key":"ex_formal_analysis_writing_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8684ca2c13cb504ac86b5b180e40afb9403da68b95f3eb9847f93bd633b0cc93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c8c7b8e7885e30dee60b086b168b5c9e20fff68a46255b4afc126637ec0cfd8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_crisis_communication_04 -> audio/generated/de-DE/utterances/d7894ef17e61636ea4f4faa981c5dd20f7e1854c91588cae14248a38b9c25bc2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c25173fc-a9e6-5cbb-b1d1-ef40c5739dee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_crisis_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3ed4fb7ffbdffd2d650ef9a50177e30337e71df6d280bfd34b860e557982719'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9930cb5-b686-588a-9181-8db58220fbd1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c25173fc-a9e6-5cbb-b1d1-ef40c5739dee', 1), 'a3ed4fb7ffbdffd2d650ef9a50177e30337e71df6d280bfd34b860e557982719',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d7894ef17e61636ea4f4faa981c5dd20f7e1854c91588cae14248a38b9c25bc2.mp3', 6295, '2026-09-13 09:41:51.173582', '46854092cb3dc9856b69d648f3efadd9429cf63f6d9129edc46cefa3fcc3672f', 'validated', '{"audio_key":"d7894ef17e61636ea4f4faa981c5dd20f7e1854c91588cae14248a38b9c25bc2","entity_key":"u_crisis_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46854092cb3dc9856b69d648f3efadd9429cf63f6d9129edc46cefa3fcc3672f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d7894ef17e61636ea4f4faa981c5dd20f7e1854c91588cae14248a38b9c25bc2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_register_05 -> audio/generated/de-DE/utterances/d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('83e23111-39a6-5287-b175-bc13c9ce47bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_register_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8a5e5e41d98c1079be8ca28aa8057c83ce023925e763ae8cd9603a2fe8ae5bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d09ed218-044d-59e0-a542-60a5a172b305', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('83e23111-39a6-5287-b175-bc13c9ce47bd', 1), 'f8a5e5e41d98c1079be8ca28aa8057c83ce023925e763ae8cd9603a2fe8ae5bc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e.mp3', 6164, '2026-09-13 09:41:52.621572', 'ab11f5cfba80d29160c167f7b991483840421f660e8271f192f1376854cf7451', 'validated', '{"audio_key":"d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e","entity_key":"u_implicit_meaning_register_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab11f5cfba80d29160c167f7b991483840421f660e8271f192f1376854cf7451","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_implicit_meaning_register_03_listen -> audio/generated/de-DE/utterances/d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6eae407d-1e3d-55cd-b0fa-7cf0ed42b2b9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_implicit_meaning_register_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8a5e5e41d98c1079be8ca28aa8057c83ce023925e763ae8cd9603a2fe8ae5bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b322a4f-2add-58fb-81ab-604d1dcd3f04', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6eae407d-1e3d-55cd-b0fa-7cf0ed42b2b9', 1), 'f8a5e5e41d98c1079be8ca28aa8057c83ce023925e763ae8cd9603a2fe8ae5bc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e.mp3', 6164, '2026-09-13 09:41:52.621572', 'ab11f5cfba80d29160c167f7b991483840421f660e8271f192f1376854cf7451', 'validated', '{"audio_key":"d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e","entity_key":"ex_implicit_meaning_register_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab11f5cfba80d29160c167f7b991483840421f660e8271f192f1376854cf7451","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d96a90847a6a6e10fca5bcb93e0bc557516ec55ca0d7760bcc9fd17ace5ecd4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_briefing_capstone_02 -> audio/generated/de-DE/utterances/d9742ce8dbe5cc859587f5ec2ae154ef3c547792a0c7dfa1c81e29dc910b2272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58f8305e-75fa-5f64-a4aa-efc76636aa36', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a94e0ef98a104d3b6f6f554eab9b8b95340f31a9902165f0a85d1e7a99ae8063'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('017710d3-6bd4-51ee-9cf0-4d03a9af9e0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58f8305e-75fa-5f64-a4aa-efc76636aa36', 1), 'a94e0ef98a104d3b6f6f554eab9b8b95340f31a9902165f0a85d1e7a99ae8063',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d9742ce8dbe5cc859587f5ec2ae154ef3c547792a0c7dfa1c81e29dc910b2272.mp3', 5694, '2026-09-13 09:41:52.682140', '28e4597eba8a30993dffa1e80ad1f6efcfef1aa7ee2d85e2425911eb9fad887a', 'validated', '{"audio_key":"d9742ce8dbe5cc859587f5ec2ae154ef3c547792a0c7dfa1c81e29dc910b2272","entity_key":"u_evidence_briefing_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28e4597eba8a30993dffa1e80ad1f6efcfef1aa7ee2d85e2425911eb9fad887a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d9742ce8dbe5cc859587f5ec2ae154ef3c547792a0c7dfa1c81e29dc910b2272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidence_briefing_capstone_06 -> audio/generated/de-DE/utterances/dd766183c6afda42878fb01797a38a1285c54cb74ceb535d9545557b812197b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5d6c87ec-5cc2-512b-bcbd-1275b0e436d0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidence_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58277a9bbebc3adb4dab36757a8987732c75c7a2d93faadb0129b13c5856451b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb70687b-4789-5bea-ba9e-8c8f7434594b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5d6c87ec-5cc2-512b-bcbd-1275b0e436d0', 1), '58277a9bbebc3adb4dab36757a8987732c75c7a2d93faadb0129b13c5856451b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dd766183c6afda42878fb01797a38a1285c54cb74ceb535d9545557b812197b6.mp3', 6582, '2026-09-13 09:41:54.290418', 'a356d1b5032795ec2b21c34dfe472c3a949070b5dbad1dc1515f2a15f863ca03', 'validated', '{"audio_key":"dd766183c6afda42878fb01797a38a1285c54cb74ceb535d9545557b812197b6","entity_key":"u_evidence_briefing_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a356d1b5032795ec2b21c34dfe472c3a949070b5dbad1dc1515f2a15f863ca03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dd766183c6afda42878fb01797a38a1285c54cb74ceb535d9545557b812197b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_register_04 -> audio/generated/de-DE/utterances/e3cbf12d3b6084f6c24080804b16793a21a1fad28e116223cd860a0b8192a6a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a637c204-f589-56b2-a2bf-00a469d37fe1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_register_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb29573a4074a817ee13dee1cefe0fa191f8db4885ed5301cee8b30677180f3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acfd043f-1e2a-5ed1-9ab5-98ea42a86274', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a637c204-f589-56b2-a2bf-00a469d37fe1', 1), 'bb29573a4074a817ee13dee1cefe0fa191f8db4885ed5301cee8b30677180f3d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e3cbf12d3b6084f6c24080804b16793a21a1fad28e116223cd860a0b8192a6a8.mp3', 6452, '2026-09-13 09:41:54.287740', '2d505aab298459ecd1cac79cef69285f0a91d46e742c934966963fd3e5a5f058', 'validated', '{"audio_key":"e3cbf12d3b6084f6c24080804b16793a21a1fad28e116223cd860a0b8192a6a8","entity_key":"u_implicit_meaning_register_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d505aab298459ecd1cac79cef69285f0a91d46e742c934966963fd3e5a5f058","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e3cbf12d3b6084f6c24080804b16793a21a1fad28e116223cd860a0b8192a6a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_crisis_communication_02 -> audio/generated/de-DE/utterances/e42b4ef55faf1d75bbe3ee10e83c626268dc6dc690f111943a3156d2c8959583.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e7a1062d-7065-5168-99f0-039cc463230a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_crisis_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '604d7474e92ce2e82b1ca6206b36df475974a671ae98d8852e2a877e4e8344ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9568a2cd-1818-5009-aad2-83f1b80dffd6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e7a1062d-7065-5168-99f0-039cc463230a', 1), '604d7474e92ce2e82b1ca6206b36df475974a671ae98d8852e2a877e4e8344ab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e42b4ef55faf1d75bbe3ee10e83c626268dc6dc690f111943a3156d2c8959583.mp3', 6922, '2026-09-13 09:41:55.877790', 'f20275532c4a898d15333ff4e24094956bddffeb246fb0b86c9e316acc76234a', 'validated', '{"audio_key":"e42b4ef55faf1d75bbe3ee10e83c626268dc6dc690f111943a3156d2c8959583","entity_key":"u_crisis_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f20275532c4a898d15333ff4e24094956bddffeb246fb0b86c9e316acc76234a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e42b4ef55faf1d75bbe3ee10e83c626268dc6dc690f111943a3156d2c8959583.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_crisis_communication_05 -> audio/generated/de-DE/utterances/ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('132b96b2-254a-5bf6-8a24-d587ef3d8c1f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_crisis_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '083eec02be85513c0b725a84c99af7a3d78d81fb08b78f733b8222ec22b6f18a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a5d9049-8efd-5e2c-8325-6c5fce882e73', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('132b96b2-254a-5bf6-8a24-d587ef3d8c1f', 1), '083eec02be85513c0b725a84c99af7a3d78d81fb08b78f733b8222ec22b6f18a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd.mp3', 5929, '2026-09-13 09:41:55.816524', '79dce82ff04bc06640ba39f8119011c0a5622b73d1e3a8fb571d4ca986d78e99', 'validated', '{"audio_key":"ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd","entity_key":"u_crisis_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79dce82ff04bc06640ba39f8119011c0a5622b73d1e3a8fb571d4ca986d78e99","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_crisis_communication_03_listen -> audio/generated/de-DE/utterances/ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1eb0de2e-ab84-592c-b328-8da0ab3da2d5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_crisis_communication_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '083eec02be85513c0b725a84c99af7a3d78d81fb08b78f733b8222ec22b6f18a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf1a8056-b6f8-5c21-afe9-ee81787b9750', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1eb0de2e-ab84-592c-b328-8da0ab3da2d5', 1), '083eec02be85513c0b725a84c99af7a3d78d81fb08b78f733b8222ec22b6f18a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd.mp3', 5929, '2026-09-13 09:41:55.816524', '79dce82ff04bc06640ba39f8119011c0a5622b73d1e3a8fb571d4ca986d78e99', 'validated', '{"audio_key":"ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd","entity_key":"ex_crisis_communication_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79dce82ff04bc06640ba39f8119011c0a5622b73d1e3a8fb571d4ca986d78e99","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef3ee896d62ecf61994807b7cd04f11e31929ed8b497dcd6e9b3cc44b99238fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_speech_attribution_06 -> audio/generated/de-DE/utterances/f08cc5cef2905137098c5e7373a8d5520f54dd9188d4051294c2d1be6212df72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e0b65ed-aecc-5686-8012-8962832e0aa3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_speech_attribution_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6aa47b52459b0f0db51ef923751f13f2bb5d6e5171dec64ccd1a499f6325154'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01535c55-82e5-52fb-a408-c079cb6b946d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e0b65ed-aecc-5686-8012-8962832e0aa3', 1), 'c6aa47b52459b0f0db51ef923751f13f2bb5d6e5171dec64ccd1a499f6325154',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f08cc5cef2905137098c5e7373a8d5520f54dd9188d4051294c2d1be6212df72.mp3', 7366, '2026-09-13 09:41:57.479771', '670af68cfd2cd0f917f0504eef724fc82fa6c5dd6532112308e6848af8b01ab2', 'validated', '{"audio_key":"f08cc5cef2905137098c5e7373a8d5520f54dd9188d4051294c2d1be6212df72","entity_key":"u_reported_speech_attribution_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"670af68cfd2cd0f917f0504eef724fc82fa6c5dd6532112308e6848af8b01ab2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f08cc5cef2905137098c5e7373a8d5520f54dd9188d4051294c2d1be6212df72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_consensus_facilitation_01 -> audio/generated/de-DE/utterances/f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e56c824f-4762-5358-8a8b-2eb14a1db05b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_consensus_facilitation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc849a2ea6d5ef5470aaa8a247ed7b7f8e3df55a3b49df601bdcb3c4cfea9b44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c86966f7-4184-5c17-be2c-0b5145a83469', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e56c824f-4762-5358-8a8b-2eb14a1db05b', 1), 'fc849a2ea6d5ef5470aaa8a247ed7b7f8e3df55a3b49df601bdcb3c4cfea9b44',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596.mp3', 5982, '2026-09-13 09:41:57.370171', '32d979212e9ab302a3f6e76f5210864707b9a2a2d0c67b2608ac3c3e598ded9f', 'validated', '{"audio_key":"f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596","entity_key":"u_consensus_facilitation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32d979212e9ab302a3f6e76f5210864707b9a2a2d0c67b2608ac3c3e598ded9f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_consensus_facilitation_01_listen -> audio/generated/de-DE/utterances/f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ef074c41-fca1-53db-80c7-9ad18de1f3d7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_consensus_facilitation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc849a2ea6d5ef5470aaa8a247ed7b7f8e3df55a3b49df601bdcb3c4cfea9b44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b840f7e6-93a2-50f0-9410-62e1b3cbea3a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ef074c41-fca1-53db-80c7-9ad18de1f3d7', 1), 'fc849a2ea6d5ef5470aaa8a247ed7b7f8e3df55a3b49df601bdcb3c4cfea9b44',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596.mp3', 5982, '2026-09-13 09:41:57.370171', '32d979212e9ab302a3f6e76f5210864707b9a2a2d0c67b2608ac3c3e598ded9f', 'validated', '{"audio_key":"f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596","entity_key":"ex_consensus_facilitation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32d979212e9ab302a3f6e76f5210864707b9a2a2d0c67b2608ac3c3e598ded9f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f2d139f6629b7ee7afc1955fe018720ace892a8814229657eadfeae5e7411596.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_consensus_facilitation_03 -> audio/generated/de-DE/utterances/f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e2f97d38-160a-5ca2-abb5-08c4e46ff9e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_consensus_facilitation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b4434d763193f8f98fc5dfafcb5cd9abb6b70b48725cd3863811845be7be5b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('443f489a-e03f-5aee-a1af-460d3a0d9cff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e2f97d38-160a-5ca2-abb5-08c4e46ff9e2', 1), '2b4434d763193f8f98fc5dfafcb5cd9abb6b70b48725cd3863811845be7be5b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1.mp3', 5381, '2026-09-13 09:41:58.799808', 'ae1b884c006b517f22f387d6244cfc6ff93680c361b31bee896edcb76548ceb0', 'validated', '{"audio_key":"f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1","entity_key":"u_consensus_facilitation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae1b884c006b517f22f387d6244cfc6ff93680c361b31bee896edcb76548ceb0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_consensus_facilitation_02_listen -> audio/generated/de-DE/utterances/f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44b1b59e-f31f-55b3-99a0-bd997bfe2e84', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_consensus_facilitation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b4434d763193f8f98fc5dfafcb5cd9abb6b70b48725cd3863811845be7be5b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b12a4fad-0678-5abf-88af-cac22fd1f0a2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44b1b59e-f31f-55b3-99a0-bd997bfe2e84', 1), '2b4434d763193f8f98fc5dfafcb5cd9abb6b70b48725cd3863811845be7be5b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1.mp3', 5381, '2026-09-13 09:41:58.799808', 'ae1b884c006b517f22f387d6244cfc6ff93680c361b31bee896edcb76548ceb0', 'validated', '{"audio_key":"f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1","entity_key":"ex_consensus_facilitation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae1b884c006b517f22f387d6244cfc6ff93680c361b31bee896edcb76548ceb0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f4605a19fa079a69fb0fe9675e6a341db406fdad703d91bff11a36e0fcd47cc1.mp3"}'
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

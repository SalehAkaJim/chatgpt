-- Generated audio link import for de-DE B2
-- Source manifest: audio/manifests/de/B2-batch-3.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_time_management_01:1 -> audio/generated/de-DE/dialogues/0016dabfd4aa9fc090c7aac93faa1109cc09e8a6a1438643e18c6b39136cb1ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('301a3812-05b4-5d72-96fa-a341cbf4526e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d4d947edc98c1b18d3fdd107fd8cfb7c781f04bdad4a5d41056722e79d085f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f1748a1-b234-50b9-b9b2-1db88a7e3938', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('301a3812-05b4-5d72-96fa-a341cbf4526e', 1), '3d4d947edc98c1b18d3fdd107fd8cfb7c781f04bdad4a5d41056722e79d085f5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0016dabfd4aa9fc090c7aac93faa1109cc09e8a6a1438643e18c6b39136cb1ee.mp3', 3291, '2026-09-13 08:31:06.173299', '31cfd0721c7b27bd293c7f2381bc2c9a7a89ab7eda406d07771119607e70e4e0', 'validated', '{"audio_key":"0016dabfd4aa9fc090c7aac93faa1109cc09e8a6a1438643e18c6b39136cb1ee","entity_key":"d_time_management_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"31cfd0721c7b27bd293c7f2381bc2c9a7a89ab7eda406d07771119607e70e4e0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0016dabfd4aa9fc090c7aac93faa1109cc09e8a6a1438643e18c6b39136cb1ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:2 -> audio/generated/de-DE/dialogues/02bd432b80bd78478a0e3d0e4759412cc0b69f13e4ccb7e22cb954d43350d5b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20094f16-b450-5249-8a6b-e613a65bfc3f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '855bb7db957669c3c7868abe4c6ed9600299a3d21df4d23debce5ab62842df68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9a103dd-efd1-51b7-8af0-be84a3ba6574', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20094f16-b450-5249-8a6b-e613a65bfc3f', 1), '855bb7db957669c3c7868abe4c6ed9600299a3d21df4d23debce5ab62842df68',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/02bd432b80bd78478a0e3d0e4759412cc0b69f13e4ccb7e22cb954d43350d5b9.mp3', 2533, '2026-09-13 08:31:06.037696', 'f7632888de0c787c0e2791ea6bbbb23bba0263bfdd9eb230b23633258ff70049', 'validated', '{"audio_key":"02bd432b80bd78478a0e3d0e4759412cc0b69f13e4ccb7e22cb954d43350d5b9","entity_key":"d_contracts_subscriptions_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f7632888de0c787c0e2791ea6bbbb23bba0263bfdd9eb230b23633258ff70049","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/02bd432b80bd78478a0e3d0e4759412cc0b69f13e4ccb7e22cb954d43350d5b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_03:4 -> audio/generated/de-DE/dialogues/030b01821bc7acbe1e55b8860a28a0a8d8aaa2ebc1fe82874c24c8880b81c452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9835cb23-8ee3-599b-b921-cb6d546ad8c1', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8fb2bf6118d75384540cdde9da72f1c070451db760c703c9f8a17cd491369c2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71f81785-55e2-5341-ba96-ed3b86f4c6f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9835cb23-8ee3-599b-b921-cb6d546ad8c1', 1), '8fb2bf6118d75384540cdde9da72f1c070451db760c703c9f8a17cd491369c2e',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/030b01821bc7acbe1e55b8860a28a0a8d8aaa2ebc1fe82874c24c8880b81c452.mp3', 3996, '2026-09-13 08:31:07.346447', 'd7d37a91c9715ac292e10078421987a0a85b0dbaf95281d4de8e5f104d8c9a25', 'validated', '{"audio_key":"030b01821bc7acbe1e55b8860a28a0a8d8aaa2ebc1fe82874c24c8880b81c452","entity_key":"d_rental_repairs_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d7d37a91c9715ac292e10078421987a0a85b0dbaf95281d4de8e5f104d8c9a25","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/030b01821bc7acbe1e55b8860a28a0a8d8aaa2ebc1fe82874c24c8880b81c452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_03:2 -> audio/generated/de-DE/dialogues/03c36e44f74e4232388a6d2155b991c60568e7e748d55610bb9139e0773715cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('852d8134-39f0-5877-a4d2-69e76b8b4263', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf385ea98608f878a915bef5d0946390a0f2637bfed1e67b3c75874ce6099c26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c695a462-146f-526c-9fd3-334bc24d3d9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('852d8134-39f0-5877-a4d2-69e76b8b4263', 1), 'cf385ea98608f878a915bef5d0946390a0f2637bfed1e67b3c75874ce6099c26',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/03c36e44f74e4232388a6d2155b991c60568e7e748d55610bb9139e0773715cf.mp3', 3239, '2026-09-13 08:31:07.392186', 'e62c03c75bfbeffcb6e31a1569b2674c682f330663f8215d2bda1631d5cc3c38', 'validated', '{"audio_key":"03c36e44f74e4232388a6d2155b991c60568e7e748d55610bb9139e0773715cf","entity_key":"d_scenario_decisions_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e62c03c75bfbeffcb6e31a1569b2674c682f330663f8215d2bda1631d5cc3c38","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/03c36e44f74e4232388a6d2155b991c60568e7e748d55610bb9139e0773715cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_02:3 -> audio/generated/de-DE/dialogues/0f26bda8fe8a815c41ca2d9f5129c2aa7549c0c99dd47af7d999887d9181d010.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5740f7c8-2580-5c6f-90fc-4d04fee9bcf0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a134d6c112178c5d33a88cfa0a66c9ec374990a3557634d23e1a19426afab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15d9b69c-444c-5b35-a4e2-a6d6217882d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5740f7c8-2580-5c6f-90fc-4d04fee9bcf0', 1), 'f6a134d6c112178c5d33a88cfa0a66c9ec374990a3557634d23e1a19426afab8',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0f26bda8fe8a815c41ca2d9f5129c2aa7549c0c99dd47af7d999887d9181d010.mp3', 3108, '2026-09-13 08:31:08.522397', 'd74087d0c1f9bc5394e1cc4c2a4b223e19ebcb8b2ad920c414d5eb6eb8286831', 'validated', '{"audio_key":"0f26bda8fe8a815c41ca2d9f5129c2aa7549c0c99dd47af7d999887d9181d010","entity_key":"d_conflict_mediation_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d74087d0c1f9bc5394e1cc4c2a4b223e19ebcb8b2ad920c414d5eb6eb8286831","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0f26bda8fe8a815c41ca2d9f5129c2aa7549c0c99dd47af7d999887d9181d010.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_01:3 -> audio/generated/de-DE/dialogues/0f8b0dcc301084dcc09722b73756dc9554403d77951d50e8e843e2239a733dd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e12a09db-48dd-5c3e-983f-56de6e75f5f1', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da03c3f353e3e5ab1e57bebe4a4add3d948c77f1d9a9cae2171d6929ea134e35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c34701a-706c-5227-ba5c-3044744598ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e12a09db-48dd-5c3e-983f-56de6e75f5f1', 1), 'da03c3f353e3e5ab1e57bebe4a4add3d948c77f1d9a9cae2171d6929ea134e35',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0f8b0dcc301084dcc09722b73756dc9554403d77951d50e8e843e2239a733dd7.mp3', 1854, '2026-09-13 08:31:08.534956', '29d31aab1b9e27ebc8c8d3dc3226f1a8196477cbd28b3560785c299d7894dbce', 'validated', '{"audio_key":"0f8b0dcc301084dcc09722b73756dc9554403d77951d50e8e843e2239a733dd7","entity_key":"d_time_management_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"29d31aab1b9e27ebc8c8d3dc3226f1a8196477cbd28b3560785c299d7894dbce","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0f8b0dcc301084dcc09722b73756dc9554403d77951d50e8e843e2239a733dd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_01:2 -> audio/generated/de-DE/dialogues/103cf5f4d80b6a799d26f8f70ad2ae450eee6d5bd3a6cb5038fa606170ccca87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88988cd7-5728-53bc-8a04-8281c4e0b83a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6ad4fd6d3339ca87209ea08aea5388288b7396a70f02940481cdc97aaa78102'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20b72091-30a1-53af-bd27-af711c864c62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88988cd7-5728-53bc-8a04-8281c4e0b83a', 1), 'd6ad4fd6d3339ca87209ea08aea5388288b7396a70f02940481cdc97aaa78102',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/103cf5f4d80b6a799d26f8f70ad2ae450eee6d5bd3a6cb5038fa606170ccca87.mp3', 4362, '2026-09-13 08:31:09.863409', 'c411105f483e860ed877571416943c336d819214f9930d138dd911b60ff6159e', 'validated', '{"audio_key":"103cf5f4d80b6a799d26f8f70ad2ae450eee6d5bd3a6cb5038fa606170ccca87","entity_key":"d_bureaucracy_appointments_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c411105f483e860ed877571416943c336d819214f9930d138dd911b60ff6159e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/103cf5f4d80b6a799d26f8f70ad2ae450eee6d5bd3a6cb5038fa606170ccca87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_03:1 -> audio/generated/de-DE/dialogues/134a194c15170fd13159a8159f587e6afdf491b2f1e5664a4d65f1acc23fec53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('526d40bd-21cb-525f-b8fc-13387fd421bd', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c21d6f78d0abd3bc5d86286eadda6358f5d165c098f0e836d9a47111192d94b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74a6a1fa-185b-5b5a-8eab-ba4614af4015', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('526d40bd-21cb-525f-b8fc-13387fd421bd', 1), 'c21d6f78d0abd3bc5d86286eadda6358f5d165c098f0e836d9a47111192d94b1',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/134a194c15170fd13159a8159f587e6afdf491b2f1e5664a4d65f1acc23fec53.mp3', 3787, '2026-09-13 08:31:09.829912', 'ceace593c682b47eec89d183754e4c9e70e10202ff4c079984e7a7e3b2cb13fd', 'validated', '{"audio_key":"134a194c15170fd13159a8159f587e6afdf491b2f1e5664a4d65f1acc23fec53","entity_key":"d_event_organization_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ceace593c682b47eec89d183754e4c9e70e10202ff4c079984e7a7e3b2cb13fd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/134a194c15170fd13159a8159f587e6afdf491b2f1e5664a4d65f1acc23fec53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_03:4 -> audio/generated/de-DE/dialogues/14dc7a645d21ac1fcda9007d646bc2df8a788eb254115a2b1e261ff63b95ed2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b715f05-3cec-565d-9cc4-fe70518ab685', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69d874bea0e273b6eaf8506acdefdc51bfd2b46c2ececa08fe956bc3ca25942a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3edac3a1-3c22-5242-b317-358551819e4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b715f05-3cec-565d-9cc4-fe70518ab685', 1), '69d874bea0e273b6eaf8506acdefdc51bfd2b46c2ececa08fe956bc3ca25942a',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/14dc7a645d21ac1fcda9007d646bc2df8a788eb254115a2b1e261ff63b95ed2c.mp3', 1906, '2026-09-13 08:31:10.862953', 'f718795981bebb9eef33866e7d42c5470ab514c03d35b3848354eec72284fda8', 'validated', '{"audio_key":"14dc7a645d21ac1fcda9007d646bc2df8a788eb254115a2b1e261ff63b95ed2c","entity_key":"d_time_management_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f718795981bebb9eef33866e7d42c5470ab514c03d35b3848354eec72284fda8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/14dc7a645d21ac1fcda9007d646bc2df8a788eb254115a2b1e261ff63b95ed2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_02:3 -> audio/generated/de-DE/dialogues/1b83311992522d03c19ba05a2833bd40512f97c3e8fcb2f8edfacfe66489bf6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32e37207-cb29-5bd7-af73-45f0577e9351', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d2aae42a4950c0584d860585897854b9d8bfcf64123711448118090eade9c6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('577136f5-40ef-5a03-ad34-9bace66141fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32e37207-cb29-5bd7-af73-45f0577e9351', 1), '0d2aae42a4950c0584d860585897854b9d8bfcf64123711448118090eade9c6f',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b83311992522d03c19ba05a2833bd40512f97c3e8fcb2f8edfacfe66489bf6c.mp3', 3056, '2026-09-13 08:31:11.035566', '7a6191687edf15ea4fdce39c9312d8df1e4a245e676c55663856896a195a9f13', 'validated', '{"audio_key":"1b83311992522d03c19ba05a2833bd40512f97c3e8fcb2f8edfacfe66489bf6c","entity_key":"d_bureaucracy_appointments_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7a6191687edf15ea4fdce39c9312d8df1e4a245e676c55663856896a195a9f13","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1b83311992522d03c19ba05a2833bd40512f97c3e8fcb2f8edfacfe66489bf6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:4 -> audio/generated/de-DE/dialogues/1bbe246e1110d6235520f7e98b3d9e32ae559c59eab9e642556d47a71054cf16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23b2a58f-5e23-576c-962b-582838f291b4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '035e673cb3a65373075bd88560a3e46fd7fafecc6cd96ad00ca4b73d92f1a6ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('492d7afb-477e-5908-a1f8-2694e745e8e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23b2a58f-5e23-576c-962b-582838f291b4', 1), '035e673cb3a65373075bd88560a3e46fd7fafecc6cd96ad00ca4b73d92f1a6ea',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1bbe246e1110d6235520f7e98b3d9e32ae559c59eab9e642556d47a71054cf16.mp3', 2586, '2026-09-13 08:31:11.984485', 'e52caeb133b61bfe59c04145d240da2b91806ed44049401451a937e7dccb381f', 'validated', '{"audio_key":"1bbe246e1110d6235520f7e98b3d9e32ae559c59eab9e642556d47a71054cf16","entity_key":"d_contracts_subscriptions_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e52caeb133b61bfe59c04145d240da2b91806ed44049401451a937e7dccb381f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1bbe246e1110d6235520f7e98b3d9e32ae559c59eab9e642556d47a71054cf16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_01:1 -> audio/generated/de-DE/dialogues/1cf60bbbed669167d8094f2180308cc78b08707b1c70e1a271cd7ff4086d935f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e26ac880-f829-50df-9333-a3959e57a835', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2749baca1a2d57d92271519b0b502101a1e917b4d7ce4ca73f2b3079c4b522f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13c1038b-8b62-50c7-8081-46b7cfec47cd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e26ac880-f829-50df-9333-a3959e57a835', 1), 'c2749baca1a2d57d92271519b0b502101a1e917b4d7ce4ca73f2b3079c4b522f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1cf60bbbed669167d8094f2180308cc78b08707b1c70e1a271cd7ff4086d935f.mp3', 4414, '2026-09-13 08:31:12.360104', 'e1d3d918a3011d053d883642db0b21f3481b8bcd7fbfe5f1a9a5bb18f09b28eb', 'validated', '{"audio_key":"1cf60bbbed669167d8094f2180308cc78b08707b1c70e1a271cd7ff4086d935f","entity_key":"d_bureaucracy_appointments_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e1d3d918a3011d053d883642db0b21f3481b8bcd7fbfe5f1a9a5bb18f09b28eb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1cf60bbbed669167d8094f2180308cc78b08707b1c70e1a271cd7ff4086d935f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_01:2 -> audio/generated/de-DE/dialogues/1d92248a773bca5c6eaddc4fb68e879efe15fb1169c440ab9855251f7bd351c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b69b1979-5818-522f-8fc3-ac893dffc527', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '901ec8e716719fef0311f4919c00e7bdc0df0897315e39141358d207e2e1550a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5880fa8-2727-54cb-9412-696e515ece87', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b69b1979-5818-522f-8fc3-ac893dffc527', 1), '901ec8e716719fef0311f4919c00e7bdc0df0897315e39141358d207e2e1550a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d92248a773bca5c6eaddc4fb68e879efe15fb1169c440ab9855251f7bd351c6.mp3', 3422, '2026-09-13 08:31:13.384882', '743e90f583340795f0517c9789f83987b78f5719a3db0ce11eece48ee6bf2dd2', 'validated', '{"audio_key":"1d92248a773bca5c6eaddc4fb68e879efe15fb1169c440ab9855251f7bd351c6","entity_key":"d_technical_explanations_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"743e90f583340795f0517c9789f83987b78f5719a3db0ce11eece48ee6bf2dd2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1d92248a773bca5c6eaddc4fb68e879efe15fb1169c440ab9855251f7bd351c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_01:3 -> audio/generated/de-DE/dialogues/1d968460f9f9fd094bc8e71969d57c4e602d836de0f1e7a1c84a2e30af7436fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61968575-ca89-5787-84b7-ef57d65b874e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58616f6cde25fbfcd94ada49811f435d8d8bd49a87f9bd58c7c0d82c83f765ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbd58d81-cfc2-5627-a232-d25ae290dd59', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61968575-ca89-5787-84b7-ef57d65b874e', 1), '58616f6cde25fbfcd94ada49811f435d8d8bd49a87f9bd58c7c0d82c83f765ef',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d968460f9f9fd094bc8e71969d57c4e602d836de0f1e7a1c84a2e30af7436fe.mp3', 3657, '2026-09-13 08:31:13.612096', '94fc0b12135da490ac9d944d13f801dbbae1e37c5e33430c8b932eb54a4787fb', 'validated', '{"audio_key":"1d968460f9f9fd094bc8e71969d57c4e602d836de0f1e7a1c84a2e30af7436fe","entity_key":"d_conflict_mediation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"94fc0b12135da490ac9d944d13f801dbbae1e37c5e33430c8b932eb54a4787fb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1d968460f9f9fd094bc8e71969d57c4e602d836de0f1e7a1c84a2e30af7436fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_01:4 -> audio/generated/de-DE/dialogues/2741815e6694d513877a61a671812b85374d3d50892482196f7259676860ef6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55743408-83e0-5482-9a64-8b0e425c5f87', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ceb3ed784351cf466a91f9cdd9fd41a783b68ffb662d5d3208e9f5247e0400af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9e1ec66-5f7d-5f70-aa3d-a63714d465f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55743408-83e0-5482-9a64-8b0e425c5f87', 1), 'ceb3ed784351cf466a91f9cdd9fd41a783b68ffb662d5d3208e9f5247e0400af',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2741815e6694d513877a61a671812b85374d3d50892482196f7259676860ef6b.mp3', 3761, '2026-09-13 08:31:14.589185', 'be2f2fe3b929239cf3e170a47ba0a0e0f06c27f6522754a17b1e9403c79a176a', 'validated', '{"audio_key":"2741815e6694d513877a61a671812b85374d3d50892482196f7259676860ef6b","entity_key":"d_conflict_mediation_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"be2f2fe3b929239cf3e170a47ba0a0e0f06c27f6522754a17b1e9403c79a176a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2741815e6694d513877a61a671812b85374d3d50892482196f7259676860ef6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_03:3 -> audio/generated/de-DE/dialogues/282cb61a6a040d56d3eb75c7c41274839726027d301e4d589980d17241f4366e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('080a666c-f55c-5e5a-9a8c-b3dd1d657eae', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8d370160ae78e0c0ef87b7603a36f3a7616204c5034711d75dca19583ebd860'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ff25aed-4f13-505d-bb01-a25a4152391c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('080a666c-f55c-5e5a-9a8c-b3dd1d657eae', 1), 'a8d370160ae78e0c0ef87b7603a36f3a7616204c5034711d75dca19583ebd860',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/282cb61a6a040d56d3eb75c7c41274839726027d301e4d589980d17241f4366e.mp3', 5381, '2026-09-13 08:31:15.024531', 'f0603162e4319475ace1b4e958388d9a073cd0e965c3ff758400c9658e67ce3b', 'validated', '{"audio_key":"282cb61a6a040d56d3eb75c7c41274839726027d301e4d589980d17241f4366e","entity_key":"d_bureaucracy_appointments_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f0603162e4319475ace1b4e958388d9a073cd0e965c3ff758400c9658e67ce3b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/282cb61a6a040d56d3eb75c7c41274839726027d301e4d589980d17241f4366e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_02:4 -> audio/generated/de-DE/dialogues/287757a1963de3f447b5d881382bd195eef24d264ef0eba68a8148bca87015f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9acf0e18-4eec-5751-8b7d-44890d2210f1', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5f0deff071f39250df5567a539226a2f0ef8f639d1a2fce1b89e094b3150e81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bec18ac2-176f-5a4e-91f1-5bd49e91ed2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9acf0e18-4eec-5751-8b7d-44890d2210f1', 1), 'b5f0deff071f39250df5567a539226a2f0ef8f639d1a2fce1b89e094b3150e81',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/287757a1963de3f447b5d881382bd195eef24d264ef0eba68a8148bca87015f9.mp3', 5459, '2026-09-13 08:31:16.050535', 'da431360a2f1db72741c7aeefe07e3e0fdbacb0506cd14d75379f715bb22de26', 'validated', '{"audio_key":"287757a1963de3f447b5d881382bd195eef24d264ef0eba68a8148bca87015f9","entity_key":"d_bureaucracy_appointments_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"da431360a2f1db72741c7aeefe07e3e0fdbacb0506cd14d75379f715bb22de26","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/287757a1963de3f447b5d881382bd195eef24d264ef0eba68a8148bca87015f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_01:2 -> audio/generated/de-DE/dialogues/2a7a11cce4cca512b6dab2931e1acd13560458f6a66ece012305fcfc01df7bf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85a30919-ebc3-5b00-bbc3-4b0e53174416', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bf3c613df6d730e5836b5af5b79fb2df452a19b94dc7e45ddc5922620c6da2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c796d47-9d21-5cff-9159-495e3c6f7a5c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85a30919-ebc3-5b00-bbc3-4b0e53174416', 1), '6bf3c613df6d730e5836b5af5b79fb2df452a19b94dc7e45ddc5922620c6da2c',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a7a11cce4cca512b6dab2931e1acd13560458f6a66ece012305fcfc01df7bf5.mp3', 2220, '2026-09-13 08:31:16.160876', '1d349014a6e9e25484b51c448cd28f0ff1fb28ba9d016638fa8f9f8d12aa2cc3', 'validated', '{"audio_key":"2a7a11cce4cca512b6dab2931e1acd13560458f6a66ece012305fcfc01df7bf5","entity_key":"d_hybrid_collaboration_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1d349014a6e9e25484b51c448cd28f0ff1fb28ba9d016638fa8f9f8d12aa2cc3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2a7a11cce4cca512b6dab2931e1acd13560458f6a66ece012305fcfc01df7bf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_02:4 -> audio/generated/de-DE/dialogues/2a8c7ff0a4bdfb8ba9f5cba6564635d8cfe63d6ccfc5d62573e93e7744cffe50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab872e46-ece5-514e-ab8f-ed44f6e6c822', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bb56aac7aa85fe4c9b9ecd14747b02778b2d527ec34ee9c60f761db7ab09f8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6fc5d7f-c164-5b17-b972-48ab578871e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab872e46-ece5-514e-ab8f-ed44f6e6c822', 1), '2bb56aac7aa85fe4c9b9ecd14747b02778b2d527ec34ee9c60f761db7ab09f8e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a8c7ff0a4bdfb8ba9f5cba6564635d8cfe63d6ccfc5d62573e93e7744cffe50.mp3', 5276, '2026-09-13 08:31:17.445072', 'b37e9b2d036409cdd09d7aafe27ba4a4f34acded3c871c963f55df3c44d86e37', 'validated', '{"audio_key":"2a8c7ff0a4bdfb8ba9f5cba6564635d8cfe63d6ccfc5d62573e93e7744cffe50","entity_key":"d_technical_explanations_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b37e9b2d036409cdd09d7aafe27ba4a4f34acded3c871c963f55df3c44d86e37","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2a8c7ff0a4bdfb8ba9f5cba6564635d8cfe63d6ccfc5d62573e93e7744cffe50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_02:1 -> audio/generated/de-DE/dialogues/2df8629ae6f0aa9233ff05a3a33509857dd569f569e7c2fa42653e2d7a64262f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a446b1d-69e7-5ef8-ad12-1b401a865a5b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8fe9ccf432d3b2515b1d90d305d8e7d9357c9cb8b59fd59b0d1bcd882710a47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82cc4fb1-3e1a-57ce-90a6-3e13ec5df517', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a446b1d-69e7-5ef8-ad12-1b401a865a5b', 1), 'f8fe9ccf432d3b2515b1d90d305d8e7d9357c9cb8b59fd59b0d1bcd882710a47',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2df8629ae6f0aa9233ff05a3a33509857dd569f569e7c2fa42653e2d7a64262f.mp3', 2742, '2026-09-13 08:31:17.270386', '8efc9930921d345c45d329c5e9b99908050a4b937a6033300d29ed7b7ea7a364', 'validated', '{"audio_key":"2df8629ae6f0aa9233ff05a3a33509857dd569f569e7c2fa42653e2d7a64262f","entity_key":"d_technical_explanations_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8efc9930921d345c45d329c5e9b99908050a4b937a6033300d29ed7b7ea7a364","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2df8629ae6f0aa9233ff05a3a33509857dd569f569e7c2fa42653e2d7a64262f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_03:3 -> audio/generated/de-DE/dialogues/2e05bb5d2fc36c63fd4d9b56c92e4aa1570f3314f805a35ffcb4e3fbb56f353d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d7cd3c75-cbec-549d-b8d8-d8d70a0dbf16', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3f71ac6e5cba4a8f426ebf491fd37ee6c32fa0c3cd1dd8c9ca9a97efdf24d88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34566003-e0cc-5c19-8589-aa144c7f8ff2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d7cd3c75-cbec-549d-b8d8-d8d70a0dbf16', 1), 'f3f71ac6e5cba4a8f426ebf491fd37ee6c32fa0c3cd1dd8c9ca9a97efdf24d88',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e05bb5d2fc36c63fd4d9b56c92e4aa1570f3314f805a35ffcb4e3fbb56f353d.mp3', 4597, '2026-09-13 08:31:18.613278', 'dfab3e7abfacc5b2da319644e2b0a6b9f5535636840821a48f60a9bb2b3442ee', 'validated', '{"audio_key":"2e05bb5d2fc36c63fd4d9b56c92e4aa1570f3314f805a35ffcb4e3fbb56f353d","entity_key":"d_hybrid_collaboration_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dfab3e7abfacc5b2da319644e2b0a6b9f5535636840821a48f60a9bb2b3442ee","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2e05bb5d2fc36c63fd4d9b56c92e4aa1570f3314f805a35ffcb4e3fbb56f353d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_02:2 -> audio/generated/de-DE/dialogues/2eaff732e3f3010a56a6c0d7c2020e7d8a7a9b9619c3abf52e2230621d0a5e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c895502-7197-54f0-8f51-ef683634a116', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccf73038953f4dbf46db414d29840f44da029458db09daffd7576a9e3b3f0a5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6e757e5-0942-5024-85bc-252d9fa88669', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c895502-7197-54f0-8f51-ef683634a116', 1), 'ccf73038953f4dbf46db414d29840f44da029458db09daffd7576a9e3b3f0a5f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2eaff732e3f3010a56a6c0d7c2020e7d8a7a9b9619c3abf52e2230621d0a5e00.mp3', 3578, '2026-09-13 08:31:18.739917', 'dd44ce737b2ffbfce9671cbbf9a3cf4d3b662bedf71cfd6c5397da6f1e1f623c', 'validated', '{"audio_key":"2eaff732e3f3010a56a6c0d7c2020e7d8a7a9b9619c3abf52e2230621d0a5e00","entity_key":"d_hybrid_collaboration_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dd44ce737b2ffbfce9671cbbf9a3cf4d3b662bedf71cfd6c5397da6f1e1f623c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2eaff732e3f3010a56a6c0d7c2020e7d8a7a9b9619c3abf52e2230621d0a5e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_02:1 -> audio/generated/de-DE/dialogues/2f1df4130c1d23cb42b05e8ff43ef629e2a395b74657f7cc609f7d757f581ba9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15ce0456-e671-5419-904a-45e206ff1929', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b466561d3c77cc560f4bfce489dc44ce2611abbacb48a12dac5a6a64446df4a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b443df3a-634a-5d78-8777-14044c5dac16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15ce0456-e671-5419-904a-45e206ff1929', 1), 'b466561d3c77cc560f4bfce489dc44ce2611abbacb48a12dac5a6a64446df4a5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2f1df4130c1d23cb42b05e8ff43ef629e2a395b74657f7cc609f7d757f581ba9.mp3', 4780, '2026-09-13 08:31:19.983066', '9900be40d460d9401b29c8e66257e3e090428b4d1df4eaf629a6ac6df8de6868', 'validated', '{"audio_key":"2f1df4130c1d23cb42b05e8ff43ef629e2a395b74657f7cc609f7d757f581ba9","entity_key":"d_time_management_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9900be40d460d9401b29c8e66257e3e090428b4d1df4eaf629a6ac6df8de6868","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2f1df4130c1d23cb42b05e8ff43ef629e2a395b74657f7cc609f7d757f581ba9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_03:1 -> audio/generated/de-DE/dialogues/338b27fb7719dac9a582b48e99a56a30a09b8536ad33bd32e10d059f4d54b7d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a770b35-cca1-5b33-ac33-f754e1d9e0fe', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a1a36ef41c1cf5120e7dcadf04d105aec51343d5f9e2d0bcda8a9c879765fd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d197328-f47b-5854-b096-6c05605e1c51', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a770b35-cca1-5b33-ac33-f754e1d9e0fe', 1), '8a1a36ef41c1cf5120e7dcadf04d105aec51343d5f9e2d0bcda8a9c879765fd8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/338b27fb7719dac9a582b48e99a56a30a09b8536ad33bd32e10d059f4d54b7d3.mp3', 4728, '2026-09-13 08:31:20.201230', '3fe76b095d55b2a80ff86e59bf7aae03b042d17d878f3bc37767c7ff3f0977b6', 'validated', '{"audio_key":"338b27fb7719dac9a582b48e99a56a30a09b8536ad33bd32e10d059f4d54b7d3","entity_key":"d_scenario_decisions_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3fe76b095d55b2a80ff86e59bf7aae03b042d17d878f3bc37767c7ff3f0977b6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/338b27fb7719dac9a582b48e99a56a30a09b8536ad33bd32e10d059f4d54b7d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_02:2 -> audio/generated/de-DE/dialogues/34230121814bd6fa2144d8f688ce1169a048f008c02808b24d118c1d06033582.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('715d123f-1e96-5acf-8b3f-acd16661a4bb', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd54924c2019be3e656846dffc73af900369671e5d4a158236f7935e827c178e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d396fc85-7516-529e-a5ca-642d1483a40d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('715d123f-1e96-5acf-8b3f-acd16661a4bb', 1), 'cd54924c2019be3e656846dffc73af900369671e5d4a158236f7935e827c178e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/34230121814bd6fa2144d8f688ce1169a048f008c02808b24d118c1d06033582.mp3', 5616, '2026-09-13 08:31:21.468080', '0924dba9aa3440a182a0cc6b7e49d1311e97f7b485fe7a2e1a8b2fb9bf503cbc', 'validated', '{"audio_key":"34230121814bd6fa2144d8f688ce1169a048f008c02808b24d118c1d06033582","entity_key":"d_bureaucracy_appointments_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0924dba9aa3440a182a0cc6b7e49d1311e97f7b485fe7a2e1a8b2fb9bf503cbc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/34230121814bd6fa2144d8f688ce1169a048f008c02808b24d118c1d06033582.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_03:2 -> audio/generated/de-DE/dialogues/3597400d23a7ba6e895889b4509c137d727c1e8f01d5234fb3dbbdf63e2d3608.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('717898ac-d2c2-5d1c-9fd2-166c2f76c68e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '232704c6676e44f557960bb8bc31f0fc260cfc24509c361d9fe30c17f21ad634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac23e1db-3c3b-55e0-bdd8-e00fe8858542', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('717898ac-d2c2-5d1c-9fd2-166c2f76c68e', 1), '232704c6676e44f557960bb8bc31f0fc260cfc24509c361d9fe30c17f21ad634',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3597400d23a7ba6e895889b4509c137d727c1e8f01d5234fb3dbbdf63e2d3608.mp3', 2089, '2026-09-13 08:31:21.228835', '67d2cae02ad522ffe8068a80af386243265185d688fdca8ba71c62a2332f3fff', 'validated', '{"audio_key":"3597400d23a7ba6e895889b4509c137d727c1e8f01d5234fb3dbbdf63e2d3608","entity_key":"d_rental_repairs_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"67d2cae02ad522ffe8068a80af386243265185d688fdca8ba71c62a2332f3fff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3597400d23a7ba6e895889b4509c137d727c1e8f01d5234fb3dbbdf63e2d3608.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:3 -> audio/generated/de-DE/dialogues/359c0b4d791434a0bee23b14ca1bf6c41eebb982f55b7f70ea3846ad9a2a5699.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93c7a605-cc88-5056-83cb-a6126f6df2d8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '126659657620ce26cf4cacef9fa5360a03cbb9bb713b3b7b32433a5dede683d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5cc6aca-a080-5385-be00-345b0d9b1ae6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93c7a605-cc88-5056-83cb-a6126f6df2d8', 1), '126659657620ce26cf4cacef9fa5360a03cbb9bb713b3b7b32433a5dede683d5',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/359c0b4d791434a0bee23b14ca1bf6c41eebb982f55b7f70ea3846ad9a2a5699.mp3', 3343, '2026-09-13 08:31:22.411309', 'f69fdbf048067186747b00086c007fd5f61bb8b57731284c30c011280a74a303', 'validated', '{"audio_key":"359c0b4d791434a0bee23b14ca1bf6c41eebb982f55b7f70ea3846ad9a2a5699","entity_key":"d_contracts_subscriptions_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f69fdbf048067186747b00086c007fd5f61bb8b57731284c30c011280a74a303","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/359c0b4d791434a0bee23b14ca1bf6c41eebb982f55b7f70ea3846ad9a2a5699.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:4 -> audio/generated/de-DE/dialogues/36080c84cf58b0a6baf72be27be6e529148eb0b68d26584a9c716ab4e15c0574.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9b587b0-54b9-50ca-a260-a05b26ae89ae', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a95a00d0c0821518421be1c9c17843928866a51fedd82b30cbf59697ccb389cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c7f1dbe-85e1-52e9-990f-af4740af2b85', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9b587b0-54b9-50ca-a260-a05b26ae89ae', 1), 'a95a00d0c0821518421be1c9c17843928866a51fedd82b30cbf59697ccb389cb',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/36080c84cf58b0a6baf72be27be6e529148eb0b68d26584a9c716ab4e15c0574.mp3', 3657, '2026-09-13 08:31:22.726880', '43d23b37f933e5e77bb4e2fb2d2cbe9f45726dc8b14653b8abcf26027cfb4ecd', 'validated', '{"audio_key":"36080c84cf58b0a6baf72be27be6e529148eb0b68d26584a9c716ab4e15c0574","entity_key":"d_contracts_subscriptions_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"43d23b37f933e5e77bb4e2fb2d2cbe9f45726dc8b14653b8abcf26027cfb4ecd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/36080c84cf58b0a6baf72be27be6e529148eb0b68d26584a9c716ab4e15c0574.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_01:3 -> audio/generated/de-DE/dialogues/380d42c9e2d4842ceb5c050d465aa6e71dcd1d257d5c760a63ecd37db5bf01a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e914ca4b-8e0a-5665-b6fa-c2f18c5e2c5a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '290b45f2a30303f8049cde2d8b1be7ac1ebf6e76028182e6c817e1e1978cb9bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77daa182-36e0-59de-a638-b86563391818', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e914ca4b-8e0a-5665-b6fa-c2f18c5e2c5a', 1), '290b45f2a30303f8049cde2d8b1be7ac1ebf6e76028182e6c817e1e1978cb9bb',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/380d42c9e2d4842ceb5c050d465aa6e71dcd1d257d5c760a63ecd37db5bf01a1.mp3', 3239, '2026-09-13 08:31:23.619100', 'f24347950f6cb52f4248cc720cf1f45e4941ced12ecf4409d45882d9eecbd96e', 'validated', '{"audio_key":"380d42c9e2d4842ceb5c050d465aa6e71dcd1d257d5c760a63ecd37db5bf01a1","entity_key":"d_bureaucracy_appointments_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f24347950f6cb52f4248cc720cf1f45e4941ced12ecf4409d45882d9eecbd96e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/380d42c9e2d4842ceb5c050d465aa6e71dcd1d257d5c760a63ecd37db5bf01a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_01:2 -> audio/generated/de-DE/dialogues/391142757356c67bfa8918cc50ddaa7e018667a2b07f3da4612effdce3edee41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('484fd2e8-7d52-5159-bbc9-31efdd30e9ce', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c79fd84248fc78703086f4031b6cea25bbdf3767c09438f434464ae16036ffcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d3bc690-cb97-5e5b-877f-8a8bc3f7182c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('484fd2e8-7d52-5159-bbc9-31efdd30e9ce', 1), 'c79fd84248fc78703086f4031b6cea25bbdf3767c09438f434464ae16036ffcf',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/391142757356c67bfa8918cc50ddaa7e018667a2b07f3da4612effdce3edee41.mp3', 2168, '2026-09-13 08:31:23.785448', '573c3c6763d48a098f587e9b44ed78a69d345b9e6be9d1e34c49794fd3bf900e', 'validated', '{"audio_key":"391142757356c67bfa8918cc50ddaa7e018667a2b07f3da4612effdce3edee41","entity_key":"d_time_management_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"573c3c6763d48a098f587e9b44ed78a69d345b9e6be9d1e34c49794fd3bf900e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/391142757356c67bfa8918cc50ddaa7e018667a2b07f3da4612effdce3edee41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_01:1 -> audio/generated/de-DE/dialogues/3a7443aa5304550ce8aec7d7d5d20372690d0bedb7e51e5eb35127e43ef745d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8059dc5-0ffc-5bfa-b0cf-05c148e5ea78', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19c868d0cc8d8f30029436b25995fd7cc18b9835134d10ec24f22e2b4cbf043c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54cc3838-e7a5-55b3-ae5b-11bcb2f0fc51', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8059dc5-0ffc-5bfa-b0cf-05c148e5ea78', 1), '19c868d0cc8d8f30029436b25995fd7cc18b9835134d10ec24f22e2b4cbf043c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3a7443aa5304550ce8aec7d7d5d20372690d0bedb7e51e5eb35127e43ef745d2.mp3', 2507, '2026-09-13 08:31:24.764428', 'bb173eac1c6a58edf381d24e4fd50a884bba1f029969bc501cdd345808c5dc73', 'validated', '{"audio_key":"3a7443aa5304550ce8aec7d7d5d20372690d0bedb7e51e5eb35127e43ef745d2","entity_key":"d_conflict_mediation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bb173eac1c6a58edf381d24e4fd50a884bba1f029969bc501cdd345808c5dc73","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3a7443aa5304550ce8aec7d7d5d20372690d0bedb7e51e5eb35127e43ef745d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_01:3 -> audio/generated/de-DE/dialogues/3aaf4592af3433a19358d4c0a38646be61ff6f39335eb515ebffbb4fdc92727f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a829f95-7cde-5902-9430-6b8d7a7c1d1e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd1bf984c744bf8eaf2a79a4f0aaca3d83c5e40e101fb9dbfb3e7e3630fed1d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d5ccb14-43ed-52ae-9855-887dc6ee38d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a829f95-7cde-5902-9430-6b8d7a7c1d1e', 1), 'cd1bf984c744bf8eaf2a79a4f0aaca3d83c5e40e101fb9dbfb3e7e3630fed1d4',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3aaf4592af3433a19358d4c0a38646be61ff6f39335eb515ebffbb4fdc92727f.mp3', 2533, '2026-09-13 08:31:24.863008', '35dfaefa343fc394e24f2309549244a7904a358e9d85536e047ba93f859a7fdc', 'validated', '{"audio_key":"3aaf4592af3433a19358d4c0a38646be61ff6f39335eb515ebffbb4fdc92727f","entity_key":"d_event_organization_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"35dfaefa343fc394e24f2309549244a7904a358e9d85536e047ba93f859a7fdc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3aaf4592af3433a19358d4c0a38646be61ff6f39335eb515ebffbb4fdc92727f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:1 -> audio/generated/de-DE/dialogues/3bc3089f72280761d8ee54579524badc26d20c1d8750bfec56b326cdf609dbb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1877f18-4d7b-5a26-a259-140080fd42fd', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4869385798d8e7228328f491884212d5e014ff86d55ad41239ef93db72ee022d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b985f25-f584-5fee-ae23-c48ed332c106', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1877f18-4d7b-5a26-a259-140080fd42fd', 1), '4869385798d8e7228328f491884212d5e014ff86d55ad41239ef93db72ee022d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3bc3089f72280761d8ee54579524badc26d20c1d8750bfec56b326cdf609dbb2.mp3', 4310, '2026-09-13 08:31:26.098721', 'bf5d95d5f83f7674f69b10b5166fa47e41a1cc2f8a102d5eba7d13ef09117b5f', 'validated', '{"audio_key":"3bc3089f72280761d8ee54579524badc26d20c1d8750bfec56b326cdf609dbb2","entity_key":"d_contracts_subscriptions_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bf5d95d5f83f7674f69b10b5166fa47e41a1cc2f8a102d5eba7d13ef09117b5f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3bc3089f72280761d8ee54579524badc26d20c1d8750bfec56b326cdf609dbb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_02:1 -> audio/generated/de-DE/dialogues/3ef14e47925e11ce7ab2b5d612b7cf3bef3f75bfc30daef3d455bfefc3925913.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bf91790-181a-5758-9bb1-81b4e1ba6c84', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4cab19221ed1d59aca7cb48c653e2681019132a4a40b86b12782e7e27257c6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3af2c4f-3f6c-526a-b7be-9612c91708fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bf91790-181a-5758-9bb1-81b4e1ba6c84', 1), 'b4cab19221ed1d59aca7cb48c653e2681019132a4a40b86b12782e7e27257c6a',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ef14e47925e11ce7ab2b5d612b7cf3bef3f75bfc30daef3d455bfefc3925913.mp3', 4022, '2026-09-13 08:31:26.217023', 'f32d05bb4c857fc6290f5ffdb324bc704e47580ecc4fe4b0803e2c182537e7c1', 'validated', '{"audio_key":"3ef14e47925e11ce7ab2b5d612b7cf3bef3f75bfc30daef3d455bfefc3925913","entity_key":"d_event_organization_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f32d05bb4c857fc6290f5ffdb324bc704e47580ecc4fe4b0803e2c182537e7c1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3ef14e47925e11ce7ab2b5d612b7cf3bef3f75bfc30daef3d455bfefc3925913.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_01:4 -> audio/generated/de-DE/dialogues/3f8a4fd0dd91235aa616f8246ec8528b18ce71a6fb18f1b96711fcdb814a0c32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b170f6ed-ea09-53fc-99d0-518947a5aea9', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a4fda59ed639b799974c09258f7c0145af03687bb5ade45bfe65c9205e7d986'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adf2d09f-3ad3-5adf-8ff6-8eb6e14e82ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b170f6ed-ea09-53fc-99d0-518947a5aea9', 1), '0a4fda59ed639b799974c09258f7c0145af03687bb5ade45bfe65c9205e7d986',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f8a4fd0dd91235aa616f8246ec8528b18ce71a6fb18f1b96711fcdb814a0c32.mp3', 3657, '2026-09-13 08:31:27.319576', '19b0c99e205a8ab161248c160cc6a2c80dc9db47eef54ef9866b51c3cc7a596f', 'validated', '{"audio_key":"3f8a4fd0dd91235aa616f8246ec8528b18ce71a6fb18f1b96711fcdb814a0c32","entity_key":"d_technical_explanations_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"19b0c99e205a8ab161248c160cc6a2c80dc9db47eef54ef9866b51c3cc7a596f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f8a4fd0dd91235aa616f8246ec8528b18ce71a6fb18f1b96711fcdb814a0c32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_02:2 -> audio/generated/de-DE/dialogues/425a11a36c9ae9ce9f046b9d6fbf04ed766d852846a9ef8e47618d36348eacb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dfc560d1-839c-5ba6-8cee-db199117d7c6', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1e8fba3759cd9056ede8b651c2633bfe2a77643200d4e0a46b6145a044884df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fd50563-0461-57db-b38e-867c7bdff7cd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dfc560d1-839c-5ba6-8cee-db199117d7c6', 1), 'e1e8fba3759cd9056ede8b651c2633bfe2a77643200d4e0a46b6145a044884df',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/425a11a36c9ae9ce9f046b9d6fbf04ed766d852846a9ef8e47618d36348eacb3.mp3', 3004, '2026-09-13 08:31:27.339484', 'a477da289fd2014b441d41d4c4da1a56c210b056da0f9e665872a7584e13ee40', 'validated', '{"audio_key":"425a11a36c9ae9ce9f046b9d6fbf04ed766d852846a9ef8e47618d36348eacb3","entity_key":"d_scenario_decisions_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a477da289fd2014b441d41d4c4da1a56c210b056da0f9e665872a7584e13ee40","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/425a11a36c9ae9ce9f046b9d6fbf04ed766d852846a9ef8e47618d36348eacb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:3 -> audio/generated/de-DE/dialogues/45d4452dad8078496790252d82d65b241038fdf87b7d4e734432a3588c305b8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('07ca2c79-e40d-5523-b5db-1834aee96110', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6b77afb292be6681379fdca0034f7b99f1b5d95d349830b9026e5668d8a1bf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85d01acb-9855-5b45-b144-71cd8b9916fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('07ca2c79-e40d-5523-b5db-1834aee96110', 1), 'f6b77afb292be6681379fdca0034f7b99f1b5d95d349830b9026e5668d8a1bf5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/45d4452dad8078496790252d82d65b241038fdf87b7d4e734432a3588c305b8c.mp3', 3186, '2026-09-13 08:31:28.513881', '8b51237b80278420e24f15ed01c809233b77a26a922caff1e24dae41b6467c98', 'validated', '{"audio_key":"45d4452dad8078496790252d82d65b241038fdf87b7d4e734432a3588c305b8c","entity_key":"d_contracts_subscriptions_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8b51237b80278420e24f15ed01c809233b77a26a922caff1e24dae41b6467c98","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/45d4452dad8078496790252d82d65b241038fdf87b7d4e734432a3588c305b8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_03:2 -> audio/generated/de-DE/dialogues/49bd30e1fd28e9f641c7159852655c2e1bf3562516754d527d778ee8a9ad035b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('652fd9f9-37cc-54fc-b6dc-2797e9332698', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2ac1ab4162beca203823948b4c961ec21111b3ee9390ef34b25eaeba7f792e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e38885eb-fed1-51fd-8ff5-6c65474f8827', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('652fd9f9-37cc-54fc-b6dc-2797e9332698', 1), 'd2ac1ab4162beca203823948b4c961ec21111b3ee9390ef34b25eaeba7f792e1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/49bd30e1fd28e9f641c7159852655c2e1bf3562516754d527d778ee8a9ad035b.mp3', 4205, '2026-09-13 08:31:28.643808', '579d1528094196ef43d628fd0c731b60c4545478ecf65679176dbe9d67394761', 'validated', '{"audio_key":"49bd30e1fd28e9f641c7159852655c2e1bf3562516754d527d778ee8a9ad035b","entity_key":"d_time_management_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"579d1528094196ef43d628fd0c731b60c4545478ecf65679176dbe9d67394761","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/49bd30e1fd28e9f641c7159852655c2e1bf3562516754d527d778ee8a9ad035b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_03:1 -> audio/generated/de-DE/dialogues/4a9c55f82309c995244dbd64d778aeb1e72c133c82c57ffe75af1e89b2de550d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a66ccc5-3c6f-54ba-871b-e4ba010d5196', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53344c3bb37d1001ca3f494d37b63e97b8d46d1e30fc2b757752267708a24b87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67c08a37-b964-50fc-b89c-0661263b2b54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a66ccc5-3c6f-54ba-871b-e4ba010d5196', 1), '53344c3bb37d1001ca3f494d37b63e97b8d46d1e30fc2b757752267708a24b87',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4a9c55f82309c995244dbd64d778aeb1e72c133c82c57ffe75af1e89b2de550d.mp3', 3369, '2026-09-13 08:31:29.768118', 'b8eacc6b8efd466034f29fd322d2b31ae102914a7c4cebb6a9f0886cd431c99e', 'validated', '{"audio_key":"4a9c55f82309c995244dbd64d778aeb1e72c133c82c57ffe75af1e89b2de550d","entity_key":"d_hybrid_collaboration_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b8eacc6b8efd466034f29fd322d2b31ae102914a7c4cebb6a9f0886cd431c99e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4a9c55f82309c995244dbd64d778aeb1e72c133c82c57ffe75af1e89b2de550d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_02:2 -> audio/generated/de-DE/dialogues/4b0d51cad558d2b18cbd238711e4452196bfaaf7f3b3e1fa228667323be77e2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc3094f2-43cf-5a1e-8ca3-964b2ed5b2c6', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d5d11761d4c035032b9449d452caa61880b1237f062d3e6d5fb719d5770a0d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb6792c2-61c5-5985-b99c-00111b740f66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc3094f2-43cf-5a1e-8ca3-964b2ed5b2c6', 1), '6d5d11761d4c035032b9449d452caa61880b1237f062d3e6d5fb719d5770a0d8',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b0d51cad558d2b18cbd238711e4452196bfaaf7f3b3e1fa228667323be77e2f.mp3', 3840, '2026-09-13 08:31:29.929165', '003554f2b9a2dd9ab7c7bb58de4def11d76378345c2f239ed633ab46500132ac', 'validated', '{"audio_key":"4b0d51cad558d2b18cbd238711e4452196bfaaf7f3b3e1fa228667323be77e2f","entity_key":"d_rental_repairs_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"003554f2b9a2dd9ab7c7bb58de4def11d76378345c2f239ed633ab46500132ac","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4b0d51cad558d2b18cbd238711e4452196bfaaf7f3b3e1fa228667323be77e2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_02:3 -> audio/generated/de-DE/dialogues/4ee62867693b5e232621e346ce7c328167dd7cedc9eff357fbf00306ad22ceef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cdb37e0-4b33-5b7b-9e24-9b8d596428a5', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b6d3d2e3b2ca19b8328af3f2e24c8dcd703ee0ed24e89ade999e22f39281919'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cae6269d-f5a7-5762-8397-5f2afb362c2b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cdb37e0-4b33-5b7b-9e24-9b8d596428a5', 1), '0b6d3d2e3b2ca19b8328af3f2e24c8dcd703ee0ed24e89ade999e22f39281919',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ee62867693b5e232621e346ce7c328167dd7cedc9eff357fbf00306ad22ceef.mp3', 2768, '2026-09-13 08:31:30.921049', '873b0c7e4877325f2b52bd2303ba91029d1ccca482af494d27298ec6b46d3cfd', 'validated', '{"audio_key":"4ee62867693b5e232621e346ce7c328167dd7cedc9eff357fbf00306ad22ceef","entity_key":"d_hybrid_collaboration_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"873b0c7e4877325f2b52bd2303ba91029d1ccca482af494d27298ec6b46d3cfd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ee62867693b5e232621e346ce7c328167dd7cedc9eff357fbf00306ad22ceef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_02:2 -> audio/generated/de-DE/dialogues/50d1e143cb01c15aa83bfdf06fc4b811d083c3051417faf4faf12eef73b64942.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b22749d2-5842-5e02-9a8b-f2a013f2cd67', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '275c5e7a4db052308adf01d7cbbcb17b5e81f91d729d71d0e730d53c98a715e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86fc3a09-a9ed-5199-9e33-7edf9f95ccaf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b22749d2-5842-5e02-9a8b-f2a013f2cd67', 1), '275c5e7a4db052308adf01d7cbbcb17b5e81f91d729d71d0e730d53c98a715e0',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50d1e143cb01c15aa83bfdf06fc4b811d083c3051417faf4faf12eef73b64942.mp3', 1933, '2026-09-13 08:31:31.123659', 'bba022766120b43cdcc04bf1b4c5edc8e7b08c5919b89507c9c5c7897890879e', 'validated', '{"audio_key":"50d1e143cb01c15aa83bfdf06fc4b811d083c3051417faf4faf12eef73b64942","entity_key":"d_time_management_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"bba022766120b43cdcc04bf1b4c5edc8e7b08c5919b89507c9c5c7897890879e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/50d1e143cb01c15aa83bfdf06fc4b811d083c3051417faf4faf12eef73b64942.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_02:2 -> audio/generated/de-DE/dialogues/51579b4fdbaf665cd87b7cfe0209778b432e35bb0be47456d6905ebd5a06f774.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eebe79e0-69c6-50fb-af88-32be16641015', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0572dcd4cedb64e60c8b13e98e75ec1c4886a28c878470ed0ecb75c52485ba88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aba2256-23f4-5065-a29f-6eb4eae2979f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eebe79e0-69c6-50fb-af88-32be16641015', 1), '0572dcd4cedb64e60c8b13e98e75ec1c4886a28c878470ed0ecb75c52485ba88',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/51579b4fdbaf665cd87b7cfe0209778b432e35bb0be47456d6905ebd5a06f774.mp3', 2690, '2026-09-13 08:31:32.229753', '5734cb4a505ab49449be5d06d2a0c11da5a37f33c1b987307c4eed093a96cf9f', 'validated', '{"audio_key":"51579b4fdbaf665cd87b7cfe0209778b432e35bb0be47456d6905ebd5a06f774","entity_key":"d_technical_explanations_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"5734cb4a505ab49449be5d06d2a0c11da5a37f33c1b987307c4eed093a96cf9f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/51579b4fdbaf665cd87b7cfe0209778b432e35bb0be47456d6905ebd5a06f774.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_03:4 -> audio/generated/de-DE/dialogues/529ad229fac7164b565d9dd46ba08ba44b2e46391eee23309a3a161f1c85d19c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35c78504-4365-5df6-9d47-4df899952f5e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4797479ce93276a3c3fa450115843901324f6e35d4386e1435ed1ab50468e7c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c92264c-c2b9-598e-b6f7-86d03b5bfb4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35c78504-4365-5df6-9d47-4df899952f5e', 1), '4797479ce93276a3c3fa450115843901324f6e35d4386e1435ed1ab50468e7c7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/529ad229fac7164b565d9dd46ba08ba44b2e46391eee23309a3a161f1c85d19c.mp3', 3526, '2026-09-13 08:31:32.330614', '9d0bbd8588da6e574983eca13ff520ffcba5ab402830f30103e1ba7f31d77c60', 'validated', '{"audio_key":"529ad229fac7164b565d9dd46ba08ba44b2e46391eee23309a3a161f1c85d19c","entity_key":"d_bureaucracy_appointments_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9d0bbd8588da6e574983eca13ff520ffcba5ab402830f30103e1ba7f31d77c60","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/529ad229fac7164b565d9dd46ba08ba44b2e46391eee23309a3a161f1c85d19c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_03:1 -> audio/generated/de-DE/dialogues/5384125eddda0b7c160e6294914e57e7bc2e9c765a8e306bb0c009782691a6d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2e3f057-1d9c-5df1-8e2a-b7a19460b011', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1ec832462ec803ba3f987a7393040f08038641f2b62c343627bc230199792c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4603247d-35bf-51aa-8503-270e14d06505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2e3f057-1d9c-5df1-8e2a-b7a19460b011', 1), 'c1ec832462ec803ba3f987a7393040f08038641f2b62c343627bc230199792c9',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5384125eddda0b7c160e6294914e57e7bc2e9c765a8e306bb0c009782691a6d1.mp3', 4257, '2026-09-13 08:31:33.535657', '981fa474ebed25667f03d02015f9f6088ad317efc47597df499e3378e65f2acf', 'validated', '{"audio_key":"5384125eddda0b7c160e6294914e57e7bc2e9c765a8e306bb0c009782691a6d1","entity_key":"d_professional_networking_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"981fa474ebed25667f03d02015f9f6088ad317efc47597df499e3378e65f2acf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5384125eddda0b7c160e6294914e57e7bc2e9c765a8e306bb0c009782691a6d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_01:1 -> audio/generated/de-DE/dialogues/55eb2a01cbe27219447ac24d5220ad6f505b0cad58dce925cece2a558a038016.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('69deb72c-fa68-5523-be6b-4960ebb7bb34', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7a9049bc2243541fed576cb5225e09fff80bc5527ca9b35045f42566cf7f27e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91f7b923-0201-5178-b5d2-acb3a3558500', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('69deb72c-fa68-5523-be6b-4960ebb7bb34', 1), 'c7a9049bc2243541fed576cb5225e09fff80bc5527ca9b35045f42566cf7f27e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/55eb2a01cbe27219447ac24d5220ad6f505b0cad58dce925cece2a558a038016.mp3', 2507, '2026-09-13 08:31:33.419954', '72cfcc16499389b279b9352969f6833daf563e6ff40e83fac93269f81aa0d4fc', 'validated', '{"audio_key":"55eb2a01cbe27219447ac24d5220ad6f505b0cad58dce925cece2a558a038016","entity_key":"d_event_organization_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"72cfcc16499389b279b9352969f6833daf563e6ff40e83fac93269f81aa0d4fc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/55eb2a01cbe27219447ac24d5220ad6f505b0cad58dce925cece2a558a038016.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_03:3 -> audio/generated/de-DE/dialogues/56e591ae60a2bf01831b17c3c3c0cd26b6379cf33f20f2be8329b6247fdadc24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('903a27dd-0256-5902-9eb7-0dae3fb8e304', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bae2b0016325fcf0077bcc6d14e621b71ea3a1e9131e68bb306e61ce9e873bee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0aca5379-59ba-5d55-b65d-33c2bcea3438', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('903a27dd-0256-5902-9eb7-0dae3fb8e304', 1), 'bae2b0016325fcf0077bcc6d14e621b71ea3a1e9131e68bb306e61ce9e873bee',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56e591ae60a2bf01831b17c3c3c0cd26b6379cf33f20f2be8329b6247fdadc24.mp3', 3160, '2026-09-13 08:31:34.663300', '71de60bceb9ff1ec3efb1bea631fbb4ae6114112f1f24b96654f1f2282c1c2d8', 'validated', '{"audio_key":"56e591ae60a2bf01831b17c3c3c0cd26b6379cf33f20f2be8329b6247fdadc24","entity_key":"d_scenario_decisions_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"71de60bceb9ff1ec3efb1bea631fbb4ae6114112f1f24b96654f1f2282c1c2d8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/56e591ae60a2bf01831b17c3c3c0cd26b6379cf33f20f2be8329b6247fdadc24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_01:1 -> audio/generated/de-DE/dialogues/578f9ee941086cbed936792614bc1267b550f6bedff4b15ad7acb24c5ea78580.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a713c51-1c5c-5e3c-b06c-253b0ad50fca', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58221e3d5178dcbb7f9fdd99b701353977fe5397fc90f318ac9f9f81554457a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3bdc7de-fcf7-5260-88ef-06d8b538a675', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a713c51-1c5c-5e3c-b06c-253b0ad50fca', 1), '58221e3d5178dcbb7f9fdd99b701353977fe5397fc90f318ac9f9f81554457a7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/578f9ee941086cbed936792614bc1267b550f6bedff4b15ad7acb24c5ea78580.mp3', 4414, '2026-09-13 08:31:34.843567', 'e7babf1e694f818047f03b387a590ae633904d2f86cc934456f05f326975dd5d', 'validated', '{"audio_key":"578f9ee941086cbed936792614bc1267b550f6bedff4b15ad7acb24c5ea78580","entity_key":"d_technical_explanations_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e7babf1e694f818047f03b387a590ae633904d2f86cc934456f05f326975dd5d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/578f9ee941086cbed936792614bc1267b550f6bedff4b15ad7acb24c5ea78580.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:4 -> audio/generated/de-DE/dialogues/5a2c9e149a483b3792fde964a0fcbda1f1b25c350cd9a3408c352ae2640a2246.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0695dc5a-653f-5475-8404-ca965b44ccba', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3e147a10eba30908b9f1d6daa310620d3e1570699b969b6eb74236be1033c13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45009ac4-2a79-5f14-955d-34ee62fb0b7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0695dc5a-653f-5475-8404-ca965b44ccba', 1), 'f3e147a10eba30908b9f1d6daa310620d3e1570699b969b6eb74236be1033c13',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5a2c9e149a483b3792fde964a0fcbda1f1b25c350cd9a3408c352ae2640a2246.mp3', 3474, '2026-09-13 08:31:35.856429', 'b34b3d1a84a6808d42973bbe57b45dff418a7c8e1ef7e8000d9fd18f951aa6b6', 'validated', '{"audio_key":"5a2c9e149a483b3792fde964a0fcbda1f1b25c350cd9a3408c352ae2640a2246","entity_key":"d_contracts_subscriptions_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b34b3d1a84a6808d42973bbe57b45dff418a7c8e1ef7e8000d9fd18f951aa6b6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5a2c9e149a483b3792fde964a0fcbda1f1b25c350cd9a3408c352ae2640a2246.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_03:1 -> audio/generated/de-DE/dialogues/5b124470173ea1e4abed1f8efb22b99c1a72966badbc3de65a44e105970d16a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7cde430-9795-5415-b72d-2ce5912fc316', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c3e55525c6bc64bd22a8c811d381163e308af6a2b51433f70b75173ae7000de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5560341-d5bc-5106-8422-b7f4aef73132', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7cde430-9795-5415-b72d-2ce5912fc316', 1), '7c3e55525c6bc64bd22a8c811d381163e308af6a2b51433f70b75173ae7000de',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b124470173ea1e4abed1f8efb22b99c1a72966badbc3de65a44e105970d16a1.mp3', 2638, '2026-09-13 08:31:35.969422', 'b3a5a438b6e320343c4e06cfb6599d056ff07c1e4e10e0f828964b23326efc67', 'validated', '{"audio_key":"5b124470173ea1e4abed1f8efb22b99c1a72966badbc3de65a44e105970d16a1","entity_key":"d_time_management_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b3a5a438b6e320343c4e06cfb6599d056ff07c1e4e10e0f828964b23326efc67","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5b124470173ea1e4abed1f8efb22b99c1a72966badbc3de65a44e105970d16a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_03:1 -> audio/generated/de-DE/dialogues/5c0867e22ec7f11f4bb14ddd0d55ea2ec77f6278386c42272787f00ab2135870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ad6684f-7cfb-57a2-96a3-6ee6de8ec1d4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37ae2021ef7817590285efbb666b87af31a75724a274f4adf4a10ce3ac2131a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b058b9b1-37e4-5bbb-b6c3-cd9d7704b2a2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ad6684f-7cfb-57a2-96a3-6ee6de8ec1d4', 1), '37ae2021ef7817590285efbb666b87af31a75724a274f4adf4a10ce3ac2131a1',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5c0867e22ec7f11f4bb14ddd0d55ea2ec77f6278386c42272787f00ab2135870.mp3', 4623, '2026-09-13 08:31:37.209253', '7deb476fe1045e3bb585a25c48095559d9cec5ab0ae6a70fe78cfb051110948a', 'validated', '{"audio_key":"5c0867e22ec7f11f4bb14ddd0d55ea2ec77f6278386c42272787f00ab2135870","entity_key":"d_technical_explanations_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7deb476fe1045e3bb585a25c48095559d9cec5ab0ae6a70fe78cfb051110948a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5c0867e22ec7f11f4bb14ddd0d55ea2ec77f6278386c42272787f00ab2135870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_03:2 -> audio/generated/de-DE/dialogues/5c761d8f675549d88ab9804fad5ff751509204646927b4de0d3d35966cc34a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3899d207-8047-5ec5-9a25-73e5f8e4f80f', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77768c30d48c3e79c66e10657b0e59c6e905284b928c0f4df895eba1da137b50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f363aa14-2da6-595c-afec-156445f6d95e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3899d207-8047-5ec5-9a25-73e5f8e4f80f', 1), '77768c30d48c3e79c66e10657b0e59c6e905284b928c0f4df895eba1da137b50',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5c761d8f675549d88ab9804fad5ff751509204646927b4de0d3d35966cc34a92.mp3', 3944, '2026-09-13 08:31:37.218618', '525c56a6152112816260c1e34f42d6a45acc2dad44498129aef3f82b08df76be', 'validated', '{"audio_key":"5c761d8f675549d88ab9804fad5ff751509204646927b4de0d3d35966cc34a92","entity_key":"d_hybrid_collaboration_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"525c56a6152112816260c1e34f42d6a45acc2dad44498129aef3f82b08df76be","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5c761d8f675549d88ab9804fad5ff751509204646927b4de0d3d35966cc34a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_02:3 -> audio/generated/de-DE/dialogues/5cd35a8c6dc90d772bb069f28b8ee893d2641d8048a6d0e2610d603d12a5eaf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3196e820-e048-5779-a6aa-5a7ac3c73da2', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aed5cfa05c28765ca5d3651db6db269572611a650646d182d60fdab05af7a36d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99b330db-1e2c-598c-9797-eaa3353d5bae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3196e820-e048-5779-a6aa-5a7ac3c73da2', 1), 'aed5cfa05c28765ca5d3651db6db269572611a650646d182d60fdab05af7a36d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cd35a8c6dc90d772bb069f28b8ee893d2641d8048a6d0e2610d603d12a5eaf1.mp3', 3343, '2026-09-13 08:31:38.429520', 'd9d87966562e8768f956321d4ea17f0f3baa27f69acf6fe7258490f36e05a204', 'validated', '{"audio_key":"5cd35a8c6dc90d772bb069f28b8ee893d2641d8048a6d0e2610d603d12a5eaf1","entity_key":"d_professional_networking_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d9d87966562e8768f956321d4ea17f0f3baa27f69acf6fe7258490f36e05a204","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5cd35a8c6dc90d772bb069f28b8ee893d2641d8048a6d0e2610d603d12a5eaf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_01:1 -> audio/generated/de-DE/dialogues/5fb5dd80081a98a4b153700086738ef4ccbf7afbd6fcc686413b0baaade7d41b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fedc762-6f4e-5d2f-9039-ddfc444e8f34', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59aa28a5a52a0ff5bba5be8e43ba293495e7d313ae9c2c0823753d5be1882143'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd28a753-0291-5414-a910-c429c3fa9443', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fedc762-6f4e-5d2f-9039-ddfc444e8f34', 1), '59aa28a5a52a0ff5bba5be8e43ba293495e7d313ae9c2c0823753d5be1882143',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5fb5dd80081a98a4b153700086738ef4ccbf7afbd6fcc686413b0baaade7d41b.mp3', 3892, '2026-09-13 08:31:38.505748', '91f9bc8b0b1cd7598a59325ba6652091c283180c916101cce147e23379494906', 'validated', '{"audio_key":"5fb5dd80081a98a4b153700086738ef4ccbf7afbd6fcc686413b0baaade7d41b","entity_key":"d_hybrid_collaboration_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"91f9bc8b0b1cd7598a59325ba6652091c283180c916101cce147e23379494906","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5fb5dd80081a98a4b153700086738ef4ccbf7afbd6fcc686413b0baaade7d41b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_01:3 -> audio/generated/de-DE/dialogues/61848df59b16c347c132e973db7a239d659186bacb3ff35acf42f0876af3bb19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('568853e5-a52b-5915-8dd6-d687f2735023', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7901d85c1be53fd6aff7fa444267f8baf6868f79b0df3040235ae30ff0b177c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df87d905-c466-5432-9a3a-544cc39cd39e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('568853e5-a52b-5915-8dd6-d687f2735023', 1), 'f7901d85c1be53fd6aff7fa444267f8baf6868f79b0df3040235ae30ff0b177c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/61848df59b16c347c132e973db7a239d659186bacb3ff35acf42f0876af3bb19.mp3', 3108, '2026-09-13 08:31:39.573315', 'eb5e703ac4133c9e5e4209911e9363dd0e0717d6a3a064144474adca4ec651a9', 'validated', '{"audio_key":"61848df59b16c347c132e973db7a239d659186bacb3ff35acf42f0876af3bb19","entity_key":"d_hybrid_collaboration_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"eb5e703ac4133c9e5e4209911e9363dd0e0717d6a3a064144474adca4ec651a9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/61848df59b16c347c132e973db7a239d659186bacb3ff35acf42f0876af3bb19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_03:2 -> audio/generated/de-DE/dialogues/62d335fa1c7e31c5d4ab072e904963b7e8069cfc20fe12d5e7cc4d9bda2099e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4219b95c-8a72-5150-933e-a420f74cf8f0', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '817a711932fad7e9076e58863ff47cf5a702f398b482b75c5bd83c7be625cab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b682daca-bf08-5356-91c7-32e0e2a4b512', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4219b95c-8a72-5150-933e-a420f74cf8f0', 1), '817a711932fad7e9076e58863ff47cf5a702f398b482b75c5bd83c7be625cab9',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/62d335fa1c7e31c5d4ab072e904963b7e8069cfc20fe12d5e7cc4d9bda2099e6.mp3', 2089, '2026-09-13 08:31:39.532529', '30e2069ce24fd025bc36f9d551c43897dc37edb11ec0d4f72d0af9dd11d7a5be', 'validated', '{"audio_key":"62d335fa1c7e31c5d4ab072e904963b7e8069cfc20fe12d5e7cc4d9bda2099e6","entity_key":"d_technical_explanations_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"30e2069ce24fd025bc36f9d551c43897dc37edb11ec0d4f72d0af9dd11d7a5be","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/62d335fa1c7e31c5d4ab072e904963b7e8069cfc20fe12d5e7cc4d9bda2099e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_03:4 -> audio/generated/de-DE/dialogues/637cc69f316e6e03e1bded65d6aa711b96376a24ca86c4a86008df90e7561ba2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5465bfa-d5bf-5fdd-8bd1-4b558775924b', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0ba6fd9cc826a4b11aa36831bf751ca9ea7b207c7c456259e9a35cda89d12f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a700442f-684f-5852-9c1a-b73755693c98', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5465bfa-d5bf-5fdd-8bd1-4b558775924b', 1), 'd0ba6fd9cc826a4b11aa36831bf751ca9ea7b207c7c456259e9a35cda89d12f4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/637cc69f316e6e03e1bded65d6aa711b96376a24ca86c4a86008df90e7561ba2.mp3', 3761, '2026-09-13 08:31:40.782058', '878dfb42eb5ae025e4cf47cd336f8dbda706690d3b871ab10219060acd26f941', 'validated', '{"audio_key":"637cc69f316e6e03e1bded65d6aa711b96376a24ca86c4a86008df90e7561ba2","entity_key":"d_professional_networking_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"878dfb42eb5ae025e4cf47cd336f8dbda706690d3b871ab10219060acd26f941","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/637cc69f316e6e03e1bded65d6aa711b96376a24ca86c4a86008df90e7561ba2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_01:2 -> audio/generated/de-DE/dialogues/6a564787fe2ac194e57ba899063999b7926d8b73eef6ae132f0a63e805472608.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3b8d996-f9ec-5c95-a542-507c5cf308e3', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8732ddc93f5f913c75755345429b08232ad9926f16ea5c28b6dd73576288fd76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af26403b-83c6-55f3-bf3c-c2eb795d410d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3b8d996-f9ec-5c95-a542-507c5cf308e3', 1), '8732ddc93f5f913c75755345429b08232ad9926f16ea5c28b6dd73576288fd76',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6a564787fe2ac194e57ba899063999b7926d8b73eef6ae132f0a63e805472608.mp3', 2533, '2026-09-13 08:31:40.660809', '26a6c980de942f9881e5d46b5c17593f5794452aca21e164bb38597d53145c24', 'validated', '{"audio_key":"6a564787fe2ac194e57ba899063999b7926d8b73eef6ae132f0a63e805472608","entity_key":"d_scenario_decisions_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"26a6c980de942f9881e5d46b5c17593f5794452aca21e164bb38597d53145c24","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6a564787fe2ac194e57ba899063999b7926d8b73eef6ae132f0a63e805472608.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_02:3 -> audio/generated/de-DE/dialogues/6c0c26d2d7242f4695116a7dff82a571fa1f9c8115f6e59e8009d892571ba9a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e352fd01-20ad-5026-9824-d73e98f21067', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c77653ddc561b75bb21072bf42fc4ab8a6e59e0ddce5f8177ee8d0f26c2a883'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38d3c03c-3e0a-5caa-9ace-650f56f5fc09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e352fd01-20ad-5026-9824-d73e98f21067', 1), '3c77653ddc561b75bb21072bf42fc4ab8a6e59e0ddce5f8177ee8d0f26c2a883',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c0c26d2d7242f4695116a7dff82a571fa1f9c8115f6e59e8009d892571ba9a4.mp3', 3108, '2026-09-13 08:31:41.816458', 'f50f94bd50021d8047b148a727efe24bb3db330452b42cba0594c3ab936b63ac', 'validated', '{"audio_key":"6c0c26d2d7242f4695116a7dff82a571fa1f9c8115f6e59e8009d892571ba9a4","entity_key":"d_time_management_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f50f94bd50021d8047b148a727efe24bb3db330452b42cba0594c3ab936b63ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6c0c26d2d7242f4695116a7dff82a571fa1f9c8115f6e59e8009d892571ba9a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_03:2 -> audio/generated/de-DE/dialogues/6c593bb74cb905e0af95d42020576657b261aed9db0828a9cc96abeb1de4e01d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('742e7302-c6aa-547a-9cdf-a60f9e3b6685', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bc78a951da21be76ee4786fb9d2d7875af5be107acec4c6a67d8f21d0bc8ee0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('984ba778-d2c8-5385-ae66-8d131fec0da6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('742e7302-c6aa-547a-9cdf-a60f9e3b6685', 1), '1bc78a951da21be76ee4786fb9d2d7875af5be107acec4c6a67d8f21d0bc8ee0',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c593bb74cb905e0af95d42020576657b261aed9db0828a9cc96abeb1de4e01d.mp3', 2925, '2026-09-13 08:31:41.931029', '732a3476bb7a4d33472338057306751926bfbe51cf2dde02728ee48f3cda011e', 'validated', '{"audio_key":"6c593bb74cb905e0af95d42020576657b261aed9db0828a9cc96abeb1de4e01d","entity_key":"d_professional_networking_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"732a3476bb7a4d33472338057306751926bfbe51cf2dde02728ee48f3cda011e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6c593bb74cb905e0af95d42020576657b261aed9db0828a9cc96abeb1de4e01d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_01:3 -> audio/generated/de-DE/dialogues/71593ee38fc5f99694145235e35fab43b4224622d1718dbdb4557b6a550edef9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbf219fd-70aa-56b8-bf0a-5355a01ffa6e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7296b12d2b524415bd1371e7bd1d759eac8737a5f053c4e311eb3fa636e602e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('942d6389-6a5a-5628-9edb-3d45686e511e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbf219fd-70aa-56b8-bf0a-5355a01ffa6e', 1), '7296b12d2b524415bd1371e7bd1d759eac8737a5f053c4e311eb3fa636e602e1',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/71593ee38fc5f99694145235e35fab43b4224622d1718dbdb4557b6a550edef9.mp3', 2690, '2026-09-13 08:31:42.912825', '3e647a63708c02f93881b232d4641606805590575b5aa6f191037df4e30cefb0', 'validated', '{"audio_key":"71593ee38fc5f99694145235e35fab43b4224622d1718dbdb4557b6a550edef9","entity_key":"d_rental_repairs_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3e647a63708c02f93881b232d4641606805590575b5aa6f191037df4e30cefb0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/71593ee38fc5f99694145235e35fab43b4224622d1718dbdb4557b6a550edef9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_02:4 -> audio/generated/de-DE/dialogues/7ac182e13a4f36b33ece1b2251b124c8dc4fe33976e247c7b5cb4aa290cd91be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01a33e56-5a14-5f9b-8b14-f8a8580fded9', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebd29961b227ed3c4c4766746a76712d97d20b8b43b7a28a70538a4509b0f288'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af71d96a-c109-53d1-b3d3-a880a1b72952', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01a33e56-5a14-5f9b-8b14-f8a8580fded9', 1), 'ebd29961b227ed3c4c4766746a76712d97d20b8b43b7a28a70538a4509b0f288',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ac182e13a4f36b33ece1b2251b124c8dc4fe33976e247c7b5cb4aa290cd91be.mp3', 2925, '2026-09-13 08:31:43.079885', '89eba2b4b1c8ec0c9e844c424e02d4e65f62e39e2be52feaa8c3e15c63d79124', 'validated', '{"audio_key":"7ac182e13a4f36b33ece1b2251b124c8dc4fe33976e247c7b5cb4aa290cd91be","entity_key":"d_hybrid_collaboration_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"89eba2b4b1c8ec0c9e844c424e02d4e65f62e39e2be52feaa8c3e15c63d79124","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7ac182e13a4f36b33ece1b2251b124c8dc4fe33976e247c7b5cb4aa290cd91be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_01:4 -> audio/generated/de-DE/dialogues/7d1e21f4081fefcaa9a0de455ab8652483517ece479772b0ba027c752e68552f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27fdbf93-5c74-5596-9b9e-a0433be4dd9c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18730b18719a0f031491e1462d46016d92f73f49ee850b1b949a19a4437c6acd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2d6a51b-8c98-5483-aa06-6e2afc9e36c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27fdbf93-5c74-5596-9b9e-a0433be4dd9c', 1), '18730b18719a0f031491e1462d46016d92f73f49ee850b1b949a19a4437c6acd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d1e21f4081fefcaa9a0de455ab8652483517ece479772b0ba027c752e68552f.mp3', 3787, '2026-09-13 08:31:44.205650', '53ffea6222e608f6842bb422182bde27985f0c5a30d4b4fb88df4d60addd8e87', 'validated', '{"audio_key":"7d1e21f4081fefcaa9a0de455ab8652483517ece479772b0ba027c752e68552f","entity_key":"d_time_management_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"53ffea6222e608f6842bb422182bde27985f0c5a30d4b4fb88df4d60addd8e87","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7d1e21f4081fefcaa9a0de455ab8652483517ece479772b0ba027c752e68552f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_02:4 -> audio/generated/de-DE/dialogues/7df7cb45a8fdcf2d2612ccb7b188d48edccc81de3b83e9177a49cb81442a20ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f795796-9ee2-54f2-ba1a-801a7e48dfea', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b0989738a5727dbccd6825e4094757e164cbe734920aa51146208c81e31f59d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66123054-c0c5-5253-9a85-069b5174707c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f795796-9ee2-54f2-ba1a-801a7e48dfea', 1), '4b0989738a5727dbccd6825e4094757e164cbe734920aa51146208c81e31f59d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7df7cb45a8fdcf2d2612ccb7b188d48edccc81de3b83e9177a49cb81442a20ea.mp3', 3108, '2026-09-13 08:31:44.270290', 'fd4fded85b8a4a55e6d4c72f316952b52a93d1f11b48202627c1f4f782fc36c4', 'validated', '{"audio_key":"7df7cb45a8fdcf2d2612ccb7b188d48edccc81de3b83e9177a49cb81442a20ea","entity_key":"d_conflict_mediation_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fd4fded85b8a4a55e6d4c72f316952b52a93d1f11b48202627c1f4f782fc36c4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7df7cb45a8fdcf2d2612ccb7b188d48edccc81de3b83e9177a49cb81442a20ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_03:3 -> audio/generated/de-DE/dialogues/7e55d0cb0556e0f702ca62e7c6a8039931a1bae04dcc09f046d7b68e6c4efa3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf345a06-aa1c-5906-a8c4-ddc512d820b4', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '767eeb81b10f2dd74820a04f49360da14e8925cf4cc043a4435b98b8e98ef400'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdddcae1-6c44-5059-abc1-78c713e82949', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf345a06-aa1c-5906-a8c4-ddc512d820b4', 1), '767eeb81b10f2dd74820a04f49360da14e8925cf4cc043a4435b98b8e98ef400',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7e55d0cb0556e0f702ca62e7c6a8039931a1bae04dcc09f046d7b68e6c4efa3c.mp3', 3186, '2026-09-13 08:31:45.378426', 'c053a0d79da5e6ae6aa1672b7eb3189efaeb2871d6b8a692b7ff09a006b10260', 'validated', '{"audio_key":"7e55d0cb0556e0f702ca62e7c6a8039931a1bae04dcc09f046d7b68e6c4efa3c","entity_key":"d_professional_networking_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c053a0d79da5e6ae6aa1672b7eb3189efaeb2871d6b8a692b7ff09a006b10260","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7e55d0cb0556e0f702ca62e7c6a8039931a1bae04dcc09f046d7b68e6c4efa3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_01:3 -> audio/generated/de-DE/dialogues/81ee54bf0a9544139f21600cf24225295c5d301b379732316e63f60d7b01d0fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29541863-ee2b-5516-ab80-3284d701942d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca452601aa6ca63435ff416201fed47acef8433c07829a4dcc850b816ca510b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c06302c-d09e-530c-a758-7baa1f74cfc8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29541863-ee2b-5516-ab80-3284d701942d', 1), 'ca452601aa6ca63435ff416201fed47acef8433c07829a4dcc850b816ca510b6',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81ee54bf0a9544139f21600cf24225295c5d301b379732316e63f60d7b01d0fc.mp3', 4205, '2026-09-13 08:31:45.589588', 'e1180336edb654fc7ac688cf56b1fa8e2adb92e497dd9ec73c454fc82b33bc06', 'validated', '{"audio_key":"81ee54bf0a9544139f21600cf24225295c5d301b379732316e63f60d7b01d0fc","entity_key":"d_scenario_decisions_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e1180336edb654fc7ac688cf56b1fa8e2adb92e497dd9ec73c454fc82b33bc06","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/81ee54bf0a9544139f21600cf24225295c5d301b379732316e63f60d7b01d0fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_02:2 -> audio/generated/de-DE/dialogues/83daaaf9d099be3f5edabb1ffa3f576c58f55302ea687030e657f3c3a49de598.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7fefd4d-7f2c-5600-8998-fe37b3a17f9c', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4acefee60eaeacbc51125938873b7831d68d5d646e44d3eac9993b0eaa4376fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9defe74f-9bad-5bc2-b3d1-cf16a381a3e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7fefd4d-7f2c-5600-8998-fe37b3a17f9c', 1), '4acefee60eaeacbc51125938873b7831d68d5d646e44d3eac9993b0eaa4376fb',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83daaaf9d099be3f5edabb1ffa3f576c58f55302ea687030e657f3c3a49de598.mp3', 3160, '2026-09-13 08:31:46.575929', 'e55d9b846484a030bcfb2a34c938368bfb3569d00adac04bce6acff331678a7d', 'validated', '{"audio_key":"83daaaf9d099be3f5edabb1ffa3f576c58f55302ea687030e657f3c3a49de598","entity_key":"d_professional_networking_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"e55d9b846484a030bcfb2a34c938368bfb3569d00adac04bce6acff331678a7d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/83daaaf9d099be3f5edabb1ffa3f576c58f55302ea687030e657f3c3a49de598.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_02:4 -> audio/generated/de-DE/dialogues/8aaa3e423eeb461bad333dba7edcda3c7165622a4205e75ca3b53feaedc9367d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('956c2778-e26d-57ed-8fca-a18c0e6a8b85', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afc9c8c55ad5862eea4c3b84cd34a99f6f98807fbd3ba5b3581aa4e65bafe37b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a9067c6-6559-58d0-9073-ce82b4c5e361', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('956c2778-e26d-57ed-8fca-a18c0e6a8b85', 1), 'afc9c8c55ad5862eea4c3b84cd34a99f6f98807fbd3ba5b3581aa4e65bafe37b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8aaa3e423eeb461bad333dba7edcda3c7165622a4205e75ca3b53feaedc9367d.mp3', 3160, '2026-09-13 08:31:46.876467', 'ba0655fd66c951e84589f8c4c94cabc837fe05e02f93a0399ce3c3bbfc399ec3', 'validated', '{"audio_key":"8aaa3e423eeb461bad333dba7edcda3c7165622a4205e75ca3b53feaedc9367d","entity_key":"d_event_organization_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"ba0655fd66c951e84589f8c4c94cabc837fe05e02f93a0399ce3c3bbfc399ec3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8aaa3e423eeb461bad333dba7edcda3c7165622a4205e75ca3b53feaedc9367d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:2 -> audio/generated/de-DE/dialogues/8b14bf69cc705ffa74070b0580e5b9080fb0037d48b088b0ad13e206a9d0bd2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14ef5ef5-244f-59f8-a555-f9b7ba13bcf0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dcccdf7cf75e2a64fe391620b47d69989e1db4aa399cc2b8f52e7433b3b760b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f42bb12-3c5b-5bee-8426-0c245e6115a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14ef5ef5-244f-59f8-a555-f9b7ba13bcf0', 1), '9dcccdf7cf75e2a64fe391620b47d69989e1db4aa399cc2b8f52e7433b3b760b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8b14bf69cc705ffa74070b0580e5b9080fb0037d48b088b0ad13e206a9d0bd2d.mp3', 1933, '2026-09-13 08:31:47.630112', '897598bc91f7732cbb87ccda206e6fcdd361290863411a764e4c4b8a2c687bae', 'validated', '{"audio_key":"8b14bf69cc705ffa74070b0580e5b9080fb0037d48b088b0ad13e206a9d0bd2d","entity_key":"d_contracts_subscriptions_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"897598bc91f7732cbb87ccda206e6fcdd361290863411a764e4c4b8a2c687bae","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8b14bf69cc705ffa74070b0580e5b9080fb0037d48b088b0ad13e206a9d0bd2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_03:4 -> audio/generated/de-DE/dialogues/8d6a853732f8559913ad5edf4004a7daa412ded533d0316e72f6ede48d58a5ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91b1c225-7aa3-568b-98c9-4ece94ab1ce6', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68fe0b12d0e3fcd7cece23e616e9da34a09da78b5f74a00b99abeb2182a9b85d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('265e4333-61e9-5d75-813f-20c5c4cdc1e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91b1c225-7aa3-568b-98c9-4ece94ab1ce6', 1), '68fe0b12d0e3fcd7cece23e616e9da34a09da78b5f74a00b99abeb2182a9b85d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8d6a853732f8559913ad5edf4004a7daa412ded533d0316e72f6ede48d58a5ab.mp3', 3787, '2026-09-13 08:31:48.122817', '0d261d87d865281a7b5220ca2fcecbc7ea40f3cc1204cc94e11a046b07fc0da4', 'validated', '{"audio_key":"8d6a853732f8559913ad5edf4004a7daa412ded533d0316e72f6ede48d58a5ab","entity_key":"d_technical_explanations_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0d261d87d865281a7b5220ca2fcecbc7ea40f3cc1204cc94e11a046b07fc0da4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8d6a853732f8559913ad5edf4004a7daa412ded533d0316e72f6ede48d58a5ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_02:1 -> audio/generated/de-DE/dialogues/8eb928db4b10d49964816fcacbfcaeac2d23c05c9f26efa8fa9b6b6163833232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac563794-1a49-5b3d-a115-fb0085f8ac9b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a813c8d1332b9608f506ce124d196ebded4e22f223a9f91fb0aaa7f7148cc295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78c049bf-223d-567c-84f1-385f659db3c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac563794-1a49-5b3d-a115-fb0085f8ac9b', 1), 'a813c8d1332b9608f506ce124d196ebded4e22f223a9f91fb0aaa7f7148cc295',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8eb928db4b10d49964816fcacbfcaeac2d23c05c9f26efa8fa9b6b6163833232.mp3', 3761, '2026-09-13 08:31:48.945365', 'fc57350d5b8ec8c338f77d33c57acfdac40d796428ab4a7a968a7838b25e6671', 'validated', '{"audio_key":"8eb928db4b10d49964816fcacbfcaeac2d23c05c9f26efa8fa9b6b6163833232","entity_key":"d_rental_repairs_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fc57350d5b8ec8c338f77d33c57acfdac40d796428ab4a7a968a7838b25e6671","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8eb928db4b10d49964816fcacbfcaeac2d23c05c9f26efa8fa9b6b6163833232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_02:1 -> audio/generated/de-DE/dialogues/9102ce7831f4bd1b015e9faab5db27ea1fe85fbb04de49a62f8d742b27c8e829.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6aafabde-c045-5bb8-8000-0c238f78cae8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5850037df600203c3b4647e8f64dc6387adb0facc0684b8fd40f7bb6ef5a9b68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01ea61f0-bfd2-5b6d-b273-b38ce1fbd0ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6aafabde-c045-5bb8-8000-0c238f78cae8', 1), '5850037df600203c3b4647e8f64dc6387adb0facc0684b8fd40f7bb6ef5a9b68',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9102ce7831f4bd1b015e9faab5db27ea1fe85fbb04de49a62f8d742b27c8e829.mp3', 3657, '2026-09-13 08:31:49.337309', '08490c8ae703e26aaa7fed2846e5ca27177ff4ec723f922c8356004f22cbca56', 'validated', '{"audio_key":"9102ce7831f4bd1b015e9faab5db27ea1fe85fbb04de49a62f8d742b27c8e829","entity_key":"d_scenario_decisions_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"08490c8ae703e26aaa7fed2846e5ca27177ff4ec723f922c8356004f22cbca56","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9102ce7831f4bd1b015e9faab5db27ea1fe85fbb04de49a62f8d742b27c8e829.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_03:3 -> audio/generated/de-DE/dialogues/9168b11e417ceba5c0346fd6cb728d9f70ba046b22bdb21ca14267abce57a5a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58719b0a-485a-50e1-ac7d-abc57fd42ca6', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d2e16a74d06cba938f828d272e6561335dcf9a8c9c199695176a302f8810d8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa08ad24-c223-58ab-8d8b-20f8951b9727', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58719b0a-485a-50e1-ac7d-abc57fd42ca6', 1), '0d2e16a74d06cba938f828d272e6561335dcf9a8c9c199695176a302f8810d8c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9168b11e417ceba5c0346fd6cb728d9f70ba046b22bdb21ca14267abce57a5a6.mp3', 4310, '2026-09-13 08:31:50.346716', '6a693b13e15740d378118548931527e893dff81c691db870f8735f6f2e99f3c5', 'validated', '{"audio_key":"9168b11e417ceba5c0346fd6cb728d9f70ba046b22bdb21ca14267abce57a5a6","entity_key":"d_event_organization_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6a693b13e15740d378118548931527e893dff81c691db870f8735f6f2e99f3c5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9168b11e417ceba5c0346fd6cb728d9f70ba046b22bdb21ca14267abce57a5a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_01:1 -> audio/generated/de-DE/dialogues/91c1741dd09221ccbb572d59468b39148814c6a468b3be04c5fc4c982b839463.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a56e8b8-dcf2-5d0b-9de9-936270e97d60', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd69b55e5198c24965cca2e32ddb75c6f18702e15c244e39c2d7107b8f1506162'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a44d89f4-9746-58bb-8d8b-1db44cff7098', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a56e8b8-dcf2-5d0b-9de9-936270e97d60', 1), 'd69b55e5198c24965cca2e32ddb75c6f18702e15c244e39c2d7107b8f1506162',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/91c1741dd09221ccbb572d59468b39148814c6a468b3be04c5fc4c982b839463.mp3', 4179, '2026-09-13 08:31:50.666450', '9df3eb9f5514486782ca684ac8f305af7cb2478108d632c6db142da68b626f3c', 'validated', '{"audio_key":"91c1741dd09221ccbb572d59468b39148814c6a468b3be04c5fc4c982b839463","entity_key":"d_scenario_decisions_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9df3eb9f5514486782ca684ac8f305af7cb2478108d632c6db142da68b626f3c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/91c1741dd09221ccbb572d59468b39148814c6a468b3be04c5fc4c982b839463.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_01:3 -> audio/generated/de-DE/dialogues/96b144543ccd083af5f81119a4c3a09075296fe2cfbd9ebf068cdeec169a9d06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca47c9a4-8042-5a29-be32-52a6fd7c54e9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab425aca91597ed6ecdb04fa7ac4d34609ec084e21c617e760769d37935e1707'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc01e1ef-70e7-55f8-852e-fce00889274e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca47c9a4-8042-5a29-be32-52a6fd7c54e9', 1), 'ab425aca91597ed6ecdb04fa7ac4d34609ec084e21c617e760769d37935e1707',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/96b144543ccd083af5f81119a4c3a09075296fe2cfbd9ebf068cdeec169a9d06.mp3', 3343, '2026-09-13 08:31:51.599300', '6d00a6a2d192a21f00395c626d181ad6898cf5792a9bd267147db76d8e391e5c', 'validated', '{"audio_key":"96b144543ccd083af5f81119a4c3a09075296fe2cfbd9ebf068cdeec169a9d06","entity_key":"d_professional_networking_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6d00a6a2d192a21f00395c626d181ad6898cf5792a9bd267147db76d8e391e5c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/96b144543ccd083af5f81119a4c3a09075296fe2cfbd9ebf068cdeec169a9d06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_01:2 -> audio/generated/de-DE/dialogues/98f6e7e2b8a36986c0a7884a6b29119027d078055d1fdcd1d86fe9eefa4ca21a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92fb3e8b-a687-59c3-a973-4fa4394aced6', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10bb41731efc3548effcda76c89deaefd3f4734789a8a9c666ff400538d53f02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cce42a2-1528-5e37-8919-29a86e999649', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92fb3e8b-a687-59c3-a973-4fa4394aced6', 1), '10bb41731efc3548effcda76c89deaefd3f4734789a8a9c666ff400538d53f02',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/98f6e7e2b8a36986c0a7884a6b29119027d078055d1fdcd1d86fe9eefa4ca21a.mp3', 4257, '2026-09-13 08:31:51.943355', '1a1a2d7dc85111b998f02f4dc3b8603c6d172058ad22cfbac40883073f491bc3', 'validated', '{"audio_key":"98f6e7e2b8a36986c0a7884a6b29119027d078055d1fdcd1d86fe9eefa4ca21a","entity_key":"d_professional_networking_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1a1a2d7dc85111b998f02f4dc3b8603c6d172058ad22cfbac40883073f491bc3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/98f6e7e2b8a36986c0a7884a6b29119027d078055d1fdcd1d86fe9eefa4ca21a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_03:4 -> audio/generated/de-DE/dialogues/9c8c391dcb046387c4075cbf2c060b74fdef8d843bdb0f1ae99c5e406d4cbda9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb8b1e98-3e80-5108-bf90-9b1403e3a61a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71751ec2886bfccae89a434aba6ebf9052e111f8388adcab75211a1b58089aba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffa29717-e9f4-53d5-a8f2-42c352dbbadb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb8b1e98-3e80-5108-bf90-9b1403e3a61a', 1), '71751ec2886bfccae89a434aba6ebf9052e111f8388adcab75211a1b58089aba',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c8c391dcb046387c4075cbf2c060b74fdef8d843bdb0f1ae99c5e406d4cbda9.mp3', 3108, '2026-09-13 08:31:52.765053', '8ba423c726402efbf6ede6a5d7cc338dcc2ef0f9ec5fb9828151cc456292f09c', 'validated', '{"audio_key":"9c8c391dcb046387c4075cbf2c060b74fdef8d843bdb0f1ae99c5e406d4cbda9","entity_key":"d_hybrid_collaboration_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8ba423c726402efbf6ede6a5d7cc338dcc2ef0f9ec5fb9828151cc456292f09c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/9c8c391dcb046387c4075cbf2c060b74fdef8d843bdb0f1ae99c5e406d4cbda9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_01:4 -> audio/generated/de-DE/dialogues/a0bf10fb14c0c4b6ad942b23ca436e76f626f3aabb823534ac0889ed7e82d658.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e51e05ce-e30f-5e43-a6ea-5a98ad51b1ce', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e604e6e1fdf6dfe754cb6052c8dd5ade3d86d014f0e04df7231522d65a29d63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a3c29b3-0bda-5a76-9afd-ffb964a71714', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e51e05ce-e30f-5e43-a6ea-5a98ad51b1ce', 1), '2e604e6e1fdf6dfe754cb6052c8dd5ade3d86d014f0e04df7231522d65a29d63',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a0bf10fb14c0c4b6ad942b23ca436e76f626f3aabb823534ac0889ed7e82d658.mp3', 3422, '2026-09-13 08:31:53.177569', '01630f62ce89bed064d17321240d2835d2331b31fef822518543e7863ad0c35c', 'validated', '{"audio_key":"a0bf10fb14c0c4b6ad942b23ca436e76f626f3aabb823534ac0889ed7e82d658","entity_key":"d_professional_networking_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"01630f62ce89bed064d17321240d2835d2331b31fef822518543e7863ad0c35c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a0bf10fb14c0c4b6ad942b23ca436e76f626f3aabb823534ac0889ed7e82d658.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_02:4 -> audio/generated/de-DE/dialogues/a193dc0550f7ada23849ee16155ed66c0fbd3cbdd127b8db8dff237ecede3baa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c76513b9-1ca6-591b-b0db-ecebc6c3ebdd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e679aa18ae0ffd93e5bbcd3882ba91ff82184f0145be11be932507fb7be57ccb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17366481-a97b-5481-a23b-836940542c60', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c76513b9-1ca6-591b-b0db-ecebc6c3ebdd', 1), 'e679aa18ae0ffd93e5bbcd3882ba91ff82184f0145be11be932507fb7be57ccb',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a193dc0550f7ada23849ee16155ed66c0fbd3cbdd127b8db8dff237ecede3baa.mp3', 4440, '2026-09-13 08:31:54.121471', '28ffc25219f9c1bdd5a87389afc3a50b1710fb91933807537a03ef326c65e4aa', 'validated', '{"audio_key":"a193dc0550f7ada23849ee16155ed66c0fbd3cbdd127b8db8dff237ecede3baa","entity_key":"d_rental_repairs_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"28ffc25219f9c1bdd5a87389afc3a50b1710fb91933807537a03ef326c65e4aa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a193dc0550f7ada23849ee16155ed66c0fbd3cbdd127b8db8dff237ecede3baa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_03:1 -> audio/generated/de-DE/dialogues/a3268f49ad14f8d9790b0ff5735ea1e24bca40cb0355ee89b01b39ec1e5d8344.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ff69889-7718-5ad4-9900-ef9349d6f3a9', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04876026257a44df29a3aefa626173de21794c76c4d331a21875c48dacea2be9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('297692f1-dd4a-5331-89cd-c1fd64f516f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ff69889-7718-5ad4-9900-ef9349d6f3a9', 1), '04876026257a44df29a3aefa626173de21794c76c4d331a21875c48dacea2be9',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a3268f49ad14f8d9790b0ff5735ea1e24bca40cb0355ee89b01b39ec1e5d8344.mp3', 3657, '2026-09-13 08:31:54.632264', '71c98971f68ad2e7b64d42c2603f233cff3170606fba642b8bb929297835e27d', 'validated', '{"audio_key":"a3268f49ad14f8d9790b0ff5735ea1e24bca40cb0355ee89b01b39ec1e5d8344","entity_key":"d_bureaucracy_appointments_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"71c98971f68ad2e7b64d42c2603f233cff3170606fba642b8bb929297835e27d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a3268f49ad14f8d9790b0ff5735ea1e24bca40cb0355ee89b01b39ec1e5d8344.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_03:2 -> audio/generated/de-DE/dialogues/a7c0666b9dd7be36d9c968345788c3d17fefa9cecbda80206d34d37e35968e19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('65b9d7e6-0351-55d7-a5de-b137b7817a15', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21e7f0dbbafa75187099ea8ea2613a14f82b3a27b4b60d85bed15db90927c682'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a434cc2f-1b21-548f-bef8-299030502703', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('65b9d7e6-0351-55d7-a5de-b137b7817a15', 1), '21e7f0dbbafa75187099ea8ea2613a14f82b3a27b4b60d85bed15db90927c682',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a7c0666b9dd7be36d9c968345788c3d17fefa9cecbda80206d34d37e35968e19.mp3', 2821, '2026-09-13 08:31:55.343385', 'f21790e1f349bc8b7e5b63dfbc620261eafa8d084c1529d030d41d446ad11bc4', 'validated', '{"audio_key":"a7c0666b9dd7be36d9c968345788c3d17fefa9cecbda80206d34d37e35968e19","entity_key":"d_event_organization_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f21790e1f349bc8b7e5b63dfbc620261eafa8d084c1529d030d41d446ad11bc4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a7c0666b9dd7be36d9c968345788c3d17fefa9cecbda80206d34d37e35968e19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_02:4 -> audio/generated/de-DE/dialogues/ab87159dac1eface11694b0a72024f85df4ac26fcc7db0f8697ba4c8b4f15bf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf2aca5a-b02a-5ace-bb38-997546b09581', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4f85c46c58ed8dca4b19caf335b8610b10717a7f1fe04009915291d933c7c80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6795ba20-2044-5749-aed9-2a78ca5ed577', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf2aca5a-b02a-5ace-bb38-997546b09581', 1), 'c4f85c46c58ed8dca4b19caf335b8610b10717a7f1fe04009915291d933c7c80',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ab87159dac1eface11694b0a72024f85df4ac26fcc7db0f8697ba4c8b4f15bf9.mp3', 3840, '2026-09-13 08:31:55.872792', '1dfe32d9ac657de81162dc497b5850dbf3d6ad0bf91c60900935abfb0d203768', 'validated', '{"audio_key":"ab87159dac1eface11694b0a72024f85df4ac26fcc7db0f8697ba4c8b4f15bf9","entity_key":"d_scenario_decisions_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1dfe32d9ac657de81162dc497b5850dbf3d6ad0bf91c60900935abfb0d203768","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ab87159dac1eface11694b0a72024f85df4ac26fcc7db0f8697ba4c8b4f15bf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_01:4 -> audio/generated/de-DE/dialogues/ac6908db890b1d64e296cc6d76d177094110f5de0cfe444b5b3314674f5a2d83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('497e3f91-626a-5456-b742-7f449b555d8a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e05e4c45b6a6aa34d5d3a0535ce79e40c602028e56b38ec30e23de46fcf2263'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5499c4b-b5e2-560c-abf2-ecd794ea0a72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('497e3f91-626a-5456-b742-7f449b555d8a', 1), '7e05e4c45b6a6aa34d5d3a0535ce79e40c602028e56b38ec30e23de46fcf2263',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ac6908db890b1d64e296cc6d76d177094110f5de0cfe444b5b3314674f5a2d83.mp3', 2768, '2026-09-13 08:31:56.521380', 'b68229f50832e8200319935519d23402d1fbed66fc072792e06be44d1fbcc5a3', 'validated', '{"audio_key":"ac6908db890b1d64e296cc6d76d177094110f5de0cfe444b5b3314674f5a2d83","entity_key":"d_rental_repairs_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b68229f50832e8200319935519d23402d1fbed66fc072792e06be44d1fbcc5a3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ac6908db890b1d64e296cc6d76d177094110f5de0cfe444b5b3314674f5a2d83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:1 -> audio/generated/de-DE/dialogues/adf406ec63098af94e006222e3dbb15d68de7c38ea4ae0cdf10ad7f2111096e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0f22fd6-d9a2-589c-be17-cf2b82d5c8b0', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eae9dc35e9f4ed37632e04a84cf39050f6075e190253213097b58e551a273b44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca58df48-b30d-5c38-9121-b99ad1e257c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0f22fd6-d9a2-589c-be17-cf2b82d5c8b0', 1), 'eae9dc35e9f4ed37632e04a84cf39050f6075e190253213097b58e551a273b44',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/adf406ec63098af94e006222e3dbb15d68de7c38ea4ae0cdf10ad7f2111096e6.mp3', 4780, '2026-09-13 08:31:57.307254', 'e1626e44d0b9b3a8d639fd77fd0c6547989723f355934383ed70202d5aca7c4a', 'validated', '{"audio_key":"adf406ec63098af94e006222e3dbb15d68de7c38ea4ae0cdf10ad7f2111096e6","entity_key":"d_contracts_subscriptions_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e1626e44d0b9b3a8d639fd77fd0c6547989723f355934383ed70202d5aca7c4a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/adf406ec63098af94e006222e3dbb15d68de7c38ea4ae0cdf10ad7f2111096e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_02:3 -> audio/generated/de-DE/dialogues/b1a400bbb158ea2867120da9b32f45477f2d6ec5aeb602afadf099e50b0126ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('750962d6-ca85-59c0-8bc5-837b5adba679', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36e0369cf3b622baf6130592b22f17bf51866b86c2287acb98d54d504f2c48f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f277bf4-aa2f-5c19-a65f-064c6b6545b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('750962d6-ca85-59c0-8bc5-837b5adba679', 1), '36e0369cf3b622baf6130592b22f17bf51866b86c2287acb98d54d504f2c48f2',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1a400bbb158ea2867120da9b32f45477f2d6ec5aeb602afadf099e50b0126ce.mp3', 3291, '2026-09-13 08:31:57.710472', '661c400cc6c1744005e4e88092f45fb7f03c2c8838724711098191bbad9e85b4', 'validated', '{"audio_key":"b1a400bbb158ea2867120da9b32f45477f2d6ec5aeb602afadf099e50b0126ce","entity_key":"d_event_organization_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"661c400cc6c1744005e4e88092f45fb7f03c2c8838724711098191bbad9e85b4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b1a400bbb158ea2867120da9b32f45477f2d6ec5aeb602afadf099e50b0126ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_02:2 -> audio/generated/de-DE/dialogues/b4a31bf9462f8d1f749ffcca4fb4ca4c2a1aeebbfc27718a8c3daa02279f0551.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0dc36f6d-aef8-5a49-915e-050c3f5ab659', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed4cc9379f64cd536dfc110fc8d08aa1ff24ac228068e16799a1c05167641f44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56bc5728-c8c2-5783-b0a2-290b75e5018f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0dc36f6d-aef8-5a49-915e-050c3f5ab659', 1), 'ed4cc9379f64cd536dfc110fc8d08aa1ff24ac228068e16799a1c05167641f44',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4a31bf9462f8d1f749ffcca4fb4ca4c2a1aeebbfc27718a8c3daa02279f0551.mp3', 3004, '2026-09-13 08:31:58.415560', 'f2781dc5abf3f526d6ecb7d0994e29d3a2fd1bd181208dca7c43c233f2c18d20', 'validated', '{"audio_key":"b4a31bf9462f8d1f749ffcca4fb4ca4c2a1aeebbfc27718a8c3daa02279f0551","entity_key":"d_event_organization_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"f2781dc5abf3f526d6ecb7d0994e29d3a2fd1bd181208dca7c43c233f2c18d20","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b4a31bf9462f8d1f749ffcca4fb4ca4c2a1aeebbfc27718a8c3daa02279f0551.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_02:1 -> audio/generated/de-DE/dialogues/b7cb845aefc8bc88572125d27e00ba57a07bc2ff73041165b18efbd8eaee1214.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('efc656f8-bc20-5dfa-bea6-7a352652cc68', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5da90963aa21c469a68a9867e17ebf30a398f653ba923d6b53ca2f533e99d01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe727be7-6e3e-5935-9911-6d6c8a74b1ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('efc656f8-bc20-5dfa-bea6-7a352652cc68', 1), 'e5da90963aa21c469a68a9867e17ebf30a398f653ba923d6b53ca2f533e99d01',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b7cb845aefc8bc88572125d27e00ba57a07bc2ff73041165b18efbd8eaee1214.mp3', 4310, '2026-09-13 08:31:59.125068', '3b9b06e824ad1ac4af7fefa4b91d81feb150feb27eaa3bcedce17850c481c93d', 'validated', '{"audio_key":"b7cb845aefc8bc88572125d27e00ba57a07bc2ff73041165b18efbd8eaee1214","entity_key":"d_contracts_subscriptions_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3b9b06e824ad1ac4af7fefa4b91d81feb150feb27eaa3bcedce17850c481c93d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b7cb845aefc8bc88572125d27e00ba57a07bc2ff73041165b18efbd8eaee1214.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_03:1 -> audio/generated/de-DE/dialogues/beafb91f7e4d5737ae23e1a6aef96746c95f806388c419ac06b88ec48588a2b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4cf3c572-ae20-51f2-ae30-af6e1d2c38d1', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66cdb0017f4d47d4c4155debd5d4ae0da02ca79b28e37c2e79ecc00bd74193c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a48cf212-e9f4-5ee6-996d-995875d2cfde', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4cf3c572-ae20-51f2-ae30-af6e1d2c38d1', 1), '66cdb0017f4d47d4c4155debd5d4ae0da02ca79b28e37c2e79ecc00bd74193c9',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/beafb91f7e4d5737ae23e1a6aef96746c95f806388c419ac06b88ec48588a2b9.mp3', 3578, '2026-09-13 08:31:59.616140', '99524d6f0df590578a1e1d55951c29f86abf9f1428b7e62e6d02d26e9222b92c', 'validated', '{"audio_key":"beafb91f7e4d5737ae23e1a6aef96746c95f806388c419ac06b88ec48588a2b9","entity_key":"d_rental_repairs_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"99524d6f0df590578a1e1d55951c29f86abf9f1428b7e62e6d02d26e9222b92c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/beafb91f7e4d5737ae23e1a6aef96746c95f806388c419ac06b88ec48588a2b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_01:4 -> audio/generated/de-DE/dialogues/c476f022cd8077512a0319f52761d3bee297dfb4b47d93a3678585344e423b6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06290639-a4de-5ced-9a03-57d04c6a6b4a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af14f4ff69b6a5cedf3c13e9c87d85731a2be4b7eaa50de65f28d3af59ea304d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1223dbb6-a5ef-52cf-ace4-19ea1eaaba69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06290639-a4de-5ced-9a03-57d04c6a6b4a', 1), 'af14f4ff69b6a5cedf3c13e9c87d85731a2be4b7eaa50de65f28d3af59ea304d',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c476f022cd8077512a0319f52761d3bee297dfb4b47d93a3678585344e423b6c.mp3', 2638, '2026-09-13 08:32:00.248956', '4e2b0f0254427bc1dfeb59bb65ee21b164134622706e9da23fb0ab18789c7944', 'validated', '{"audio_key":"c476f022cd8077512a0319f52761d3bee297dfb4b47d93a3678585344e423b6c","entity_key":"d_hybrid_collaboration_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4e2b0f0254427bc1dfeb59bb65ee21b164134622706e9da23fb0ab18789c7944","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c476f022cd8077512a0319f52761d3bee297dfb4b47d93a3678585344e423b6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_01:3 -> audio/generated/de-DE/dialogues/c8441edc1b691937236da5e36e18355a93654a79a30b6453e9be02da915f2cd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca8d81b9-eb6b-55f2-aefa-5420b6de8272', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b398416529fd96eac58d2e92a12e96458c73150bed2cd74dd4dc26d95d91e322'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d68619bd-851f-5aad-96ae-3a777a1a6250', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca8d81b9-eb6b-55f2-aefa-5420b6de8272', 1), 'b398416529fd96eac58d2e92a12e96458c73150bed2cd74dd4dc26d95d91e322',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c8441edc1b691937236da5e36e18355a93654a79a30b6453e9be02da915f2cd6.mp3', 2690, '2026-09-13 08:32:00.734343', '0b8fccb623cb7160acc44143e7bb3acf42d5064eeddd02b0494813f91fa01a8c', 'validated', '{"audio_key":"c8441edc1b691937236da5e36e18355a93654a79a30b6453e9be02da915f2cd6","entity_key":"d_technical_explanations_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0b8fccb623cb7160acc44143e7bb3acf42d5064eeddd02b0494813f91fa01a8c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c8441edc1b691937236da5e36e18355a93654a79a30b6453e9be02da915f2cd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_03:3 -> audio/generated/de-DE/dialogues/c90d2a0cf1bc2f0b80ec45799d7b96dd7d75ed1313a70d5299ced596992c521a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c8c80f39-b481-58ef-b2e0-61c6c82ce035', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aacde5c792f84da4bff1cea84678b456886cbf1d2918b36d7971b3dd491bfa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7527783-79d3-515e-81cb-2600bd64a1d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c8c80f39-b481-58ef-b2e0-61c6c82ce035', 1), '8aacde5c792f84da4bff1cea84678b456886cbf1d2918b36d7971b3dd491bfa9',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c90d2a0cf1bc2f0b80ec45799d7b96dd7d75ed1313a70d5299ced596992c521a.mp3', 3787, '2026-09-13 08:32:01.502650', 'e16bbe143965d1483a98f4f1f2340e6059778d9add531e57d45e287e37843060', 'validated', '{"audio_key":"c90d2a0cf1bc2f0b80ec45799d7b96dd7d75ed1313a70d5299ced596992c521a","entity_key":"d_rental_repairs_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e16bbe143965d1483a98f4f1f2340e6059778d9add531e57d45e287e37843060","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c90d2a0cf1bc2f0b80ec45799d7b96dd7d75ed1313a70d5299ced596992c521a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_02:3 -> audio/generated/de-DE/dialogues/ca07f0dca69bfeeb50271e6ff2b5b7604eda9397704fd02143b8975abfbb65ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5f324fb-bcb6-5783-956a-9768a886ccd1', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eebad520570d2e2e6cae72dbed5b90e930d2c3695929594844f9403292824e8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ab229c0-2390-57d4-8f4d-b07b8ddb10c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5f324fb-bcb6-5783-956a-9768a886ccd1', 1), 'eebad520570d2e2e6cae72dbed5b90e930d2c3695929594844f9403292824e8b',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ca07f0dca69bfeeb50271e6ff2b5b7604eda9397704fd02143b8975abfbb65ee.mp3', 5433, '2026-09-13 08:32:02.168636', '3651c672a39a84ca45675304e45fcb7cd30af1aef33205d3aa6601c08e34a3de', 'validated', '{"audio_key":"ca07f0dca69bfeeb50271e6ff2b5b7604eda9397704fd02143b8975abfbb65ee","entity_key":"d_technical_explanations_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3651c672a39a84ca45675304e45fcb7cd30af1aef33205d3aa6601c08e34a3de","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ca07f0dca69bfeeb50271e6ff2b5b7604eda9397704fd02143b8975abfbb65ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_03:2 -> audio/generated/de-DE/dialogues/cb974e8b443117ccf6c091bcf7ef8b852e44656477ec2e9a3589c077509e9134.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b4de04f-4b8c-519b-bed6-8921dda04c2d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa6ff1de0a1b3b53ac8cce48656420684e3353b340c53bc388788f79dc6c927d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74a3f403-5225-5b59-a5d1-dba4b73be320', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b4de04f-4b8c-519b-bed6-8921dda04c2d', 1), 'aa6ff1de0a1b3b53ac8cce48656420684e3353b340c53bc388788f79dc6c927d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cb974e8b443117ccf6c091bcf7ef8b852e44656477ec2e9a3589c077509e9134.mp3', 1332, '2026-09-13 08:32:02.478951', '892df81e92106a3853707e83e9c64d78ce90504d5b1b5d4a0c9a851544e4feeb', 'validated', '{"audio_key":"cb974e8b443117ccf6c091bcf7ef8b852e44656477ec2e9a3589c077509e9134","entity_key":"d_bureaucracy_appointments_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"892df81e92106a3853707e83e9c64d78ce90504d5b1b5d4a0c9a851544e4feeb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cb974e8b443117ccf6c091bcf7ef8b852e44656477ec2e9a3589c077509e9134.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_technical_explanations_03:3 -> audio/generated/de-DE/dialogues/cbf8f13ddbefaa50e4e8fcd34bd9526a83833dcda2e43e7f5f7e2dd71b050c4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3187e121-2de1-537b-aae6-c14464a7c1be', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_technical_explanations_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57b7bfd1f20368e4e93901d771c3ca2ab3fe4567fd82ccfe8b8994a754efd759'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0136fb4e-181f-53dd-aae2-4169969787d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3187e121-2de1-537b-aae6-c14464a7c1be', 1), '57b7bfd1f20368e4e93901d771c3ca2ab3fe4567fd82ccfe8b8994a754efd759',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cbf8f13ddbefaa50e4e8fcd34bd9526a83833dcda2e43e7f5f7e2dd71b050c4b.mp3', 4597, '2026-09-13 08:32:03.727618', '27adaf971ea7fda43383097d347e0795cc8b65165eef3d1aaa7b5a35123744e0', 'validated', '{"audio_key":"cbf8f13ddbefaa50e4e8fcd34bd9526a83833dcda2e43e7f5f7e2dd71b050c4b","entity_key":"d_technical_explanations_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"27adaf971ea7fda43383097d347e0795cc8b65165eef3d1aaa7b5a35123744e0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cbf8f13ddbefaa50e4e8fcd34bd9526a83833dcda2e43e7f5f7e2dd71b050c4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_02:2 -> audio/generated/de-DE/dialogues/cd85c81ed047a534f7db3d67cdf5e083578090b032408fbffbe687384a362984.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fbc6ab4-2c15-55f8-b36f-237186b08c6a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a3c61bfefa0a6937445724bf6bf2ecea909e8d334907f3053a1c0e4530854fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceef65b0-c155-5f7f-912e-6ab02db348fe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fbc6ab4-2c15-55f8-b36f-237186b08c6a', 1), '0a3c61bfefa0a6937445724bf6bf2ecea909e8d334907f3053a1c0e4530854fa',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cd85c81ed047a534f7db3d67cdf5e083578090b032408fbffbe687384a362984.mp3', 3761, '2026-09-13 08:32:03.705222', 'a2c881cd7214110069e86626146892c8be5e61d102b0ae018980c201f1e57dac', 'validated', '{"audio_key":"cd85c81ed047a534f7db3d67cdf5e083578090b032408fbffbe687384a362984","entity_key":"d_conflict_mediation_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a2c881cd7214110069e86626146892c8be5e61d102b0ae018980c201f1e57dac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cd85c81ed047a534f7db3d67cdf5e083578090b032408fbffbe687384a362984.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_03:3 -> audio/generated/de-DE/dialogues/cde0cb571574980a26f4af036d143a4c548a13157879dfde42caded8f7cf2837.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e0c84cf-924a-5b03-b83a-1e53b3fdbdd9', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1585a8a3adad4c0c112e09a918eaf3d73cdcd3bdd5ab54523807971fbd7e660'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a0aafe7-885a-5f72-82cc-4a9574251454', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e0c84cf-924a-5b03-b83a-1e53b3fdbdd9', 1), 'b1585a8a3adad4c0c112e09a918eaf3d73cdcd3bdd5ab54523807971fbd7e660',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cde0cb571574980a26f4af036d143a4c548a13157879dfde42caded8f7cf2837.mp3', 3709, '2026-09-13 08:32:05.150593', '4d9e2212d1656d8708c8aead5d0918e7f9ed471afdd38e9ab8334bbc0afd2dd7', 'validated', '{"audio_key":"cde0cb571574980a26f4af036d143a4c548a13157879dfde42caded8f7cf2837","entity_key":"d_contracts_subscriptions_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4d9e2212d1656d8708c8aead5d0918e7f9ed471afdd38e9ab8334bbc0afd2dd7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cde0cb571574980a26f4af036d143a4c548a13157879dfde42caded8f7cf2837.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_03:2 -> audio/generated/de-DE/dialogues/cdeca32a01cfa5e6b7114b323b07dbe8e352d55107afb6143230479a9a4c39b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a178a433-4d61-56d1-8b8e-d49fc7a47bce', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a07e9cd6c0181851a975e13217c22958a46b333ef9897af7b618697f3f116cff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f64a1bf4-62c2-566f-8c64-1a1bd77a3aaa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a178a433-4d61-56d1-8b8e-d49fc7a47bce', 1), 'a07e9cd6c0181851a975e13217c22958a46b333ef9897af7b618697f3f116cff',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cdeca32a01cfa5e6b7114b323b07dbe8e352d55107afb6143230479a9a4c39b0.mp3', 3578, '2026-09-13 08:32:05.005372', '853c34252374d762f24a0b1ea7f41f9f2d7766f6b4241c43dca183927264094a', 'validated', '{"audio_key":"cdeca32a01cfa5e6b7114b323b07dbe8e352d55107afb6143230479a9a4c39b0","entity_key":"d_conflict_mediation_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"853c34252374d762f24a0b1ea7f41f9f2d7766f6b4241c43dca183927264094a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cdeca32a01cfa5e6b7114b323b07dbe8e352d55107afb6143230479a9a4c39b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_02:3 -> audio/generated/de-DE/dialogues/ce20aae47dfd2f5937af3bde9aa76549fa7296b754ba54b8c3b6ab6279190dd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd884891-5a9d-5c0f-ac60-cffa8f76f733', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2691398de5aa5dd86100e6dd2bcebbc369ddf64ad5316b508a9857356a208955'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be3549bb-e83e-5457-8099-844bd98a5b4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd884891-5a9d-5c0f-ac60-cffa8f76f733', 1), '2691398de5aa5dd86100e6dd2bcebbc369ddf64ad5316b508a9857356a208955',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ce20aae47dfd2f5937af3bde9aa76549fa7296b754ba54b8c3b6ab6279190dd1.mp3', 2742, '2026-09-13 08:32:06.100140', '0672a2db91ead010e0a803a9048b6c91b81c3dbeb1c733cedae679503a1e826d', 'validated', '{"audio_key":"ce20aae47dfd2f5937af3bde9aa76549fa7296b754ba54b8c3b6ab6279190dd1","entity_key":"d_rental_repairs_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0672a2db91ead010e0a803a9048b6c91b81c3dbeb1c733cedae679503a1e826d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ce20aae47dfd2f5937af3bde9aa76549fa7296b754ba54b8c3b6ab6279190dd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_02:1 -> audio/generated/de-DE/dialogues/d1fddc9131f3999af5ff97f33a3aebdb1ea72dd97a350ac0bfc1335b63a756c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a7cf33d-ab95-5d1e-850c-1188c3fb9691', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74357fec76f0069035408aa0a2995810d4ebcb755d135151cdd94a87b47f40c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58de4889-93fd-5255-8cc8-fa44a9f7ee81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a7cf33d-ab95-5d1e-850c-1188c3fb9691', 1), '74357fec76f0069035408aa0a2995810d4ebcb755d135151cdd94a87b47f40c5',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1fddc9131f3999af5ff97f33a3aebdb1ea72dd97a350ac0bfc1335b63a756c2.mp3', 3787, '2026-09-13 08:32:06.419106', '036c23c7b9750ab6d2918ab714aa370919ef79b4befe0df375f84f37b5248901', 'validated', '{"audio_key":"d1fddc9131f3999af5ff97f33a3aebdb1ea72dd97a350ac0bfc1335b63a756c2","entity_key":"d_conflict_mediation_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"036c23c7b9750ab6d2918ab714aa370919ef79b4befe0df375f84f37b5248901","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d1fddc9131f3999af5ff97f33a3aebdb1ea72dd97a350ac0bfc1335b63a756c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_02:4 -> audio/generated/de-DE/dialogues/d21ac5d177599ce1f92dc90fc90411c3dd7e8670ac29477da9c31778c6281a6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c537a1e2-35da-59c4-90fe-0dde16fbd870', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bb40a619c8f12946cf837db4da42299ce4014654636700a84629e0eb590589d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106b59f4-3807-56dc-a6b9-fbc5af67fb51', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c537a1e2-35da-59c4-90fe-0dde16fbd870', 1), '0bb40a619c8f12946cf837db4da42299ce4014654636700a84629e0eb590589d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d21ac5d177599ce1f92dc90fc90411c3dd7e8670ac29477da9c31778c6281a6f.mp3', 2089, '2026-09-13 08:32:07.132282', 'fff532599ddf4991c31053c8c05a94bd314b0e22e2d048c0e28948a03a6ab62b', 'validated', '{"audio_key":"d21ac5d177599ce1f92dc90fc90411c3dd7e8670ac29477da9c31778c6281a6f","entity_key":"d_time_management_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"fff532599ddf4991c31053c8c05a94bd314b0e22e2d048c0e28948a03a6ab62b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d21ac5d177599ce1f92dc90fc90411c3dd7e8670ac29477da9c31778c6281a6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_01:1 -> audio/generated/de-DE/dialogues/d2821aca0a9fdfd23699471733e864a2d766cbf4e6cbbfcd4ee79fbd92b1b81d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ffc1b36-c13a-5674-9fcc-8e8dc19ae031', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7fb0d65bfbbb76aba5ba62592ca59e2109d1ebac83429713a1b96d094c0d6a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0454635-7bc9-5bef-a935-6f0738990e76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ffc1b36-c13a-5674-9fcc-8e8dc19ae031', 1), 'c7fb0d65bfbbb76aba5ba62592ca59e2109d1ebac83429713a1b96d094c0d6a6',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2821aca0a9fdfd23699471733e864a2d766cbf4e6cbbfcd4ee79fbd92b1b81d.mp3', 3056, '2026-09-13 08:32:07.620020', '52c0f700e6649e7860e5a84183ce9ff35ae175834dad43c415207b31b2576547', 'validated', '{"audio_key":"d2821aca0a9fdfd23699471733e864a2d766cbf4e6cbbfcd4ee79fbd92b1b81d","entity_key":"d_rental_repairs_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"52c0f700e6649e7860e5a84183ce9ff35ae175834dad43c415207b31b2576547","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2821aca0a9fdfd23699471733e864a2d766cbf4e6cbbfcd4ee79fbd92b1b81d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_02:1 -> audio/generated/de-DE/dialogues/d47bc16fd493ee91af36fd8d8c0e1706681b69c2f9e977c763e4836fb80dfb93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('077bafa2-d072-5540-913e-4f599c447eae', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdaa42290bd64a41443cf43760b87d32e6037b02f5a9792228e70763559f15d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfb0017e-80b8-5b11-8aac-0ebd064ea6fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('077bafa2-d072-5540-913e-4f599c447eae', 1), 'bdaa42290bd64a41443cf43760b87d32e6037b02f5a9792228e70763559f15d4',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d47bc16fd493ee91af36fd8d8c0e1706681b69c2f9e977c763e4836fb80dfb93.mp3', 2037, '2026-09-13 08:32:08.248632', '300f78c53b5fbeab41adba6dc4a83d1b8a3aee2d36ffae13618c30ecac1ff4ee', 'validated', '{"audio_key":"d47bc16fd493ee91af36fd8d8c0e1706681b69c2f9e977c763e4836fb80dfb93","entity_key":"d_professional_networking_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"300f78c53b5fbeab41adba6dc4a83d1b8a3aee2d36ffae13618c30ecac1ff4ee","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d47bc16fd493ee91af36fd8d8c0e1706681b69c2f9e977c763e4836fb80dfb93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_01:2 -> audio/generated/de-DE/dialogues/d7638d78452a0f51dad9e5193dd14c0bf13c33dfe1e1a6473f56b61bbeb3a242.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c198999d-1fc2-5c48-9e0d-a7af7ee6a0ff', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3325444330539dfd002e7c10ea187aa0299c09e9a69e4a3ead16a972792ce26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('669357b0-4fe0-5e3f-9b7a-ac154741edee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c198999d-1fc2-5c48-9e0d-a7af7ee6a0ff', 1), 'f3325444330539dfd002e7c10ea187aa0299c09e9a69e4a3ead16a972792ce26',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d7638d78452a0f51dad9e5193dd14c0bf13c33dfe1e1a6473f56b61bbeb3a242.mp3', 4205, '2026-09-13 08:32:08.869250', '889389190abee9cd147bfa972eeb60519cd72fb09a6dda6ed5bdcf1a6fa62b33', 'validated', '{"audio_key":"d7638d78452a0f51dad9e5193dd14c0bf13c33dfe1e1a6473f56b61bbeb3a242","entity_key":"d_event_organization_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"889389190abee9cd147bfa972eeb60519cd72fb09a6dda6ed5bdcf1a6fa62b33","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d7638d78452a0f51dad9e5193dd14c0bf13c33dfe1e1a6473f56b61bbeb3a242.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_management_03:3 -> audio/generated/de-DE/dialogues/da331cdcea97dff49347ee90fc62f7e8ae23d907542bb6f370f4b24879268dd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5157c310-a7c5-5fa5-bc8e-9d40c66094d1', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_management_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44fa3b390292bad3d7429f740fed9b60550e85a759cbb68b3e68ee2b7cf781b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d25f9a44-33cb-52a3-b6a4-e6f4f2ecdd3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5157c310-a7c5-5fa5-bc8e-9d40c66094d1', 1), '44fa3b390292bad3d7429f740fed9b60550e85a759cbb68b3e68ee2b7cf781b0',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da331cdcea97dff49347ee90fc62f7e8ae23d907542bb6f370f4b24879268dd0.mp3', 3578, '2026-09-13 08:32:09.550830', '3ea7f5885b20a6fbfa4bd1cd9b9a07b3b75500757cc9ebd04a553d40a449247b', 'validated', '{"audio_key":"da331cdcea97dff49347ee90fc62f7e8ae23d907542bb6f370f4b24879268dd0","entity_key":"d_time_management_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3ea7f5885b20a6fbfa4bd1cd9b9a07b3b75500757cc9ebd04a553d40a449247b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/da331cdcea97dff49347ee90fc62f7e8ae23d907542bb6f370f4b24879268dd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_02:1 -> audio/generated/de-DE/dialogues/dacd79158edd045b031c1cd5768e60d246a8215266ac967a7dcb70e8d7d27045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a43048a-072f-5436-bb5e-740f85373ef6', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b835edebeff383e82c4b9e49b9da1cce2d2d45a14c66d306e7f8fe61743da4be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22c2d8bc-fc1d-5a3e-85bb-56f79b036687', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a43048a-072f-5436-bb5e-740f85373ef6', 1), 'b835edebeff383e82c4b9e49b9da1cce2d2d45a14c66d306e7f8fe61743da4be',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dacd79158edd045b031c1cd5768e60d246a8215266ac967a7dcb70e8d7d27045.mp3', 2768, '2026-09-13 08:32:09.973449', 'a71d7dfcddc013feed50c7036a6ae3acde4c919ffd3c04ee17848f1e469919d5', 'validated', '{"audio_key":"dacd79158edd045b031c1cd5768e60d246a8215266ac967a7dcb70e8d7d27045","entity_key":"d_bureaucracy_appointments_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a71d7dfcddc013feed50c7036a6ae3acde4c919ffd3c04ee17848f1e469919d5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dacd79158edd045b031c1cd5768e60d246a8215266ac967a7dcb70e8d7d27045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_bureaucracy_appointments_01:4 -> audio/generated/de-DE/dialogues/dadfaf3d9ce2882581f3d0cf5627fc8282dded4c2063085d6d44dd6fc691db6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb1bef8a-01bb-560d-80e8-363f1709113e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_bureaucracy_appointments_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e9bcfaf1021360210c04c6275ab9f43890751e349477b767b50ef733cefee8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96fb5940-0797-550f-9d0d-a3f3e3b05bf6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb1bef8a-01bb-560d-80e8-363f1709113e', 1), '2e9bcfaf1021360210c04c6275ab9f43890751e349477b767b50ef733cefee8e',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dadfaf3d9ce2882581f3d0cf5627fc8282dded4c2063085d6d44dd6fc691db6a.mp3', 4127, '2026-09-13 08:32:11.095477', '0f85d44e764bb2b9ed7b03f8c751369d6ea56dd6d8896c7a6665ea28aa69d424', 'validated', '{"audio_key":"dadfaf3d9ce2882581f3d0cf5627fc8282dded4c2063085d6d44dd6fc691db6a","entity_key":"d_bureaucracy_appointments_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0f85d44e764bb2b9ed7b03f8c751369d6ea56dd6d8896c7a6665ea28aa69d424","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dadfaf3d9ce2882581f3d0cf5627fc8282dded4c2063085d6d44dd6fc691db6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_03:4 -> audio/generated/de-DE/dialogues/ddd908b404447e1bc2b969097a28491c310106145e5bc63adca091465f01fbd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91a84fba-56f7-5ba5-ae89-976c39cca3a3', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd78740793a03aa7ab6bc34e6911c171f328df9827b67eb018e1f1ff812df2226'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e24d830f-a0f1-5326-89c8-12c7ecab099f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91a84fba-56f7-5ba5-ae89-976c39cca3a3', 1), 'd78740793a03aa7ab6bc34e6911c171f328df9827b67eb018e1f1ff812df2226',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ddd908b404447e1bc2b969097a28491c310106145e5bc63adca091465f01fbd7.mp3', 4075, '2026-09-13 08:32:11.414648', '149f90720ff38e076393d54d717abdbac5374b7f368f651890f57213b3c3cc17', 'validated', '{"audio_key":"ddd908b404447e1bc2b969097a28491c310106145e5bc63adca091465f01fbd7","entity_key":"d_conflict_mediation_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"149f90720ff38e076393d54d717abdbac5374b7f368f651890f57213b3c3cc17","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ddd908b404447e1bc2b969097a28491c310106145e5bc63adca091465f01fbd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_01:1 -> audio/generated/de-DE/dialogues/e05a8f0c3be17bc4a8b01660a0a564b5ae16162472767f79d1342621cddf15b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e63a084-c4a7-5912-ba43-0826a9ab588e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58e08cfffd1c6684bd96ee24e38316b7f2d0f2bacc3dc52873f2c5150314b032'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e512ff8-1f36-5c30-9b47-9f4a7cc9f529', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e63a084-c4a7-5912-ba43-0826a9ab588e', 1), '58e08cfffd1c6684bd96ee24e38316b7f2d0f2bacc3dc52873f2c5150314b032',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e05a8f0c3be17bc4a8b01660a0a564b5ae16162472767f79d1342621cddf15b7.mp3', 3578, '2026-09-13 08:32:12.325854', '468980d625d5155ead010ad2fef19a9c745a44d52817f81f71ea27ce3aba04ab', 'validated', '{"audio_key":"e05a8f0c3be17bc4a8b01660a0a564b5ae16162472767f79d1342621cddf15b7","entity_key":"d_professional_networking_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"468980d625d5155ead010ad2fef19a9c745a44d52817f81f71ea27ce3aba04ab","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e05a8f0c3be17bc4a8b01660a0a564b5ae16162472767f79d1342621cddf15b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_professional_networking_02:4 -> audio/generated/de-DE/dialogues/eb48160e8f10687e146eca61096f7612869d338168457cf341b0ce2a4a8361ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7dd3f34-f516-50aa-97e4-f4b8e18f5ecf', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_professional_networking_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e436b9be9dc911622b79326828bc65bec3f4a4db53760cca1d752ca019e1b89e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('021febf5-2716-571b-97e9-17a959573cb2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7dd3f34-f516-50aa-97e4-f4b8e18f5ecf', 1), 'e436b9be9dc911622b79326828bc65bec3f4a4db53760cca1d752ca019e1b89e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb48160e8f10687e146eca61096f7612869d338168457cf341b0ce2a4a8361ef.mp3', 3056, '2026-09-13 08:32:12.640100', '93d6e125886b9ccac9444cfb30deb330c16ea091d45f66bf03cd3f81dc7a86c7', 'validated', '{"audio_key":"eb48160e8f10687e146eca61096f7612869d338168457cf341b0ce2a4a8361ef","entity_key":"d_professional_networking_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"93d6e125886b9ccac9444cfb30deb330c16ea091d45f66bf03cd3f81dc7a86c7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/eb48160e8f10687e146eca61096f7612869d338168457cf341b0ce2a4a8361ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_01:2 -> audio/generated/de-DE/dialogues/ebd5cea7a1b34b2e80bf8b4a3806dc791e43fdd34f24dbf1b9952e9061bc1614.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('319ab3d3-2815-5aca-91b1-ce4100020b39', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45a0af91155893304b59f82115212e6b6469aa6b9ca92f035fc773dac8b71247'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4d5b038-4da4-5f7d-9b1f-26da3647c828', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('319ab3d3-2815-5aca-91b1-ce4100020b39', 1), '45a0af91155893304b59f82115212e6b6469aa6b9ca92f035fc773dac8b71247',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ebd5cea7a1b34b2e80bf8b4a3806dc791e43fdd34f24dbf1b9952e9061bc1614.mp3', 2168, '2026-09-13 08:32:13.395707', '1eb88d43f0a04b9b76e420d4c573eca0634fee9ebd23e2e95bfcd3228534dc90', 'validated', '{"audio_key":"ebd5cea7a1b34b2e80bf8b4a3806dc791e43fdd34f24dbf1b9952e9061bc1614","entity_key":"d_conflict_mediation_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"1eb88d43f0a04b9b76e420d4c573eca0634fee9ebd23e2e95bfcd3228534dc90","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ebd5cea7a1b34b2e80bf8b4a3806dc791e43fdd34f24dbf1b9952e9061bc1614.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rental_repairs_01:2 -> audio/generated/de-DE/dialogues/ed892511849e2d57f7505987fa26e4bb29d0f75175624d5b34f2d0a064c99966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f57cbc15-ba80-5781-92a2-99ac77018bd1', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rental_repairs_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '136c97d2057da084a2e3c07adfbd9ac8840d8b0988a93bc0f99a9d8348f07f03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3277434-6f37-58ed-9f56-8ab232f67a5f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f57cbc15-ba80-5781-92a2-99ac77018bd1', 1), '136c97d2057da084a2e3c07adfbd9ac8840d8b0988a93bc0f99a9d8348f07f03',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed892511849e2d57f7505987fa26e4bb29d0f75175624d5b34f2d0a064c99966.mp3', 1332, '2026-09-13 08:32:13.626494', '95ef859bdad38e4904c6cb9a44b1b4160867e9304fd372c2c947042d8e97202f', 'validated', '{"audio_key":"ed892511849e2d57f7505987fa26e4bb29d0f75175624d5b34f2d0a064c99966","entity_key":"d_rental_repairs_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"95ef859bdad38e4904c6cb9a44b1b4160867e9304fd372c2c947042d8e97202f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ed892511849e2d57f7505987fa26e4bb29d0f75175624d5b34f2d0a064c99966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_02:3 -> audio/generated/de-DE/dialogues/f00a30d00307b4801a3781a34909dffff06b8be030431455c9c76f0d83aec79d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f5493b7-c76f-53cd-a2ed-ac9553640750', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '405794ad586905364343c2d9a2f901c2f36cbb09e8cd179520eb1b10289059ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fc0e83d-b08e-5007-966e-7f19964046e7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f5493b7-c76f-53cd-a2ed-ac9553640750', 1), '405794ad586905364343c2d9a2f901c2f36cbb09e8cd179520eb1b10289059ed',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f00a30d00307b4801a3781a34909dffff06b8be030431455c9c76f0d83aec79d.mp3', 4362, '2026-09-13 08:32:14.679259', '4b7e91f59d1d0d0269963a9a268edd820e4df6cc8223df0f2c886e953b190f38', 'validated', '{"audio_key":"f00a30d00307b4801a3781a34909dffff06b8be030431455c9c76f0d83aec79d","entity_key":"d_scenario_decisions_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4b7e91f59d1d0d0269963a9a268edd820e4df6cc8223df0f2c886e953b190f38","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f00a30d00307b4801a3781a34909dffff06b8be030431455c9c76f0d83aec79d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_03:1 -> audio/generated/de-DE/dialogues/f045f4f3da121b44ef1433c24be89f7370e0c385d7657a8ece10a9de06deb7b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43cd964f-0d00-5f84-8746-8043a59076a4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5076688b23101a4cb63fc608a72cc4b14538052c3c381c2061e7ff3b5eea42e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f25af05-38d3-5a59-9d0e-b927c8213aee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43cd964f-0d00-5f84-8746-8043a59076a4', 1), '5076688b23101a4cb63fc608a72cc4b14538052c3c381c2061e7ff3b5eea42e3',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f045f4f3da121b44ef1433c24be89f7370e0c385d7657a8ece10a9de06deb7b7.mp3', 3892, '2026-09-13 08:32:16.526046', '0cacbbee9ceb460641982303d65305a5752d1bb5bfa4d08f2f691c8ece70db41', 'validated', '{"audio_key":"f045f4f3da121b44ef1433c24be89f7370e0c385d7657a8ece10a9de06deb7b7","entity_key":"d_conflict_mediation_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0cacbbee9ceb460641982303d65305a5752d1bb5bfa4d08f2f691c8ece70db41","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f045f4f3da121b44ef1433c24be89f7370e0c385d7657a8ece10a9de06deb7b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_03:4 -> audio/generated/de-DE/dialogues/f0a305a04a83df94a49e17d23a23c7e98378ffd19c735deac20a764dca81b5d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11b64601-8c62-5d11-8b8d-1c518503538c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a052dc7cb0bfc191ed6e1f317ff4b9ee035348d40130f55966a8b095f342eb5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('885f0b06-3195-5f04-b276-ec54400e79de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11b64601-8c62-5d11-8b8d-1c518503538c', 1), 'a052dc7cb0bfc191ed6e1f317ff4b9ee035348d40130f55966a8b095f342eb5d',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0a305a04a83df94a49e17d23a23c7e98378ffd19c735deac20a764dca81b5d0.mp3', 2533, '2026-09-13 08:32:15.774075', '4982e16ea2782e81ba572ac8b75512c8490e2ddce74bf3c9a57283d6ad65528a', 'validated', '{"audio_key":"f0a305a04a83df94a49e17d23a23c7e98378ffd19c735deac20a764dca81b5d0","entity_key":"d_event_organization_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4982e16ea2782e81ba572ac8b75512c8490e2ddce74bf3c9a57283d6ad65528a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f0a305a04a83df94a49e17d23a23c7e98378ffd19c735deac20a764dca81b5d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_contracts_subscriptions_01:2 -> audio/generated/de-DE/dialogues/f2c22491513d69107daf6ea442eaecf62d5fbaa9d04d8b0a7b5ad7c482b226a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96936988-3d61-56e6-bd72-77190774e21b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_contracts_subscriptions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d28108f2d0d68c7ef1d04a9b32a1252003da0cebdefe60391b53e047d02cdc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce4b5ff8-9193-54b1-a1b2-61f408beecf3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96936988-3d61-56e6-bd72-77190774e21b', 1), '4d28108f2d0d68c7ef1d04a9b32a1252003da0cebdefe60391b53e047d02cdc7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f2c22491513d69107daf6ea442eaecf62d5fbaa9d04d8b0a7b5ad7c482b226a9.mp3', 3160, '2026-09-13 08:32:17.027461', '5324f9702d3f21b9afbdf7f6a76dcd334d0ac7f80720120f13782c4fc184b155', 'validated', '{"audio_key":"f2c22491513d69107daf6ea442eaecf62d5fbaa9d04d8b0a7b5ad7c482b226a9","entity_key":"d_contracts_subscriptions_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5324f9702d3f21b9afbdf7f6a76dcd334d0ac7f80720120f13782c4fc184b155","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f2c22491513d69107daf6ea442eaecf62d5fbaa9d04d8b0a7b5ad7c482b226a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_event_organization_01:4 -> audio/generated/de-DE/dialogues/f6c68d2d0b74c935923ffbd5d6fae52e588176832b5bb7a07330b2756148bb5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ddbcdaf8-07d4-52d9-8365-ac563ad59867', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_event_organization_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85b58578b3179a618106a49fd22b06585c6a5e415233bcf7de2e5c289d05ebe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de97115e-0164-5955-9836-127469067c55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ddbcdaf8-07d4-52d9-8365-ac563ad59867', 1), '85b58578b3179a618106a49fd22b06585c6a5e415233bcf7de2e5c289d05ebe2',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6c68d2d0b74c935923ffbd5d6fae52e588176832b5bb7a07330b2756148bb5f.mp3', 3892, '2026-09-13 08:32:17.863244', '1941efaa1a005ced7219701f3f445d00c18a2f9e847963fd3a3e01aeb3735879', 'validated', '{"audio_key":"f6c68d2d0b74c935923ffbd5d6fae52e588176832b5bb7a07330b2756148bb5f","entity_key":"d_event_organization_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1941efaa1a005ced7219701f3f445d00c18a2f9e847963fd3a3e01aeb3735879","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f6c68d2d0b74c935923ffbd5d6fae52e588176832b5bb7a07330b2756148bb5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hybrid_collaboration_02:1 -> audio/generated/de-DE/dialogues/f7aa17b73901ac11d17e30a3a001f40ccc802997a5789af8fb264909e22e95ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c46659d1-69b0-596c-8949-5560e87afcc2', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hybrid_collaboration_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd06dc648184b783590145466a43aaccf3953c2c831bf3877d16af0cbcd5d756f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50cfd560-fb45-5f44-a235-afc20a2a385b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c46659d1-69b0-596c-8949-5560e87afcc2', 1), 'd06dc648184b783590145466a43aaccf3953c2c831bf3877d16af0cbcd5d756f',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7aa17b73901ac11d17e30a3a001f40ccc802997a5789af8fb264909e22e95ae.mp3', 3422, '2026-09-13 08:32:18.228695', 'c119d5e1176f1c042e26ba9c5c16d9850c20e97550a66e1954b87fb12a36570e', 'validated', '{"audio_key":"f7aa17b73901ac11d17e30a3a001f40ccc802997a5789af8fb264909e22e95ae","entity_key":"d_hybrid_collaboration_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c119d5e1176f1c042e26ba9c5c16d9850c20e97550a66e1954b87fb12a36570e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f7aa17b73901ac11d17e30a3a001f40ccc802997a5789af8fb264909e22e95ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_03:4 -> audio/generated/de-DE/dialogues/f9edeca6046fa0fe25e6c4090cdc109187a6eaaa1979f1bb843ef794040be8e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('636770df-9954-52af-8bb1-cd268887c9a5', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2338b0ce06f4df87bc8d614b6b58d2a13eca3a4fc22252abf0d12621f559f279'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92b07707-b6be-5092-952d-a3c58042a835', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('636770df-9954-52af-8bb1-cd268887c9a5', 1), '2338b0ce06f4df87bc8d614b6b58d2a13eca3a4fc22252abf0d12621f559f279',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f9edeca6046fa0fe25e6c4090cdc109187a6eaaa1979f1bb843ef794040be8e9.mp3', 2690, '2026-09-13 08:32:18.987806', '102d54e571e35d30eda775875267b6a4a77aab10ee00cad2268fea6e2b664904', 'validated', '{"audio_key":"f9edeca6046fa0fe25e6c4090cdc109187a6eaaa1979f1bb843ef794040be8e9","entity_key":"d_scenario_decisions_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"102d54e571e35d30eda775875267b6a4a77aab10ee00cad2268fea6e2b664904","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f9edeca6046fa0fe25e6c4090cdc109187a6eaaa1979f1bb843ef794040be8e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conflict_mediation_03:3 -> audio/generated/de-DE/dialogues/f9f9d9c4825b8b175812d69fc72adf1f57a82a03b39b8c69c6fa408894697b71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c09210ea-adff-53d2-8c87-cedf07b70389', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conflict_mediation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3559fe43c61ab15627af794fbda14c259e53cccb5841318d7795f064d1944341'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1ffc787-9afc-5784-8268-0aac929b9ec1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c09210ea-adff-53d2-8c87-cedf07b70389', 1), '3559fe43c61ab15627af794fbda14c259e53cccb5841318d7795f064d1944341',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f9f9d9c4825b8b175812d69fc72adf1f57a82a03b39b8c69c6fa408894697b71.mp3', 4127, '2026-09-13 08:32:19.574089', '8c54ece9935a1a18f614d587164909ee8d09662d8e49bf30b677ad2bf0d0c771', 'validated', '{"audio_key":"f9f9d9c4825b8b175812d69fc72adf1f57a82a03b39b8c69c6fa408894697b71","entity_key":"d_conflict_mediation_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8c54ece9935a1a18f614d587164909ee8d09662d8e49bf30b677ad2bf0d0c771","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f9f9d9c4825b8b175812d69fc72adf1f57a82a03b39b8c69c6fa408894697b71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_scenario_decisions_01:4 -> audio/generated/de-DE/dialogues/fafe1debdc236eec4a3489de26d6c0efe6cf9d605a3929f452d809c13593fe5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e14cf647-2e43-58b6-8a2b-e771595c51d5', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_scenario_decisions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb1c1e83d8b4d4d3a7340e3284d81420ad9c2f6b10b4aa1177f0cd1dde68df30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('847df3dd-44ca-582c-ac00-8d996ab429e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e14cf647-2e43-58b6-8a2b-e771595c51d5', 1), 'cb1c1e83d8b4d4d3a7340e3284d81420ad9c2f6b10b4aa1177f0cd1dde68df30',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fafe1debdc236eec4a3489de26d6c0efe6cf9d605a3929f452d809c13593fe5c.mp3', 3840, '2026-09-13 08:32:20.224029', '88ffc448805529c458a9cb6fb7658154c43d2fcb0a104521691adb2d3e357bcb', 'validated', '{"audio_key":"fafe1debdc236eec4a3489de26d6c0efe6cf9d605a3929f452d809c13593fe5c","entity_key":"d_scenario_decisions_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"88ffc448805529c458a9cb6fb7658154c43d2fcb0a104521691adb2d3e357bcb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fafe1debdc236eec4a3489de26d6c0efe6cf9d605a3929f452d809c13593fe5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_technical_explanations_02 -> audio/generated/de-DE/lexical/071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ca6351b-153d-54f5-a9c2-ee32ac1cd766', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_technical_explanations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ca6961d0ce4a73227d962d9a7c41e4dd69d2a7df5ceab0cb5981d45e2374a0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b52c6039-383c-5fc7-b771-444e0943145d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ca6351b-153d-54f5-a9c2-ee32ac1cd766', 1), '4ca6961d0ce4a73227d962d9a7c41e4dd69d2a7df5ceab0cb5981d45e2374a0e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c.mp3', 1201, '2026-09-13 08:32:20.559123', '59bf2f1349cd0926c59369b872ca9e93dd66a10cba66aef4411e6bbaa500998b', 'validated', '{"audio_key":"071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c","entity_key":"lx_technical_explanations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59bf2f1349cd0926c59369b872ca9e93dd66a10cba66aef4411e6bbaa500998b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_technical_explanations_02 -> audio/generated/de-DE/lexical/071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d350b0a2-0d61-52a8-b80a-15654029e219', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_technical_explanations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ca6961d0ce4a73227d962d9a7c41e4dd69d2a7df5ceab0cb5981d45e2374a0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a4540f3-a303-55e4-b240-90ac049a685f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d350b0a2-0d61-52a8-b80a-15654029e219', 1), '4ca6961d0ce4a73227d962d9a7c41e4dd69d2a7df5ceab0cb5981d45e2374a0e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c.mp3', 1201, '2026-09-13 08:32:20.559123', '59bf2f1349cd0926c59369b872ca9e93dd66a10cba66aef4411e6bbaa500998b', 'validated', '{"audio_key":"071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c","entity_key":"wf_technical_explanations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59bf2f1349cd0926c59369b872ca9e93dd66a10cba66aef4411e6bbaa500998b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/071e2948f79bcfb90dc47472da47cc5c15b10dcd5657d85535d3446e4532cc0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rental_repairs_03 -> audio/generated/de-DE/lexical/0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('202747e2-663e-524b-8e2d-4777bae567d7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rental_repairs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0136609a9ad83a8dba4fc289dc6a437e06c4a63d3ed37138807d0fc80fdca88b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbdcf2b5-84c1-51b5-a21f-242b6f9bdc1d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('202747e2-663e-524b-8e2d-4777bae567d7', 1), '0136609a9ad83a8dba4fc289dc6a437e06c4a63d3ed37138807d0fc80fdca88b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9.mp3', 1436, '2026-09-13 08:32:21.188597', '02d1b2b39bc7feefa065017592f2dfad38ee10f6994b3c4134189cecb852cd35', 'validated', '{"audio_key":"0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9","entity_key":"lx_rental_repairs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02d1b2b39bc7feefa065017592f2dfad38ee10f6994b3c4134189cecb852cd35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rental_repairs_03 -> audio/generated/de-DE/lexical/0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80ad43ef-726d-58ec-b2e7-24fba694c98a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rental_repairs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0136609a9ad83a8dba4fc289dc6a437e06c4a63d3ed37138807d0fc80fdca88b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd2c9e0e-c928-53f8-b0be-218db057dbd6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80ad43ef-726d-58ec-b2e7-24fba694c98a', 1), '0136609a9ad83a8dba4fc289dc6a437e06c4a63d3ed37138807d0fc80fdca88b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9.mp3', 1436, '2026-09-13 08:32:21.188597', '02d1b2b39bc7feefa065017592f2dfad38ee10f6994b3c4134189cecb852cd35', 'validated', '{"audio_key":"0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9","entity_key":"wf_rental_repairs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02d1b2b39bc7feefa065017592f2dfad38ee10f6994b3c4134189cecb852cd35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0739a2c279414c0c6bf8ab1da5df4f13e4166d75983916dbb534b9c0576ae3a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_networking_05 -> audio/generated/de-DE/lexical/09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c09f5bc9-ad00-54c3-bfd9-0075775905ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_networking_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '063834abe00c2976b5ad1bbfc9247483a492615c57064a42f53ba573551a391a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('636afbde-1af8-5203-bb55-06bb48c14e24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c09f5bc9-ad00-54c3-bfd9-0075775905ce', 1), '063834abe00c2976b5ad1bbfc9247483a492615c57064a42f53ba573551a391a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48.mp3', 1071, '2026-09-13 08:32:21.512859', '990a258ee2e78a4d9ad77f46d03a544eb77374a52194f3a7eb694a1357e6c10f', 'validated', '{"audio_key":"09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48","entity_key":"lx_professional_networking_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"990a258ee2e78a4d9ad77f46d03a544eb77374a52194f3a7eb694a1357e6c10f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_networking_05 -> audio/generated/de-DE/lexical/09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0b6d19b-f4b9-564f-884a-db781fe0dbf5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_networking_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '063834abe00c2976b5ad1bbfc9247483a492615c57064a42f53ba573551a391a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00ee9c67-b209-54a5-82f1-9f9909586879', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0b6d19b-f4b9-564f-884a-db781fe0dbf5', 1), '063834abe00c2976b5ad1bbfc9247483a492615c57064a42f53ba573551a391a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48.mp3', 1071, '2026-09-13 08:32:21.512859', '990a258ee2e78a4d9ad77f46d03a544eb77374a52194f3a7eb694a1357e6c10f', 'validated', '{"audio_key":"09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48","entity_key":"wf_professional_networking_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"990a258ee2e78a4d9ad77f46d03a544eb77374a52194f3a7eb694a1357e6c10f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/09ef6c14d9aaad0a7dc15c966ccc5309a8036aced5e918630cf92f181c84fc48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_decisions_01 -> audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b702f14e-bc70-5227-aedf-1480efe95e9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cf2efaa-65b4-547b-bfdf-964a47139ef3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b702f14e-bc70-5227-aedf-1480efe95e9d', 1), 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3', 1149, '2026-09-13 08:32:22.220003', 'aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2', 'validated', '{"audio_key":"0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24","entity_key":"lx_scenario_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_decisions_01 -> audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2d5c7f3-1bf2-51b6-a0b5-182c60247908', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d976d2b9-a2be-5aeb-9d64-6d5bff511d92', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2d5c7f3-1bf2-51b6-a0b5-182c60247908', 1), 'da7c2fbc0abab9ac60b383fe700cbe03199e509933ff8403b01731120aefb1d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3', 1149, '2026-09-13 08:32:22.220003', 'aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2', 'validated', '{"audio_key":"0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24","entity_key":"wf_scenario_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa0966be115a9aa296eb67ab6793590583bbfd4ff02a36630f60df31eee3e0d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae43b92a1a772b9a04953b19f6805eb8f19fe15851c64030c5213b464266d24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_06 -> audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea909f0b-c1c1-534f-8159-406dc56d7e80', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('060e48b2-15ee-5d15-b0d6-a1deb3b967b4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea909f0b-c1c1-534f-8159-406dc56d7e80', 1), 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3', 1253, '2026-09-13 05:29:34.213143', '7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27', 'validated', '{"audio_key":"0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7","entity_key":"lx_contracts_subscriptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_06 -> audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8119a0a6-e0bd-5ab1-81cb-b626df680f24', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c6eff65-d007-5f6e-8987-cc7f6224ba0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8119a0a6-e0bd-5ab1-81cb-b626df680f24', 1), 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3', 1253, '2026-09-13 05:29:34.213143', '7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27', 'validated', '{"audio_key":"0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7","entity_key":"wf_contracts_subscriptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_bureaucracy_appointments_06 -> audio/generated/de-DE/lexical/0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('65bf212c-252c-52a5-ac3a-884492b1f973', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_bureaucracy_appointments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0bff47bac9450d8573abc77fb25a05d518b3ee95218222e6f69a10b58cf0841'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e927b390-0058-5b68-9acf-600f49e0bc9c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('65bf212c-252c-52a5-ac3a-884492b1f973', 1), 'c0bff47bac9450d8573abc77fb25a05d518b3ee95218222e6f69a10b58cf0841',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868.mp3', 1488, '2026-09-13 08:32:22.488290', '38a765ef6e59fb9aaa8e2b91aeef16fc0cca3cf63c5a254155434dd97dc060e6', 'validated', '{"audio_key":"0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868","entity_key":"lx_bureaucracy_appointments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38a765ef6e59fb9aaa8e2b91aeef16fc0cca3cf63c5a254155434dd97dc060e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_bureaucracy_appointments_06 -> audio/generated/de-DE/lexical/0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fd975826-d084-5c29-b7e3-d6e2a6220cfd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_bureaucracy_appointments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0bff47bac9450d8573abc77fb25a05d518b3ee95218222e6f69a10b58cf0841'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05e17ae5-5c26-5d7f-8b54-826a34637cfc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fd975826-d084-5c29-b7e3-d6e2a6220cfd', 1), 'c0bff47bac9450d8573abc77fb25a05d518b3ee95218222e6f69a10b58cf0841',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868.mp3', 1488, '2026-09-13 08:32:22.488290', '38a765ef6e59fb9aaa8e2b91aeef16fc0cca3cf63c5a254155434dd97dc060e6', 'validated', '{"audio_key":"0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868","entity_key":"wf_bureaucracy_appointments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38a765ef6e59fb9aaa8e2b91aeef16fc0cca3cf63c5a254155434dd97dc060e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dd76c8fc3e72aa65d43266faf7606b266e41b3d8b9f8e0557ddb06a6d481868.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_bureaucracy_appointments_01 -> audio/generated/de-DE/lexical/117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('82cc64c0-ec6c-52b9-93c2-b058c724a2f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_bureaucracy_appointments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cd5920ac9f870ae154d4b97a1892be41291825721ce6d692701acd15a8eb8bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('720eb037-3637-5ddb-a0e5-09c3e55f35d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('82cc64c0-ec6c-52b9-93c2-b058c724a2f6', 1), '5cd5920ac9f870ae154d4b97a1892be41291825721ce6d692701acd15a8eb8bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117.mp3', 966, '2026-09-13 08:32:23.158542', '74b5e0dbeb4b174a44ca0a86575c95ee5633948145f946394880bba4fb698623', 'validated', '{"audio_key":"117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117","entity_key":"lx_bureaucracy_appointments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"74b5e0dbeb4b174a44ca0a86575c95ee5633948145f946394880bba4fb698623","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_bureaucracy_appointments_01 -> audio/generated/de-DE/lexical/117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6316890-1e11-520e-8974-644388e93b05', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_bureaucracy_appointments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cd5920ac9f870ae154d4b97a1892be41291825721ce6d692701acd15a8eb8bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82f3c6bd-7181-5083-a6e2-f347527f9ab3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6316890-1e11-520e-8974-644388e93b05', 1), '5cd5920ac9f870ae154d4b97a1892be41291825721ce6d692701acd15a8eb8bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117.mp3', 966, '2026-09-13 08:32:23.158542', '74b5e0dbeb4b174a44ca0a86575c95ee5633948145f946394880bba4fb698623', 'validated', '{"audio_key":"117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117","entity_key":"wf_bureaucracy_appointments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"74b5e0dbeb4b174a44ca0a86575c95ee5633948145f946394880bba4fb698623","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/117a2c305e0f01f68f9f84e35e5576d22c4f0561135a8cec4625057b23903117.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_01 -> audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5bcd316b-813a-5b80-86d5-bdde32d21fa7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e909d150-f185-580c-8f99-f82a9b9efd97', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5bcd316b-813a-5b80-86d5-bdde32d21fa7', 1), '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3', 1253, '2026-09-13 06:59:21.781104', '0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f', 'validated', '{"audio_key":"16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad","entity_key":"lx_contracts_subscriptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_01 -> audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b2186a5-54e9-5075-aecf-ba58be28e9b0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebdeb80c-6239-5d9a-8d8f-05960bc54459', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b2186a5-54e9-5075-aecf-ba58be28e9b0', 1), '956ba2f5f97188e6209b7816eb89dc1c495c25bf020b2532356a55b77ff3e15a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3', 1253, '2026-09-13 06:59:21.781104', '0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f', 'validated', '{"audio_key":"16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad","entity_key":"wf_contracts_subscriptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e42c532c48ff9a3f8a2e53ae5493c6aeb763d26f709c5af2ca28ace1e5a974f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/16db6fa56aee05f06bd4ce32ac6f653c4cc48b04702c1efd7769d1fe774421ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hybrid_collaboration_02 -> audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ebf2ca04-b04e-575c-8932-bab9b9f98e5f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hybrid_collaboration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('138767ab-ac83-5cc3-87b0-ee1ce79e53bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ebf2ca04-b04e-575c-8932-bab9b9f98e5f', 1), 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3', 1097, '2026-09-13 05:29:38.404096', 'a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da', 'validated', '{"audio_key":"1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca","entity_key":"lx_hybrid_collaboration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hybrid_collaboration_02 -> audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e188b971-341b-5ef3-96fd-922426a8864b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hybrid_collaboration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('501a972a-c14b-5782-a759-00fab69ee047', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e188b971-341b-5ef3-96fd-922426a8864b', 1), 'fb6263a777b71543f36680cd842bf4945df843744c9235105366a74f91965e75',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3', 1097, '2026-09-13 05:29:38.404096', 'a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da', 'validated', '{"audio_key":"1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca","entity_key":"wf_hybrid_collaboration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7e115ee8aa2d2510ff0ec4b62d1bbcaecf7c86916f968f84148f7e510a4d7da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1af1d236528afbbe719a700ba61129f0f449e1bfa751c973c1a4c7e5ce7267ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hybrid_collaboration_03 -> audio/generated/de-DE/lexical/1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('85fde453-3ca5-53dd-8d8b-2b020079cff7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hybrid_collaboration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52e3f57690a3e20edf3c1143c016a4fa42cbfe3ce7a8acba423dde8024376e77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2eb3bd57-aac9-5fcb-9777-e90b7cda75d2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('85fde453-3ca5-53dd-8d8b-2b020079cff7', 1), '52e3f57690a3e20edf3c1143c016a4fa42cbfe3ce7a8acba423dde8024376e77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b.mp3', 1097, '2026-09-13 08:32:23.462839', '63ec3d3cef9b484e021f314fbdaa4f554b15defc4c939764f82880d9fe587bb6', 'validated', '{"audio_key":"1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b","entity_key":"lx_hybrid_collaboration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63ec3d3cef9b484e021f314fbdaa4f554b15defc4c939764f82880d9fe587bb6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hybrid_collaboration_03 -> audio/generated/de-DE/lexical/1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d36587a-7ee3-5f1a-a0b9-40ad053920c2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hybrid_collaboration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52e3f57690a3e20edf3c1143c016a4fa42cbfe3ce7a8acba423dde8024376e77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe8f9c4-c91f-5ed4-b9e9-89a119e5ccc6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d36587a-7ee3-5f1a-a0b9-40ad053920c2', 1), '52e3f57690a3e20edf3c1143c016a4fa42cbfe3ce7a8acba423dde8024376e77',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b.mp3', 1097, '2026-09-13 08:32:23.462839', '63ec3d3cef9b484e021f314fbdaa4f554b15defc4c939764f82880d9fe587bb6', 'validated', '{"audio_key":"1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b","entity_key":"wf_hybrid_collaboration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63ec3d3cef9b484e021f314fbdaa4f554b15defc4c939764f82880d9fe587bb6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1d613cc4615bc3beac7647e83583d60d8c198fdc69e6a1bfee341d7aa806b16b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_bureaucracy_appointments_05 -> audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a61a4778-cd96-5354-ac6d-fb83ce614e2b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_bureaucracy_appointments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1f57747-1873-5d8d-b3c3-f2d388dd813f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a61a4778-cd96-5354-ac6d-fb83ce614e2b', 1), '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3', 1201, '2026-09-13 08:32:24.115387', 'f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600', 'validated', '{"audio_key":"2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792","entity_key":"lx_bureaucracy_appointments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_bureaucracy_appointments_05 -> audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66cd5047-3ae0-56eb-82a9-ad41c6e9804a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_bureaucracy_appointments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1eddeb82-87e8-50c7-94be-7f4fcd371fbb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66cd5047-3ae0-56eb-82a9-ad41c6e9804a', 1), '89aafadbc4af2520512b4d74d2b4ed7c87a16d4b76526b108f83ee38e30fb351',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3', 1201, '2026-09-13 08:32:24.115387', 'f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600', 'validated', '{"audio_key":"2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792","entity_key":"wf_bureaucracy_appointments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f12039498efd7f3d577129da475897f99a8dfdc475ad53a95e6b13e249a29600","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2633703e4867898a2b277a52149849bbd47e164231514ff383fc927ff54a9792.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_management_02 -> audio/generated/de-DE/lexical/2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('306ef286-3561-582c-ac47-da432a54f10d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_management_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85f012d6f2cb0023b8b102b9d7f0e096f80f03c1106ec522ed7ed70af8ef773d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86b33adc-bbad-57cf-b50d-4efa1f90a122', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('306ef286-3561-582c-ac47-da432a54f10d', 1), '85f012d6f2cb0023b8b102b9d7f0e096f80f03c1106ec522ed7ed70af8ef773d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07.mp3', 1253, '2026-09-13 08:32:24.442133', 'bdcd7b4158e3463c40e9b735dd1782751abcf80f95ada1d0f299347412d56d6e', 'validated', '{"audio_key":"2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07","entity_key":"lx_time_management_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdcd7b4158e3463c40e9b735dd1782751abcf80f95ada1d0f299347412d56d6e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_management_02 -> audio/generated/de-DE/lexical/2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b1d57f8-9d58-5e19-b836-8ef28c13c025', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_management_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85f012d6f2cb0023b8b102b9d7f0e096f80f03c1106ec522ed7ed70af8ef773d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd750c8e-1e6e-5804-be71-93e3c875f89c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b1d57f8-9d58-5e19-b836-8ef28c13c025', 1), '85f012d6f2cb0023b8b102b9d7f0e096f80f03c1106ec522ed7ed70af8ef773d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07.mp3', 1253, '2026-09-13 08:32:24.442133', 'bdcd7b4158e3463c40e9b735dd1782751abcf80f95ada1d0f299347412d56d6e', 'validated', '{"audio_key":"2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07","entity_key":"wf_time_management_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdcd7b4158e3463c40e9b735dd1782751abcf80f95ada1d0f299347412d56d6e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2b43a901fb7579d3c92093f4c0742afea4b64e10b0e4f689a6c752614df06a07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hybrid_collaboration_06 -> audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('23c8b43e-e4b8-5501-b7e6-6b978e769b29', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hybrid_collaboration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ab75f2e-eb12-5603-bf87-527285a201c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('23c8b43e-e4b8-5501-b7e6-6b978e769b29', 1), '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3', 1201, '2026-09-13 08:32:25.074844', 'ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3', 'validated', '{"audio_key":"39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73","entity_key":"lx_hybrid_collaboration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hybrid_collaboration_06 -> audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fddc89ef-0de1-5214-be5b-4590fbb6b349', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hybrid_collaboration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b5191ed-98db-5fd4-b756-3f7a153a32b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fddc89ef-0de1-5214-be5b-4590fbb6b349', 1), '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3', 1201, '2026-09-13 08:32:25.074844', 'ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3', 'validated', '{"audio_key":"39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73","entity_key":"wf_hybrid_collaboration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_04 -> audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f940f1ab-6d52-5029-9130-92a62b074f1c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73efc9fe-9f97-5351-8edb-eeeb0894c366', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f940f1ab-6d52-5029-9130-92a62b074f1c', 1), 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3', 1018, '2026-09-13 07:53:12.477304', '50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed', 'validated', '{"audio_key":"3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c","entity_key":"lx_contracts_subscriptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_04 -> audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a740235-b2a5-5df2-a545-17e6319e4e33', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d869a0ae-dbb8-5c5e-9032-d740ef2bbc7d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a740235-b2a5-5df2-a545-17e6319e4e33', 1), 'c1d1da5a73afc2998d6d81693002f6c1a09cbc11b342b91f7e03424464990bfb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3', 1018, '2026-09-13 07:53:12.477304', '50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed', 'validated', '{"audio_key":"3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c","entity_key":"wf_contracts_subscriptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50d2c2b51b2ffda38f9289fe2e1beb0fb34bf68e030608babd8fd7f29d2976ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3c08320087b1c9598e8cbe109540e517749f4d21cd696af1317035bf5307958c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rental_repairs_01 -> audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de26dd74-f554-51d7-b238-56d8cd7c697a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rental_repairs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('699418c9-faf3-5a82-9fea-75e3ac422833', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de26dd74-f554-51d7-b238-56d8cd7c697a', 1), '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3', 1201, '2026-09-13 06:17:30.205455', '73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5', 'validated', '{"audio_key":"3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58","entity_key":"lx_rental_repairs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rental_repairs_01 -> audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1aa5f274-140e-5919-bde2-b5ec03a14171', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rental_repairs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0063bfa7-1bb9-5c5f-afcd-4502976ed55d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1aa5f274-140e-5919-bde2-b5ec03a14171', 1), '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3', 1201, '2026-09-13 06:17:30.205455', '73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5', 'validated', '{"audio_key":"3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58","entity_key":"wf_rental_repairs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_event_organization_04 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_event_organization_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('315948e8-aa29-58e5-addd-faa1b62132af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"lx_event_organization_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_event_organization_04 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c3a30e0-c242-54c7-b24d-0122a63c2daf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_event_organization_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fced209-c46d-5075-9903-8689073a6018', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c3a30e0-c242-54c7-b24d-0122a63c2daf', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"wf_event_organization_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rental_repairs_06 -> audio/generated/de-DE/lexical/4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddba51a9-41db-548f-8227-0d2462ec352d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rental_repairs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea0d7b6c34bc1c0d421edc74c568c39cde4ca19287207d8de00f277bb968d1fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c520e92-2629-5265-a184-d0e08f36ba81', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddba51a9-41db-548f-8227-0d2462ec352d', 1), 'ea0d7b6c34bc1c0d421edc74c568c39cde4ca19287207d8de00f277bb968d1fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99.mp3', 1201, '2026-09-13 08:32:25.440797', 'ddd8864f17c937163bc857b3125aac7f9c5ddf33cf0e3c58a53ed26e53a7c47d', 'validated', '{"audio_key":"4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99","entity_key":"lx_rental_repairs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ddd8864f17c937163bc857b3125aac7f9c5ddf33cf0e3c58a53ed26e53a7c47d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rental_repairs_06 -> audio/generated/de-DE/lexical/4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a1a5ca6-930d-5f20-a43b-bb1fd704a122', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rental_repairs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea0d7b6c34bc1c0d421edc74c568c39cde4ca19287207d8de00f277bb968d1fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa806827-6db7-5f12-9e41-3a9cec0f6f84', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a1a5ca6-930d-5f20-a43b-bb1fd704a122', 1), 'ea0d7b6c34bc1c0d421edc74c568c39cde4ca19287207d8de00f277bb968d1fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99.mp3', 1201, '2026-09-13 08:32:25.440797', 'ddd8864f17c937163bc857b3125aac7f9c5ddf33cf0e3c58a53ed26e53a7c47d', 'validated', '{"audio_key":"4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99","entity_key":"wf_rental_repairs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ddd8864f17c937163bc857b3125aac7f9c5ddf33cf0e3c58a53ed26e53a7c47d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4903434cc332d98c7a31568e5d506beaddfdc4cc3da3538a48c0c2f69bf35e99.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_decisions_04 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6d22948-ca34-5e9d-9061-626046cf5837', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"lx_scenario_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_decisions_04 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('507168c7-2e00-5e88-8088-972e16339dd1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcee768b-44bf-59db-b127-359267d6fc22', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('507168c7-2e00-5e88-8088-972e16339dd1', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"wf_scenario_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_management_04 -> audio/generated/de-DE/lexical/4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f54dabee-7b24-5e15-9bf8-5ac3dad0c01a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_management_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '620ed673056240fca095fef7a3a198f01b81b8f326bf35459801e61fcfee6c56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff28558c-dd9e-5bb2-96c9-3deacfa2ce65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f54dabee-7b24-5e15-9bf8-5ac3dad0c01a', 1), '620ed673056240fca095fef7a3a198f01b81b8f326bf35459801e61fcfee6c56',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317.mp3', 1097, '2026-09-13 08:32:26.031870', '5b693e285944de94bd82ed051efdaeb06f9bb12def165d6c64cd9b1f42797580', 'validated', '{"audio_key":"4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317","entity_key":"lx_time_management_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b693e285944de94bd82ed051efdaeb06f9bb12def165d6c64cd9b1f42797580","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_management_04 -> audio/generated/de-DE/lexical/4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0cc85776-8909-55dd-ae2a-37f5f499d09f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_management_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '620ed673056240fca095fef7a3a198f01b81b8f326bf35459801e61fcfee6c56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e09e6e5-652f-5290-a721-acff9a09dac0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0cc85776-8909-55dd-ae2a-37f5f499d09f', 1), '620ed673056240fca095fef7a3a198f01b81b8f326bf35459801e61fcfee6c56',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317.mp3', 1097, '2026-09-13 08:32:26.031870', '5b693e285944de94bd82ed051efdaeb06f9bb12def165d6c64cd9b1f42797580', 'validated', '{"audio_key":"4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317","entity_key":"wf_time_management_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b693e285944de94bd82ed051efdaeb06f9bb12def165d6c64cd9b1f42797580","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4d64e1b1a07e2eab49066bf20c7215a5d35cb9b1c88c95694e1edeea9834f317.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_decisions_03 -> audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('479fdb0f-602f-51ad-9935-dae1bd288852', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89903bae-425d-50bd-962b-797ff9201a94', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('479fdb0f-602f-51ad-9935-dae1bd288852', 1), 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3', 1097, '2026-09-13 08:32:26.424830', 'fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca', 'validated', '{"audio_key":"4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4","entity_key":"lx_scenario_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_decisions_03 -> audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4c6f3308-ce4a-5ea4-85a8-86ab333255c5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0507c09f-f8fc-5403-b703-0cf2197f905d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4c6f3308-ce4a-5ea4-85a8-86ab333255c5', 1), 'c0aec45be6f1a286fae52603484cfe122e899f0b4f2962d0ee652fad9a5177c6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3', 1097, '2026-09-13 08:32:26.424830', 'fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca', 'validated', '{"audio_key":"4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4","entity_key":"wf_scenario_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fded51bb942c6239ad9e385d9ce781a824d020b94d6b87fac8792408bdfdffca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dea7521385e5240e5d9700ef62ea5b639feac073b8c79b93996910d2bc54be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rental_repairs_05 -> audio/generated/de-DE/lexical/4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f31e28fb-2729-5516-82a2-0efe18d3b3ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rental_repairs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c8cc5cff19dc73413a3c9fc9a2c96ed5aeb1eb1725bd1cf10c6b9985267a2ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9f51122-c7ac-59b9-9c54-6651f1b97d36', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f31e28fb-2729-5516-82a2-0efe18d3b3ab', 1), '9c8cc5cff19dc73413a3c9fc9a2c96ed5aeb1eb1725bd1cf10c6b9985267a2ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195.mp3', 1071, '2026-09-13 08:32:27.003494', 'd723061893eb2d9ba11530a48be014d5a504b4454aa111f7d1f1aebf07dc7d3b', 'validated', '{"audio_key":"4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195","entity_key":"lx_rental_repairs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d723061893eb2d9ba11530a48be014d5a504b4454aa111f7d1f1aebf07dc7d3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rental_repairs_05 -> audio/generated/de-DE/lexical/4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b3be2e3d-754a-5089-8756-0858bbec8e1b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rental_repairs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c8cc5cff19dc73413a3c9fc9a2c96ed5aeb1eb1725bd1cf10c6b9985267a2ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecf5acf5-5e9b-5915-a1c4-7ada2dcacea4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b3be2e3d-754a-5089-8756-0858bbec8e1b', 1), '9c8cc5cff19dc73413a3c9fc9a2c96ed5aeb1eb1725bd1cf10c6b9985267a2ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195.mp3', 1071, '2026-09-13 08:32:27.003494', 'd723061893eb2d9ba11530a48be014d5a504b4454aa111f7d1f1aebf07dc7d3b', 'validated', '{"audio_key":"4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195","entity_key":"wf_rental_repairs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d723061893eb2d9ba11530a48be014d5a504b4454aa111f7d1f1aebf07dc7d3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4eccd6cf04a4f2ee50bea074d2fc1a91620adf8c2ee7d99ef3433c0cafa8c195.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_event_organization_06 -> audio/generated/de-DE/lexical/5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d2748c0e-633d-5896-a629-d38b9ab4b9be', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_event_organization_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5d37d62eccd3df32f41cf00407e13a3196a823416ad46cc8bb4cc1607033570'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4e702ad-91c5-58c7-8c3a-df5aab3f201a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d2748c0e-633d-5896-a629-d38b9ab4b9be', 1), 'd5d37d62eccd3df32f41cf00407e13a3196a823416ad46cc8bb4cc1607033570',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4.mp3', 1201, '2026-09-13 08:32:27.382994', '231b854e69fa7860e97067fbd3accd26087e3c3a236d1d924e6ac0885c8b5acc', 'validated', '{"audio_key":"5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4","entity_key":"lx_event_organization_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231b854e69fa7860e97067fbd3accd26087e3c3a236d1d924e6ac0885c8b5acc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_event_organization_06 -> audio/generated/de-DE/lexical/5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a926b67f-0366-5d9e-a636-f62778388c7d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_event_organization_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5d37d62eccd3df32f41cf00407e13a3196a823416ad46cc8bb4cc1607033570'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a328a1d-3b08-5695-a66f-3f8b450379ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a926b67f-0366-5d9e-a636-f62778388c7d', 1), 'd5d37d62eccd3df32f41cf00407e13a3196a823416ad46cc8bb4cc1607033570',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4.mp3', 1201, '2026-09-13 08:32:27.382994', '231b854e69fa7860e97067fbd3accd26087e3c3a236d1d924e6ac0885c8b5acc', 'validated', '{"audio_key":"5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4","entity_key":"wf_event_organization_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231b854e69fa7860e97067fbd3accd26087e3c3a236d1d924e6ac0885c8b5acc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5278da0f67873c07e88c77573513a12607d285e5b5a5e5df636209a9551542a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_technical_explanations_03 -> audio/generated/de-DE/lexical/533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e841649-5433-5ee5-bb3d-767f72a8e112', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_technical_explanations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5083081e6bdc6da9e03f3e61b60c57a59e0216dff5ede3d8c6de63583bb7f0f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67617fa8-b49a-50c8-85a9-483a9fc55644', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e841649-5433-5ee5-bb3d-767f72a8e112', 1), '5083081e6bdc6da9e03f3e61b60c57a59e0216dff5ede3d8c6de63583bb7f0f5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0.mp3', 1201, '2026-09-13 08:32:27.983724', '032304df874b103062561eba31d98bd33726681f8f10c5df60e8f0c0a5745c3d', 'validated', '{"audio_key":"533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0","entity_key":"lx_technical_explanations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"032304df874b103062561eba31d98bd33726681f8f10c5df60e8f0c0a5745c3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_technical_explanations_03 -> audio/generated/de-DE/lexical/533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abd80d47-ab53-5192-a662-7f102ab3bce1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_technical_explanations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5083081e6bdc6da9e03f3e61b60c57a59e0216dff5ede3d8c6de63583bb7f0f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('551ba3e9-c827-50fb-86d5-ae80fa4f3641', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abd80d47-ab53-5192-a662-7f102ab3bce1', 1), '5083081e6bdc6da9e03f3e61b60c57a59e0216dff5ede3d8c6de63583bb7f0f5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0.mp3', 1201, '2026-09-13 08:32:27.983724', '032304df874b103062561eba31d98bd33726681f8f10c5df60e8f0c0a5745c3d', 'validated', '{"audio_key":"533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0","entity_key":"wf_technical_explanations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"032304df874b103062561eba31d98bd33726681f8f10c5df60e8f0c0a5745c3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/533e6a340d92f84b5c2a943570359e7bdf33c1381ea6c55cd1c63c5f69724db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_bureaucracy_appointments_02 -> audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fbf0030b-7826-58c9-b7bb-60e35bca1e52', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_bureaucracy_appointments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d53367f7-8170-5e47-9b0a-726e7b1ef5b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fbf0030b-7826-58c9-b7bb-60e35bca1e52', 1), 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3', 1253, '2026-09-13 08:32:28.338967', '2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1', 'validated', '{"audio_key":"538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034","entity_key":"lx_bureaucracy_appointments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_bureaucracy_appointments_02 -> audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('db651ece-4a97-5e21-961d-ac7d9e486063', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_bureaucracy_appointments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a842c82-9886-599d-ab64-0cc36d644d0b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('db651ece-4a97-5e21-961d-ac7d9e486063', 1), 'd30d5c46afeedec5bd4281bcb4b95e15c2129936454f1beae4f2a689353ddf73',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3', 1253, '2026-09-13 08:32:28.338967', '2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1', 'validated', '{"audio_key":"538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034","entity_key":"wf_bureaucracy_appointments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a232d8993e45a2da98e95a53713fab92febc1f556b3c4ea6b6a177d173b6ad1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/538a44e9e7efcab17e1a90e307a02be3c6143192f39cf1755b1d449c1aaa6034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_technical_explanations_05 -> audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f0ebccc-cb25-5bbd-af12-279d91f26def', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_technical_explanations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89dcd89e-e5af-5f72-9e09-e075c8a0b9f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f0ebccc-cb25-5bbd-af12-279d91f26def', 1), '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3', 1253, '2026-09-13 06:59:29.730948', 'da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23', 'validated', '{"audio_key":"62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420","entity_key":"lx_technical_explanations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_technical_explanations_05 -> audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f3437138-df1b-5ca0-bc2e-fcd1e80618b3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_technical_explanations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a12eaf3-802d-540c-adac-f52c71a0302d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f3437138-df1b-5ca0-bc2e-fcd1e80618b3', 1), '0cb3842b4cc0aec5c2f0d8bd45f9906bee9561fa197210cbffda092e8f2c8639',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3', 1253, '2026-09-13 06:59:29.730948', 'da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23', 'validated', '{"audio_key":"62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420","entity_key":"wf_technical_explanations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da8fb783eecc5410751ed5a7e4cbe05c2024a6f1f0bd702add248b425b32cc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62fad0a0c097c298b83cf3a28e91f53d40d10535c764ddcc68acfc17291e7420.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_technical_explanations_04 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_technical_explanations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3834db5-363b-50fe-97f5-0de7ab7402f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f117ede4-3a08-553d-bfa0-264ed6c01e27', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"lx_technical_explanations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_technical_explanations_04 -> audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6546b847-8466-5ebc-a67a-5f25c95a6ec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_technical_explanations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b76780ef-3446-5a1c-87b7-b73a79682d84', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6546b847-8466-5ebc-a67a-5f25c95a6ec2', 1), 'ae4849d2f6aeb7e285dd463750686c4271ac1b9cf060a087b4f873f62015b5a5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3', 1201, '2026-09-13 07:53:17.758726', 'e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29', 'validated', '{"audio_key":"662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc","entity_key":"wf_technical_explanations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5848759cd7f2c7163c2f26ecf75f5e044c3975e2c7eca9c7a66087a3094eb29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/662631538ba9285487238d7d137c5db64bca83ac8ca8e9eb84af6da635ea1cdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_decisions_06 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c4c3a8e-958d-56ca-b95e-1506b839bf72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af3414e-1775-5e9c-b18e-e8c76ec55a71', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"lx_scenario_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_decisions_06 -> audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e019109-a10f-589a-a8da-62ec3c726207', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2c564b3-e7dd-5a12-a1b0-42ee2391ddd2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e019109-a10f-589a-a8da-62ec3c726207', 1), 'c2098d6cce710440d7d1fdb468cd46a704555a44939240ddf8c2ba2decbb0af0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3', 1149, '2026-09-13 08:32:28.991205', '6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf', 'validated', '{"audio_key":"694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d","entity_key":"wf_scenario_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6dd3ab94f106a4d9e20596ff063c28f626d4ad69b7a0ffc95fc23614bc692ecf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694066cd798108d2e39c83b610b9b3b911c790b56e04331c3faf3c9a63d7c88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_networking_02 -> audio/generated/de-DE/lexical/69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('614a7814-d137-5e46-9aa9-af2c3823af32', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_networking_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f94ebf8524daf78f4bf8be68a65d79dff37cbe5c3f4439c31d6a65d742055bc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2147663-a0d9-50e2-abd5-3d609aadffab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('614a7814-d137-5e46-9aa9-af2c3823af32', 1), 'f94ebf8524daf78f4bf8be68a65d79dff37cbe5c3f4439c31d6a65d742055bc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8.mp3', 1384, '2026-09-13 08:32:29.333045', 'e64900a1e2d08d806a630176c48298ff0bb9e4af088d03646e6587050c510779', 'validated', '{"audio_key":"69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8","entity_key":"lx_professional_networking_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e64900a1e2d08d806a630176c48298ff0bb9e4af088d03646e6587050c510779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_networking_02 -> audio/generated/de-DE/lexical/69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2eb0709b-6ece-579a-8f6a-4c9234899c46', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_networking_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f94ebf8524daf78f4bf8be68a65d79dff37cbe5c3f4439c31d6a65d742055bc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de07971c-87b1-5e43-b72a-56baa157dcf2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2eb0709b-6ece-579a-8f6a-4c9234899c46', 1), 'f94ebf8524daf78f4bf8be68a65d79dff37cbe5c3f4439c31d6a65d742055bc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8.mp3', 1384, '2026-09-13 08:32:29.333045', 'e64900a1e2d08d806a630176c48298ff0bb9e4af088d03646e6587050c510779', 'validated', '{"audio_key":"69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8","entity_key":"wf_professional_networking_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e64900a1e2d08d806a630176c48298ff0bb9e4af088d03646e6587050c510779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/69d5fb84a27e33bec20d0b5a5868f88d55f449f7ceda2f82e82d22eb3570a2c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_03 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aff4bb1-be43-5c9e-8fc9-aa79c6e4f7ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"lx_conflict_mediation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_03 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f2f42f7-e431-5f3c-808c-bcb48f42482e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c62740e8-a284-5581-8088-84a33fc2a01f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f2f42f7-e431-5f3c-808c-bcb48f42482e', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"wf_conflict_mediation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_05 -> audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1100b21-5d88-5548-8a8a-d84196e67244', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85a49fe7-8b6d-59fc-87f3-2d908ce0b75e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1100b21-5d88-5548-8a8a-d84196e67244', 1), '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3', 1071, '2026-09-13 06:59:29.827831', '73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f', 'validated', '{"audio_key":"71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc","entity_key":"lx_contracts_subscriptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_05 -> audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e4cf40a-e482-5355-88f5-53cd8d43deb7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45fcea29-1141-5102-9019-2b11ed33733b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e4cf40a-e482-5355-88f5-53cd8d43deb7', 1), '30d4d5edcc8328689e33b7664183685ab383eaf28be1186e0cd49897b4a91206',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3', 1071, '2026-09-13 06:59:29.827831', '73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f', 'validated', '{"audio_key":"71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc","entity_key":"wf_contracts_subscriptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73dfe2666a94c50d8fe188e46e6671d87ab744d77acf3328539d1f155137a10f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/71b55ba6ec431d6e5e5fd8e2c602d7c23721e3d396880f3f625a15ec745980dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_management_01 -> audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('72f649c2-ac3e-59d7-8353-6cf9a0e03e76', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_management_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('107bd520-2892-5c2d-9037-18d32dd534d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('72f649c2-ac3e-59d7-8353-6cf9a0e03e76', 1), '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3', 1253, '2026-09-13 08:32:30.316563', 'aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45', 'validated', '{"audio_key":"77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063","entity_key":"lx_time_management_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_management_01 -> audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3571b083-accd-5a7e-bf43-b45d7dea124a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_management_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd876f6b-cd23-5f56-8d9c-0a655f46a912', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3571b083-accd-5a7e-bf43-b45d7dea124a', 1), '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3', 1253, '2026-09-13 08:32:30.316563', 'aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45', 'validated', '{"audio_key":"77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063","entity_key":"wf_time_management_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_02 -> audio/generated/de-DE/lexical/7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('795699db-5b8f-54df-baf0-cfae63be15da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '230c8102fe1da3fe4d44b0cb999c52d433291a61db7b8b06bf5131d933a57f3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e824a1e4-56cc-53e3-bc96-a3b102c88f66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('795699db-5b8f-54df-baf0-cfae63be15da', 1), '230c8102fe1da3fe4d44b0cb999c52d433291a61db7b8b06bf5131d933a57f3d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60.mp3', 1097, '2026-09-13 08:32:30.933295', 'fa102d337228107ba6de0f793168e37216a5b2dce31f23ec6bb2d3973f4e716a', 'validated', '{"audio_key":"7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60","entity_key":"lx_conflict_mediation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa102d337228107ba6de0f793168e37216a5b2dce31f23ec6bb2d3973f4e716a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_02 -> audio/generated/de-DE/lexical/7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0e22536-84fe-51d5-acc4-26db86a61103', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '230c8102fe1da3fe4d44b0cb999c52d433291a61db7b8b06bf5131d933a57f3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e103a4f1-c219-571f-993e-f29ade696a1e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0e22536-84fe-51d5-acc4-26db86a61103', 1), '230c8102fe1da3fe4d44b0cb999c52d433291a61db7b8b06bf5131d933a57f3d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60.mp3', 1097, '2026-09-13 08:32:30.933295', 'fa102d337228107ba6de0f793168e37216a5b2dce31f23ec6bb2d3973f4e716a', 'validated', '{"audio_key":"7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60","entity_key":"wf_conflict_mediation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa102d337228107ba6de0f793168e37216a5b2dce31f23ec6bb2d3973f4e716a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a0537b3d67118b9656d03c4b82ea334a3284dc09c4b0e8c816ecd36b860dc60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hybrid_collaboration_01 -> audio/generated/de-DE/lexical/7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43fae88d-fef8-5d42-841e-78bf0165396f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hybrid_collaboration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a519115d1cc9eaa10a70de99f1cc50531f10d27a9ffe59177b618ed5d06902cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79fceed1-3d1b-5091-b571-4c3106eb8c28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43fae88d-fef8-5d42-841e-78bf0165396f', 1), 'a519115d1cc9eaa10a70de99f1cc50531f10d27a9ffe59177b618ed5d06902cb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438.mp3', 1071, '2026-09-13 08:32:31.255101', 'd3ba900629152451c2c138426f04250df4fbdb8952d0ecb92344f16fdcfcd45a', 'validated', '{"audio_key":"7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438","entity_key":"lx_hybrid_collaboration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3ba900629152451c2c138426f04250df4fbdb8952d0ecb92344f16fdcfcd45a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hybrid_collaboration_01 -> audio/generated/de-DE/lexical/7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2aff1cb2-65c3-5642-845a-0d4ba8ec7994', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hybrid_collaboration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a519115d1cc9eaa10a70de99f1cc50531f10d27a9ffe59177b618ed5d06902cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c3661e6-fa51-599c-9651-ebe2b03662b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2aff1cb2-65c3-5642-845a-0d4ba8ec7994', 1), 'a519115d1cc9eaa10a70de99f1cc50531f10d27a9ffe59177b618ed5d06902cb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438.mp3', 1071, '2026-09-13 08:32:31.255101', 'd3ba900629152451c2c138426f04250df4fbdb8952d0ecb92344f16fdcfcd45a', 'validated', '{"audio_key":"7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438","entity_key":"wf_hybrid_collaboration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3ba900629152451c2c138426f04250df4fbdb8952d0ecb92344f16fdcfcd45a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7f18ff00e72039a9d1342e037bbf1d80fb7efb9b5260c58df48d2afa676ea438.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_03 -> audio/generated/de-DE/lexical/84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d00e87c4-a8d5-59cc-83ac-1b06d34524f8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abd0800b86fe9a0e5f24890d81bb22311c3d9295db2bc300917e509d7bf5c9ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fa98b68-5736-598e-8a4a-4d3c448b9471', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d00e87c4-a8d5-59cc-83ac-1b06d34524f8', 1), 'abd0800b86fe9a0e5f24890d81bb22311c3d9295db2bc300917e509d7bf5c9ca',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358.mp3', 1149, '2026-09-13 08:32:31.883779', 'e6630270e8e62bc39309bec74f151a2aaa6d6940594df6ea12b56b01ac68d6c9', 'validated', '{"audio_key":"84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358","entity_key":"lx_contracts_subscriptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6630270e8e62bc39309bec74f151a2aaa6d6940594df6ea12b56b01ac68d6c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_03 -> audio/generated/de-DE/lexical/84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('416790b7-33f7-581d-abbb-25d9f10f3d3f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abd0800b86fe9a0e5f24890d81bb22311c3d9295db2bc300917e509d7bf5c9ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d14f923-f3b1-58cb-96d4-10c7b6f80319', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('416790b7-33f7-581d-abbb-25d9f10f3d3f', 1), 'abd0800b86fe9a0e5f24890d81bb22311c3d9295db2bc300917e509d7bf5c9ca',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358.mp3', 1149, '2026-09-13 08:32:31.883779', 'e6630270e8e62bc39309bec74f151a2aaa6d6940594df6ea12b56b01ac68d6c9', 'validated', '{"audio_key":"84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358","entity_key":"wf_contracts_subscriptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6630270e8e62bc39309bec74f151a2aaa6d6940594df6ea12b56b01ac68d6c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/84687bd6fa3b7be96deb5170d98ee5bc03950bcf1b257506b5038bb0407d5358.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_01 -> audio/generated/de-DE/lexical/932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('777f47db-e72f-566a-9d18-84c2bb575b78', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fa34faee5f40a018175e548aff3521ff972b2f164b55b64a0b759df1b30f414'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('050105c2-84c4-5056-9d13-e2b5fe6b3574', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('777f47db-e72f-566a-9d18-84c2bb575b78', 1), '5fa34faee5f40a018175e548aff3521ff972b2f164b55b64a0b759df1b30f414',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095.mp3', 966, '2026-09-13 08:32:32.215290', 'e90c8fd16aef1509aa885a1573d7661c8a8992bc29f8a8f8d4daec5a4aef3889', 'validated', '{"audio_key":"932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095","entity_key":"lx_conflict_mediation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e90c8fd16aef1509aa885a1573d7661c8a8992bc29f8a8f8d4daec5a4aef3889","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_01 -> audio/generated/de-DE/lexical/932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e079e78-1837-5eac-a237-74807fd54f9c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fa34faee5f40a018175e548aff3521ff972b2f164b55b64a0b759df1b30f414'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5b7b6e4-cf32-5b1e-9bc4-15b357dca919', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e079e78-1837-5eac-a237-74807fd54f9c', 1), '5fa34faee5f40a018175e548aff3521ff972b2f164b55b64a0b759df1b30f414',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095.mp3', 966, '2026-09-13 08:32:32.215290', 'e90c8fd16aef1509aa885a1573d7661c8a8992bc29f8a8f8d4daec5a4aef3889', 'validated', '{"audio_key":"932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095","entity_key":"wf_conflict_mediation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e90c8fd16aef1509aa885a1573d7661c8a8992bc29f8a8f8d4daec5a4aef3889","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/932d821ecf7dffec1cb4cc47800e883ce2a71a27b39c145b011817751c52a095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rental_repairs_04 -> audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96c2dc0a-6a85-55ee-9272-5d9c394d9a8f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rental_repairs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31aaed62-4915-5d59-a75a-e05b731efdcf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96c2dc0a-6a85-55ee-9272-5d9c394d9a8f', 1), 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3', 1071, '2026-09-13 06:17:36.943336', '36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605', 'validated', '{"audio_key":"9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d","entity_key":"lx_rental_repairs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rental_repairs_04 -> audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e92ac9b3-f2fe-5f8d-b4cc-5fb54e6042be', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rental_repairs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4b4c766-b9d2-540b-8325-2e936b2c46ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e92ac9b3-f2fe-5f8d-b4cc-5fb54e6042be', 1), 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3', 1071, '2026-09-13 06:17:36.943336', '36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605', 'validated', '{"audio_key":"9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d","entity_key":"wf_rental_repairs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_event_organization_05 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_event_organization_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abbd542-5b7a-5502-82e9-c0adec735768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"lx_event_organization_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_event_organization_05 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('75373608-f3d2-50ab-9d4e-629108024344', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_event_organization_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15dccf60-7dd0-59ab-a84e-b36d0aaea444', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('75373608-f3d2-50ab-9d4e-629108024344', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"wf_event_organization_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_networking_03 -> audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c534a653-6423-5c48-bbd4-31e238ae9c90', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_networking_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('592ddea1-b03a-59d0-9b1e-a4a054145b4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c534a653-6423-5c48-bbd4-31e238ae9c90', 1), 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3', 1149, '2026-09-13 08:32:32.825276', 'cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971', 'validated', '{"audio_key":"a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7","entity_key":"lx_professional_networking_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_networking_03 -> audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a435ef9f-fb6f-55f8-996f-1744e455174c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_networking_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67125e64-ec94-55f4-8b17-88497c8241f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a435ef9f-fb6f-55f8-996f-1744e455174c', 1), 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3', 1149, '2026-09-13 08:32:32.825276', 'cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971', 'validated', '{"audio_key":"a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7","entity_key":"wf_professional_networking_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_management_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_management_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c9c26db-fda0-5cdb-9fba-200c7253ca98', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"lx_time_management_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_management_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2e9a0e4f-24cc-541c-8247-5821ea2219ea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_management_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3af264bd-ea30-558f-8034-738dd430f126', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2e9a0e4f-24cc-541c-8247-5821ea2219ea', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"wf_time_management_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_06 -> audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('314df33d-2927-566d-989f-83b5823a381e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c75a661e-0952-5da0-9703-297f934533cb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('314df33d-2927-566d-989f-83b5823a381e', 1), 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3', 1384, '2026-09-13 07:53:25.434941', '99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831', 'validated', '{"audio_key":"a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c","entity_key":"lx_conflict_mediation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_06 -> audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('38ad4547-3f5a-5641-b143-aee317a6ad2a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1cd06a2-9ffc-5b39-a46e-e6f8e99ca866', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('38ad4547-3f5a-5641-b143-aee317a6ad2a', 1), 'ada6cfcee8cb7170e058541d02a7419fc92079dc80954125027e854fa06752e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3', 1384, '2026-09-13 07:53:25.434941', '99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831', 'validated', '{"audio_key":"a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c","entity_key":"wf_conflict_mediation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99606708734b37e33888d5aa060f1a61b5c90ee9cd2ab6c8180bef38adf1e831","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8ea1b27783242dc49c4d8e7313f337fbb4c93253e1290b1de46d458be64267c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hybrid_collaboration_04 -> audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('47156334-70b5-5aed-9035-5e9b865c3998', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hybrid_collaboration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e22362ef-e154-5425-a48e-d7aaa01d6f34', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('47156334-70b5-5aed-9035-5e9b865c3998', 1), '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3', 1097, '2026-09-13 08:32:33.162451', 'e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3', 'validated', '{"audio_key":"ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a","entity_key":"lx_hybrid_collaboration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hybrid_collaboration_04 -> audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f1c24a7-4ce3-52a4-94ce-d8efd4d996de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hybrid_collaboration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7939426-8f31-535c-8ed8-9e3f9fe2bb41', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f1c24a7-4ce3-52a4-94ce-d8efd4d996de', 1), '4ccfa49f114bef40d8327d4ce280bf1b381e59d929c2ab25820f0a13f606e086',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3', 1097, '2026-09-13 08:32:33.162451', 'e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3', 'validated', '{"audio_key":"ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a","entity_key":"wf_hybrid_collaboration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e834dfb7518e648fec0aa28ef3a75bc71ae0a4debf59bbf53e6245e0756f26d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ab67390bbf618ada5f6ad1b0c4bfc11e068492536536c39432603dd271c5553a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rental_repairs_02 -> audio/generated/de-DE/lexical/af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2a20c47e-7400-5256-8da4-fc4ce6dfd6d9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rental_repairs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c69c0e55eeaa5656c215c0610c82d23a66150f485d263cbf01a4327d10aff174'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a64d893-7a2c-5257-981a-c7e581371ff8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2a20c47e-7400-5256-8da4-fc4ce6dfd6d9', 1), 'c69c0e55eeaa5656c215c0610c82d23a66150f485d263cbf01a4327d10aff174',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150.mp3', 914, '2026-09-13 08:32:34.470621', 'b8c480434c82d3c08bc18fca6f01c95ba05147da32d12eb95428d2ebd1c37232', 'validated', '{"audio_key":"af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150","entity_key":"lx_rental_repairs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8c480434c82d3c08bc18fca6f01c95ba05147da32d12eb95428d2ebd1c37232","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rental_repairs_02 -> audio/generated/de-DE/lexical/af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('528869bd-c4bb-5e52-99cd-6d0ca84612fa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rental_repairs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c69c0e55eeaa5656c215c0610c82d23a66150f485d263cbf01a4327d10aff174'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d529eaef-5e91-5f05-9c84-7efd476f8cec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('528869bd-c4bb-5e52-99cd-6d0ca84612fa', 1), 'c69c0e55eeaa5656c215c0610c82d23a66150f485d263cbf01a4327d10aff174',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150.mp3', 914, '2026-09-13 08:32:34.470621', 'b8c480434c82d3c08bc18fca6f01c95ba05147da32d12eb95428d2ebd1c37232', 'validated', '{"audio_key":"af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150","entity_key":"wf_rental_repairs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8c480434c82d3c08bc18fca6f01c95ba05147da32d12eb95428d2ebd1c37232","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/af55ff381058c94e1ef4558e89c5f5d782fe12c1c0da35b42ecf09c9000f0150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_event_organization_03 -> audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a67a6c4-5231-5a19-ab65-894c65573f2c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_event_organization_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f4f1fcf-b399-5c2f-88f6-89a482f9b8d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a67a6c4-5231-5a19-ab65-894c65573f2c', 1), 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3', 1071, '2026-09-13 08:32:34.110616', '555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf', 'validated', '{"audio_key":"b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55","entity_key":"lx_event_organization_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_event_organization_03 -> audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('31aeb8d7-2dbb-549e-9614-bae88bebd7d8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_event_organization_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33c4ae72-7cb7-528f-ad49-e9f8a9d49f82', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('31aeb8d7-2dbb-549e-9614-bae88bebd7d8', 1), 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3', 1071, '2026-09-13 08:32:34.110616', '555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf', 'validated', '{"audio_key":"b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55","entity_key":"wf_event_organization_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_networking_06 -> audio/generated/de-DE/lexical/b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('66266610-22b1-5fc1-a8d9-e71861211c61', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_networking_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52bd2af006a64f7561a80db554686dd6db1962124554a4af99ad67e55f7e335c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bceac114-c847-59d8-89b8-a6835db490fc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('66266610-22b1-5fc1-a8d9-e71861211c61', 1), '52bd2af006a64f7561a80db554686dd6db1962124554a4af99ad67e55f7e335c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63.mp3', 1201, '2026-09-13 08:32:35.085499', 'd15f3046c66fc0f1fc5d515a28ee504a0e3761049f8955c19887907116a2c5b7', 'validated', '{"audio_key":"b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63","entity_key":"lx_professional_networking_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d15f3046c66fc0f1fc5d515a28ee504a0e3761049f8955c19887907116a2c5b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_networking_06 -> audio/generated/de-DE/lexical/b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('621ff200-810b-551b-8c32-4892b54cdeed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_networking_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52bd2af006a64f7561a80db554686dd6db1962124554a4af99ad67e55f7e335c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10f960e4-d94e-5e22-a508-9963f38a2844', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('621ff200-810b-551b-8c32-4892b54cdeed', 1), '52bd2af006a64f7561a80db554686dd6db1962124554a4af99ad67e55f7e335c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63.mp3', 1201, '2026-09-13 08:32:35.085499', 'd15f3046c66fc0f1fc5d515a28ee504a0e3761049f8955c19887907116a2c5b7', 'validated', '{"audio_key":"b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63","entity_key":"wf_professional_networking_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d15f3046c66fc0f1fc5d515a28ee504a0e3761049f8955c19887907116a2c5b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4a08e6f9d6b15919b0dd38a812ca9d2a28e9a664dbc56a33cc954a355ed1c63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_management_06 -> audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('418b684c-b921-56f0-a8c9-a80ac7501758', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_management_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9aa0a52f-8e67-5238-83b4-6bddb15bc5b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('418b684c-b921-56f0-a8c9-a80ac7501758', 1), '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3', 1280, '2026-09-13 06:59:35.496134', '5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231', 'validated', '{"audio_key":"b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee","entity_key":"lx_time_management_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_management_06 -> audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa43a942-8f29-5bd3-b951-a1e7fb44caf9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_management_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('250eef06-dbea-584c-9c75-918aa5de9a15', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa43a942-8f29-5bd3-b951-a1e7fb44caf9', 1), '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3', 1280, '2026-09-13 06:59:35.496134', '5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231', 'validated', '{"audio_key":"b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee","entity_key":"wf_time_management_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_technical_explanations_01 -> audio/generated/de-DE/lexical/b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('609d7546-c4e9-5363-b2a4-6036d05997ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_technical_explanations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29c820dfc81c5f806f092d208e7f15a79a3186fe89d12c1767ba82ab2ba1006b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26ef6062-4ebd-5b1d-b86e-e1bc1d14c405', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('609d7546-c4e9-5363-b2a4-6036d05997ee', 1), '29c820dfc81c5f806f092d208e7f15a79a3186fe89d12c1767ba82ab2ba1006b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4.mp3', 966, '2026-09-13 08:32:35.404579', '1bbf57f6c5e1b18352477f60d90d509ad515763869d269e3e5d33cb3e84cb0f4', 'validated', '{"audio_key":"b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4","entity_key":"lx_technical_explanations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bbf57f6c5e1b18352477f60d90d509ad515763869d269e3e5d33cb3e84cb0f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_technical_explanations_01 -> audio/generated/de-DE/lexical/b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('969c17d2-f121-575f-bd6c-c72070ffd83b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_technical_explanations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29c820dfc81c5f806f092d208e7f15a79a3186fe89d12c1767ba82ab2ba1006b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7511b39-9845-5644-bec1-3e161270f1a0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('969c17d2-f121-575f-bd6c-c72070ffd83b', 1), '29c820dfc81c5f806f092d208e7f15a79a3186fe89d12c1767ba82ab2ba1006b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4.mp3', 966, '2026-09-13 08:32:35.404579', '1bbf57f6c5e1b18352477f60d90d509ad515763869d269e3e5d33cb3e84cb0f4', 'validated', '{"audio_key":"b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4","entity_key":"wf_technical_explanations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bbf57f6c5e1b18352477f60d90d509ad515763869d269e3e5d33cb3e84cb0f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b95636cd5a12c9b8e25c3adbdcbbe6b107835d5fa26dd33647846c7c44d0f5d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_decisions_02 -> audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea2ab245-e2cb-5e58-a4a7-42d7016bd279', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8424c0f4-b8c0-5930-b68f-41a0cb5c665b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea2ab245-e2cb-5e58-a4a7-42d7016bd279', 1), 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3', 1018, '2026-09-13 08:32:36.024296', '6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9', 'validated', '{"audio_key":"bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252","entity_key":"lx_scenario_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_decisions_02 -> audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6fe0a2a-8be7-5c21-8796-88badc8349da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b997e08d-7760-5cc9-8919-400a90a01cec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6fe0a2a-8be7-5c21-8796-88badc8349da', 1), 'edda96c4a26559a5cb65ca906fae623c69f1ab85037694d4f213f13aec0be0d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3', 1018, '2026-09-13 08:32:36.024296', '6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9', 'validated', '{"audio_key":"bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252","entity_key":"wf_scenario_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c7e65ff8ba574008fe9170c4a37de6aa3eeb863aa30c090b947b8a6a466abc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bdb71718c4d338b2a633147fbeb9e8b74383b5e2588bb39896d17a889a7a3252.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_bureaucracy_appointments_04 -> audio/generated/de-DE/lexical/bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('93137504-7f5c-5072-bcec-1438789a0a57', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_bureaucracy_appointments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3e82b04c29b96d8b7e0c7e445c9eb0db54cd08191d71998f841f2551b7dd334'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('304948e2-a8c2-5e0b-83b0-6c68899426d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('93137504-7f5c-5072-bcec-1438789a0a57', 1), 'e3e82b04c29b96d8b7e0c7e445c9eb0db54cd08191d71998f841f2551b7dd334',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50.mp3', 1097, '2026-09-13 08:32:36.346406', '9a974d4debaf5edde2dd018bc600874e9d9b2a501eae54fcecf459e3549ed234', 'validated', '{"audio_key":"bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50","entity_key":"lx_bureaucracy_appointments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a974d4debaf5edde2dd018bc600874e9d9b2a501eae54fcecf459e3549ed234","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_bureaucracy_appointments_04 -> audio/generated/de-DE/lexical/bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ade53146-1faa-5d6b-a72f-8bd929984d97', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_bureaucracy_appointments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3e82b04c29b96d8b7e0c7e445c9eb0db54cd08191d71998f841f2551b7dd334'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d23d684a-9dce-522d-9f66-fc8dd6376126', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ade53146-1faa-5d6b-a72f-8bd929984d97', 1), 'e3e82b04c29b96d8b7e0c7e445c9eb0db54cd08191d71998f841f2551b7dd334',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50.mp3', 1097, '2026-09-13 08:32:36.346406', '9a974d4debaf5edde2dd018bc600874e9d9b2a501eae54fcecf459e3549ed234', 'validated', '{"audio_key":"bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50","entity_key":"wf_bureaucracy_appointments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a974d4debaf5edde2dd018bc600874e9d9b2a501eae54fcecf459e3549ed234","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bec84c768576fbae2c8456fc9b4bccd8981df785df7ecfcebb8b959ca8328f50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_networking_04 -> audio/generated/de-DE/lexical/c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f377c60-2f78-5ad6-9614-a215a8476a96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_networking_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b2280c55b44ab639e39a775a1b0d4e1327ab852534cdf82343684e259a5d75e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c1c3e4a-87ad-5474-80dc-f966adf7ab33', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f377c60-2f78-5ad6-9614-a215a8476a96', 1), '9b2280c55b44ab639e39a775a1b0d4e1327ab852534cdf82343684e259a5d75e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef.mp3', 1149, '2026-09-13 08:32:37.002481', 'b26fbc2153587529f751b7f12d1eac07f9750d89979450ddb4de54f772de720f', 'validated', '{"audio_key":"c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef","entity_key":"lx_professional_networking_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b26fbc2153587529f751b7f12d1eac07f9750d89979450ddb4de54f772de720f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_networking_04 -> audio/generated/de-DE/lexical/c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85c8e21a-a744-5edd-abfa-c70b92977223', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_networking_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b2280c55b44ab639e39a775a1b0d4e1327ab852534cdf82343684e259a5d75e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e36066e-8032-5a57-9c7e-7c299d3c443a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85c8e21a-a744-5edd-abfa-c70b92977223', 1), '9b2280c55b44ab639e39a775a1b0d4e1327ab852534cdf82343684e259a5d75e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef.mp3', 1149, '2026-09-13 08:32:37.002481', 'b26fbc2153587529f751b7f12d1eac07f9750d89979450ddb4de54f772de720f', 'validated', '{"audio_key":"c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef","entity_key":"wf_professional_networking_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b26fbc2153587529f751b7f12d1eac07f9750d89979450ddb4de54f772de720f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c33b8747cb742d1c063644faa95601e4015968fd149c1e643d697add271993ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_event_organization_01 -> audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('282cb517-90be-5d6a-9008-206fac3874ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_event_organization_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('588f7378-3623-5438-a071-1136636bbd1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('282cb517-90be-5d6a-9008-206fac3874ee', 1), '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3', 1253, '2026-09-13 05:54:46.711124', '420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1', 'validated', '{"audio_key":"c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27","entity_key":"lx_event_organization_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_event_organization_01 -> audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('22ee8cac-404f-512a-9bad-e47e8410a877', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_event_organization_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90d4a893-2e34-588e-975f-1024c093d7ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('22ee8cac-404f-512a-9bad-e47e8410a877', 1), '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3', 1253, '2026-09-13 05:54:46.711124', '420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1', 'validated', '{"audio_key":"c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27","entity_key":"wf_event_organization_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hybrid_collaboration_05 -> audio/generated/de-DE/lexical/cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a754061-a33e-5dc1-9696-c4a1bd0bf108', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hybrid_collaboration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00507b23a11ba675e9b42d415409e11f6bd21ddc15dd0bfa15243a4d7159a36d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('995d4ca5-8f2a-5dfc-94f8-a30bbecc1d8e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a754061-a33e-5dc1-9696-c4a1bd0bf108', 1), '00507b23a11ba675e9b42d415409e11f6bd21ddc15dd0bfa15243a4d7159a36d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58.mp3', 1149, '2026-09-13 08:32:37.297427', '662ea7581f2bf4f8ecf2bf2db387bb712dfe46d9367d327b0a1967ad2c182e22', 'validated', '{"audio_key":"cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58","entity_key":"lx_hybrid_collaboration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"662ea7581f2bf4f8ecf2bf2db387bb712dfe46d9367d327b0a1967ad2c182e22","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hybrid_collaboration_05 -> audio/generated/de-DE/lexical/cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12f61fb9-bfe4-5f89-9b74-acccfa77a5ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hybrid_collaboration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00507b23a11ba675e9b42d415409e11f6bd21ddc15dd0bfa15243a4d7159a36d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('250f90e5-9435-5197-a139-027400297594', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12f61fb9-bfe4-5f89-9b74-acccfa77a5ce', 1), '00507b23a11ba675e9b42d415409e11f6bd21ddc15dd0bfa15243a4d7159a36d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58.mp3', 1149, '2026-09-13 08:32:37.297427', '662ea7581f2bf4f8ecf2bf2db387bb712dfe46d9367d327b0a1967ad2c182e22', 'validated', '{"audio_key":"cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58","entity_key":"wf_hybrid_collaboration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"662ea7581f2bf4f8ecf2bf2db387bb712dfe46d9367d327b0a1967ad2c182e22","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cafb6009cee5ee39310e36e9aea215e3472ca13059c9298134c52cd76dc98a58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_bureaucracy_appointments_03 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_bureaucracy_appointments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f15cf4-84bc-53e0-a46e-2ace42f0af60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"lx_bureaucracy_appointments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_bureaucracy_appointments_03 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a8b8d45c-169c-5d8c-af7f-473d95e4ffe3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_bureaucracy_appointments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40ef71f3-9ea3-58dd-846c-5696a27cc058', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a8b8d45c-169c-5d8c-af7f-473d95e4ffe3', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"wf_bureaucracy_appointments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_scenario_decisions_05 -> audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9e8690b6-a811-589a-bf18-32ffd00cba77', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_scenario_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('003d4a28-ea58-5fa3-89ef-a9ca72c406ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9e8690b6-a811-589a-bf18-32ffd00cba77', 1), '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3', 1097, '2026-09-13 07:53:29.455085', 'a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e', 'validated', '{"audio_key":"dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb","entity_key":"lx_scenario_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_scenario_decisions_05 -> audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('800c4c22-f68e-58b6-a0b1-72025038c885', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_scenario_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e818bd1f-7f72-5e51-ae34-bf6119defaf0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('800c4c22-f68e-58b6-a0b1-72025038c885', 1), '73a8022715e13b51502f138ca2d1cfe5976d6eb091a568127a63c169820b1c9b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3', 1097, '2026-09-13 07:53:29.455085', 'a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e', 'validated', '{"audio_key":"dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb","entity_key":"wf_scenario_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a39c19744a70b978c6da17d0eed8ba897053317fb0e17ba7c8054b139d96167e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dba50351316f8fb597f450906e5275b3acfb51a46edf408b1d20659e4cbe31fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_professional_networking_01 -> audio/generated/de-DE/lexical/e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fb57c3e7-9f99-5e94-a343-ac2c7ff8f8ec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_professional_networking_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '325eecf9d30156c2e6f261e611c40f571de28ad8924b6b2167b2aa78a3d9dadb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c54bb440-5e7b-5a35-84a1-7f258085f47e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fb57c3e7-9f99-5e94-a343-ac2c7ff8f8ec', 1), '325eecf9d30156c2e6f261e611c40f571de28ad8924b6b2167b2aa78a3d9dadb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359.mp3', 1201, '2026-09-13 08:32:37.944525', 'faa0bf8a5f1d6d838681dfaa60429a7e66549db4f3402a140e94c75cfece98a7', 'validated', '{"audio_key":"e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359","entity_key":"lx_professional_networking_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"faa0bf8a5f1d6d838681dfaa60429a7e66549db4f3402a140e94c75cfece98a7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_professional_networking_01 -> audio/generated/de-DE/lexical/e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('117240f0-2351-5783-ad9e-7d835a496424', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_professional_networking_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '325eecf9d30156c2e6f261e611c40f571de28ad8924b6b2167b2aa78a3d9dadb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68d56801-3b2d-5eb6-ba30-9b9bf7743d01', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('117240f0-2351-5783-ad9e-7d835a496424', 1), '325eecf9d30156c2e6f261e611c40f571de28ad8924b6b2167b2aa78a3d9dadb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359.mp3', 1201, '2026-09-13 08:32:37.944525', 'faa0bf8a5f1d6d838681dfaa60429a7e66549db4f3402a140e94c75cfece98a7', 'validated', '{"audio_key":"e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359","entity_key":"wf_professional_networking_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"faa0bf8a5f1d6d838681dfaa60429a7e66549db4f3402a140e94c75cfece98a7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3ecedc529f7e148a4389178eda1a1d1b4c6e8980fab45240d55424eff2b0359.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_contracts_subscriptions_02 -> audio/generated/de-DE/lexical/e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e21d9f9e-5f27-5001-a9dc-71c5d187e063', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_contracts_subscriptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b783ce4dfe05dda641c05c21063480e8417629aa404eec1877a86a6c22826c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55c01add-903a-5e1c-a887-e046fd0b0fab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e21d9f9e-5f27-5001-a9dc-71c5d187e063', 1), 'b783ce4dfe05dda641c05c21063480e8417629aa404eec1877a86a6c22826c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c.mp3', 1097, '2026-09-13 08:32:38.363496', 'bf3d26b6b7d4edcb7c34e060a99f5c6c758cbfa9d38510620d47fb6f363365d2', 'validated', '{"audio_key":"e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c","entity_key":"lx_contracts_subscriptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf3d26b6b7d4edcb7c34e060a99f5c6c758cbfa9d38510620d47fb6f363365d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_contracts_subscriptions_02 -> audio/generated/de-DE/lexical/e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7e165231-0f7a-5ecc-a787-62aee88e488e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_contracts_subscriptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b783ce4dfe05dda641c05c21063480e8417629aa404eec1877a86a6c22826c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26247448-4194-58b2-b451-b47ec880fe10', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7e165231-0f7a-5ecc-a787-62aee88e488e', 1), 'b783ce4dfe05dda641c05c21063480e8417629aa404eec1877a86a6c22826c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c.mp3', 1097, '2026-09-13 08:32:38.363496', 'bf3d26b6b7d4edcb7c34e060a99f5c6c758cbfa9d38510620d47fb6f363365d2', 'validated', '{"audio_key":"e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c","entity_key":"wf_contracts_subscriptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf3d26b6b7d4edcb7c34e060a99f5c6c758cbfa9d38510620d47fb6f363365d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e9cc7869e942cd0cb11b22fef0977d7bebd54409c7b23c69ce5e5648c38bed4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_technical_explanations_06 -> audio/generated/de-DE/lexical/effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dd7e2bae-512e-5203-9ff0-032c04e24edc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_technical_explanations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8813e16abee7c746a71321395be450e1f70c1e9b04c59d8f7c93792e571c854c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('222152bf-8de5-5d90-8f07-a0a5253ed0e3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dd7e2bae-512e-5203-9ff0-032c04e24edc', 1), '8813e16abee7c746a71321395be450e1f70c1e9b04c59d8f7c93792e571c854c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d.mp3', 1097, '2026-09-13 08:32:38.893599', 'e4de17cd31c1d6dccc66646c53c8ba4e7ad74a624068ab05fd49803c1aa44cfc', 'validated', '{"audio_key":"effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d","entity_key":"lx_technical_explanations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4de17cd31c1d6dccc66646c53c8ba4e7ad74a624068ab05fd49803c1aa44cfc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_technical_explanations_06 -> audio/generated/de-DE/lexical/effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('01b9c251-35a6-56db-8fc5-629b70f705e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_technical_explanations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8813e16abee7c746a71321395be450e1f70c1e9b04c59d8f7c93792e571c854c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b889a473-47f1-5ef1-b4fa-982407c364bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('01b9c251-35a6-56db-8fc5-629b70f705e5', 1), '8813e16abee7c746a71321395be450e1f70c1e9b04c59d8f7c93792e571c854c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d.mp3', 1097, '2026-09-13 08:32:38.893599', 'e4de17cd31c1d6dccc66646c53c8ba4e7ad74a624068ab05fd49803c1aa44cfc', 'validated', '{"audio_key":"effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d","entity_key":"wf_technical_explanations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4de17cd31c1d6dccc66646c53c8ba4e7ad74a624068ab05fd49803c1aa44cfc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/effea9dee1dd3dcd0dcb431a552d67ab1d23251617766f6170ed0cacfa53fa2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_04 -> audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3dd5b5f2-7ff2-5d6d-acb9-e5427d5f1725', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a5c4f17-37c2-542d-89bb-2dfe30520f4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3dd5b5f2-7ff2-5d6d-acb9-e5427d5f1725', 1), '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3', 1018, '2026-09-13 08:32:39.289623', 'd1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3', 'validated', '{"audio_key":"f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc","entity_key":"lx_conflict_mediation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_04 -> audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('297ca4d4-7056-5c74-88e0-796317d3884d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e9bb2d4-6f2c-59cc-b719-ba2e1fcb4b26', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('297ca4d4-7056-5c74-88e0-796317d3884d', 1), '97b8005b83d614aeab31dd2238662fd043b1c7e9dc11942da4fac076b53b9122',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3', 1018, '2026-09-13 08:32:39.289623', 'd1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3', 'validated', '{"audio_key":"f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc","entity_key":"wf_conflict_mediation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d83c60dd7dc51b5608535e66e9b29d6320bbb788e733464acf47678ec969f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2d27555c01cd687aad1f781287082a421ec33ba75e7472c9402954813ed5acc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_management_03 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_management_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e259af70-aad9-56f1-97e8-c5cc4d1579b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"lx_time_management_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_management_03 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2009929b-1d99-5bb6-89df-5d5810efe7ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_management_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45528f3f-843b-57c5-bd62-cb296311d3a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2009929b-1d99-5bb6-89df-5d5810efe7ee', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"wf_time_management_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_event_organization_02 -> audio/generated/de-DE/lexical/f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b0138f12-e67e-5212-8153-9f72f8d945fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_event_organization_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be612b19bfa122dc768e72d718abca592098c5d6580fc90dde4aca75504b30ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('097d3f32-6bfc-59df-a6e1-bb3838eddff9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b0138f12-e67e-5212-8153-9f72f8d945fc', 1), 'be612b19bfa122dc768e72d718abca592098c5d6580fc90dde4aca75504b30ae',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7.mp3', 1149, '2026-09-13 08:32:40.242866', '5f23999db180ec091ed7b6b8c40ddc1a83afd7b1d511092fe5a7cb614f76cea8', 'validated', '{"audio_key":"f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7","entity_key":"lx_event_organization_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5f23999db180ec091ed7b6b8c40ddc1a83afd7b1d511092fe5a7cb614f76cea8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_event_organization_02 -> audio/generated/de-DE/lexical/f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('42ec129f-bf60-56d5-8ce8-1c54111e0a29', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_event_organization_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be612b19bfa122dc768e72d718abca592098c5d6580fc90dde4aca75504b30ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af705d2c-7385-5fb2-8e62-4af7cf1a1053', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('42ec129f-bf60-56d5-8ce8-1c54111e0a29', 1), 'be612b19bfa122dc768e72d718abca592098c5d6580fc90dde4aca75504b30ae',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7.mp3', 1149, '2026-09-13 08:32:40.242866', '5f23999db180ec091ed7b6b8c40ddc1a83afd7b1d511092fe5a7cb614f76cea8', 'validated', '{"audio_key":"f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7","entity_key":"wf_event_organization_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5f23999db180ec091ed7b6b8c40ddc1a83afd7b1d511092fe5a7cb614f76cea8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f93206d668133078b2b94ebced052b8461fbc4cd607ca2992ea7d921c3b30cb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conflict_mediation_05 -> audio/generated/de-DE/lexical/fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c841575-7107-5c06-9908-70430be51cac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conflict_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6c155095cd717fd48c1414cb2371a9301495a7bad34f59ad17e480a86fd43b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a532fded-9be2-5985-b7e6-e22b52eb3ace', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c841575-7107-5c06-9908-70430be51cac', 1), 'd6c155095cd717fd48c1414cb2371a9301495a7bad34f59ad17e480a86fd43b3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6.mp3', 1253, '2026-09-13 08:32:40.872819', '674a88f0ea9bd46a94472eb822005ba2e6e7617ceecb3fa46ddd6b98570befd6', 'validated', '{"audio_key":"fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6","entity_key":"lx_conflict_mediation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"674a88f0ea9bd46a94472eb822005ba2e6e7617ceecb3fa46ddd6b98570befd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conflict_mediation_05 -> audio/generated/de-DE/lexical/fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f4d10a2-26d2-5b28-b4e3-3841a529ad7b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conflict_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6c155095cd717fd48c1414cb2371a9301495a7bad34f59ad17e480a86fd43b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7caf874d-941e-5df6-9a88-230a09f3ecc2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f4d10a2-26d2-5b28-b4e3-3841a529ad7b', 1), 'd6c155095cd717fd48c1414cb2371a9301495a7bad34f59ad17e480a86fd43b3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6.mp3', 1253, '2026-09-13 08:32:40.872819', '674a88f0ea9bd46a94472eb822005ba2e6e7617ceecb3fa46ddd6b98570befd6', 'validated', '{"audio_key":"fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6","entity_key":"wf_conflict_mediation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"674a88f0ea9bd46a94472eb822005ba2e6e7617ceecb3fa46ddd6b98570befd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd2a3cff49f6a64e0c08c6379064f7b1d42799c0461bdbb620a46651ebd6cba6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_technical_explanations_05 -> audio/generated/de-DE/utterances/0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('865e0bb7-dfcf-523c-a48b-deaefb21402a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_technical_explanations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc9a1a96f15de8f6b0f5ff596a2b86a94e77d9210de6a1742cd23c13892f09b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61bd3096-1b30-57f5-acca-ab122a04f0d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('865e0bb7-dfcf-523c-a48b-deaefb21402a', 1), 'bc9a1a96f15de8f6b0f5ff596a2b86a94e77d9210de6a1742cd23c13892f09b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3.mp3', 4728, '2026-09-13 08:32:41.657303', 'f3e4f6697fc75cae7a8e97ba5a4ca7b0c70fddeb647e76bcbc27112ddbe2a5ed', 'validated', '{"audio_key":"0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3","entity_key":"u_technical_explanations_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3e4f6697fc75cae7a8e97ba5a4ca7b0c70fddeb647e76bcbc27112ddbe2a5ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_technical_explanations_03_listen -> audio/generated/de-DE/utterances/0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('99d8d641-de8c-5898-949f-f6636244a9fe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_technical_explanations_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc9a1a96f15de8f6b0f5ff596a2b86a94e77d9210de6a1742cd23c13892f09b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff91f10c-e8bc-5a48-9240-c6c323b89408', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('99d8d641-de8c-5898-949f-f6636244a9fe', 1), 'bc9a1a96f15de8f6b0f5ff596a2b86a94e77d9210de6a1742cd23c13892f09b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3.mp3', 4728, '2026-09-13 08:32:41.657303', 'f3e4f6697fc75cae7a8e97ba5a4ca7b0c70fddeb647e76bcbc27112ddbe2a5ed', 'validated', '{"audio_key":"0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3","entity_key":"ex_technical_explanations_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3e4f6697fc75cae7a8e97ba5a4ca7b0c70fddeb647e76bcbc27112ddbe2a5ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0035344d711a56bb3c453336ee26665e318d3af043a78d3a25196da29fe0a1e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rental_repairs_03 -> audio/generated/de-DE/utterances/040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d5d419d9-812a-5f46-9ccc-631ef0cfd827', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rental_repairs_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a644e9026dd90f928fa72eb68e22302e37b39b2259b964b71339269f7cd88e98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c7b2a5d-9eab-510d-bbe9-7b35995a3905', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d5d419d9-812a-5f46-9ccc-631ef0cfd827', 1), 'a644e9026dd90f928fa72eb68e22302e37b39b2259b964b71339269f7cd88e98',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04.mp3', 4310, '2026-09-13 08:32:42.162086', 'fe4c9bf14458027078fb6980a02de49b7892857ea02c06f93447c2c1d2678fad', 'validated', '{"audio_key":"040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04","entity_key":"u_rental_repairs_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe4c9bf14458027078fb6980a02de49b7892857ea02c06f93447c2c1d2678fad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rental_repairs_02_listen -> audio/generated/de-DE/utterances/040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cbbc2253-6704-5900-964f-a371127a754a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rental_repairs_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a644e9026dd90f928fa72eb68e22302e37b39b2259b964b71339269f7cd88e98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f985a18f-f26c-5a05-b338-c526e07fd3a1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cbbc2253-6704-5900-964f-a371127a754a', 1), 'a644e9026dd90f928fa72eb68e22302e37b39b2259b964b71339269f7cd88e98',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04.mp3', 4310, '2026-09-13 08:32:42.162086', 'fe4c9bf14458027078fb6980a02de49b7892857ea02c06f93447c2c1d2678fad', 'validated', '{"audio_key":"040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04","entity_key":"ex_rental_repairs_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe4c9bf14458027078fb6980a02de49b7892857ea02c06f93447c2c1d2678fad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/040def30e187f061f8f81f985996b9a8dc4fd10881ab715f7b9ba23a9b131c04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_bureaucracy_appointments_04 -> audio/generated/de-DE/utterances/0fb465e034402d090fb2a7f7447206aa8d67c3e1c48ca105acf1c54df2476a6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b74ba36d-e853-5360-9edd-024f1db629e7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_bureaucracy_appointments_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8e24823fefb077681f85ce425ab0e535994998b7743829dfc616e181a9a8604'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ea40a40-8138-5bb9-947a-9fe29929f647', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b74ba36d-e853-5360-9edd-024f1db629e7', 1), 'a8e24823fefb077681f85ce425ab0e535994998b7743829dfc616e181a9a8604',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0fb465e034402d090fb2a7f7447206aa8d67c3e1c48ca105acf1c54df2476a6e.mp3', 4414, '2026-09-13 08:32:42.957422', 'c3ec6de88de061dc0f7526de7838efc3be68c49efd6fe67c9001164a40059af1', 'validated', '{"audio_key":"0fb465e034402d090fb2a7f7447206aa8d67c3e1c48ca105acf1c54df2476a6e","entity_key":"u_bureaucracy_appointments_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3ec6de88de061dc0f7526de7838efc3be68c49efd6fe67c9001164a40059af1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0fb465e034402d090fb2a7f7447206aa8d67c3e1c48ca105acf1c54df2476a6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_decisions_06 -> audio/generated/de-DE/utterances/0fdd4e1c6779b4bfe433b35afb18091cce0d776a07b3d532eecc1a1606d269ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('68134df5-7074-54bc-a255-339e46ac79aa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aacf010bafe7232c36f066d1b90c2a14c46125edd27d5af4e2acf9b479f7bff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a76654c2-8c5a-5917-92fb-97982cc37a0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('68134df5-7074-54bc-a255-339e46ac79aa', 1), '8aacf010bafe7232c36f066d1b90c2a14c46125edd27d5af4e2acf9b479f7bff',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0fdd4e1c6779b4bfe433b35afb18091cce0d776a07b3d532eecc1a1606d269ea.mp3', 5668, '2026-09-13 08:32:43.638833', '1fe9b5ba0d951481a45ff5ee3432da643d2cc0109229783ed9ef913076ad8673', 'validated', '{"audio_key":"0fdd4e1c6779b4bfe433b35afb18091cce0d776a07b3d532eecc1a1606d269ea","entity_key":"u_scenario_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fe9b5ba0d951481a45ff5ee3432da643d2cc0109229783ed9ef913076ad8673","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0fdd4e1c6779b4bfe433b35afb18091cce0d776a07b3d532eecc1a1606d269ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_05 -> audio/generated/de-DE/utterances/14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4971674a-76a9-5009-8353-4a76551e778d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4416d2b1f48022e158648827b898efaa1a26eda7bafc921734aaf24b84744436'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a11ed25-eaa8-592a-9ffa-413c7e34d7a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4971674a-76a9-5009-8353-4a76551e778d', 1), '4416d2b1f48022e158648827b898efaa1a26eda7bafc921734aaf24b84744436',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8.mp3', 4780, '2026-09-13 08:32:44.380417', '61b8d448ba35039bfc65ef2367fec7b997cff4bf4557fc9d1b11d4f401374f5e', 'validated', '{"audio_key":"14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8","entity_key":"u_conflict_mediation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61b8d448ba35039bfc65ef2367fec7b997cff4bf4557fc9d1b11d4f401374f5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_conflict_mediation_03_listen -> audio/generated/de-DE/utterances/14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ee4f11f-49a4-5484-aa4e-b7059ea5195c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_conflict_mediation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4416d2b1f48022e158648827b898efaa1a26eda7bafc921734aaf24b84744436'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('640ffba5-b644-5d62-ae36-89d012e78e03', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ee4f11f-49a4-5484-aa4e-b7059ea5195c', 1), '4416d2b1f48022e158648827b898efaa1a26eda7bafc921734aaf24b84744436',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8.mp3', 4780, '2026-09-13 08:32:44.380417', '61b8d448ba35039bfc65ef2367fec7b997cff4bf4557fc9d1b11d4f401374f5e', 'validated', '{"audio_key":"14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8","entity_key":"ex_conflict_mediation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61b8d448ba35039bfc65ef2367fec7b997cff4bf4557fc9d1b11d4f401374f5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/14edf0845a14f7a108227ed7ed4ed1c23c8afb7927aa1f0bf44f621053aec4f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_technical_explanations_06 -> audio/generated/de-DE/utterances/1ed129349fe805f3c58d47a7e4fe58a0837381bb4db1448dd888a7755dad8095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2d9a498c-ea36-5baf-9db2-fe67e0433557', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_technical_explanations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b304bf1cbb03f7f5a80d6bacef3bbea080b3de0e8dc06d1656c1046f6f372cf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df6951b8-ecb8-512f-925e-dd1e53457107', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2d9a498c-ea36-5baf-9db2-fe67e0433557', 1), 'b304bf1cbb03f7f5a80d6bacef3bbea080b3de0e8dc06d1656c1046f6f372cf9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ed129349fe805f3c58d47a7e4fe58a0837381bb4db1448dd888a7755dad8095.mp3', 4440, '2026-09-13 08:32:44.958874', 'f6cc668368ecaf6d882268595b1bc646a9b44cc32793597f021fa62b2a138b9c', 'validated', '{"audio_key":"1ed129349fe805f3c58d47a7e4fe58a0837381bb4db1448dd888a7755dad8095","entity_key":"u_technical_explanations_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6cc668368ecaf6d882268595b1bc646a9b44cc32793597f021fa62b2a138b9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ed129349fe805f3c58d47a7e4fe58a0837381bb4db1448dd888a7755dad8095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_management_01 -> audio/generated/de-DE/utterances/20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b4bce27a-64cd-5dd2-9f94-dceaff1dcdd3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_management_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e5b47b1a3436fdee3eb013c6ccbf523d2b0d719d572f4c54c5c6692dfe971de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc46c41b-5d1b-5519-a2e8-c38151488d5d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b4bce27a-64cd-5dd2-9f94-dceaff1dcdd3', 1), '2e5b47b1a3436fdee3eb013c6ccbf523d2b0d719d572f4c54c5c6692dfe971de',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2.mp3', 5198, '2026-09-13 08:32:45.802687', '191b73920436a945077f0a79e091d577430d16767d20cd946435ba523992dc5e', 'validated', '{"audio_key":"20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2","entity_key":"u_time_management_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"191b73920436a945077f0a79e091d577430d16767d20cd946435ba523992dc5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_time_management_01_listen -> audio/generated/de-DE/utterances/20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4f9299a3-8f02-5676-8017-82f2e863cbab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_time_management_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e5b47b1a3436fdee3eb013c6ccbf523d2b0d719d572f4c54c5c6692dfe971de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f16fd98-3e13-565f-9e36-ceeb9a2264f7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4f9299a3-8f02-5676-8017-82f2e863cbab', 1), '2e5b47b1a3436fdee3eb013c6ccbf523d2b0d719d572f4c54c5c6692dfe971de',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2.mp3', 5198, '2026-09-13 08:32:45.802687', '191b73920436a945077f0a79e091d577430d16767d20cd946435ba523992dc5e', 'validated', '{"audio_key":"20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2","entity_key":"ex_time_management_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"191b73920436a945077f0a79e091d577430d16767d20cd946435ba523992dc5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/20d0e7b0f6d2806a7f9e726dbe2dde7e10bee932204ff312b81849ad7ed2a4d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_bureaucracy_appointments_06 -> audio/generated/de-DE/utterances/21f28b2f6463ae15df6d69ce47b22bb9ca73ee5929a7771fe040e77c221388c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0533b59e-8d1a-5c9d-8ef4-2be92d0aab4c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_bureaucracy_appointments_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4553db7c05551559115625d8a53dbffa47a743f6fa697675d256baaff6425a59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ab9387a-2c87-526d-a997-de4f204fac27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0533b59e-8d1a-5c9d-8ef4-2be92d0aab4c', 1), '4553db7c05551559115625d8a53dbffa47a743f6fa697675d256baaff6425a59',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/21f28b2f6463ae15df6d69ce47b22bb9ca73ee5929a7771fe040e77c221388c7.mp3', 5564, '2026-09-13 08:32:46.356775', '55319e7100086c76e91a8a3d5a8a5f0cc92932c36335f37a9812baefb6b8fa72', 'validated', '{"audio_key":"21f28b2f6463ae15df6d69ce47b22bb9ca73ee5929a7771fe040e77c221388c7","entity_key":"u_bureaucracy_appointments_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55319e7100086c76e91a8a3d5a8a5f0cc92932c36335f37a9812baefb6b8fa72","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/21f28b2f6463ae15df6d69ce47b22bb9ca73ee5929a7771fe040e77c221388c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_networking_02 -> audio/generated/de-DE/utterances/29511ed2e0dc5902e0bfcf4ca37a93f2573ada9764d8f5bad77873a6a1db854c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('20e2a671-f3d9-5029-94f5-010816b289c9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_networking_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aec2fb11829153719d2ed749507f783d835da028c71e54faa085cb5d86add316'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9f0a92d-e44b-52d0-a26d-ab95c5a76f01', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('20e2a671-f3d9-5029-94f5-010816b289c9', 1), 'aec2fb11829153719d2ed749507f783d835da028c71e54faa085cb5d86add316',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/29511ed2e0dc5902e0bfcf4ca37a93f2573ada9764d8f5bad77873a6a1db854c.mp3', 4963, '2026-09-13 08:32:47.166394', '7413600f9e69673b7937eb1f8cf73754c5f18c4c7a1313b4ba7d365940c331a7', 'validated', '{"audio_key":"29511ed2e0dc5902e0bfcf4ca37a93f2573ada9764d8f5bad77873a6a1db854c","entity_key":"u_professional_networking_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7413600f9e69673b7937eb1f8cf73754c5f18c4c7a1313b4ba7d365940c331a7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/29511ed2e0dc5902e0bfcf4ca37a93f2573ada9764d8f5bad77873a6a1db854c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_02 -> audio/generated/de-DE/utterances/2d06cd7dc8a617f2f6e7c75db1dc904758172c6eafd30c9a9a246a7c6cfc95d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e8137f1-9b57-53db-b764-53690c065965', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bf38c30c69d5651a182f586916a92c6d0fb6c45808bab7b40bdfb5d056ea267'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff72e6dc-813d-51ef-9bbf-9f63dee4f290', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e8137f1-9b57-53db-b764-53690c065965', 1), '7bf38c30c69d5651a182f586916a92c6d0fb6c45808bab7b40bdfb5d056ea267',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2d06cd7dc8a617f2f6e7c75db1dc904758172c6eafd30c9a9a246a7c6cfc95d5.mp3', 4127, '2026-09-13 08:32:47.694263', 'cf881c5b268298d769f7ce100674afa65b38c2927a3787d9c600380db2a36a23', 'validated', '{"audio_key":"2d06cd7dc8a617f2f6e7c75db1dc904758172c6eafd30c9a9a246a7c6cfc95d5","entity_key":"u_conflict_mediation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf881c5b268298d769f7ce100674afa65b38c2927a3787d9c600380db2a36a23","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2d06cd7dc8a617f2f6e7c75db1dc904758172c6eafd30c9a9a246a7c6cfc95d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_bureaucracy_appointments_02 -> audio/generated/de-DE/utterances/2db7ac6f5305202d40b337eb9340b8e4ae4a5232b322318fc11ed60347fb41f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f467fac8-e06f-56bf-bf59-de88fa47a55e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_bureaucracy_appointments_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f80df687e3235f1a780b9231039d6ef6abef2b677364c26a821e3bd63d2eb8eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('102cd768-197a-5cda-85a9-7b0c949f8b5c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f467fac8-e06f-56bf-bf59-de88fa47a55e', 1), 'f80df687e3235f1a780b9231039d6ef6abef2b677364c26a821e3bd63d2eb8eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2db7ac6f5305202d40b337eb9340b8e4ae4a5232b322318fc11ed60347fb41f9.mp3', 4075, '2026-09-13 08:32:48.439031', '90064e1902f31b5817c51d6a9b0bfc4f0ae127e9c6a1a7954d27d0fd20461d7c', 'validated', '{"audio_key":"2db7ac6f5305202d40b337eb9340b8e4ae4a5232b322318fc11ed60347fb41f9","entity_key":"u_bureaucracy_appointments_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90064e1902f31b5817c51d6a9b0bfc4f0ae127e9c6a1a7954d27d0fd20461d7c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2db7ac6f5305202d40b337eb9340b8e4ae4a5232b322318fc11ed60347fb41f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_decisions_04 -> audio/generated/de-DE/utterances/2dd986d69a39aa1a00dc358f52cb423b540eb864e61ec82f375cf154c645173c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc1d611b-fa38-5c1b-8396-ea2b35c2ca4a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f5436deb13a1027b5d8a84569e317b0d55d618d33a5c8019bf3ee20174c52ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c496b99-f671-5cc4-8169-2993ad3e7c2c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc1d611b-fa38-5c1b-8396-ea2b35c2ca4a', 1), '2f5436deb13a1027b5d8a84569e317b0d55d618d33a5c8019bf3ee20174c52ff',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2dd986d69a39aa1a00dc358f52cb423b540eb864e61ec82f375cf154c645173c.mp3', 4832, '2026-09-13 08:32:49.077548', '8cc82dc4aed00b52f06ef78c3f435141e5a92bf70a38b3b36b6694c341b1eabf', 'validated', '{"audio_key":"2dd986d69a39aa1a00dc358f52cb423b540eb864e61ec82f375cf154c645173c","entity_key":"u_scenario_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cc82dc4aed00b52f06ef78c3f435141e5a92bf70a38b3b36b6694c341b1eabf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2dd986d69a39aa1a00dc358f52cb423b540eb864e61ec82f375cf154c645173c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_06 -> audio/generated/de-DE/utterances/33ec540c08b9638457e79c8dee439f3de658b9310366593f803a6c0317920398.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4743d77e-36bd-5fdd-ac00-3623c96141c5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a47ee0e1203695f882fcf3a9f33ff97c7f9e908d645dcfe2abb05390133d2cf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b146518e-0458-5a00-b15a-8426755537fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4743d77e-36bd-5fdd-ac00-3623c96141c5', 1), 'a47ee0e1203695f882fcf3a9f33ff97c7f9e908d645dcfe2abb05390133d2cf4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/33ec540c08b9638457e79c8dee439f3de658b9310366593f803a6c0317920398.mp3', 5198, '2026-09-13 08:32:49.836429', 'f026b8fc9c36b6ea731e11ac42cca9cf187859ed872332bf2c6e29395f71cae7', 'validated', '{"audio_key":"33ec540c08b9638457e79c8dee439f3de658b9310366593f803a6c0317920398","entity_key":"u_contracts_subscriptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f026b8fc9c36b6ea731e11ac42cca9cf187859ed872332bf2c6e29395f71cae7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/33ec540c08b9638457e79c8dee439f3de658b9310366593f803a6c0317920398.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_decisions_02 -> audio/generated/de-DE/utterances/39a3cb8bb0aabd55bec842a366d7ea5b66250eee8cd1d96918ab203cd1f0ae7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4237776c-7dd2-551b-933f-1c49bf7686a4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fa832466d8777c11d9f42afafb2db736cf53444f0e37f4afc716fca10b61a25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ee51280-7b1b-55e1-a2a8-7ce7d99fe090', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4237776c-7dd2-551b-933f-1c49bf7686a4', 1), '3fa832466d8777c11d9f42afafb2db736cf53444f0e37f4afc716fca10b61a25',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/39a3cb8bb0aabd55bec842a366d7ea5b66250eee8cd1d96918ab203cd1f0ae7c.mp3', 5616, '2026-09-13 08:32:50.542909', '2c2ecc018ec912983caa51e910e1675e2e1ce6393868e4c682363962c900624f', 'validated', '{"audio_key":"39a3cb8bb0aabd55bec842a366d7ea5b66250eee8cd1d96918ab203cd1f0ae7c","entity_key":"u_scenario_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c2ecc018ec912983caa51e910e1675e2e1ce6393868e4c682363962c900624f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/39a3cb8bb0aabd55bec842a366d7ea5b66250eee8cd1d96918ab203cd1f0ae7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_event_organization_04 -> audio/generated/de-DE/utterances/414974c1c0bf7f725c6c8a355c867e71d0cea58c33beee17c51cd4335852f502.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9a0935e8-2846-59c8-ae5b-47cd902c5a7f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_event_organization_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f715d0846697de3592326542297b7cf337ed2fcb4fcc98e1efda566a466fcf06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b425748-bcc3-568c-9e79-4c2b79636f19', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9a0935e8-2846-59c8-ae5b-47cd902c5a7f', 1), 'f715d0846697de3592326542297b7cf337ed2fcb4fcc98e1efda566a466fcf06',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/414974c1c0bf7f725c6c8a355c867e71d0cea58c33beee17c51cd4335852f502.mp3', 4362, '2026-09-13 08:32:51.146346', '6a9f7e4222f2d86a26416cf49c91b264c049304fe2a5c7f5b71035ce9adbc8f1', 'validated', '{"audio_key":"414974c1c0bf7f725c6c8a355c867e71d0cea58c33beee17c51cd4335852f502","entity_key":"u_event_organization_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a9f7e4222f2d86a26416cf49c91b264c049304fe2a5c7f5b71035ce9adbc8f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/414974c1c0bf7f725c6c8a355c867e71d0cea58c33beee17c51cd4335852f502.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_decisions_01 -> audio/generated/de-DE/utterances/49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('89237bf1-ef2b-56f5-a282-94a935cdf9d0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76ff7dc221ab05e8f52aa0781d108c8fa2d241f24710cadc73027afdd480b894'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dc00b68-8e72-5ad4-a4a8-e18c762d2a93', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('89237bf1-ef2b-56f5-a282-94a935cdf9d0', 1), '76ff7dc221ab05e8f52aa0781d108c8fa2d241f24710cadc73027afdd480b894',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951.mp3', 4780, '2026-09-13 08:32:51.872556', '8d2044cb6bd9bf4d28994825c10ddf92ef2b40ecf4a84f7ed20e3e6c05aad8e0', 'validated', '{"audio_key":"49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951","entity_key":"u_scenario_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d2044cb6bd9bf4d28994825c10ddf92ef2b40ecf4a84f7ed20e3e6c05aad8e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scenario_decisions_01_listen -> audio/generated/de-DE/utterances/49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3fad4370-bad0-5b59-a9d3-399d06b14720', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scenario_decisions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76ff7dc221ab05e8f52aa0781d108c8fa2d241f24710cadc73027afdd480b894'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('482a5ed7-109d-5f0a-afee-8af5efebf75f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3fad4370-bad0-5b59-a9d3-399d06b14720', 1), '76ff7dc221ab05e8f52aa0781d108c8fa2d241f24710cadc73027afdd480b894',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951.mp3', 4780, '2026-09-13 08:32:51.872556', '8d2044cb6bd9bf4d28994825c10ddf92ef2b40ecf4a84f7ed20e3e6c05aad8e0', 'validated', '{"audio_key":"49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951","entity_key":"ex_scenario_decisions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d2044cb6bd9bf4d28994825c10ddf92ef2b40ecf4a84f7ed20e3e6c05aad8e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/49d4ba988db35035de0bc6a9ffc8618acdad5132d2019c854de3ea52ce0a9951.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_technical_explanations_02 -> audio/generated/de-DE/utterances/4bb623d235907065c5298245dfc31b95afafce26d0eb950f9db3bc3ac1b69a70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c01f1db8-a5c8-5a7d-9baf-af2adb5054bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_technical_explanations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d4e389660e91417175e9d192705f2de0a6131a1a70a121700c0648958b21ab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5942d06-dfc3-5baa-8fdd-443b8571b9be', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c01f1db8-a5c8-5a7d-9baf-af2adb5054bd', 1), '7d4e389660e91417175e9d192705f2de0a6131a1a70a121700c0648958b21ab6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4bb623d235907065c5298245dfc31b95afafce26d0eb950f9db3bc3ac1b69a70.mp3', 3291, '2026-09-13 08:32:52.370458', '7e2d5bd4ab917431e0115acee231883c0a769e3fa69e70104441c4bed837c6d6', 'validated', '{"audio_key":"4bb623d235907065c5298245dfc31b95afafce26d0eb950f9db3bc3ac1b69a70","entity_key":"u_technical_explanations_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e2d5bd4ab917431e0115acee231883c0a769e3fa69e70104441c4bed837c6d6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4bb623d235907065c5298245dfc31b95afafce26d0eb950f9db3bc3ac1b69a70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_02 -> audio/generated/de-DE/utterances/4e8be6aaa31639f6a88004fbf25ee058fceee4d9f3d3411414745289ba2939f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4bc7ed68-a5ec-5ecd-93fb-b792407944bf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f003fea0e689a2de41083d11ebef27b9cf4b27e4af8d6f8213c837ea6d1c3e15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29695c42-c91d-576d-940b-14b0bb746560', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4bc7ed68-a5ec-5ecd-93fb-b792407944bf', 1), 'f003fea0e689a2de41083d11ebef27b9cf4b27e4af8d6f8213c837ea6d1c3e15',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e8be6aaa31639f6a88004fbf25ee058fceee4d9f3d3411414745289ba2939f0.mp3', 5328, '2026-09-13 08:32:53.310129', 'f533e3a20f6b6fcf616de1f8dae7815f3aa02b284567b2d9486f659f913d8ea2', 'validated', '{"audio_key":"4e8be6aaa31639f6a88004fbf25ee058fceee4d9f3d3411414745289ba2939f0","entity_key":"u_contracts_subscriptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f533e3a20f6b6fcf616de1f8dae7815f3aa02b284567b2d9486f659f913d8ea2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e8be6aaa31639f6a88004fbf25ee058fceee4d9f3d3411414745289ba2939f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_event_organization_02 -> audio/generated/de-DE/utterances/52c0b23239f5952342ae81e7abdef3eb35300373f7754f01727c7b330d09e7c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22d44dd3-0ac4-5a1f-9657-cdfdbaf369e4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_event_organization_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f1428e50c87ddbc958b326abc329e13c79e34a33cdb0a0ece4c40fe0e58451b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('204b9937-c0e8-5ee3-8c41-3dd80418dce0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22d44dd3-0ac4-5a1f-9657-cdfdbaf369e4', 1), '4f1428e50c87ddbc958b326abc329e13c79e34a33cdb0a0ece4c40fe0e58451b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/52c0b23239f5952342ae81e7abdef3eb35300373f7754f01727c7b330d09e7c0.mp3', 4623, '2026-09-13 08:32:53.825205', '9c1a8a021fe16b4b8e9a7c82cfe9369a31347fcdd9cb9728a43826501bb4879c', 'validated', '{"audio_key":"52c0b23239f5952342ae81e7abdef3eb35300373f7754f01727c7b330d09e7c0","entity_key":"u_event_organization_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c1a8a021fe16b4b8e9a7c82cfe9369a31347fcdd9cb9728a43826501bb4879c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/52c0b23239f5952342ae81e7abdef3eb35300373f7754f01727c7b330d09e7c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_event_organization_06 -> audio/generated/de-DE/utterances/54aaae0157422b6ce817a5fb544ecec5db7ebad260b595601c3113a9cd32f6f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ae3f4500-48ec-5271-9589-38b8bc227488', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_event_organization_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58fdfc394eb99af0f2ede72d7358669d29aa0ebf57834dda19a0dc41e584d913'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a11a3075-6a19-5431-bc26-04284b9c2be0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ae3f4500-48ec-5271-9589-38b8bc227488', 1), '58fdfc394eb99af0f2ede72d7358669d29aa0ebf57834dda19a0dc41e584d913',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54aaae0157422b6ce817a5fb544ecec5db7ebad260b595601c3113a9cd32f6f7.mp3', 6112, '2026-09-13 08:32:54.881011', 'b3c400babc1bf0f5ddff94a26264b3f7d6bc0a8b9d93a2f8e92b1033ce38717e', 'validated', '{"audio_key":"54aaae0157422b6ce817a5fb544ecec5db7ebad260b595601c3113a9cd32f6f7","entity_key":"u_event_organization_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3c400babc1bf0f5ddff94a26264b3f7d6bc0a8b9d93a2f8e92b1033ce38717e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54aaae0157422b6ce817a5fb544ecec5db7ebad260b595601c3113a9cd32f6f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hybrid_collaboration_06 -> audio/generated/de-DE/utterances/54fec48b301e50bb18850ff407d5541564e5c39e63d003fef2532e575805ac62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ad8fe53b-d918-5db9-9134-bb0e19e1c23e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hybrid_collaboration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ba597c43f80a640264e7528575fd9103af4b07551931934e6ddc30d438eeb36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c09901c-0b98-5f01-aab1-f399d275e8e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ad8fe53b-d918-5db9-9134-bb0e19e1c23e', 1), '8ba597c43f80a640264e7528575fd9103af4b07551931934e6ddc30d438eeb36',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54fec48b301e50bb18850ff407d5541564e5c39e63d003fef2532e575805ac62.mp3', 4257, '2026-09-13 08:32:55.172426', '7afa169ad1825678280cd54c3da08d2c7fe3fc3960e201ba1de6033059425d1d', 'validated', '{"audio_key":"54fec48b301e50bb18850ff407d5541564e5c39e63d003fef2532e575805ac62","entity_key":"u_hybrid_collaboration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7afa169ad1825678280cd54c3da08d2c7fe3fc3960e201ba1de6033059425d1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54fec48b301e50bb18850ff407d5541564e5c39e63d003fef2532e575805ac62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_management_02 -> audio/generated/de-DE/utterances/579511a4c22c02b3092e130cd0b2d421c38eb0163891b350ecf5fefed6350366.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3d8da585-a8c4-5c85-84ef-fb734166359c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_management_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d99ef232cdc85a561d34dd9fa97ead38476068bd150dca483414e7a49e91dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a55936e7-31db-528d-99c3-19e40ed2048b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3d8da585-a8c4-5c85-84ef-fb734166359c', 1), '1d99ef232cdc85a561d34dd9fa97ead38476068bd150dca483414e7a49e91dfe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/579511a4c22c02b3092e130cd0b2d421c38eb0163891b350ecf5fefed6350366.mp3', 3996, '2026-09-13 08:32:56.147117', '387cabc09943339ef13020703c94e04237f30925193ef544443b38769c38af49', 'validated', '{"audio_key":"579511a4c22c02b3092e130cd0b2d421c38eb0163891b350ecf5fefed6350366","entity_key":"u_time_management_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"387cabc09943339ef13020703c94e04237f30925193ef544443b38769c38af49","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/579511a4c22c02b3092e130cd0b2d421c38eb0163891b350ecf5fefed6350366.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_decisions_05 -> audio/generated/de-DE/utterances/59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d388244-ff7f-5dbb-9406-4a1a4e5ccadf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92ea5cbb44bb4fba6ed68ce0b6ca1e9b59f5026c3aad404c75805b9c556d582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06c61414-a00e-57d6-a372-1816f669c8e0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d388244-ff7f-5dbb-9406-4a1a4e5ccadf', 1), 'b92ea5cbb44bb4fba6ed68ce0b6ca1e9b59f5026c3aad404c75805b9c556d582',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f.mp3', 4205, '2026-09-13 08:32:56.477487', '0c4958c40abdd0aae19c96954539c6466b8b7a51c8efbcf0f7cadad743da9b1a', 'validated', '{"audio_key":"59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f","entity_key":"u_scenario_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c4958c40abdd0aae19c96954539c6466b8b7a51c8efbcf0f7cadad743da9b1a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scenario_decisions_03_listen -> audio/generated/de-DE/utterances/59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('337622ab-fefe-59cf-b4ff-413bfe28a763', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scenario_decisions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92ea5cbb44bb4fba6ed68ce0b6ca1e9b59f5026c3aad404c75805b9c556d582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c5c6d01-26b7-5e62-82bb-7c2a151668ad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('337622ab-fefe-59cf-b4ff-413bfe28a763', 1), 'b92ea5cbb44bb4fba6ed68ce0b6ca1e9b59f5026c3aad404c75805b9c556d582',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f.mp3', 4205, '2026-09-13 08:32:56.477487', '0c4958c40abdd0aae19c96954539c6466b8b7a51c8efbcf0f7cadad743da9b1a', 'validated', '{"audio_key":"59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f","entity_key":"ex_scenario_decisions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c4958c40abdd0aae19c96954539c6466b8b7a51c8efbcf0f7cadad743da9b1a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59c82d79b6bb87e69481513f3acb7a75cabf28bf305a381b0528041a54f0783f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hybrid_collaboration_02 -> audio/generated/de-DE/utterances/59f889e1c6d0626eebe4e4d70b483bcac46f1f41aa022d8e71e87a2e67a2ede9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6c20432-8003-5660-aba6-97ce035eaaa0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hybrid_collaboration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c450d82092ca4ac0d03d68cfd88e5331e0bde1ecc4d9467a547e8121b510efdd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d80697c-e184-5370-8378-395a53d58b08', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6c20432-8003-5660-aba6-97ce035eaaa0', 1), 'c450d82092ca4ac0d03d68cfd88e5331e0bde1ecc4d9467a547e8121b510efdd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59f889e1c6d0626eebe4e4d70b483bcac46f1f41aa022d8e71e87a2e67a2ede9.mp3', 4440, '2026-09-13 08:32:57.475324', '561c4b7830752f15d983a0e6c3ccb68add3422b88667b1e57c8d238fd3a365b0', 'validated', '{"audio_key":"59f889e1c6d0626eebe4e4d70b483bcac46f1f41aa022d8e71e87a2e67a2ede9","entity_key":"u_hybrid_collaboration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"561c4b7830752f15d983a0e6c3ccb68add3422b88667b1e57c8d238fd3a365b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59f889e1c6d0626eebe4e4d70b483bcac46f1f41aa022d8e71e87a2e67a2ede9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_06 -> audio/generated/de-DE/utterances/5f08a0bf50e4012f09261fc91168df397cd0645423a16e975fdcf5cd5d367836.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25c15aba-ddf7-53ca-ba1c-ec378584f164', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2a41f8be97f79cb169b480bb2b1cf885650d9764b7b0a8ab893746b007fbba9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42ba9352-2c95-5b70-bebc-623b98829bcb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25c15aba-ddf7-53ca-ba1c-ec378584f164', 1), 'd2a41f8be97f79cb169b480bb2b1cf885650d9764b7b0a8ab893746b007fbba9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5f08a0bf50e4012f09261fc91168df397cd0645423a16e975fdcf5cd5d367836.mp3', 4911, '2026-09-13 08:32:57.891261', '94a6ff2ee852bcd249a24321d9ba7900a179b6e3ca83cbadd0d553845eea0cc8', 'validated', '{"audio_key":"5f08a0bf50e4012f09261fc91168df397cd0645423a16e975fdcf5cd5d367836","entity_key":"u_conflict_mediation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94a6ff2ee852bcd249a24321d9ba7900a179b6e3ca83cbadd0d553845eea0cc8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5f08a0bf50e4012f09261fc91168df397cd0645423a16e975fdcf5cd5d367836.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hybrid_collaboration_01 -> audio/generated/de-DE/utterances/61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e06c117-f5b9-51aa-a37f-7981ca320252', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hybrid_collaboration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfc5c0639aebdce43cf7093eaa2d1f925db75f7eeebc6d1070b541b3cb9d828a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a8e25dd-0e56-5940-9542-b42f1d4c4483', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e06c117-f5b9-51aa-a37f-7981ca320252', 1), 'cfc5c0639aebdce43cf7093eaa2d1f925db75f7eeebc6d1070b541b3cb9d828a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843.mp3', 4257, '2026-09-13 08:32:58.769756', '49f1f5264fb23eeaad59689a5e74287bccda408b2f97482ebd1801cc2e9c630e', 'validated', '{"audio_key":"61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843","entity_key":"u_hybrid_collaboration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49f1f5264fb23eeaad59689a5e74287bccda408b2f97482ebd1801cc2e9c630e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_hybrid_collaboration_01_listen -> audio/generated/de-DE/utterances/61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('92107f1a-de7f-56fc-985a-1b4af5e2faeb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_hybrid_collaboration_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfc5c0639aebdce43cf7093eaa2d1f925db75f7eeebc6d1070b541b3cb9d828a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0adb356a-4b2c-5f06-8789-13b1044f22c4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('92107f1a-de7f-56fc-985a-1b4af5e2faeb', 1), 'cfc5c0639aebdce43cf7093eaa2d1f925db75f7eeebc6d1070b541b3cb9d828a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843.mp3', 4257, '2026-09-13 08:32:58.769756', '49f1f5264fb23eeaad59689a5e74287bccda408b2f97482ebd1801cc2e9c630e', 'validated', '{"audio_key":"61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843","entity_key":"ex_hybrid_collaboration_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49f1f5264fb23eeaad59689a5e74287bccda408b2f97482ebd1801cc2e9c630e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/61c6b9d56e1816524aeaf8c41da6adebdbcaedcd2dc910ace48f612f3011c843.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_03 -> audio/generated/de-DE/utterances/62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f8e8887-9e58-5d8f-83e9-673dfa2e4397', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dd763448b5754cbf6c67b8fcd2d38f8e68b02ce16955fa072816421619216e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25d39b4c-22ff-5e7e-82ae-e4a853b043c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f8e8887-9e58-5d8f-83e9-673dfa2e4397', 1), '2dd763448b5754cbf6c67b8fcd2d38f8e68b02ce16955fa072816421619216e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9.mp3', 5877, '2026-09-13 08:32:59.373950', '79826d7ea25c4bffd218efe4fda7e82732443e3aa7e0c921087476f1b43aa346', 'validated', '{"audio_key":"62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9","entity_key":"u_conflict_mediation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79826d7ea25c4bffd218efe4fda7e82732443e3aa7e0c921087476f1b43aa346","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_conflict_mediation_02_listen -> audio/generated/de-DE/utterances/62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cbcd2928-1b14-58c5-a61e-66f911b3d0b9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_conflict_mediation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dd763448b5754cbf6c67b8fcd2d38f8e68b02ce16955fa072816421619216e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae0ffe6e-2677-57b6-96eb-c461437254c0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cbcd2928-1b14-58c5-a61e-66f911b3d0b9', 1), '2dd763448b5754cbf6c67b8fcd2d38f8e68b02ce16955fa072816421619216e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9.mp3', 5877, '2026-09-13 08:32:59.373950', '79826d7ea25c4bffd218efe4fda7e82732443e3aa7e0c921087476f1b43aa346', 'validated', '{"audio_key":"62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9","entity_key":"ex_conflict_mediation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79826d7ea25c4bffd218efe4fda7e82732443e3aa7e0c921087476f1b43aa346","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/62233bd06bc5e0a1e9433e90c0261f26b2c91d1425f340305a18535a65c890d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rental_repairs_01 -> audio/generated/de-DE/utterances/6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6f39246-8a24-50a7-ba86-1da0c808c305', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rental_repairs_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '242973f7b4b50f64a55e7255bcf7fe68a56cbc90b47c1d7964322f96aa00b791'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f308934-1fc3-5056-93a0-a4a842570afa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6f39246-8a24-50a7-ba86-1da0c808c305', 1), '242973f7b4b50f64a55e7255bcf7fe68a56cbc90b47c1d7964322f96aa00b791',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc.mp3', 4780, '2026-09-13 08:33:00.176418', 'd34f0e4f633e3894863a7c9a8bfe6e31f1a137baa8c15b24e8f8725d18b8207d', 'validated', '{"audio_key":"6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc","entity_key":"u_rental_repairs_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d34f0e4f633e3894863a7c9a8bfe6e31f1a137baa8c15b24e8f8725d18b8207d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rental_repairs_01_listen -> audio/generated/de-DE/utterances/6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2063322e-f470-5921-9d5b-bb892b28c4f1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rental_repairs_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '242973f7b4b50f64a55e7255bcf7fe68a56cbc90b47c1d7964322f96aa00b791'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5c12077-4517-5ee4-88c5-633943365eb8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2063322e-f470-5921-9d5b-bb892b28c4f1', 1), '242973f7b4b50f64a55e7255bcf7fe68a56cbc90b47c1d7964322f96aa00b791',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc.mp3', 4780, '2026-09-13 08:33:00.176418', 'd34f0e4f633e3894863a7c9a8bfe6e31f1a137baa8c15b24e8f8725d18b8207d', 'validated', '{"audio_key":"6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc","entity_key":"ex_rental_repairs_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d34f0e4f633e3894863a7c9a8bfe6e31f1a137baa8c15b24e8f8725d18b8207d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c9db1028ad4637f5a9de2f47800b7ae236fb94191d306d7e587cf3e57bf91cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_technical_explanations_04 -> audio/generated/de-DE/utterances/6cc226973efefb01ce2399c02794f3b78bf8281927aa11e0bbbc485d9b3e4335.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('45868a2c-183e-5bc0-96e0-8b7ad93ebece', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_technical_explanations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8be76a67d223c24fb4ca9be3911786c4bbe869f6da05cc98a949793cd6b1bbf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1b57314-0964-52ce-8228-04f5e12eed6d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('45868a2c-183e-5bc0-96e0-8b7ad93ebece', 1), '8be76a67d223c24fb4ca9be3911786c4bbe869f6da05cc98a949793cd6b1bbf9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6cc226973efefb01ce2399c02794f3b78bf8281927aa11e0bbbc485d9b3e4335.mp3', 5250, '2026-09-13 08:33:00.806958', '0b345f85781fcf93bd39f5ac8acb78cc50a860fa5a73a6fdddf88632d4fa31cf', 'validated', '{"audio_key":"6cc226973efefb01ce2399c02794f3b78bf8281927aa11e0bbbc485d9b3e4335","entity_key":"u_technical_explanations_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b345f85781fcf93bd39f5ac8acb78cc50a860fa5a73a6fdddf88632d4fa31cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6cc226973efefb01ce2399c02794f3b78bf8281927aa11e0bbbc485d9b3e4335.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_03 -> audio/generated/de-DE/utterances/6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8b863250-6b3e-5429-9f4f-3f1c6d0c74bc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65ac5a284ee440cac8ec0e9d78a2cc00658c697bad520777b3c0ca8b3fea92d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('303fde50-a00e-55f6-9c70-cc1c54132a14', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8b863250-6b3e-5429-9f4f-3f1c6d0c74bc', 1), '65ac5a284ee440cac8ec0e9d78a2cc00658c697bad520777b3c0ca8b3fea92d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426.mp3', 4963, '2026-09-13 08:33:01.553071', 'a82590b2aaa2b0bab2f87621414db73126407c051878f41f3aeb9592eabde4fc', 'validated', '{"audio_key":"6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426","entity_key":"u_contracts_subscriptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a82590b2aaa2b0bab2f87621414db73126407c051878f41f3aeb9592eabde4fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_contracts_subscriptions_02_listen -> audio/generated/de-DE/utterances/6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6513ab37-863c-5728-8373-f3d25b052e1c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_contracts_subscriptions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65ac5a284ee440cac8ec0e9d78a2cc00658c697bad520777b3c0ca8b3fea92d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b4cc6a4-8e00-5a57-a8ae-41f3f43465a9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6513ab37-863c-5728-8373-f3d25b052e1c', 1), '65ac5a284ee440cac8ec0e9d78a2cc00658c697bad520777b3c0ca8b3fea92d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426.mp3', 4963, '2026-09-13 08:33:01.553071', 'a82590b2aaa2b0bab2f87621414db73126407c051878f41f3aeb9592eabde4fc', 'validated', '{"audio_key":"6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426","entity_key":"ex_contracts_subscriptions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a82590b2aaa2b0bab2f87621414db73126407c051878f41f3aeb9592eabde4fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6df7c6e6dd5e9a3022e82c0d0125119de1c7ff6f0c4ec7c54739b0baef284426.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_scenario_decisions_03 -> audio/generated/de-DE/utterances/7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('87378683-a4f4-560b-8113-7b94607e2737', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_scenario_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f588569272bc3daea4fb015ab784034f3b94c830920ef93552fc7766e9ec5640'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8804c1cf-3b9a-5b42-91c3-9658d2fc2ec0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('87378683-a4f4-560b-8113-7b94607e2737', 1), 'f588569272bc3daea4fb015ab784034f3b94c830920ef93552fc7766e9ec5640',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c.mp3', 5041, '2026-09-13 08:33:02.207297', '00021c1f4f36e04b66a87d86812207ff49e7f8198762e7b48c1abb7e2eb378d3', 'validated', '{"audio_key":"7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c","entity_key":"u_scenario_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00021c1f4f36e04b66a87d86812207ff49e7f8198762e7b48c1abb7e2eb378d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_scenario_decisions_02_listen -> audio/generated/de-DE/utterances/7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ae5a21ad-f429-54c3-a875-84a0e9f586fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_scenario_decisions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f588569272bc3daea4fb015ab784034f3b94c830920ef93552fc7766e9ec5640'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d074ba-9db2-5453-a591-026f0230e13b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ae5a21ad-f429-54c3-a875-84a0e9f586fd', 1), 'f588569272bc3daea4fb015ab784034f3b94c830920ef93552fc7766e9ec5640',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c.mp3', 5041, '2026-09-13 08:33:02.207297', '00021c1f4f36e04b66a87d86812207ff49e7f8198762e7b48c1abb7e2eb378d3', 'validated', '{"audio_key":"7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c","entity_key":"ex_scenario_decisions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00021c1f4f36e04b66a87d86812207ff49e7f8198762e7b48c1abb7e2eb378d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7114986bbb098b342c1bb9692197afff610db76f0756a49810a1489cd025d57c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hybrid_collaboration_03 -> audio/generated/de-DE/utterances/7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('df4595a8-05e1-5bd5-a52e-6f3e57731bd5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hybrid_collaboration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9b3a866c08acdb214680d2c50695935fea19715349048c5ff103a958e616118'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5f6028e-7dba-55c9-82c3-799fedc4cd34', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('df4595a8-05e1-5bd5-a52e-6f3e57731bd5', 1), 'a9b3a866c08acdb214680d2c50695935fea19715349048c5ff103a958e616118',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5.mp3', 5328, '2026-09-13 08:33:02.969829', 'd407e3c27b05258131b4e433a9fd64b5103164224916d63b15cbf2950106da2f', 'validated', '{"audio_key":"7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5","entity_key":"u_hybrid_collaboration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d407e3c27b05258131b4e433a9fd64b5103164224916d63b15cbf2950106da2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_hybrid_collaboration_02_listen -> audio/generated/de-DE/utterances/7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8a3684be-177d-513b-8be5-42d5f2798512', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_hybrid_collaboration_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9b3a866c08acdb214680d2c50695935fea19715349048c5ff103a958e616118'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0480678-9b4e-5e18-8076-3dece371bb9d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8a3684be-177d-513b-8be5-42d5f2798512', 1), 'a9b3a866c08acdb214680d2c50695935fea19715349048c5ff103a958e616118',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5.mp3', 5328, '2026-09-13 08:33:02.969829', 'd407e3c27b05258131b4e433a9fd64b5103164224916d63b15cbf2950106da2f', 'validated', '{"audio_key":"7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5","entity_key":"ex_hybrid_collaboration_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d407e3c27b05258131b4e433a9fd64b5103164224916d63b15cbf2950106da2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7134c2b3db857471c32a89daed04117fd6af1bfda8a5c417fe13117f004df0e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_networking_06 -> audio/generated/de-DE/utterances/7b225cee4f8ab6641fa8c9c55906f141f30ad2def54f4cf34fcd24c4c1374e32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e7057f2-f794-51b3-851d-37d02ccd6cbf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_networking_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4090e4285902937094f737422f2da493b196be59c88a672d6ac3c10cc22231f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb5193cd-d5ff-5a3f-86fd-34649b66e298', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e7057f2-f794-51b3-851d-37d02ccd6cbf', 1), '4090e4285902937094f737422f2da493b196be59c88a672d6ac3c10cc22231f3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7b225cee4f8ab6641fa8c9c55906f141f30ad2def54f4cf34fcd24c4c1374e32.mp3', 5459, '2026-09-13 08:33:03.698595', 'be7155640a60664ed137f264484db44c731e83cfd6e1fdc7595c00bd33c01cd0', 'validated', '{"audio_key":"7b225cee4f8ab6641fa8c9c55906f141f30ad2def54f4cf34fcd24c4c1374e32","entity_key":"u_professional_networking_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be7155640a60664ed137f264484db44c731e83cfd6e1fdc7595c00bd33c01cd0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7b225cee4f8ab6641fa8c9c55906f141f30ad2def54f4cf34fcd24c4c1374e32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_management_06 -> audio/generated/de-DE/utterances/7cd85f6b406dffff24290abbd34ada2062cbdbc530a0cd33276d51ceb4bd76f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('825daf99-177c-5ef3-9057-421813854d97', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_management_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79400f84ba315a01140e498da1ad5951561053ea7b45fd9c307e2967451f044a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d46c2b9-20b1-5e32-b5c5-7cedcc04117f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('825daf99-177c-5ef3-9057-421813854d97', 1), '79400f84ba315a01140e498da1ad5951561053ea7b45fd9c307e2967451f044a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7cd85f6b406dffff24290abbd34ada2062cbdbc530a0cd33276d51ceb4bd76f2.mp3', 5459, '2026-09-13 08:33:04.543733', '5269712eefed7b20e105c449453286094fad92c0ec9b0793c42a4c562b9ec2d4', 'validated', '{"audio_key":"7cd85f6b406dffff24290abbd34ada2062cbdbc530a0cd33276d51ceb4bd76f2","entity_key":"u_time_management_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5269712eefed7b20e105c449453286094fad92c0ec9b0793c42a4c562b9ec2d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7cd85f6b406dffff24290abbd34ada2062cbdbc530a0cd33276d51ceb4bd76f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rental_repairs_02 -> audio/generated/de-DE/utterances/7f7316a31cf35c4d0000ca03733eea47bf2ef9846f2fe773293868e0d618ea8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24437b25-c318-53e0-a2a1-99c3795ff7e7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rental_repairs_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9df434efd1d1700b53c87691ee2d4255bbd320b467207c4f5dcced5709b40006'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b05c663-3a57-512e-9a10-74feb9b95e83', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24437b25-c318-53e0-a2a1-99c3795ff7e7', 1), '9df434efd1d1700b53c87691ee2d4255bbd320b467207c4f5dcced5709b40006',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f7316a31cf35c4d0000ca03733eea47bf2ef9846f2fe773293868e0d618ea8a.mp3', 4963, '2026-09-13 08:33:05.072274', 'f6d58a1fa58476507d1d19132f2cb63e66f68920b4938783949deed312120106', 'validated', '{"audio_key":"7f7316a31cf35c4d0000ca03733eea47bf2ef9846f2fe773293868e0d618ea8a","entity_key":"u_rental_repairs_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6d58a1fa58476507d1d19132f2cb63e66f68920b4938783949deed312120106","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f7316a31cf35c4d0000ca03733eea47bf2ef9846f2fe773293868e0d618ea8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_01 -> audio/generated/de-DE/utterances/88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('47dff6c5-4b2c-55fa-a843-a3b3972487dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b0c6fd6952fb2f2a93b9414d52ab4a7afab3e73a47fd8572e1dc3a07204c4bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b61c0c8e-1dc7-5026-a063-674fbe6aedd0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('47dff6c5-4b2c-55fa-a843-a3b3972487dc', 1), '5b0c6fd6952fb2f2a93b9414d52ab4a7afab3e73a47fd8572e1dc3a07204c4bb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1.mp3', 5276, '2026-09-13 08:33:05.965567', 'f48fc0b6697a2584f3eb25dac9a96179951a5b0879b75e0c24e56b2bae67998c', 'validated', '{"audio_key":"88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1","entity_key":"u_contracts_subscriptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f48fc0b6697a2584f3eb25dac9a96179951a5b0879b75e0c24e56b2bae67998c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_contracts_subscriptions_01_listen -> audio/generated/de-DE/utterances/88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0ccff627-8b36-5a09-b621-0e2f0e758a97', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_contracts_subscriptions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b0c6fd6952fb2f2a93b9414d52ab4a7afab3e73a47fd8572e1dc3a07204c4bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e7acc65-15fe-5de2-b483-9cc435d8ea85', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0ccff627-8b36-5a09-b621-0e2f0e758a97', 1), '5b0c6fd6952fb2f2a93b9414d52ab4a7afab3e73a47fd8572e1dc3a07204c4bb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1.mp3', 5276, '2026-09-13 08:33:05.965567', 'f48fc0b6697a2584f3eb25dac9a96179951a5b0879b75e0c24e56b2bae67998c', 'validated', '{"audio_key":"88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1","entity_key":"ex_contracts_subscriptions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f48fc0b6697a2584f3eb25dac9a96179951a5b0879b75e0c24e56b2bae67998c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/88c25e0546fb0bb0408bf341c9b8c208ab1f8d3c95aeff9fb0bf3806df6bb2d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_01 -> audio/generated/de-DE/utterances/8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('417edcc8-81f8-5465-878c-2eba60f6b81a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2869019a68b6bd19ca192136e97d663e0c4c2c4732460bec602d1e30a4d177ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a357987-8898-501c-8c6c-79b21d3414a9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('417edcc8-81f8-5465-878c-2eba60f6b81a', 1), '2869019a68b6bd19ca192136e97d663e0c4c2c4732460bec602d1e30a4d177ca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9.mp3', 5459, '2026-09-13 08:33:06.563240', '31825a2475483d38ccc946a1ca5ed42c3d2d1f6f7d0d0ba63fe9906dbab26945', 'validated', '{"audio_key":"8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9","entity_key":"u_conflict_mediation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31825a2475483d38ccc946a1ca5ed42c3d2d1f6f7d0d0ba63fe9906dbab26945","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_conflict_mediation_01_listen -> audio/generated/de-DE/utterances/8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('53b7a360-7743-550c-9c86-dfd29b06b6fa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_conflict_mediation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2869019a68b6bd19ca192136e97d663e0c4c2c4732460bec602d1e30a4d177ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e63e3e6b-c025-5c4a-a224-3e2c506a4149', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('53b7a360-7743-550c-9c86-dfd29b06b6fa', 1), '2869019a68b6bd19ca192136e97d663e0c4c2c4732460bec602d1e30a4d177ca',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9.mp3', 5459, '2026-09-13 08:33:06.563240', '31825a2475483d38ccc946a1ca5ed42c3d2d1f6f7d0d0ba63fe9906dbab26945', 'validated', '{"audio_key":"8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9","entity_key":"ex_conflict_mediation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31825a2475483d38ccc946a1ca5ed42c3d2d1f6f7d0d0ba63fe9906dbab26945","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8adc3bf6282019296ddb62f8c0647f7f8549f65519058aea0bd2b47f623380d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hybrid_collaboration_05 -> audio/generated/de-DE/utterances/8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('97e51861-d155-50cc-9742-e547d32d1ddc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hybrid_collaboration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '472b33a5c282a22e45834cd8f71b8a43992e610babbe0bb3a2f852be5ec001a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb601a2c-f488-5f73-95f4-951d4c47309b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('97e51861-d155-50cc-9742-e547d32d1ddc', 1), '472b33a5c282a22e45834cd8f71b8a43992e610babbe0bb3a2f852be5ec001a7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6.mp3', 5041, '2026-09-13 08:33:07.391841', '0bdc36259999b1c124a296b5f600e9dfd6bdd66ece76069e9e747d615f84d6f0', 'validated', '{"audio_key":"8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6","entity_key":"u_hybrid_collaboration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bdc36259999b1c124a296b5f600e9dfd6bdd66ece76069e9e747d615f84d6f0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_hybrid_collaboration_03_listen -> audio/generated/de-DE/utterances/8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('61098a07-2b9d-531d-947e-12fa3bc400ee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_hybrid_collaboration_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '472b33a5c282a22e45834cd8f71b8a43992e610babbe0bb3a2f852be5ec001a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcd1750f-be58-5564-87cd-4eb510afe280', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('61098a07-2b9d-531d-947e-12fa3bc400ee', 1), '472b33a5c282a22e45834cd8f71b8a43992e610babbe0bb3a2f852be5ec001a7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6.mp3', 5041, '2026-09-13 08:33:07.391841', '0bdc36259999b1c124a296b5f600e9dfd6bdd66ece76069e9e747d615f84d6f0', 'validated', '{"audio_key":"8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6","entity_key":"ex_hybrid_collaboration_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bdc36259999b1c124a296b5f600e9dfd6bdd66ece76069e9e747d615f84d6f0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8fd0878ba6d409403b10ec1211c5810aefd2cc8550c2a0e0453ee4421e8427d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_technical_explanations_01 -> audio/generated/de-DE/utterances/99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('62fe6999-a902-586f-8ad6-43d3fe702e8e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_technical_explanations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c670dca2753d2d1b270b4317cd31035c3d4abc47a59d8e7e4976e658df49c332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3380e9f5-d8cb-5498-8754-c8bc39ab6b80', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('62fe6999-a902-586f-8ad6-43d3fe702e8e', 1), 'c670dca2753d2d1b270b4317cd31035c3d4abc47a59d8e7e4976e658df49c332',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747.mp3', 4075, '2026-09-13 08:33:07.814003', '9ccd103bc2ec4a120fa4186118f9c1f1f90129ff14ee9b7301bb73cb69a20609', 'validated', '{"audio_key":"99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747","entity_key":"u_technical_explanations_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ccd103bc2ec4a120fa4186118f9c1f1f90129ff14ee9b7301bb73cb69a20609","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_technical_explanations_01_listen -> audio/generated/de-DE/utterances/99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ca62ed34-526a-5b15-801d-8001de4500b7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_technical_explanations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c670dca2753d2d1b270b4317cd31035c3d4abc47a59d8e7e4976e658df49c332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1b70004-e627-5e88-b9a9-40be36f08bf1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ca62ed34-526a-5b15-801d-8001de4500b7', 1), 'c670dca2753d2d1b270b4317cd31035c3d4abc47a59d8e7e4976e658df49c332',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747.mp3', 4075, '2026-09-13 08:33:07.814003', '9ccd103bc2ec4a120fa4186118f9c1f1f90129ff14ee9b7301bb73cb69a20609', 'validated', '{"audio_key":"99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747","entity_key":"ex_technical_explanations_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ccd103bc2ec4a120fa4186118f9c1f1f90129ff14ee9b7301bb73cb69a20609","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99b66e5854f4d8600dd5cf72cd0e17ca38b78f9ceb59b6a4f555fd64a8190747.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_event_organization_03 -> audio/generated/de-DE/utterances/9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d23984e-5d82-5655-afd1-7a34d00f1b91', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_event_organization_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b4f9525102ba888b0eda118e25e63dcfb0c7765e79e0cd5c29571d4797ce27f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9312842-0049-5972-9542-a399ac2bc804', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d23984e-5d82-5655-afd1-7a34d00f1b91', 1), '3b4f9525102ba888b0eda118e25e63dcfb0c7765e79e0cd5c29571d4797ce27f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb.mp3', 3422, '2026-09-13 08:33:08.595924', 'dbc2f903bd6836c947cd19894388b0efc3d632af684bf2d8fcbb19d53ee668e1', 'validated', '{"audio_key":"9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb","entity_key":"u_event_organization_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbc2f903bd6836c947cd19894388b0efc3d632af684bf2d8fcbb19d53ee668e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_event_organization_02_listen -> audio/generated/de-DE/utterances/9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c463c759-98ed-554a-ac0e-0dae7dc3bd16', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_event_organization_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b4f9525102ba888b0eda118e25e63dcfb0c7765e79e0cd5c29571d4797ce27f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2073a7a-921d-55fc-9df2-da9c0adbd99a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c463c759-98ed-554a-ac0e-0dae7dc3bd16', 1), '3b4f9525102ba888b0eda118e25e63dcfb0c7765e79e0cd5c29571d4797ce27f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb.mp3', 3422, '2026-09-13 08:33:08.595924', 'dbc2f903bd6836c947cd19894388b0efc3d632af684bf2d8fcbb19d53ee668e1', 'validated', '{"audio_key":"9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb","entity_key":"ex_event_organization_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbc2f903bd6836c947cd19894388b0efc3d632af684bf2d8fcbb19d53ee668e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9b98f3dbe25fd798410c368f819909d269615c3ed2ad5857618ec3ef0b265ecb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_bureaucracy_appointments_03 -> audio/generated/de-DE/utterances/9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0713086-1437-5f87-8bf7-ea12ba558579', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_bureaucracy_appointments_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd971fe44dce195674b9c567c029a90aaa24399ff737cbb8187014cc849579ebd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb5121c6-6986-5ddf-8aa6-628620941faf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0713086-1437-5f87-8bf7-ea12ba558579', 1), 'd971fe44dce195674b9c567c029a90aaa24399ff737cbb8187014cc849579ebd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386.mp3', 4075, '2026-09-13 08:33:09.227031', '6252bece831a6ac5e0cfacd98591247739c904f3f047ed5f66e3753b406142d4', 'validated', '{"audio_key":"9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386","entity_key":"u_bureaucracy_appointments_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6252bece831a6ac5e0cfacd98591247739c904f3f047ed5f66e3753b406142d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_bureaucracy_appointments_02_listen -> audio/generated/de-DE/utterances/9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7fb5b6ab-0aaa-5ded-b5f5-95d56195460b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_bureaucracy_appointments_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd971fe44dce195674b9c567c029a90aaa24399ff737cbb8187014cc849579ebd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('577809c1-e5b3-52ce-8e29-c2c6bca48a0a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7fb5b6ab-0aaa-5ded-b5f5-95d56195460b', 1), 'd971fe44dce195674b9c567c029a90aaa24399ff737cbb8187014cc849579ebd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386.mp3', 4075, '2026-09-13 08:33:09.227031', '6252bece831a6ac5e0cfacd98591247739c904f3f047ed5f66e3753b406142d4', 'validated', '{"audio_key":"9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386","entity_key":"ex_bureaucracy_appointments_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6252bece831a6ac5e0cfacd98591247739c904f3f047ed5f66e3753b406142d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9d568d1c362359a428638f3e27209a7f4e66f3ca8e03da5558f5052e512f5386.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_networking_04 -> audio/generated/de-DE/utterances/9ec2acfc04f636a508d43576e3f2ea7dbef3de0851fd1b691883fd7091757afe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c1c33cc1-6329-5d85-a9e4-19a6c2d52205', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_networking_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb970865b7b88e1bd6e29e0ed37760f53ab0ccc7b4b971f4b1c9b44f15b7665d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e55ebe5-4215-573b-9e70-15783b29ca66', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c1c33cc1-6329-5d85-a9e4-19a6c2d52205', 1), 'cb970865b7b88e1bd6e29e0ed37760f53ab0ccc7b4b971f4b1c9b44f15b7665d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ec2acfc04f636a508d43576e3f2ea7dbef3de0851fd1b691883fd7091757afe.mp3', 4545, '2026-09-13 08:33:09.931595', '6414d9507e3d432bab3789f43d448f1afc7b72ba4ba6b094d292b01da841cddd', 'validated', '{"audio_key":"9ec2acfc04f636a508d43576e3f2ea7dbef3de0851fd1b691883fd7091757afe","entity_key":"u_professional_networking_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6414d9507e3d432bab3789f43d448f1afc7b72ba4ba6b094d292b01da841cddd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ec2acfc04f636a508d43576e3f2ea7dbef3de0851fd1b691883fd7091757afe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_management_04 -> audio/generated/de-DE/utterances/a9ef32c1f4b94536db2667ffcfbeab2c1d177c2a9b9d52762e20a53e542cad09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e9b58063-b6cb-5994-9ac7-9adf955f19e6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_management_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d3dfcebd23f44f03855f33e14436237a066275b3b77dd9a710563f387e0a93b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f4dabd9-24f4-584e-9008-25f2d24ac933', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e9b58063-b6cb-5994-9ac7-9adf955f19e6', 1), '6d3dfcebd23f44f03855f33e14436237a066275b3b77dd9a710563f387e0a93b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a9ef32c1f4b94536db2667ffcfbeab2c1d177c2a9b9d52762e20a53e542cad09.mp3', 3474, '2026-09-13 08:33:10.407071', 'cc377635b544259ae431c5384fc83d39f61499334227ecdb9ec72a7862763411', 'validated', '{"audio_key":"a9ef32c1f4b94536db2667ffcfbeab2c1d177c2a9b9d52762e20a53e542cad09","entity_key":"u_time_management_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc377635b544259ae431c5384fc83d39f61499334227ecdb9ec72a7862763411","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a9ef32c1f4b94536db2667ffcfbeab2c1d177c2a9b9d52762e20a53e542cad09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_04 -> audio/generated/de-DE/utterances/b3a64a87f1f2c096eb07ac4118ccc1e555577554aa941607dde07c4d64ba30a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4f85b3ac-2918-5518-9458-94f5763cccd9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80f02d357505a47dcd2fd9da85bbd42b32efeff8670576d4dfb862537a1513e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8978a15b-f80d-5cbd-ba1d-dd6f17c578b0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4f85b3ac-2918-5518-9458-94f5763cccd9', 1), '80f02d357505a47dcd2fd9da85bbd42b32efeff8670576d4dfb862537a1513e1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b3a64a87f1f2c096eb07ac4118ccc1e555577554aa941607dde07c4d64ba30a7.mp3', 3840, '2026-09-13 08:33:11.143802', '6d38e70522597252401b1552a74aee541e1537c36253e513f779318c989518df', 'validated', '{"audio_key":"b3a64a87f1f2c096eb07ac4118ccc1e555577554aa941607dde07c4d64ba30a7","entity_key":"u_contracts_subscriptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d38e70522597252401b1552a74aee541e1537c36253e513f779318c989518df","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b3a64a87f1f2c096eb07ac4118ccc1e555577554aa941607dde07c4d64ba30a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_bureaucracy_appointments_01 -> audio/generated/de-DE/utterances/b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea172c10-3de6-55b1-9327-548bceeeeb85', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_bureaucracy_appointments_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '719eb09a036504a9ec2ea47804c7fa54a96c20e081523da6baf6c72a336ead71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d6f75f3-1dea-5466-84fd-2b920b11264c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea172c10-3de6-55b1-9327-548bceeeeb85', 1), '719eb09a036504a9ec2ea47804c7fa54a96c20e081523da6baf6c72a336ead71',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b.mp3', 5093, '2026-09-13 08:33:11.832421', '470cd963a603ba73b1bd9b21602c4a25c553b89b694e5f23c9b93dd013e2389d', 'validated', '{"audio_key":"b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b","entity_key":"u_bureaucracy_appointments_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"470cd963a603ba73b1bd9b21602c4a25c553b89b694e5f23c9b93dd013e2389d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_bureaucracy_appointments_01_listen -> audio/generated/de-DE/utterances/b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('00ff8995-cf90-51ee-bb93-f92bd318765c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_bureaucracy_appointments_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '719eb09a036504a9ec2ea47804c7fa54a96c20e081523da6baf6c72a336ead71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a98e125-fb6d-522c-a428-4cc3b92b93e8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('00ff8995-cf90-51ee-bb93-f92bd318765c', 1), '719eb09a036504a9ec2ea47804c7fa54a96c20e081523da6baf6c72a336ead71',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b.mp3', 5093, '2026-09-13 08:33:11.832421', '470cd963a603ba73b1bd9b21602c4a25c553b89b694e5f23c9b93dd013e2389d', 'validated', '{"audio_key":"b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b","entity_key":"ex_bureaucracy_appointments_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"470cd963a603ba73b1bd9b21602c4a25c553b89b694e5f23c9b93dd013e2389d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b5814b1f6901f1211c684050a0b6551afc318702018168098c5d9439f1afb23b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_networking_03 -> audio/generated/de-DE/utterances/b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cde951a5-a153-51af-b298-615724697059', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_networking_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b082f16033e81cde79dd548192709e02ee6c05b6cb070317550c412ff18be218'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7650b3b3-2e72-520a-8b75-5ede11953d03', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cde951a5-a153-51af-b298-615724697059', 1), 'b082f16033e81cde79dd548192709e02ee6c05b6cb070317550c412ff18be218',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11.mp3', 4623, '2026-09-13 08:33:12.549397', '0b1168f58e60ddcb6ff904a755a538d1a841f5beaa1af91c236d5cb69fb14a7e', 'validated', '{"audio_key":"b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11","entity_key":"u_professional_networking_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b1168f58e60ddcb6ff904a755a538d1a841f5beaa1af91c236d5cb69fb14a7e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_professional_networking_02_listen -> audio/generated/de-DE/utterances/b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a7433bc3-f62f-5a4a-90b4-861a54a71745', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_professional_networking_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b082f16033e81cde79dd548192709e02ee6c05b6cb070317550c412ff18be218'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b5f0315-eb90-570d-a738-12917a29c7fa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a7433bc3-f62f-5a4a-90b4-861a54a71745', 1), 'b082f16033e81cde79dd548192709e02ee6c05b6cb070317550c412ff18be218',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11.mp3', 4623, '2026-09-13 08:33:12.549397', '0b1168f58e60ddcb6ff904a755a538d1a841f5beaa1af91c236d5cb69fb14a7e', 'validated', '{"audio_key":"b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11","entity_key":"ex_professional_networking_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b1168f58e60ddcb6ff904a755a538d1a841f5beaa1af91c236d5cb69fb14a7e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b7e8981ec86b5b35681c997174e5778970839cfda228948e9d79ea350de10c11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_management_05 -> audio/generated/de-DE/utterances/b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26223d56-ca70-5c60-8185-f066983f1eb0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_management_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93e6dacd3c7af9f72e0c0c995577250a3b0b65209c08a7f5f54857bf9e3b962e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('605ec271-8bb3-50b7-ad3d-f52bb806732e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26223d56-ca70-5c60-8185-f066983f1eb0', 1), '93e6dacd3c7af9f72e0c0c995577250a3b0b65209c08a7f5f54857bf9e3b962e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d.mp3', 5015, '2026-09-13 08:33:13.274550', '3050407c6a33708ab81ec9e1e697f9f4157b62a7595f4814a60c273de1907485', 'validated', '{"audio_key":"b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d","entity_key":"u_time_management_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3050407c6a33708ab81ec9e1e697f9f4157b62a7595f4814a60c273de1907485","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_time_management_03_listen -> audio/generated/de-DE/utterances/b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9a890826-0ed3-529e-8607-41782337668e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_time_management_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93e6dacd3c7af9f72e0c0c995577250a3b0b65209c08a7f5f54857bf9e3b962e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65276db7-1a49-5592-8ad0-ced7f08aa5a7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9a890826-0ed3-529e-8607-41782337668e', 1), '93e6dacd3c7af9f72e0c0c995577250a3b0b65209c08a7f5f54857bf9e3b962e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d.mp3', 5015, '2026-09-13 08:33:13.274550', '3050407c6a33708ab81ec9e1e697f9f4157b62a7595f4814a60c273de1907485', 'validated', '{"audio_key":"b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d","entity_key":"ex_time_management_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3050407c6a33708ab81ec9e1e697f9f4157b62a7595f4814a60c273de1907485","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b884dfe3776728ce33ac4399ad07cc74fd9b83f684d9215942152086464a3a1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_management_03 -> audio/generated/de-DE/utterances/b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7ffed720-aebd-5517-88fb-2ed1f27b62f8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_management_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1272ffc20ef06a969d741987a07b67c19bae098e78e22089d6f01ae09f58a54c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a84021d5-b433-5911-a2b8-ff1b16a8173e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7ffed720-aebd-5517-88fb-2ed1f27b62f8', 1), '1272ffc20ef06a969d741987a07b67c19bae098e78e22089d6f01ae09f58a54c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98.mp3', 4362, '2026-09-13 08:33:13.875100', '4b2f28a5f98749a5ff38b3c80615dc3ac88342e3ae12bd7ca0e45c0318367dd9', 'validated', '{"audio_key":"b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98","entity_key":"u_time_management_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b2f28a5f98749a5ff38b3c80615dc3ac88342e3ae12bd7ca0e45c0318367dd9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_time_management_02_listen -> audio/generated/de-DE/utterances/b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3dd8ab94-8a09-503b-99aa-dbd63b1cda04', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_time_management_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1272ffc20ef06a969d741987a07b67c19bae098e78e22089d6f01ae09f58a54c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e185d60-2da3-503a-acf8-bd206daf4b4e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3dd8ab94-8a09-503b-99aa-dbd63b1cda04', 1), '1272ffc20ef06a969d741987a07b67c19bae098e78e22089d6f01ae09f58a54c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98.mp3', 4362, '2026-09-13 08:33:13.875100', '4b2f28a5f98749a5ff38b3c80615dc3ac88342e3ae12bd7ca0e45c0318367dd9', 'validated', '{"audio_key":"b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98","entity_key":"ex_time_management_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b2f28a5f98749a5ff38b3c80615dc3ac88342e3ae12bd7ca0e45c0318367dd9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8ab69208c0f146eedc1de35e007b22a9307ce988a9e480fa2d8fccc5c3eab98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conflict_mediation_04 -> audio/generated/de-DE/utterances/cd9e987bd8ab4b0633522974d12115df031f5a5b3dafad8fe769fdfe72e7ca77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('694b6c93-b13e-5134-a1d1-bd689b5259ba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conflict_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72f6f3aa62c89860c63ed4089160d532c3aa7d8ef3cb081cf8874d44c7863d12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c992846d-9734-5aac-87ec-29a3aa30855d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('694b6c93-b13e-5134-a1d1-bd689b5259ba', 1), '72f6f3aa62c89860c63ed4089160d532c3aa7d8ef3cb081cf8874d44c7863d12',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd9e987bd8ab4b0633522974d12115df031f5a5b3dafad8fe769fdfe72e7ca77.mp3', 5564, '2026-09-13 08:33:14.715682', 'fa68380840ff4364e9bfc948dbf0d72a75ac6c2e6094ac3aed71784ae547e94e', 'validated', '{"audio_key":"cd9e987bd8ab4b0633522974d12115df031f5a5b3dafad8fe769fdfe72e7ca77","entity_key":"u_conflict_mediation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa68380840ff4364e9bfc948dbf0d72a75ac6c2e6094ac3aed71784ae547e94e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd9e987bd8ab4b0633522974d12115df031f5a5b3dafad8fe769fdfe72e7ca77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rental_repairs_04 -> audio/generated/de-DE/utterances/d30f53303293ccfef0656fdee7d42038e4c009e3a686918ab815668f281d1fdb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e21cfe95-72fc-5543-aac3-4826d5ede51b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rental_repairs_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bcabf815b70c15a8bdf4ca9e34458fe7e1e85835ea43a4396e6bae3436d14a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('378c9e74-60c5-5dcf-a99c-d614f0cf9077', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e21cfe95-72fc-5543-aac3-4826d5ede51b', 1), '9bcabf815b70c15a8bdf4ca9e34458fe7e1e85835ea43a4396e6bae3436d14a7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d30f53303293ccfef0656fdee7d42038e4c009e3a686918ab815668f281d1fdb.mp3', 4675, '2026-09-13 08:33:15.249446', 'be4b346a85b1833e90795e60501d767453beef83d5a19bbfc5ed4fa348f7c017', 'validated', '{"audio_key":"d30f53303293ccfef0656fdee7d42038e4c009e3a686918ab815668f281d1fdb","entity_key":"u_rental_repairs_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be4b346a85b1833e90795e60501d767453beef83d5a19bbfc5ed4fa348f7c017","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d30f53303293ccfef0656fdee7d42038e4c009e3a686918ab815668f281d1fdb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rental_repairs_06 -> audio/generated/de-DE/utterances/db068f0239adfdb322a4efcb2ccbd0b2effb1ff150ae553a863e3360851e6470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c59a1925-6363-5245-831f-68834adf1683', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rental_repairs_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3678cd227900899a8486726c9283ed6720fc8541feef04bbe9ee69130aca9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76bb6c50-3648-55cf-b976-6ca40f995d4f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c59a1925-6363-5245-831f-68834adf1683', 1), '9d3678cd227900899a8486726c9283ed6720fc8541feef04bbe9ee69130aca9b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/db068f0239adfdb322a4efcb2ccbd0b2effb1ff150ae553a863e3360851e6470.mp3', 6687, '2026-09-13 08:33:16.390445', '6f5b6a846830e90153eba272ae157c09ca6186f259906a84edcbecef6c8e2558', 'validated', '{"audio_key":"db068f0239adfdb322a4efcb2ccbd0b2effb1ff150ae553a863e3360851e6470","entity_key":"u_rental_repairs_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f5b6a846830e90153eba272ae157c09ca6186f259906a84edcbecef6c8e2558","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/db068f0239adfdb322a4efcb2ccbd0b2effb1ff150ae553a863e3360851e6470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_bureaucracy_appointments_05 -> audio/generated/de-DE/utterances/e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d21bb0b-63c8-5454-90eb-fe01064acdc9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_bureaucracy_appointments_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c2951795050fd52dbccf60ced371af3c15c4fc735931009646b7a348e45bbc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a68a8e3-ac72-5858-9719-74245b3af116', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d21bb0b-63c8-5454-90eb-fe01064acdc9', 1), '3c2951795050fd52dbccf60ced371af3c15c4fc735931009646b7a348e45bbc9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122.mp3', 5564, '2026-09-13 08:33:16.711738', '19714f41cc2aff63128bf8246b03b67bdf1daad24111ad44956fab3ece8172dd', 'validated', '{"audio_key":"e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122","entity_key":"u_bureaucracy_appointments_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"19714f41cc2aff63128bf8246b03b67bdf1daad24111ad44956fab3ece8172dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_bureaucracy_appointments_03_listen -> audio/generated/de-DE/utterances/e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6da762f9-9144-5100-9709-6ede587b1a7e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_bureaucracy_appointments_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c2951795050fd52dbccf60ced371af3c15c4fc735931009646b7a348e45bbc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80bfe361-54a2-5bd2-8feb-1e22c0a5a544', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6da762f9-9144-5100-9709-6ede587b1a7e', 1), '3c2951795050fd52dbccf60ced371af3c15c4fc735931009646b7a348e45bbc9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122.mp3', 5564, '2026-09-13 08:33:16.711738', '19714f41cc2aff63128bf8246b03b67bdf1daad24111ad44956fab3ece8172dd', 'validated', '{"audio_key":"e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122","entity_key":"ex_bureaucracy_appointments_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"19714f41cc2aff63128bf8246b03b67bdf1daad24111ad44956fab3ece8172dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e180ba1f628de239be6dbb87ecc03684ad18b275697bdeb636bed8c2fb8bf122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hybrid_collaboration_04 -> audio/generated/de-DE/utterances/e218b6b7851d3bbe1b6b148d285e2d62bb290c215db7e9e32e4e12d72b25a5cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bbe68ea5-830f-5fe5-b553-036e1a531766', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hybrid_collaboration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4f3593d9e92accd7ad67b72a70543f40638f0f6e36103b687b01d0e9f0f646d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd38905-7c96-565b-9c2a-cb729ae5a678', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bbe68ea5-830f-5fe5-b553-036e1a531766', 1), 'a4f3593d9e92accd7ad67b72a70543f40638f0f6e36103b687b01d0e9f0f646d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e218b6b7851d3bbe1b6b148d285e2d62bb290c215db7e9e32e4e12d72b25a5cd.mp3', 5929, '2026-09-13 08:33:17.965029', '9e7319b029c4ba74ec9b34b56910546cbe1c8c8bc0b9074ba5ec07f702e96db4', 'validated', '{"audio_key":"e218b6b7851d3bbe1b6b148d285e2d62bb290c215db7e9e32e4e12d72b25a5cd","entity_key":"u_hybrid_collaboration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e7319b029c4ba74ec9b34b56910546cbe1c8c8bc0b9074ba5ec07f702e96db4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e218b6b7851d3bbe1b6b148d285e2d62bb290c215db7e9e32e4e12d72b25a5cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_networking_01 -> audio/generated/de-DE/utterances/e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54043f2f-ac9a-5d60-b5e9-805309bc1948', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_networking_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '289bd7efde96e7b039807d44c5a2ee7b97b922ba2ce96d579338e607284d82d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1b5d4de-259c-5a68-93a9-768f76f1743a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54043f2f-ac9a-5d60-b5e9-805309bc1948', 1), '289bd7efde96e7b039807d44c5a2ee7b97b922ba2ce96d579338e607284d82d1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf.mp3', 4597, '2026-09-13 08:33:18.071231', 'aaed8ed6432aff3d1b4d6de0a6079f1cefc98677a925b5b315899cc40cce0ecb', 'validated', '{"audio_key":"e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf","entity_key":"u_professional_networking_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaed8ed6432aff3d1b4d6de0a6079f1cefc98677a925b5b315899cc40cce0ecb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_professional_networking_01_listen -> audio/generated/de-DE/utterances/e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('13b32284-ab02-540a-b341-05187b6d4850', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_professional_networking_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '289bd7efde96e7b039807d44c5a2ee7b97b922ba2ce96d579338e607284d82d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bb791d8-4c15-582e-a061-5b1a479e7ceb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('13b32284-ab02-540a-b341-05187b6d4850', 1), '289bd7efde96e7b039807d44c5a2ee7b97b922ba2ce96d579338e607284d82d1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf.mp3', 4597, '2026-09-13 08:33:18.071231', 'aaed8ed6432aff3d1b4d6de0a6079f1cefc98677a925b5b315899cc40cce0ecb', 'validated', '{"audio_key":"e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf","entity_key":"ex_professional_networking_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaed8ed6432aff3d1b4d6de0a6079f1cefc98677a925b5b315899cc40cce0ecb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e9248505b641474827e9cefe2e3063889942e5ecdcad5dc3abb1487639914abf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_professional_networking_05 -> audio/generated/de-DE/utterances/eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('68b45e2a-ec8d-5fc9-aad0-6f0e0aaa7b55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_professional_networking_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6082a93d3fef0827a2606d582c8ea656fd61d28f1bac4d02268b618b6840529d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a4e5c1f-b680-5022-9803-29bf6b258908', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('68b45e2a-ec8d-5fc9-aad0-6f0e0aaa7b55', 1), '6082a93d3fef0827a2606d582c8ea656fd61d28f1bac4d02268b618b6840529d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0.mp3', 4493, '2026-09-13 08:33:19.259661', '33d6c93a66770abe97c4a26503ac4292c4abe633a68aa161ff6d07fdaa71c3e1', 'validated', '{"audio_key":"eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0","entity_key":"u_professional_networking_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33d6c93a66770abe97c4a26503ac4292c4abe633a68aa161ff6d07fdaa71c3e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_professional_networking_03_listen -> audio/generated/de-DE/utterances/eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44ff0600-11c1-5939-b25e-9bf21435dba2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_professional_networking_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6082a93d3fef0827a2606d582c8ea656fd61d28f1bac4d02268b618b6840529d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef2a0361-1421-52a7-874e-2f297102e86e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44ff0600-11c1-5939-b25e-9bf21435dba2', 1), '6082a93d3fef0827a2606d582c8ea656fd61d28f1bac4d02268b618b6840529d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0.mp3', 4493, '2026-09-13 08:33:19.259661', '33d6c93a66770abe97c4a26503ac4292c4abe633a68aa161ff6d07fdaa71c3e1', 'validated', '{"audio_key":"eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0","entity_key":"ex_professional_networking_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33d6c93a66770abe97c4a26503ac4292c4abe633a68aa161ff6d07fdaa71c3e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eaee60452921dc0621e9a3a755fdc14e597d229cc370928d012b5aa712fa81a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_event_organization_05 -> audio/generated/de-DE/utterances/ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e3658cd4-7010-56cd-bccd-da85e3e4ff94', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_event_organization_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1493fe066daa48b5f881c6bbfc5a59bd3e5f09e5ce0d989cc20a0d8ba70d4b41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ebf8df2-fbcf-513f-be2d-0c2457502e34', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e3658cd4-7010-56cd-bccd-da85e3e4ff94', 1), '1493fe066daa48b5f881c6bbfc5a59bd3e5f09e5ce0d989cc20a0d8ba70d4b41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90.mp3', 4728, '2026-09-13 08:33:19.443712', '3a78db13995387da08373bdaffe130f3109ee84c06931f1df0fe60f0779ec38a', 'validated', '{"audio_key":"ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90","entity_key":"u_event_organization_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a78db13995387da08373bdaffe130f3109ee84c06931f1df0fe60f0779ec38a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_event_organization_03_listen -> audio/generated/de-DE/utterances/ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0e9fdf9d-a0ab-5478-9514-9cd2fe5360b0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_event_organization_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1493fe066daa48b5f881c6bbfc5a59bd3e5f09e5ce0d989cc20a0d8ba70d4b41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2091b643-cb62-528e-9613-505cd41865a5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0e9fdf9d-a0ab-5478-9514-9cd2fe5360b0', 1), '1493fe066daa48b5f881c6bbfc5a59bd3e5f09e5ce0d989cc20a0d8ba70d4b41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90.mp3', 4728, '2026-09-13 08:33:19.443712', '3a78db13995387da08373bdaffe130f3109ee84c06931f1df0fe60f0779ec38a', 'validated', '{"audio_key":"ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90","entity_key":"ex_event_organization_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a78db13995387da08373bdaffe130f3109ee84c06931f1df0fe60f0779ec38a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ec4c40a4f29e11172818632d0e2c9e7a526999e98fe747e8fd1fd3949219ed90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rental_repairs_05 -> audio/generated/de-DE/utterances/f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('43c3300c-d50a-514a-bebc-54446eebd72d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rental_repairs_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64bb369b7fc4bda165ccfe5e7960b5eb7ab28a0bab7543dae102a38192038fcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc731985-db32-5ac7-8db7-a2b229163193', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('43c3300c-d50a-514a-bebc-54446eebd72d', 1), '64bb369b7fc4bda165ccfe5e7960b5eb7ab28a0bab7543dae102a38192038fcc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33.mp3', 5877, '2026-09-13 08:33:20.717899', 'd3d44efb04a29d556e670364535831956478dc7d04d70ed203f3121a607ff8f8', 'validated', '{"audio_key":"f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33","entity_key":"u_rental_repairs_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3d44efb04a29d556e670364535831956478dc7d04d70ed203f3121a607ff8f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rental_repairs_03_listen -> audio/generated/de-DE/utterances/f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('05e2bb3d-d6eb-51d9-b4f4-a5ad97501881', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rental_repairs_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64bb369b7fc4bda165ccfe5e7960b5eb7ab28a0bab7543dae102a38192038fcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b5a08d2-11fa-5d55-b97e-ef81158878aa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('05e2bb3d-d6eb-51d9-b4f4-a5ad97501881', 1), '64bb369b7fc4bda165ccfe5e7960b5eb7ab28a0bab7543dae102a38192038fcc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33.mp3', 5877, '2026-09-13 08:33:20.717899', 'd3d44efb04a29d556e670364535831956478dc7d04d70ed203f3121a607ff8f8', 'validated', '{"audio_key":"f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33","entity_key":"ex_rental_repairs_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3d44efb04a29d556e670364535831956478dc7d04d70ed203f3121a607ff8f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f13605cf9c483b0a87c6de5990d5715e502cad4d1c5fb70bc5bf7b6034429a33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_event_organization_01 -> audio/generated/de-DE/utterances/f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c25bb73-fe53-56c1-a5a1-bb8a08168485', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_event_organization_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efcb313199bbc9f93eab0357ebbb63699bb6342610f28554dfa0b204b45467c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef950420-f4b2-57d6-82f4-0283641b4aaf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c25bb73-fe53-56c1-a5a1-bb8a08168485', 1), 'efcb313199bbc9f93eab0357ebbb63699bb6342610f28554dfa0b204b45467c3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f.mp3', 4728, '2026-09-13 08:33:20.831634', '5e0855ec59f502e04097ca0264234c0c18f10c694207fd56e11bddbad893c557', 'validated', '{"audio_key":"f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f","entity_key":"u_event_organization_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e0855ec59f502e04097ca0264234c0c18f10c694207fd56e11bddbad893c557","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_event_organization_01_listen -> audio/generated/de-DE/utterances/f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('12a2f55e-9a9d-5847-a716-545297ef4c6d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_event_organization_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efcb313199bbc9f93eab0357ebbb63699bb6342610f28554dfa0b204b45467c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aacaa3f-9755-5a6e-9f7f-b0743f9bd6d7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('12a2f55e-9a9d-5847-a716-545297ef4c6d', 1), 'efcb313199bbc9f93eab0357ebbb63699bb6342610f28554dfa0b204b45467c3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f.mp3', 4728, '2026-09-13 08:33:20.831634', '5e0855ec59f502e04097ca0264234c0c18f10c694207fd56e11bddbad893c557', 'validated', '{"audio_key":"f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f","entity_key":"ex_event_organization_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e0855ec59f502e04097ca0264234c0c18f10c694207fd56e11bddbad893c557","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f24ef2d7d51196f5c04173bdd23a3668c8cdcd4cf0cb96cd71350b5583b1488f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_contracts_subscriptions_05 -> audio/generated/de-DE/utterances/f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea5bd6ca-8550-5281-b437-0832d7b1d132', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_contracts_subscriptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98b5599755859c1fc0f728e492557e9719c102d6312629ad28379505f12579e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a769937f-140b-5a0d-b912-881c79968424', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea5bd6ca-8550-5281-b437-0832d7b1d132', 1), '98b5599755859c1fc0f728e492557e9719c102d6312629ad28379505f12579e5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b.mp3', 5381, '2026-09-13 08:33:22.144968', '3ac5c577980ca3111d722b806756f328e2b35d37bfada9eed4835b473633a5fd', 'validated', '{"audio_key":"f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b","entity_key":"u_contracts_subscriptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ac5c577980ca3111d722b806756f328e2b35d37bfada9eed4835b473633a5fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_contracts_subscriptions_03_listen -> audio/generated/de-DE/utterances/f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('39049be8-81df-5c7d-900d-b8833e9a7dd8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_contracts_subscriptions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98b5599755859c1fc0f728e492557e9719c102d6312629ad28379505f12579e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7f1dc1b-c1e9-5e07-bb8a-fb0b74719210', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('39049be8-81df-5c7d-900d-b8833e9a7dd8', 1), '98b5599755859c1fc0f728e492557e9719c102d6312629ad28379505f12579e5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b.mp3', 5381, '2026-09-13 08:33:22.144968', '3ac5c577980ca3111d722b806756f328e2b35d37bfada9eed4835b473633a5fd', 'validated', '{"audio_key":"f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b","entity_key":"ex_contracts_subscriptions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ac5c577980ca3111d722b806756f328e2b35d37bfada9eed4835b473633a5fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f46c7f0cdba9015bd8560dc146c7521414a7010560c9a132d0b4843d5f6ead1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_technical_explanations_03 -> audio/generated/de-DE/utterances/face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('876bee99-9f68-5082-b244-5aa994a791f4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_technical_explanations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2df1e0c03389c7d66978ee6ae24d0280d20ff21b7ff1b4d444dfce4faf50286f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f00991ad-8047-5014-9387-d8f678e8786a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('876bee99-9f68-5082-b244-5aa994a791f4', 1), '2df1e0c03389c7d66978ee6ae24d0280d20ff21b7ff1b4d444dfce4faf50286f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc.mp3', 6295, '2026-09-13 08:33:22.350383', '3911b46a1d99fb13d20b9d883e8c2f74ea53593c3c08c32c1c14315d8a179623', 'validated', '{"audio_key":"face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc","entity_key":"u_technical_explanations_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3911b46a1d99fb13d20b9d883e8c2f74ea53593c3c08c32c1c14315d8a179623","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_technical_explanations_02_listen -> audio/generated/de-DE/utterances/face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9004dc2e-50d3-506f-8859-7a323567f979', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_technical_explanations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2df1e0c03389c7d66978ee6ae24d0280d20ff21b7ff1b4d444dfce4faf50286f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed8030a2-9ba9-547b-a2db-399a2a8d3003', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9004dc2e-50d3-506f-8859-7a323567f979', 1), '2df1e0c03389c7d66978ee6ae24d0280d20ff21b7ff1b4d444dfce4faf50286f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc.mp3', 6295, '2026-09-13 08:33:22.350383', '3911b46a1d99fb13d20b9d883e8c2f74ea53593c3c08c32c1c14315d8a179623', 'validated', '{"audio_key":"face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc","entity_key":"ex_technical_explanations_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3911b46a1d99fb13d20b9d883e8c2f74ea53593c3c08c32c1c14315d8a179623","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/face7e18c7003ca442cd0c2fac55dcc1437c3560c28e1fc4e2284475da492ddc.mp3"}'
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

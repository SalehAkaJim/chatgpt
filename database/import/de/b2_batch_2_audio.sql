-- Generated audio link import for de-DE B2
-- Source manifest: audio/manifests/de/B2-batch-2.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_product_research_decisions_01:1 -> audio/generated/de-DE/dialogues/007b800bebddbdf9f5914eb02cfa800e4e6dcd87424280b10ef64e115afed008.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7029ff48-5636-5901-998e-f54be3e4b3d1', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fb6949ea01bdec2ef601c8cf40c6bddd862997d1635788737390baf28408fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d485642a-b78b-5e0d-bb1e-0197c2c6385d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7029ff48-5636-5901-998e-f54be3e4b3d1', 1), '6fb6949ea01bdec2ef601c8cf40c6bddd862997d1635788737390baf28408fb5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/007b800bebddbdf9f5914eb02cfa800e4e6dcd87424280b10ef64e115afed008.mp3', 2403, '2026-09-13 08:15:13.059513', '551d912e92b23f8c5a245c7a53a491a919a6b76f0d38d2935c746152df4457ae', 'validated', '{"audio_key":"007b800bebddbdf9f5914eb02cfa800e4e6dcd87424280b10ef64e115afed008","entity_key":"d_product_research_decisions_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"551d912e92b23f8c5a245c7a53a491a919a6b76f0d38d2935c746152df4457ae","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/007b800bebddbdf9f5914eb02cfa800e4e6dcd87424280b10ef64e115afed008.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_02:4 -> audio/generated/de-DE/dialogues/0133a104cdb41c447ae7e5ede24b0fbce28573a1daabb44c5af3bd02c807fa23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('473d5230-a0ea-5252-b7b0-d04519fd7bcd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26903d8e894ad7b9dac7e541d0da1da31fcda7858b7aaab7561e9156eaf5da03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11f6703f-400f-5b88-96fe-5870ffd75763', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('473d5230-a0ea-5252-b7b0-d04519fd7bcd', 1), '26903d8e894ad7b9dac7e541d0da1da31fcda7858b7aaab7561e9156eaf5da03',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0133a104cdb41c447ae7e5ede24b0fbce28573a1daabb44c5af3bd02c807fa23.mp3', 3186, '2026-09-13 08:15:13.113389', '9f9517265a7c4fa3b060b5aff5a4d1e4cc333f45b3e3c84912ab2b3e0ef61fcc', 'validated', '{"audio_key":"0133a104cdb41c447ae7e5ede24b0fbce28573a1daabb44c5af3bd02c807fa23","entity_key":"d_job_interviews_achievements_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"9f9517265a7c4fa3b060b5aff5a4d1e4cc333f45b3e3c84912ab2b3e0ef61fcc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0133a104cdb41c447ae7e5ede24b0fbce28573a1daabb44c5af3bd02c807fa23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_02:4 -> audio/generated/de-DE/dialogues/04353ddf31965595a089719e120f6f7947a5a07b8e3418a9ccff397afb2d8323.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d13f9845-95da-5947-bb74-f1c849914743', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c138c871ba0848ac2b4386cf78ffa12854d30481881aba8ba61cb7cdd5d4794c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab08ff69-6fa4-5b2a-ac33-31df359c24b7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d13f9845-95da-5947-bb74-f1c849914743', 1), 'c138c871ba0848ac2b4386cf78ffa12854d30481881aba8ba61cb7cdd5d4794c',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/04353ddf31965595a089719e120f6f7947a5a07b8e3418a9ccff397afb2d8323.mp3', 2742, '2026-09-13 08:15:14.237287', '220d4c104882bd9ad393a1722057cecbafa270808a71821415b0ad5b546fd128', 'validated', '{"audio_key":"04353ddf31965595a089719e120f6f7947a5a07b8e3418a9ccff397afb2d8323","entity_key":"d_feedback_critique_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"220d4c104882bd9ad393a1722057cecbafa270808a71821415b0ad5b546fd128","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/04353ddf31965595a089719e120f6f7947a5a07b8e3418a9ccff397afb2d8323.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_02:1 -> audio/generated/de-DE/dialogues/07574ab4c4119094f9db7a6643df608a64f848b2d83c4eb8664faec2d035226f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88e5f258-0444-595b-a1ae-54eb5323e140', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f14b9b8f6d347ecb82beedcf5eee73ada7af5490e20b6c2912c9f25289096fe7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb3955d6-64eb-522a-8c78-162a25bc55f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88e5f258-0444-595b-a1ae-54eb5323e140', 1), 'f14b9b8f6d347ecb82beedcf5eee73ada7af5490e20b6c2912c9f25289096fe7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07574ab4c4119094f9db7a6643df608a64f848b2d83c4eb8664faec2d035226f.mp3', 3004, '2026-09-13 08:15:14.317433', '512ba87e7bce000af11f852f32c1b750e32072aa026382707e052a781277efba', 'validated', '{"audio_key":"07574ab4c4119094f9db7a6643df608a64f848b2d83c4eb8664faec2d035226f","entity_key":"d_product_research_decisions_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"512ba87e7bce000af11f852f32c1b750e32072aa026382707e052a781277efba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/07574ab4c4119094f9db7a6643df608a64f848b2d83c4eb8664faec2d035226f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_02:2 -> audio/generated/de-DE/dialogues/08d68c3b925e2fe0c5dec6dd4f05aa4b2530240e893e4434bb628761a837c516.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab94d5f7-314c-5e64-8a4d-c0b260d218dd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57040c6572ee7afffac853037ac89cf74f54cd5fa9bc0d396600ca7bd56fcd72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9aa76e01-2d14-5175-8422-ebef2a91e9d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab94d5f7-314c-5e64-8a4d-c0b260d218dd', 1), '57040c6572ee7afffac853037ac89cf74f54cd5fa9bc0d396600ca7bd56fcd72',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/08d68c3b925e2fe0c5dec6dd4f05aa4b2530240e893e4434bb628761a837c516.mp3', 3840, '2026-09-13 08:15:15.572943', 'cebe44ad8f435c18eee14ecf5c09a8398c5f2b08ead1716afe79ed6fddba3441', 'validated', '{"audio_key":"08d68c3b925e2fe0c5dec6dd4f05aa4b2530240e893e4434bb628761a837c516","entity_key":"d_accommodation_issues_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cebe44ad8f435c18eee14ecf5c09a8398c5f2b08ead1716afe79ed6fddba3441","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/08d68c3b925e2fe0c5dec6dd4f05aa4b2530240e893e4434bb628761a837c516.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_03:3 -> audio/generated/de-DE/dialogues/0a2c06ad24b7ae8303e02fbd37f85f5f19f9722d164f1013e9e65f61a810657b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0162a513-31eb-5d87-97ad-0bd6b91dbf9e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77fe014b47cf9b6ad839eac1653450673d94bc404be8791e4bc1ee9a365d30c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db5fe6a2-c4e4-55bd-a2a0-2a6e2c616e1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0162a513-31eb-5d87-97ad-0bd6b91dbf9e', 1), '77fe014b47cf9b6ad839eac1653450673d94bc404be8791e4bc1ee9a365d30c5',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0a2c06ad24b7ae8303e02fbd37f85f5f19f9722d164f1013e9e65f61a810657b.mp3', 4493, '2026-09-13 08:15:15.827811', 'd579cf9f957dabe9f937bb11d50029134be3d3e072bcd61726b0336cad705ac0', 'validated', '{"audio_key":"0a2c06ad24b7ae8303e02fbd37f85f5f19f9722d164f1013e9e65f61a810657b","entity_key":"d_feedback_critique_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d579cf9f957dabe9f937bb11d50029134be3d3e072bcd61726b0336cad705ac0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0a2c06ad24b7ae8303e02fbd37f85f5f19f9722d164f1013e9e65f61a810657b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_01:1 -> audio/generated/de-DE/dialogues/0cc6213e8ef7c5f8443ad01805448f1b60562ab08dd2d5afd3b28ab24283162d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e1b11b1-74db-59a3-9030-9bec6ad91627', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ade73203ef28c686ee6fb214e7725ceecda561720d5a4bc1adcb75fa33fabbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70ab97e3-5464-545f-9172-1356dfeb783f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e1b11b1-74db-59a3-9030-9bec6ad91627', 1), '9ade73203ef28c686ee6fb214e7725ceecda561720d5a4bc1adcb75fa33fabbb',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0cc6213e8ef7c5f8443ad01805448f1b60562ab08dd2d5afd3b28ab24283162d.mp3', 3291, '2026-09-13 08:15:16.864168', 'f3c2601cf9137a3dba9208f43e0dc447ee0fe30de2c80b32a20f4cdff41af6de', 'validated', '{"audio_key":"0cc6213e8ef7c5f8443ad01805448f1b60562ab08dd2d5afd3b28ab24283162d","entity_key":"d_job_interviews_achievements_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f3c2601cf9137a3dba9208f43e0dc447ee0fe30de2c80b32a20f4cdff41af6de","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0cc6213e8ef7c5f8443ad01805448f1b60562ab08dd2d5afd3b28ab24283162d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_01:2 -> audio/generated/de-DE/dialogues/0e2429902108f82bb96bc3c3928bfef24f023185edcbef1a04086616664cffdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a50b59a-fac0-53f0-8269-98295c89a6f5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '995985c709cd6ea2b799f381bbe50cf0f34b27ddeeb62dac8aa504ee2db76f61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e087689-af97-5ead-8ca1-1793d497d8a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a50b59a-fac0-53f0-8269-98295c89a6f5', 1), '995985c709cd6ea2b799f381bbe50cf0f34b27ddeeb62dac8aa504ee2db76f61',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e2429902108f82bb96bc3c3928bfef24f023185edcbef1a04086616664cffdd.mp3', 2925, '2026-09-13 08:15:17.074398', '6fafe50437490b257aed9a40ad0e3ccc925f967f1e8412e49fa8592f0d15aee1', 'validated', '{"audio_key":"0e2429902108f82bb96bc3c3928bfef24f023185edcbef1a04086616664cffdd","entity_key":"d_relationships_misunderstandings_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6fafe50437490b257aed9a40ad0e3ccc925f967f1e8412e49fa8592f0d15aee1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0e2429902108f82bb96bc3c3928bfef24f023185edcbef1a04086616664cffdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_02:1 -> audio/generated/de-DE/dialogues/0e96aa1923586d2fc2edf2279ad51e27fb9336c74ce4ddaef1be9230fb601c3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('87f94780-41c6-5b60-9f81-92990566aef1', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fca98125b0aab950614389c454ee2f0ad4b98899498aec3ee40a67168438370c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3756cafd-2f05-5a91-9168-e7874e320cb0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('87f94780-41c6-5b60-9f81-92990566aef1', 1), 'fca98125b0aab950614389c454ee2f0ad4b98899498aec3ee40a67168438370c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e96aa1923586d2fc2edf2279ad51e27fb9336c74ce4ddaef1be9230fb601c3b.mp3', 3343, '2026-09-13 08:15:18.144050', '5e57d211f61743e4999de2d1852fdfce01aff4d3e6ceb85ffc0e2602c4ddaa1f', 'validated', '{"audio_key":"0e96aa1923586d2fc2edf2279ad51e27fb9336c74ce4ddaef1be9230fb601c3b","entity_key":"d_travel_disruptions_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5e57d211f61743e4999de2d1852fdfce01aff4d3e6ceb85ffc0e2602c4ddaa1f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0e96aa1923586d2fc2edf2279ad51e27fb9336c74ce4ddaef1be9230fb601c3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_01:3 -> audio/generated/de-DE/dialogues/10f291af874af0d4bfef8fd1e408f5b6686694d48b1a7c87a56946c898640b0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('57163982-a7cd-5c9f-abbf-dbfab88b4fae', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f229b8be0c8ae12665ce7f9bf16088ef078061d750694973b6a97cb0e2523337'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2a112db-df3e-55d2-8259-200127e382c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('57163982-a7cd-5c9f-abbf-dbfab88b4fae', 1), 'f229b8be0c8ae12665ce7f9bf16088ef078061d750694973b6a97cb0e2523337',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/10f291af874af0d4bfef8fd1e408f5b6686694d48b1a7c87a56946c898640b0c.mp3', 2768, '2026-09-13 08:15:18.291613', '4255967654140662fcb5c12206893b3f8addb9dac039c03900305f97d0a5cf62', 'validated', '{"audio_key":"10f291af874af0d4bfef8fd1e408f5b6686694d48b1a7c87a56946c898640b0c","entity_key":"d_projects_deadlines_risks_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4255967654140662fcb5c12206893b3f8addb9dac039c03900305f97d0a5cf62","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/10f291af874af0d4bfef8fd1e408f5b6686694d48b1a7c87a56946c898640b0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_03:3 -> audio/generated/de-DE/dialogues/110a00fc90df2ebe1033a2e8636abdaa370f1b2174f3196749c58d01dc4e02d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b19736bb-a938-5447-bef2-8741239d4958', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '178e5af9e9696101dac3a85188152dbb0e9f0116ddc7f9089d6b85f80e9b4c7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('387c2f06-6206-51ee-8756-513e524d9067', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b19736bb-a938-5447-bef2-8741239d4958', 1), '178e5af9e9696101dac3a85188152dbb0e9f0116ddc7f9089d6b85f80e9b4c7d',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/110a00fc90df2ebe1033a2e8636abdaa370f1b2174f3196749c58d01dc4e02d9.mp3', 4440, '2026-09-13 08:15:19.518194', 'd3a7b86862ef2e2332eec108308d0cb7192d5528271c74820485850d87b88081', 'validated', '{"audio_key":"110a00fc90df2ebe1033a2e8636abdaa370f1b2174f3196749c58d01dc4e02d9","entity_key":"d_accommodation_issues_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d3a7b86862ef2e2332eec108308d0cb7192d5528271c74820485850d87b88081","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/110a00fc90df2ebe1033a2e8636abdaa370f1b2174f3196749c58d01dc4e02d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_01:2 -> audio/generated/de-DE/dialogues/1477833a6030ebbd0b1eb87067fbd7accf93bafd2d6793defc55dfdae5c0cb95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe658a6a-1d31-5540-9576-e6b0b33f4732', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0c595fa7db766b48232b3120b90605b81cfda521ab8a606efe50311ec342a65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad431c43-28de-58d1-85c1-3abfbb4fa1e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe658a6a-1d31-5540-9576-e6b0b33f4732', 1), 'd0c595fa7db766b48232b3120b90605b81cfda521ab8a606efe50311ec342a65',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1477833a6030ebbd0b1eb87067fbd7accf93bafd2d6793defc55dfdae5c0cb95.mp3', 2168, '2026-09-13 08:15:19.382723', '718a485e498718913652d884fb3442c453be685bf5580df50fb04a800dae1328', 'validated', '{"audio_key":"1477833a6030ebbd0b1eb87067fbd7accf93bafd2d6793defc55dfdae5c0cb95","entity_key":"d_complaints_service_resolution_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"718a485e498718913652d884fb3442c453be685bf5580df50fb04a800dae1328","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1477833a6030ebbd0b1eb87067fbd7accf93bafd2d6793defc55dfdae5c0cb95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_03:2 -> audio/generated/de-DE/dialogues/1490318135d65430ae785579129766a2afb22dc12b35e4c77d26b02849c9e46e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79f87b3e-78f1-55f2-97e8-7b24f36c413d', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd912a1b1d6c7d0f32969f6bd5a2119caba88756c2f0ea46b1d75c64e0ae962e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a82c195a-bc48-5ddf-bbb6-0809b3530289', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79f87b3e-78f1-55f2-97e8-7b24f36c413d', 1), 'd912a1b1d6c7d0f32969f6bd5a2119caba88756c2f0ea46b1d75c64e0ae962e9',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1490318135d65430ae785579129766a2afb22dc12b35e4c77d26b02849c9e46e.mp3', 3761, '2026-09-13 08:15:20.683805', '3a2a0728b9134822dc2f450e9655d1e3123150e2bc94b891855ff85a9674d752', 'validated', '{"audio_key":"1490318135d65430ae785579129766a2afb22dc12b35e4c77d26b02849c9e46e","entity_key":"d_accommodation_issues_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3a2a0728b9134822dc2f450e9655d1e3123150e2bc94b891855ff85a9674d752","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1490318135d65430ae785579129766a2afb22dc12b35e4c77d26b02849c9e46e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_01:2 -> audio/generated/de-DE/dialogues/1674a58baedb4eba0875d9fff2b263444b97bbfb0b46dad7bed0d34abd77e284.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd3f2262-56e0-56c9-ac39-a529808c9118', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1c9df84ed43f0be5496e8e6892e8ef9ac98e5aab76a9fc2119b7eb43fbeadf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('678ebfaa-e211-5892-98cc-8e33dc35de4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd3f2262-56e0-56c9-ac39-a529808c9118', 1), 'a1c9df84ed43f0be5496e8e6892e8ef9ac98e5aab76a9fc2119b7eb43fbeadf7',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1674a58baedb4eba0875d9fff2b263444b97bbfb0b46dad7bed0d34abd77e284.mp3', 3186, '2026-09-13 08:15:20.764298', 'ffa35c6d447e3c05e70c1471cc9fd6c92a3e1543de6ac239d4cdb07546e0f87b', 'validated', '{"audio_key":"1674a58baedb4eba0875d9fff2b263444b97bbfb0b46dad7bed0d34abd77e284","entity_key":"d_travel_disruptions_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ffa35c6d447e3c05e70c1471cc9fd6c92a3e1543de6ac239d4cdb07546e0f87b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1674a58baedb4eba0875d9fff2b263444b97bbfb0b46dad7bed0d34abd77e284.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_01:4 -> audio/generated/de-DE/dialogues/17b5c83a3da10c96db1904643c8f23a6bcf98bbbdc2e1e2e8ecf12bc33da9afe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0fc09af2-393b-525b-b6dc-e163f3bf5b20', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '595382602b6f7e3a7f9cb59cbb7178d10c1f5ac3dc7cb13ef9d5f5c5f7e9bf74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('586cb5b1-22ae-5005-9abc-a082880c7083', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0fc09af2-393b-525b-b6dc-e163f3bf5b20', 1), '595382602b6f7e3a7f9cb59cbb7178d10c1f5ac3dc7cb13ef9d5f5c5f7e9bf74',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17b5c83a3da10c96db1904643c8f23a6bcf98bbbdc2e1e2e8ecf12bc33da9afe.mp3', 1619, '2026-09-13 08:15:21.743361', 'ba599089f3b9b2f0281e122af88169a5158b246825c7a09a555978fdcd0a8d7a', 'validated', '{"audio_key":"17b5c83a3da10c96db1904643c8f23a6bcf98bbbdc2e1e2e8ecf12bc33da9afe","entity_key":"d_relationships_misunderstandings_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ba599089f3b9b2f0281e122af88169a5158b246825c7a09a555978fdcd0a8d7a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/17b5c83a3da10c96db1904643c8f23a6bcf98bbbdc2e1e2e8ecf12bc33da9afe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_02:3 -> audio/generated/de-DE/dialogues/17c354ceefac51bf30827aa560dbab94b4163f0e8186e84f44bc0b852e3aff00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46e71fcf-104e-50b1-aa9c-6ca217fb95f0', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb63feeeb6e0b21b41fdbed204eaeacd1eccc247fecc06c167ec4e47984452c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('900886dd-82eb-535d-96f1-117e61f373b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46e71fcf-104e-50b1-aa9c-6ca217fb95f0', 1), 'eb63feeeb6e0b21b41fdbed204eaeacd1eccc247fecc06c167ec4e47984452c8',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17c354ceefac51bf30827aa560dbab94b4163f0e8186e84f44bc0b852e3aff00.mp3', 3160, '2026-09-13 08:15:21.990173', 'aeaf5b7bb03a466b4b54d3489859c81b0d9588a4057332121acee7e525483c91', 'validated', '{"audio_key":"17c354ceefac51bf30827aa560dbab94b4163f0e8186e84f44bc0b852e3aff00","entity_key":"d_product_research_decisions_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aeaf5b7bb03a466b4b54d3489859c81b0d9588a4057332121acee7e525483c91","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/17c354ceefac51bf30827aa560dbab94b4163f0e8186e84f44bc0b852e3aff00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_02:4 -> audio/generated/de-DE/dialogues/1847c3305ec4a4462b105319f00b08f38d162af10ff3282abb534768a9235062.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d72aed90-39c0-5329-bfdc-91c33b43a580', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '351c7a6f788123c7ebc1ccd14846c9cb13245dff8f0f9c749517ccb5e0c31dd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c27c3d7-6666-5663-9aa0-c88eef1284ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d72aed90-39c0-5329-bfdc-91c33b43a580', 1), '351c7a6f788123c7ebc1ccd14846c9cb13245dff8f0f9c749517ccb5e0c31dd8',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1847c3305ec4a4462b105319f00b08f38d162af10ff3282abb534768a9235062.mp3', 2925, '2026-09-13 08:15:22.944087', '7cd08c081646cd21f096c47ae6399cc815077e534d7e3c0b937914c55bfe9962', 'validated', '{"audio_key":"1847c3305ec4a4462b105319f00b08f38d162af10ff3282abb534768a9235062","entity_key":"d_complaints_service_resolution_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7cd08c081646cd21f096c47ae6399cc815077e534d7e3c0b937914c55bfe9962","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1847c3305ec4a4462b105319f00b08f38d162af10ff3282abb534768a9235062.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_03:2 -> audio/generated/de-DE/dialogues/1a6f3f1f49231e02b16ded7412a589a03acbe7509cf98939bbdc6657f9ff6399.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9d86c2c-1bd6-5a48-8228-06c1e7a44587', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40d8006187360fd0c34b064c93e09d0ce754f3f77d05b315dd5928859d60a2aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89a45d68-2423-5989-af84-5fb39445f874', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9d86c2c-1bd6-5a48-8228-06c1e7a44587', 1), '40d8006187360fd0c34b064c93e09d0ce754f3f77d05b315dd5928859d60a2aa',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a6f3f1f49231e02b16ded7412a589a03acbe7509cf98939bbdc6657f9ff6399.mp3', 1906, '2026-09-13 08:15:23.083544', 'cfaebda103b77a65112f478cebfe660438b7f2fcd00f5bcbe721216868252f3f', 'validated', '{"audio_key":"1a6f3f1f49231e02b16ded7412a589a03acbe7509cf98939bbdc6657f9ff6399","entity_key":"d_product_research_decisions_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"cfaebda103b77a65112f478cebfe660438b7f2fcd00f5bcbe721216868252f3f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1a6f3f1f49231e02b16ded7412a589a03acbe7509cf98939bbdc6657f9ff6399.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_01:4 -> audio/generated/de-DE/dialogues/1a7b6f19c16610e838f3170008a96654272fcf429548fd63a859d228b15e69ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55ea0ed7-fb41-558a-aba1-9977b4fe6c62', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5086dea8d25e33e7cf99f5739a5ca002d3405c4e688d488ab1d7cac65ea3d823'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('696c73b5-823e-5b13-8213-915cd2c480ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55ea0ed7-fb41-558a-aba1-9977b4fe6c62', 1), '5086dea8d25e33e7cf99f5739a5ca002d3405c4e688d488ab1d7cac65ea3d823',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a7b6f19c16610e838f3170008a96654272fcf429548fd63a859d228b15e69ec.mp3', 4597, '2026-09-13 08:15:24.376940', 'c9023f58b6b03e6b7e032ef48674fa661d469cda0a274f3b74aa80ca4fdad33a', 'validated', '{"audio_key":"1a7b6f19c16610e838f3170008a96654272fcf429548fd63a859d228b15e69ec","entity_key":"d_job_interviews_achievements_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c9023f58b6b03e6b7e032ef48674fa661d469cda0a274f3b74aa80ca4fdad33a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1a7b6f19c16610e838f3170008a96654272fcf429548fd63a859d228b15e69ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_02:4 -> audio/generated/de-DE/dialogues/1bfcfb9d4bd22a954217d82eab02459ebd8ce6f48e22aaec1d877d774e962745.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7813b521-b406-58a1-b367-c6f610dc4db6', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5406fcfbd22ae7298b102bdf763a712ba1c3044d7ac89fff7de7592867260801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5487663-0ec3-5c61-b079-c84e7a43b48d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7813b521-b406-58a1-b367-c6f610dc4db6', 1), '5406fcfbd22ae7298b102bdf763a712ba1c3044d7ac89fff7de7592867260801',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1bfcfb9d4bd22a954217d82eab02459ebd8ce6f48e22aaec1d877d774e962745.mp3', 2272, '2026-09-13 08:15:24.302330', 'e203f91ae2842792d00dec120124614a333704c3149c6ab3476e708220e43a72', 'validated', '{"audio_key":"1bfcfb9d4bd22a954217d82eab02459ebd8ce6f48e22aaec1d877d774e962745","entity_key":"d_work_priorities_blockers_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e203f91ae2842792d00dec120124614a333704c3149c6ab3476e708220e43a72","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1bfcfb9d4bd22a954217d82eab02459ebd8ce6f48e22aaec1d877d774e962745.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_01:1 -> audio/generated/de-DE/dialogues/1e55e7c2d6c586967c58b1014566d5c497974ac48dc65022d4ce4f005a41a73d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ab99d8c-5bca-5052-8b7c-787ad2acbc49', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4207d32006bf0c8e0d79e071a59af822044d9bb60b0c34288dd3bdc6fe8fe521'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('570b7ab4-b1cf-51a1-969e-dc2436f6463a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ab99d8c-5bca-5052-8b7c-787ad2acbc49', 1), '4207d32006bf0c8e0d79e071a59af822044d9bb60b0c34288dd3bdc6fe8fe521',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1e55e7c2d6c586967c58b1014566d5c497974ac48dc65022d4ce4f005a41a73d.mp3', 3160, '2026-09-13 08:15:25.549724', '4123d3c851f5821265472acc0d86faa9f50c2213d968a1a2543600188b9ed8b2', 'validated', '{"audio_key":"1e55e7c2d6c586967c58b1014566d5c497974ac48dc65022d4ce4f005a41a73d","entity_key":"d_travel_disruptions_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4123d3c851f5821265472acc0d86faa9f50c2213d968a1a2543600188b9ed8b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1e55e7c2d6c586967c58b1014566d5c497974ac48dc65022d4ce4f005a41a73d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_02:4 -> audio/generated/de-DE/dialogues/1e8a91850feeb47cf5c6c2ee7ec85e815b0e568f463dd4c8c8c87d3b17bf0790.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cc06f718-554d-506d-85de-e7c15d8307ba', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e2db0ece9033eb0000247401310295927a019607018ac7c8d0d8cb232c04800'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7b2c51f-c837-5d2b-9858-b355648dbaca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cc06f718-554d-506d-85de-e7c15d8307ba', 1), '8e2db0ece9033eb0000247401310295927a019607018ac7c8d0d8cb232c04800',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1e8a91850feeb47cf5c6c2ee7ec85e815b0e568f463dd4c8c8c87d3b17bf0790.mp3', 4362, '2026-09-13 08:15:25.708843', '186ea0617f69b26a8635da08d11b02c50ae3420df73404921de67fc7031e18d2', 'validated', '{"audio_key":"1e8a91850feeb47cf5c6c2ee7ec85e815b0e568f463dd4c8c8c87d3b17bf0790","entity_key":"d_study_challenges_feedback_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"186ea0617f69b26a8635da08d11b02c50ae3420df73404921de67fc7031e18d2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1e8a91850feeb47cf5c6c2ee7ec85e815b0e568f463dd4c8c8c87d3b17bf0790.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_03:3 -> audio/generated/de-DE/dialogues/1e8d826d00f6f81a42d6a204e91bbb6c14d531c477abae80ecd92dd5b6c9e54a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2057fc0e-19be-5ef4-9928-2196d4c88019', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '508d6f3765b61d639a73eee8557c381a0d2b8d5301ecc0b9dc72d32811b6005b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('050fa97f-7195-5ee0-aa41-9c4f050e8ceb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2057fc0e-19be-5ef4-9928-2196d4c88019', 1), '508d6f3765b61d639a73eee8557c381a0d2b8d5301ecc0b9dc72d32811b6005b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1e8d826d00f6f81a42d6a204e91bbb6c14d531c477abae80ecd92dd5b6c9e54a.mp3', 3056, '2026-09-13 08:15:26.778292', '8eaa160e722c61a3ae99fa3d06f417d855f983932b18cfa104e3e186e06d71a5', 'validated', '{"audio_key":"1e8d826d00f6f81a42d6a204e91bbb6c14d531c477abae80ecd92dd5b6c9e54a","entity_key":"d_work_priorities_blockers_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8eaa160e722c61a3ae99fa3d06f417d855f983932b18cfa104e3e186e06d71a5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1e8d826d00f6f81a42d6a204e91bbb6c14d531c477abae80ecd92dd5b6c9e54a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_03:2 -> audio/generated/de-DE/dialogues/244344136bd3e72b026efdc135e0040ae6dc159444515d1b0a66057dddcf7159.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d415b07-9bff-59c7-9d17-99185f347aea', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74f383f51efb72367e84f58c0e4b73f95615eea6c10ea593903082a07c8005d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0e8e5a0-4306-566c-845f-44bb0e890909', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d415b07-9bff-59c7-9d17-99185f347aea', 1), '74f383f51efb72367e84f58c0e4b73f95615eea6c10ea593903082a07c8005d4',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/244344136bd3e72b026efdc135e0040ae6dc159444515d1b0a66057dddcf7159.mp3', 1567, '2026-09-13 08:15:26.757215', 'f85e123e93b7712e28a1dd7d1ea49f5cc0a8d204eeb516a16191edd9eae930d3', 'validated', '{"audio_key":"244344136bd3e72b026efdc135e0040ae6dc159444515d1b0a66057dddcf7159","entity_key":"d_feedback_critique_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f85e123e93b7712e28a1dd7d1ea49f5cc0a8d204eeb516a16191edd9eae930d3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/244344136bd3e72b026efdc135e0040ae6dc159444515d1b0a66057dddcf7159.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_02:1 -> audio/generated/de-DE/dialogues/24df4c7cf9cd497fc9a94fd829012a2935ddf032744e997ead2d42615f3a422d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14ddb308-e714-58b4-955b-329a2bb156ce', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2ba99f652beef481308309c5cd25106de03f7405e0e159ee3605a83d65ac3ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15c15387-5d25-5da1-998e-6a62f8eef4ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14ddb308-e714-58b4-955b-329a2bb156ce', 1), 'c2ba99f652beef481308309c5cd25106de03f7405e0e159ee3605a83d65ac3ac',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/24df4c7cf9cd497fc9a94fd829012a2935ddf032744e997ead2d42615f3a422d.mp3', 3657, '2026-09-13 08:15:28.073300', '401322d56fb28a3e1e147a1933c62b13ab9a1f5a9da9e4febd4bd08e4a609f0d', 'validated', '{"audio_key":"24df4c7cf9cd497fc9a94fd829012a2935ddf032744e997ead2d42615f3a422d","entity_key":"d_accommodation_issues_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"401322d56fb28a3e1e147a1933c62b13ab9a1f5a9da9e4febd4bd08e4a609f0d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/24df4c7cf9cd497fc9a94fd829012a2935ddf032744e997ead2d42615f3a422d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_02:3 -> audio/generated/de-DE/dialogues/2a40c572b28ed151bead87c4f6b8dd37e1e0b34c49d3ac813a4f813970642f65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0e5c3fa-b639-5a4a-b9a7-afd902521635', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9c19563c42fec297ba3df8ff7d58d3d3b1fd559dd6afaa398885013fd75102e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3ca8ece-8037-5769-a26e-5529acbc1a4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0e5c3fa-b639-5a4a-b9a7-afd902521635', 1), 'd9c19563c42fec297ba3df8ff7d58d3d3b1fd559dd6afaa398885013fd75102e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a40c572b28ed151bead87c4f6b8dd37e1e0b34c49d3ac813a4f813970642f65.mp3', 3291, '2026-09-13 08:15:28.092283', '481fbfdab7514920668e31052823140c0cf8aec233dcb0bef4dcafc199302245', 'validated', '{"audio_key":"2a40c572b28ed151bead87c4f6b8dd37e1e0b34c49d3ac813a4f813970642f65","entity_key":"d_complaints_service_resolution_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"481fbfdab7514920668e31052823140c0cf8aec233dcb0bef4dcafc199302245","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2a40c572b28ed151bead87c4f6b8dd37e1e0b34c49d3ac813a4f813970642f65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_03:3 -> audio/generated/de-DE/dialogues/2b381064d1232c5c945e3a1d72da9559b4f8e72015bd50412ece4a32e4f46cbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('512f6481-8e97-51c1-94b1-28d1945e494d', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1dac6a2e2ed2f38fb87b26cc1bc155f2013bf07fb31227af6b46ed735ffde6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30bf1270-55e9-5484-99d5-429fca0548bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('512f6481-8e97-51c1-94b1-28d1945e494d', 1), 'd1dac6a2e2ed2f38fb87b26cc1bc155f2013bf07fb31227af6b46ed735ffde6a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2b381064d1232c5c945e3a1d72da9559b4f8e72015bd50412ece4a32e4f46cbc.mp3', 2507, '2026-09-13 08:15:29.243086', '18084d91ffdbd56be6db01cb3e868b7ac7220b90087c14a4aa4ef2eb2c79507a', 'validated', '{"audio_key":"2b381064d1232c5c945e3a1d72da9559b4f8e72015bd50412ece4a32e4f46cbc","entity_key":"d_travel_disruptions_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"18084d91ffdbd56be6db01cb3e868b7ac7220b90087c14a4aa4ef2eb2c79507a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2b381064d1232c5c945e3a1d72da9559b4f8e72015bd50412ece4a32e4f46cbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_01:1 -> audio/generated/de-DE/dialogues/2c7c9b33f5a7f34c39b93fb81bdfbef1efa53118429d221ca5d434278d928ef1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f278c1b-776f-5624-b1ac-7490324790d7', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2576a582e3b20fdfe57b4f8519c92d0e364b795d40c22b57d19d8f83c1b6c72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e66afc5-7ccc-5b6b-9868-58b6c2475093', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f278c1b-776f-5624-b1ac-7490324790d7', 1), 'c2576a582e3b20fdfe57b4f8519c92d0e364b795d40c22b57d19d8f83c1b6c72',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c7c9b33f5a7f34c39b93fb81bdfbef1efa53118429d221ca5d434278d928ef1.mp3', 2351, '2026-09-13 08:15:29.297857', 'af8039660dea4840cf39202ced27926704ef95719a28bf5cfbc54f2c80561866', 'validated', '{"audio_key":"2c7c9b33f5a7f34c39b93fb81bdfbef1efa53118429d221ca5d434278d928ef1","entity_key":"d_projects_deadlines_risks_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"af8039660dea4840cf39202ced27926704ef95719a28bf5cfbc54f2c80561866","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2c7c9b33f5a7f34c39b93fb81bdfbef1efa53118429d221ca5d434278d928ef1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_02:1 -> audio/generated/de-DE/dialogues/2d8fc902153b2318f47c76fc5d55e1d15d957b331314c33717744f8808608ce1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8616eeeb-14b4-5995-82c6-2686e89de9ad', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8de6075d51a4410ab9bbef1049baf5f04a4db7d154abc93ae045747b72bd7681'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a99c9a08-fa0b-537b-af65-d96be3add8ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8616eeeb-14b4-5995-82c6-2686e89de9ad', 1), '8de6075d51a4410ab9bbef1049baf5f04a4db7d154abc93ae045747b72bd7681',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d8fc902153b2318f47c76fc5d55e1d15d957b331314c33717744f8808608ce1.mp3', 3239, '2026-09-13 08:15:30.479409', '3eeb2e402f992dbd82a7cbfd93de3b1bdc03ea056e09834c5804f950d06a9e19', 'validated', '{"audio_key":"2d8fc902153b2318f47c76fc5d55e1d15d957b331314c33717744f8808608ce1","entity_key":"d_study_challenges_feedback_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3eeb2e402f992dbd82a7cbfd93de3b1bdc03ea056e09834c5804f950d06a9e19","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2d8fc902153b2318f47c76fc5d55e1d15d957b331314c33717744f8808608ce1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_03:4 -> audio/generated/de-DE/dialogues/2e727eb1bcfccbe63f84ce04a78eb6139803279d55846cf04c9b3db1b8811078.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd41b714-f717-5367-9425-a8a7117bcde0', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1de805eec94b6e88b80a68702950dd33ad67893d8b5a59f2181415011e67d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f76ce384-e644-5a12-b013-1d98fdd0e7cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd41b714-f717-5367-9425-a8a7117bcde0', 1), 'f1de805eec94b6e88b80a68702950dd33ad67893d8b5a59f2181415011e67d27',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e727eb1bcfccbe63f84ce04a78eb6139803279d55846cf04c9b3db1b8811078.mp3', 3474, '2026-09-13 08:15:30.576130', 'ebf101cd969aad1a2c3a8982c264b5403c37e74490fe933e629594f8d903c0e4', 'validated', '{"audio_key":"2e727eb1bcfccbe63f84ce04a78eb6139803279d55846cf04c9b3db1b8811078","entity_key":"d_job_interviews_achievements_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ebf101cd969aad1a2c3a8982c264b5403c37e74490fe933e629594f8d903c0e4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2e727eb1bcfccbe63f84ce04a78eb6139803279d55846cf04c9b3db1b8811078.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_02:4 -> audio/generated/de-DE/dialogues/331ba72f9e4d213ae5c665d5f554991a5c85ab596b909f33b462ec383c8279e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c4b444f-e3e9-5f05-9db2-c49a6113de10', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '761b7efb7f366324afae9e6960eabef9c8a983bac9acd1bb6dcca39200833b21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74322415-0507-562b-8d9a-789a87d08e2b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c4b444f-e3e9-5f05-9db2-c49a6113de10', 1), '761b7efb7f366324afae9e6960eabef9c8a983bac9acd1bb6dcca39200833b21',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/331ba72f9e4d213ae5c665d5f554991a5c85ab596b909f33b462ec383c8279e1.mp3', 2925, '2026-09-13 08:15:31.667300', '924943c99be5081b9dbcf8dc9f06139447f5c78a70a5e5529ae8c3be25ba874a', 'validated', '{"audio_key":"331ba72f9e4d213ae5c665d5f554991a5c85ab596b909f33b462ec383c8279e1","entity_key":"d_accommodation_issues_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"924943c99be5081b9dbcf8dc9f06139447f5c78a70a5e5529ae8c3be25ba874a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/331ba72f9e4d213ae5c665d5f554991a5c85ab596b909f33b462ec383c8279e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_02:4 -> audio/generated/de-DE/dialogues/34b0cd537c55c432f2247c48c0feca84a4f22c9cf41f7a8dc03db5673b357e97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3dc2aeb9-0be4-5738-b69e-fd744b0f56ba', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb3c4fa9b7764460458350264bf9d54e9ac32d71fcbf44d35bb4d2cb6a14f2f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50dd97aa-56f7-5429-ab80-b72297ccc074', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3dc2aeb9-0be4-5738-b69e-fd744b0f56ba', 1), 'eb3c4fa9b7764460458350264bf9d54e9ac32d71fcbf44d35bb4d2cb6a14f2f6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/34b0cd537c55c432f2247c48c0feca84a4f22c9cf41f7a8dc03db5673b357e97.mp3', 2586, '2026-09-13 08:15:31.745022', 'ebf157f2d99b4aca3206b824271f55b67f7a42dce991f9402444503cb4999b38', 'validated', '{"audio_key":"34b0cd537c55c432f2247c48c0feca84a4f22c9cf41f7a8dc03db5673b357e97","entity_key":"d_travel_disruptions_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ebf157f2d99b4aca3206b824271f55b67f7a42dce991f9402444503cb4999b38","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/34b0cd537c55c432f2247c48c0feca84a4f22c9cf41f7a8dc03db5673b357e97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_03:3 -> audio/generated/de-DE/dialogues/37090f923cbcadc306e7ad2a44fc7a426a2a09fcbfc72169e335c62ef09e3cc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2029acf8-694d-5edf-845a-414c38fe0761', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3c510e9dbdce2f0070bb62f295ec2cbc1f4fd1e62d4b8ab0f27988a7c54d6b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d50e60a-4263-5a73-a2de-83f4ae4b4967', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2029acf8-694d-5edf-845a-414c38fe0761', 1), 'd3c510e9dbdce2f0070bb62f295ec2cbc1f4fd1e62d4b8ab0f27988a7c54d6b0',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37090f923cbcadc306e7ad2a44fc7a426a2a09fcbfc72169e335c62ef09e3cc8.mp3', 2507, '2026-09-13 08:15:32.800841', '3ce3ff81d21f83a1f03a5166221d0a0dc8a98cbc76b8b5539b880a147c6726d6', 'validated', '{"audio_key":"37090f923cbcadc306e7ad2a44fc7a426a2a09fcbfc72169e335c62ef09e3cc8","entity_key":"d_job_interviews_achievements_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3ce3ff81d21f83a1f03a5166221d0a0dc8a98cbc76b8b5539b880a147c6726d6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/37090f923cbcadc306e7ad2a44fc7a426a2a09fcbfc72169e335c62ef09e3cc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_02:3 -> audio/generated/de-DE/dialogues/3f78ed1e3fe249f043e4a35c83403b83ef52bc755695df6d92a0d6416dd8a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fbe8d9e-722f-531b-92e2-9cc46c755121', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1971681545f7ceff3fc2eb9083cc95984562697f127c69b661cbaf6463e92ed8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58fe9850-feab-5333-a68d-635d44b9d971', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fbe8d9e-722f-531b-92e2-9cc46c755121', 1), '1971681545f7ceff3fc2eb9083cc95984562697f127c69b661cbaf6463e92ed8',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f78ed1e3fe249f043e4a35c83403b83ef52bc755695df6d92a0d6416dd8a110.mp3', 1671, '2026-09-13 08:15:32.821029', '26554925677e03f31fabc5d63bbd5f2bc21c6b34eaa19f2f46fe670a85d19ac3', 'validated', '{"audio_key":"3f78ed1e3fe249f043e4a35c83403b83ef52bc755695df6d92a0d6416dd8a110","entity_key":"d_travel_disruptions_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"26554925677e03f31fabc5d63bbd5f2bc21c6b34eaa19f2f46fe670a85d19ac3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f78ed1e3fe249f043e4a35c83403b83ef52bc755695df6d92a0d6416dd8a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_03:4 -> audio/generated/de-DE/dialogues/4063a285b721a7c648418f45e7b3caa1d94c49d1bab3e8b49ee1870b4701d8ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c329befb-1430-51fa-a1cb-3c967745a68d', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3aff11372cd9f3b2f1a4d385f134852e9baf5bbf0b989738ee5bb86f1c7cc648'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('409e7998-b253-5f05-8ab4-8da3aa950b00', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c329befb-1430-51fa-a1cb-3c967745a68d', 1), '3aff11372cd9f3b2f1a4d385f134852e9baf5bbf0b989738ee5bb86f1c7cc648',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4063a285b721a7c648418f45e7b3caa1d94c49d1bab3e8b49ee1870b4701d8ef.mp3', 4440, '2026-09-13 08:15:34.173653', 'a71c0f144db482af8012d874571c3dff9b1fa5414ebdcea0fcb57e698ff3a990', 'validated', '{"audio_key":"4063a285b721a7c648418f45e7b3caa1d94c49d1bab3e8b49ee1870b4701d8ef","entity_key":"d_travel_disruptions_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a71c0f144db482af8012d874571c3dff9b1fa5414ebdcea0fcb57e698ff3a990","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4063a285b721a7c648418f45e7b3caa1d94c49d1bab3e8b49ee1870b4701d8ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_01:3 -> audio/generated/de-DE/dialogues/4110bcd9d1f117254723e151a51cb63666f8b7df45a7632fa71672cff7239ca9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7acbdb1a-78dc-5c7a-bbae-983afc34e10a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a40cb7cf4d4f22fa80e2ad775989f1a5ec24e5a47f5980dc7d046090fe46223f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67f53afb-179a-54f9-b243-947f02c85d56', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7acbdb1a-78dc-5c7a-bbae-983afc34e10a', 1), 'a40cb7cf4d4f22fa80e2ad775989f1a5ec24e5a47f5980dc7d046090fe46223f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4110bcd9d1f117254723e151a51cb63666f8b7df45a7632fa71672cff7239ca9.mp3', 2455, '2026-09-13 08:15:33.969656', '636b27c82b4d4c7d51e90635a24aca9998aa666f4413ab868cae41e1b919a3ca', 'validated', '{"audio_key":"4110bcd9d1f117254723e151a51cb63666f8b7df45a7632fa71672cff7239ca9","entity_key":"d_job_interviews_achievements_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"636b27c82b4d4c7d51e90635a24aca9998aa666f4413ab868cae41e1b919a3ca","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4110bcd9d1f117254723e151a51cb63666f8b7df45a7632fa71672cff7239ca9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_01:4 -> audio/generated/de-DE/dialogues/493a0c748106c6146c95f21a30a711f583a1b21772e1e16ddd31e4ebcdd5237a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98dba0e2-da35-5afe-bfbc-093eaf641d89', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1306f57fbf21ff6cc8eb1122c34c17164483e587f0e690e0de14464bf6833515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('323c9e5a-bbb2-51cf-a7c2-48e5dd8906ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98dba0e2-da35-5afe-bfbc-093eaf641d89', 1), '1306f57fbf21ff6cc8eb1122c34c17164483e587f0e690e0de14464bf6833515',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/493a0c748106c6146c95f21a30a711f583a1b21772e1e16ddd31e4ebcdd5237a.mp3', 3892, '2026-09-13 08:15:35.259744', '54f5b560b3acfb3e9745ce0f8b6a8e68141ab7d3db9d727353fe17372f9e03ca', 'validated', '{"audio_key":"493a0c748106c6146c95f21a30a711f583a1b21772e1e16ddd31e4ebcdd5237a","entity_key":"d_product_research_decisions_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"54f5b560b3acfb3e9745ce0f8b6a8e68141ab7d3db9d727353fe17372f9e03ca","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/493a0c748106c6146c95f21a30a711f583a1b21772e1e16ddd31e4ebcdd5237a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_02:2 -> audio/generated/de-DE/dialogues/4ab7d06141942f94d18c3f3719d0294ca61fa0f7b7250446f88c1ea92b9f1a8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04158c43-6861-5ef2-bd86-9408e284f0dc', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8a1c86d6f407210a198ce898b0a376526ebb58dbda8d04f04fa4761d23b2ad4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58451458-bdc4-5b6b-b180-677abcd6ca89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04158c43-6861-5ef2-bd86-9408e284f0dc', 1), 'c8a1c86d6f407210a198ce898b0a376526ebb58dbda8d04f04fa4761d23b2ad4',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ab7d06141942f94d18c3f3719d0294ca61fa0f7b7250446f88c1ea92b9f1a8b.mp3', 2533, '2026-09-13 08:15:35.338059', '4e681d4d13e7ec1f315c379c98e7cc1fc66dcf1a371bcf3eb43ce6a29ff158d0', 'validated', '{"audio_key":"4ab7d06141942f94d18c3f3719d0294ca61fa0f7b7250446f88c1ea92b9f1a8b","entity_key":"d_complaints_service_resolution_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4e681d4d13e7ec1f315c379c98e7cc1fc66dcf1a371bcf3eb43ce6a29ff158d0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/4ab7d06141942f94d18c3f3719d0294ca61fa0f7b7250446f88c1ea92b9f1a8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_03:1 -> audio/generated/de-DE/dialogues/4ddff56183b6126ba62938296c2c061933c0a7243f90dbefd2d236692f911332.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('add7135b-f127-5029-87c0-620200dabb45', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f97f2fc2be39e0868c3f0c1dcd4548ed7f780a5344530ee71d25b1f466507899'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a84cf91-2e70-590d-b30a-478fd2dfb3fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('add7135b-f127-5029-87c0-620200dabb45', 1), 'f97f2fc2be39e0868c3f0c1dcd4548ed7f780a5344530ee71d25b1f466507899',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ddff56183b6126ba62938296c2c061933c0a7243f90dbefd2d236692f911332.mp3', 5041, '2026-09-13 08:15:36.766442', '1741cd3a74fcd1096bdc47c35ac57faef25f60352aec304d09a8dba6fcb9bd94', 'validated', '{"audio_key":"4ddff56183b6126ba62938296c2c061933c0a7243f90dbefd2d236692f911332","entity_key":"d_accommodation_issues_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1741cd3a74fcd1096bdc47c35ac57faef25f60352aec304d09a8dba6fcb9bd94","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4ddff56183b6126ba62938296c2c061933c0a7243f90dbefd2d236692f911332.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_02:4 -> audio/generated/de-DE/dialogues/4ec15304190c126036bd31b5e932aaf51b04518834e5aed69fb7cee292932c46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d851ee6d-ba1f-52c2-b52f-da017d659566', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e417275bec1e70ae55b0e4ba06c96137b35f6fb8c423df577fb375e4398823aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb556e64-5797-586c-937d-e2a47d43e8b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d851ee6d-ba1f-52c2-b52f-da017d659566', 1), 'e417275bec1e70ae55b0e4ba06c96137b35f6fb8c423df577fb375e4398823aa',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ec15304190c126036bd31b5e932aaf51b04518834e5aed69fb7cee292932c46.mp3', 4623, '2026-09-13 08:15:36.773412', '129efe6411a8c83e907c4277578a72f13694ab008ffe54dfd4a3cc16b83b4d7f', 'validated', '{"audio_key":"4ec15304190c126036bd31b5e932aaf51b04518834e5aed69fb7cee292932c46","entity_key":"d_product_research_decisions_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"129efe6411a8c83e907c4277578a72f13694ab008ffe54dfd4a3cc16b83b4d7f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4ec15304190c126036bd31b5e932aaf51b04518834e5aed69fb7cee292932c46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_02:2 -> audio/generated/de-DE/dialogues/5040f7d9fbf06d10d1b349638e0a1f218caf09a2a310878dd431fb5c311434d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ccfd06d8-cb97-5dee-ad41-045f8df291f9', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e42692c22284299b1accf5d12b6910019911b02de09b79bc20b5604b88484e79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d657ea32-54d4-5dab-a37b-6e3b7e067b47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ccfd06d8-cb97-5dee-ad41-045f8df291f9', 1), 'e42692c22284299b1accf5d12b6910019911b02de09b79bc20b5604b88484e79',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5040f7d9fbf06d10d1b349638e0a1f218caf09a2a310878dd431fb5c311434d4.mp3', 2455, '2026-09-13 08:15:37.920954', '3ffbe3cb59b4a70e25c92bbf899cf04bb45a87c7ab24426c9712ac600bf7d0be', 'validated', '{"audio_key":"5040f7d9fbf06d10d1b349638e0a1f218caf09a2a310878dd431fb5c311434d4","entity_key":"d_work_priorities_blockers_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3ffbe3cb59b4a70e25c92bbf899cf04bb45a87c7ab24426c9712ac600bf7d0be","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5040f7d9fbf06d10d1b349638e0a1f218caf09a2a310878dd431fb5c311434d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_03:2 -> audio/generated/de-DE/dialogues/54109d2d9055fcbf873e2fbb8f28bd58e77003de8aede731d6c8abc5860bdfe2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d5b2230-8f43-59c2-8e4a-341c88a845e2', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b4c1efcdc0a77f242e9afcec2d2dc3acafb0256ad01c314fe7b4487d6b20927'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce457eb9-db4d-5117-85d3-c11f23452f17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d5b2230-8f43-59c2-8e4a-341c88a845e2', 1), '2b4c1efcdc0a77f242e9afcec2d2dc3acafb0256ad01c314fe7b4487d6b20927',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/54109d2d9055fcbf873e2fbb8f28bd58e77003de8aede731d6c8abc5860bdfe2.mp3', 2324, '2026-09-13 08:15:37.978942', '4c398028043c6f2068a5f93be5b59bc92310f3b5e57b939be856db9faa695aa6', 'validated', '{"audio_key":"54109d2d9055fcbf873e2fbb8f28bd58e77003de8aede731d6c8abc5860bdfe2","entity_key":"d_complaints_service_resolution_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4c398028043c6f2068a5f93be5b59bc92310f3b5e57b939be856db9faa695aa6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/54109d2d9055fcbf873e2fbb8f28bd58e77003de8aede731d6c8abc5860bdfe2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_01:3 -> audio/generated/de-DE/dialogues/5422fadc43a47fc3915ece32751d218689449f07948b6941f36dc5be139f4ea0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0eb42307-2913-5bb4-8081-f21d1c579c0d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f083c55959ac75221cf6e055acf91aa18c5db3a950cce8cd7ca955f0fc18663'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df1192c0-e681-5fde-bd9d-e6e00d6a3a2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0eb42307-2913-5bb4-8081-f21d1c579c0d', 1), '2f083c55959ac75221cf6e055acf91aa18c5db3a950cce8cd7ca955f0fc18663',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5422fadc43a47fc3915ece32751d218689449f07948b6941f36dc5be139f4ea0.mp3', 3160, '2026-09-13 08:15:39.225934', '397ffa09d730ed2e2b09477a6731cccabdf2faffdb46b0dc24ac0b1f9a579875', 'validated', '{"audio_key":"5422fadc43a47fc3915ece32751d218689449f07948b6941f36dc5be139f4ea0","entity_key":"d_accommodation_issues_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"397ffa09d730ed2e2b09477a6731cccabdf2faffdb46b0dc24ac0b1f9a579875","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5422fadc43a47fc3915ece32751d218689449f07948b6941f36dc5be139f4ea0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_01:1 -> audio/generated/de-DE/dialogues/568dd643daafc98dbb40a1179864e5243ef463228a416a983678ec39525d9160.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6009abf7-79fa-5806-a84c-e9d7ee400201', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '443891abad0257e369c9a4c5e1df1ec2cfe024197e4e8af0516191fd8e0010d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83f82f2d-3652-5df9-96f0-52bd2d60ef29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6009abf7-79fa-5806-a84c-e9d7ee400201', 1), '443891abad0257e369c9a4c5e1df1ec2cfe024197e4e8af0516191fd8e0010d4',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/568dd643daafc98dbb40a1179864e5243ef463228a416a983678ec39525d9160.mp3', 3840, '2026-09-13 08:15:39.345007', '26631cfd5dc1d414cc17f39dc595d95aa93477f3841aa68f7f4e643fcad480c4', 'validated', '{"audio_key":"568dd643daafc98dbb40a1179864e5243ef463228a416a983678ec39525d9160","entity_key":"d_accommodation_issues_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"26631cfd5dc1d414cc17f39dc595d95aa93477f3841aa68f7f4e643fcad480c4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/568dd643daafc98dbb40a1179864e5243ef463228a416a983678ec39525d9160.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_01:3 -> audio/generated/de-DE/dialogues/5930fee7291e0fe12e7181212f0095f55589819756b198818ecf544fc998978f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f8d48c8-3b4b-5abc-a687-c2b2a3a77035', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92ee2c39e9e1c087b7354aaa49491cf608cb0a50e447818c5773126b36079b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef2c149c-c90b-57f3-8e77-196b3e7e3243', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f8d48c8-3b4b-5abc-a687-c2b2a3a77035', 1), 'b92ee2c39e9e1c087b7354aaa49491cf608cb0a50e447818c5773126b36079b1',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5930fee7291e0fe12e7181212f0095f55589819756b198818ecf544fc998978f.mp3', 2951, '2026-09-13 08:15:40.419161', 'b18e4588524459da21a405b68e1dd4d980f46b6746525c3d65031261747f6d1a', 'validated', '{"audio_key":"5930fee7291e0fe12e7181212f0095f55589819756b198818ecf544fc998978f","entity_key":"d_relationships_misunderstandings_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b18e4588524459da21a405b68e1dd4d980f46b6746525c3d65031261747f6d1a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5930fee7291e0fe12e7181212f0095f55589819756b198818ecf544fc998978f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_02:3 -> audio/generated/de-DE/dialogues/5b4984ef9ad658f57483993709bf1b9e151d2f08f68bbf3cbc365a3f0991dfed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9452ad2-d589-5b31-b3fd-c6f5a223587c', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ca43b563207a3b85ffa9ce99666f60b6f841b8f7ad9a54992cee27f8b15f539'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59bc321d-22da-5020-8429-2ab406ee6a4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9452ad2-d589-5b31-b3fd-c6f5a223587c', 1), '8ca43b563207a3b85ffa9ce99666f60b6f841b8f7ad9a54992cee27f8b15f539',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b4984ef9ad658f57483993709bf1b9e151d2f08f68bbf3cbc365a3f0991dfed.mp3', 3657, '2026-09-13 08:15:40.652239', '8d309cb0653239df8a604c8ed79d739fd4bb13b88da6a0596836116639326399', 'validated', '{"audio_key":"5b4984ef9ad658f57483993709bf1b9e151d2f08f68bbf3cbc365a3f0991dfed","entity_key":"d_accommodation_issues_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8d309cb0653239df8a604c8ed79d739fd4bb13b88da6a0596836116639326399","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5b4984ef9ad658f57483993709bf1b9e151d2f08f68bbf3cbc365a3f0991dfed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_01:4 -> audio/generated/de-DE/dialogues/5d1b66ab8d270e7c901de1b11e59de647bcc2c10cbd46bf6f94fb4c7d7fa5b92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f887cf6-c0f9-517a-a43d-ea108591f04a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80225cb5f2e2a63e3d90c29f1bd11c8cec106f9e6335b1b2f57e8e0634caa2ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a44b5e4c-a33c-577b-a9a8-bae93cfcf748', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f887cf6-c0f9-517a-a43d-ea108591f04a', 1), '80225cb5f2e2a63e3d90c29f1bd11c8cec106f9e6335b1b2f57e8e0634caa2ed',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d1b66ab8d270e7c901de1b11e59de647bcc2c10cbd46bf6f94fb4c7d7fa5b92.mp3', 4022, '2026-09-13 08:15:41.791753', 'f90959243011498053fd558caa931ec1fee7ab53584e1ec53c7ef39f4476c10c', 'validated', '{"audio_key":"5d1b66ab8d270e7c901de1b11e59de647bcc2c10cbd46bf6f94fb4c7d7fa5b92","entity_key":"d_feedback_critique_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f90959243011498053fd558caa931ec1fee7ab53584e1ec53c7ef39f4476c10c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5d1b66ab8d270e7c901de1b11e59de647bcc2c10cbd46bf6f94fb4c7d7fa5b92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_01:3 -> audio/generated/de-DE/dialogues/6276a339e541b11341dde904f2c3b2b1dd06336e8c25559ef1ba5051eac19d54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1991dabe-58cc-5535-bebe-15e27c5d17c3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f1305986367a6b57c6b1ba7776a93e30af405bb2c89f9f1a12ab8c8a3e63b95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fc1d985-f126-566b-80a2-3d463eae8e95', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1991dabe-58cc-5535-bebe-15e27c5d17c3', 1), '5f1305986367a6b57c6b1ba7776a93e30af405bb2c89f9f1a12ab8c8a3e63b95',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6276a339e541b11341dde904f2c3b2b1dd06336e8c25559ef1ba5051eac19d54.mp3', 1332, '2026-09-13 08:15:41.672128', '79b81e421c51c6e60586e33b9a591716b6861a6ea7c6d5369d6483d927b890a5', 'validated', '{"audio_key":"6276a339e541b11341dde904f2c3b2b1dd06336e8c25559ef1ba5051eac19d54","entity_key":"d_study_challenges_feedback_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"79b81e421c51c6e60586e33b9a591716b6861a6ea7c6d5369d6483d927b890a5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6276a339e541b11341dde904f2c3b2b1dd06336e8c25559ef1ba5051eac19d54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_01:4 -> audio/generated/de-DE/dialogues/64297559be8a8e0660c947cd45c7b8685849fe8b7eb5730ee9bb40dab69cbe5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28337317-597e-52e7-8615-b009bfb696ca', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ebc5a3bf2cdb0db02c05f05dd9cf9df8e656dbc027313263764ff910ca94ed4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b482a6bd-fc6d-5d15-bb58-e9fae7312617', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28337317-597e-52e7-8615-b009bfb696ca', 1), '1ebc5a3bf2cdb0db02c05f05dd9cf9df8e656dbc027313263764ff910ca94ed4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/64297559be8a8e0660c947cd45c7b8685849fe8b7eb5730ee9bb40dab69cbe5f.mp3', 3604, '2026-09-13 08:15:42.942548', '7cd4143a29a3af691787fbaafeb12520cb78555d80d430b4329a5d2b497b3da8', 'validated', '{"audio_key":"64297559be8a8e0660c947cd45c7b8685849fe8b7eb5730ee9bb40dab69cbe5f","entity_key":"d_travel_disruptions_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"7cd4143a29a3af691787fbaafeb12520cb78555d80d430b4329a5d2b497b3da8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/64297559be8a8e0660c947cd45c7b8685849fe8b7eb5730ee9bb40dab69cbe5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_03:2 -> audio/generated/de-DE/dialogues/647785668776ef71621140c8aed199d2595965137c91a8844e880592a32fd1b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('33702e67-5225-5a93-ae96-ee684167d1a2', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f696862c76dcdd80908d1ccd85b07bf5ebb7c4013e9312829138771fba88577'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3cf3e50-81c6-5f9d-a760-1c5928bc0a5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('33702e67-5225-5a93-ae96-ee684167d1a2', 1), '2f696862c76dcdd80908d1ccd85b07bf5ebb7c4013e9312829138771fba88577',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/647785668776ef71621140c8aed199d2595965137c91a8844e880592a32fd1b6.mp3', 2951, '2026-09-13 08:15:42.975459', 'db73d09d6500ec77156a765cb40830cf5857602facb2c9f3eb449330c96bb0bc', 'validated', '{"audio_key":"647785668776ef71621140c8aed199d2595965137c91a8844e880592a32fd1b6","entity_key":"d_relationships_misunderstandings_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"db73d09d6500ec77156a765cb40830cf5857602facb2c9f3eb449330c96bb0bc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/647785668776ef71621140c8aed199d2595965137c91a8844e880592a32fd1b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_02:2 -> audio/generated/de-DE/dialogues/68145a20c16e6b8b7db83d8312efc91df42f48c4a29fa553fa44b6e73cb507bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5de6b117-e50e-5e24-b203-f70d7b93890d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff9e7c4ae5cb257355294c1d2872bccb41abbb940ad8aec3be9437082cdbff8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdbcdae3-8db2-5150-821e-4a3dd3fc5f12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5de6b117-e50e-5e24-b203-f70d7b93890d', 1), 'aff9e7c4ae5cb257355294c1d2872bccb41abbb940ad8aec3be9437082cdbff8',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/68145a20c16e6b8b7db83d8312efc91df42f48c4a29fa553fa44b6e73cb507bc.mp3', 3840, '2026-09-13 08:15:44.272509', '642d352df4ce5dd479657f923dc42ef6f795493e9f564cd36c3ea8e58d78dfd8', 'validated', '{"audio_key":"68145a20c16e6b8b7db83d8312efc91df42f48c4a29fa553fa44b6e73cb507bc","entity_key":"d_study_challenges_feedback_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"642d352df4ce5dd479657f923dc42ef6f795493e9f564cd36c3ea8e58d78dfd8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/68145a20c16e6b8b7db83d8312efc91df42f48c4a29fa553fa44b6e73cb507bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_01:3 -> audio/generated/de-DE/dialogues/6864e6a44ecc14228ccf892bdc67e4b3c184415c290eeca7941f5e808cf6bc9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12c31402-310c-55be-bfb7-eb484dbf8a8c', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f984884834d69bd48ff94256dbac32d9c379b0831b8676bf889941f0914cdeb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56248e28-8437-561d-a344-30f5db250ea5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12c31402-310c-55be-bfb7-eb484dbf8a8c', 1), 'f984884834d69bd48ff94256dbac32d9c379b0831b8676bf889941f0914cdeb3',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6864e6a44ecc14228ccf892bdc67e4b3c184415c290eeca7941f5e808cf6bc9f.mp3', 3108, '2026-09-13 08:15:44.208427', '0fc068e5514608916f2d413f31507ab8255595c9a71d1efab340ae2d4ecc102b', 'validated', '{"audio_key":"6864e6a44ecc14228ccf892bdc67e4b3c184415c290eeca7941f5e808cf6bc9f","entity_key":"d_feedback_critique_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0fc068e5514608916f2d413f31507ab8255595c9a71d1efab340ae2d4ecc102b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6864e6a44ecc14228ccf892bdc67e4b3c184415c290eeca7941f5e808cf6bc9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_01:1 -> audio/generated/de-DE/dialogues/68931f00af495be888d1f283f1bd4b48810eaed84e707d579729aead9d6de400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a166aefa-dc63-5e50-8075-a6c33865c2b3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9af4e52d09e5ea4d7bd5f87062ad91dff2658ef54b7f7847e4c5e52792d01b8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f464a2c1-bf60-51cb-ab00-fd7f1fc0fad8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a166aefa-dc63-5e50-8075-a6c33865c2b3', 1), '9af4e52d09e5ea4d7bd5f87062ad91dff2658ef54b7f7847e4c5e52792d01b8e',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/68931f00af495be888d1f283f1bd4b48810eaed84e707d579729aead9d6de400.mp3', 4728, '2026-09-13 08:15:45.664290', '0705309396322c3a138697ee76964f4ffbafcba4a2b7556168539fbf1fb6e3aa', 'validated', '{"audio_key":"68931f00af495be888d1f283f1bd4b48810eaed84e707d579729aead9d6de400","entity_key":"d_feedback_critique_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0705309396322c3a138697ee76964f4ffbafcba4a2b7556168539fbf1fb6e3aa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/68931f00af495be888d1f283f1bd4b48810eaed84e707d579729aead9d6de400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_01:4 -> audio/generated/de-DE/dialogues/69289f604acabf6cbca24d000245dd62b0b2814f5e14d14a2d55a74adbdeef44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8329a976-04df-57d1-94d9-c0c03c2a92f4', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cafdc264a1e3dbc1e876af19bc541d24e481d0ecec82b14d82c84c474f4d6c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('538b5a26-4f90-5490-ac2f-9ef3d71d4ca2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8329a976-04df-57d1-94d9-c0c03c2a92f4', 1), '1cafdc264a1e3dbc1e876af19bc541d24e481d0ecec82b14d82c84c474f4d6c6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/69289f604acabf6cbca24d000245dd62b0b2814f5e14d14a2d55a74adbdeef44.mp3', 4257, '2026-09-13 08:15:45.810993', 'ad6059c51aa38ba5a4182d03bc788abeba4777cda50040ba8dffde794e7e2596', 'validated', '{"audio_key":"69289f604acabf6cbca24d000245dd62b0b2814f5e14d14a2d55a74adbdeef44","entity_key":"d_study_challenges_feedback_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ad6059c51aa38ba5a4182d03bc788abeba4777cda50040ba8dffde794e7e2596","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/69289f604acabf6cbca24d000245dd62b0b2814f5e14d14a2d55a74adbdeef44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_02:3 -> audio/generated/de-DE/dialogues/6c671c2c946a658deb3a7927db4c16bfa09fe9b1bbbf000bd6e385e44d747ad4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e7ecea3-8641-5829-9ef9-2bab4145d249', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a24c8a447dcc7c14f223668dad5a00436e208e16ad64918171552a90fba3c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('008958aa-fdf3-506e-8cf4-6f712cd51f91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e7ecea3-8641-5829-9ef9-2bab4145d249', 1), '73a24c8a447dcc7c14f223668dad5a00436e208e16ad64918171552a90fba3c1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6c671c2c946a658deb3a7927db4c16bfa09fe9b1bbbf000bd6e385e44d747ad4.mp3', 2873, '2026-09-13 08:15:46.826232', '6317dc10a99e237bb8ebdf90a90b54e27365c173982a4fff6c69e702b8ba0e48', 'validated', '{"audio_key":"6c671c2c946a658deb3a7927db4c16bfa09fe9b1bbbf000bd6e385e44d747ad4","entity_key":"d_feedback_critique_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6317dc10a99e237bb8ebdf90a90b54e27365c173982a4fff6c69e702b8ba0e48","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6c671c2c946a658deb3a7927db4c16bfa09fe9b1bbbf000bd6e385e44d747ad4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_03:4 -> audio/generated/de-DE/dialogues/703b2063d8d3471ee2adb2045887dcd03047307f428e98974f485ee738e6bd7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cb8a2d9-052e-5982-b5b0-a95f299f8dad', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17a4a8c07265caf8c919d8fee10c7b5356928f607e904ba813d2d062b2e2e55a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('048f712d-48f0-54be-9eb4-71c436179a7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cb8a2d9-052e-5982-b5b0-a95f299f8dad', 1), '17a4a8c07265caf8c919d8fee10c7b5356928f607e904ba813d2d062b2e2e55a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/703b2063d8d3471ee2adb2045887dcd03047307f428e98974f485ee738e6bd7d.mp3', 3840, '2026-09-13 08:15:47.134387', '0c7967ec457415c88947af19b68f9856aed1d7743520f09dd2cde20e89c4f781', 'validated', '{"audio_key":"703b2063d8d3471ee2adb2045887dcd03047307f428e98974f485ee738e6bd7d","entity_key":"d_product_research_decisions_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0c7967ec457415c88947af19b68f9856aed1d7743520f09dd2cde20e89c4f781","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/703b2063d8d3471ee2adb2045887dcd03047307f428e98974f485ee738e6bd7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_01:3 -> audio/generated/de-DE/dialogues/75b4354f5c3fb0e1ed84e7c89137aa9377b2eebb946a5f1f9fc1555c6343bb53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bcd3d700-5d59-5a6a-93af-81835113e93e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ffc4acbabf7e3ff835416c4e9f1b83a5d32e67414edad950c6e5e76caad1ffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95979aaf-cfbc-5e36-9ffd-6fe477c73495', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bcd3d700-5d59-5a6a-93af-81835113e93e', 1), '0ffc4acbabf7e3ff835416c4e9f1b83a5d32e67414edad950c6e5e76caad1ffd',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/75b4354f5c3fb0e1ed84e7c89137aa9377b2eebb946a5f1f9fc1555c6343bb53.mp3', 3186, '2026-09-13 08:15:48.056102', '867c4d94a26fb1234b0d4a36c496fe06a8fe2db47367f71f244a93af46650e82', 'validated', '{"audio_key":"75b4354f5c3fb0e1ed84e7c89137aa9377b2eebb946a5f1f9fc1555c6343bb53","entity_key":"d_complaints_service_resolution_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"867c4d94a26fb1234b0d4a36c496fe06a8fe2db47367f71f244a93af46650e82","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/75b4354f5c3fb0e1ed84e7c89137aa9377b2eebb946a5f1f9fc1555c6343bb53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_01:2 -> audio/generated/de-DE/dialogues/7670c94843f8d043713817ef8eda353da8feb2de8df8a0e26ab6422394e46391.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fa50401-00fd-5fc0-aa20-f7aba9d2752c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0854965aa2e7e67e3b32a34508b45eaa86c18a3a7248031300b88a24bd528d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8e23521-f0bb-5431-98a4-c04c494d86ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fa50401-00fd-5fc0-aa20-f7aba9d2752c', 1), 'f0854965aa2e7e67e3b32a34508b45eaa86c18a3a7248031300b88a24bd528d3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7670c94843f8d043713817ef8eda353da8feb2de8df8a0e26ab6422394e46391.mp3', 1619, '2026-09-13 08:15:48.174223', '0323ddb576164037a7059dd6cccf4972907d7a5c768f2e859487390e082b71ed', 'validated', '{"audio_key":"7670c94843f8d043713817ef8eda353da8feb2de8df8a0e26ab6422394e46391","entity_key":"d_feedback_critique_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0323ddb576164037a7059dd6cccf4972907d7a5c768f2e859487390e082b71ed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7670c94843f8d043713817ef8eda353da8feb2de8df8a0e26ab6422394e46391.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_02:2 -> audio/generated/de-DE/dialogues/7afd43c26db44e30261f68ec261cc07a3ca55019dd99d9e222452796783bde90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1eff2c9b-d274-50c2-8297-1ea96693fa24', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f8f9449be32615948790ebd094e6628be4be11c8a3e0ed3b70c6895eaa84281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9838b08c-7f54-5f9a-a9b4-a94b4330fe7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1eff2c9b-d274-50c2-8297-1ea96693fa24', 1), '3f8f9449be32615948790ebd094e6628be4be11c8a3e0ed3b70c6895eaa84281',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7afd43c26db44e30261f68ec261cc07a3ca55019dd99d9e222452796783bde90.mp3', 4022, '2026-09-13 08:15:49.379038', '03469fe23df6ef0674e65e8442c1ad9264480138a7a66298e050168655a00f63', 'validated', '{"audio_key":"7afd43c26db44e30261f68ec261cc07a3ca55019dd99d9e222452796783bde90","entity_key":"d_travel_disruptions_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"03469fe23df6ef0674e65e8442c1ad9264480138a7a66298e050168655a00f63","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7afd43c26db44e30261f68ec261cc07a3ca55019dd99d9e222452796783bde90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_03:3 -> audio/generated/de-DE/dialogues/7f94a8d1a20a3acfa443412a5498ae6e666a958603ef6d1513f0fc0349db55be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1f2ab62-6972-5d71-b327-0de6c12a9769', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb9073e65dd9f9773e3ff768afb0b3dc845f1639d28491366370b837ede0b43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('685a9123-3661-576d-90fc-8825097c98d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1f2ab62-6972-5d71-b327-0de6c12a9769', 1), '2cb9073e65dd9f9773e3ff768afb0b3dc845f1639d28491366370b837ede0b43',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f94a8d1a20a3acfa443412a5498ae6e666a958603ef6d1513f0fc0349db55be.mp3', 4832, '2026-09-13 08:15:49.710333', '62a76b9147f25279baadafde8f96bc5b8463ef274b710fabd3cecb86ac1b51f4', 'validated', '{"audio_key":"7f94a8d1a20a3acfa443412a5498ae6e666a958603ef6d1513f0fc0349db55be","entity_key":"d_product_research_decisions_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"62a76b9147f25279baadafde8f96bc5b8463ef274b710fabd3cecb86ac1b51f4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7f94a8d1a20a3acfa443412a5498ae6e666a958603ef6d1513f0fc0349db55be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_01:2 -> audio/generated/de-DE/dialogues/7fddcf5abca3776c84869dd9d2452287dfbdcefdf468e1b2151ebb2be5d6dbfe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39b1dbf2-c71b-5d89-98bf-4e3cc589c2e5', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd54fb4953c24dfe280b5a3dbce3f6fd408e20d1061775fb1a71638643e8ddaad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df9c29a2-9964-5796-8ed4-2c21d71393d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39b1dbf2-c71b-5d89-98bf-4e3cc589c2e5', 1), 'd54fb4953c24dfe280b5a3dbce3f6fd408e20d1061775fb1a71638643e8ddaad',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7fddcf5abca3776c84869dd9d2452287dfbdcefdf468e1b2151ebb2be5d6dbfe.mp3', 4179, '2026-09-13 08:15:50.723856', 'ffd5e6c684d0f5f3c6a0cf28aa4e19c2c3c3ee8c1056059db37edb6f5ea6bf2f', 'validated', '{"audio_key":"7fddcf5abca3776c84869dd9d2452287dfbdcefdf468e1b2151ebb2be5d6dbfe","entity_key":"d_job_interviews_achievements_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ffd5e6c684d0f5f3c6a0cf28aa4e19c2c3c3ee8c1056059db37edb6f5ea6bf2f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7fddcf5abca3776c84869dd9d2452287dfbdcefdf468e1b2151ebb2be5d6dbfe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_03:1 -> audio/generated/de-DE/dialogues/81cd266c0cfee38969694eef7ba059db028d24d0bda9530e45b474ed30c7711d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b98a341-ead7-5f39-a101-8e2530810a91', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6159bf4bcd52282608524b6e1e95602bbe96da9c5a99f7bcb46d24fd90475b15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0c71ccc-38e3-5489-b2df-24aa7fecc692', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b98a341-ead7-5f39-a101-8e2530810a91', 1), '6159bf4bcd52282608524b6e1e95602bbe96da9c5a99f7bcb46d24fd90475b15',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81cd266c0cfee38969694eef7ba059db028d24d0bda9530e45b474ed30c7711d.mp3', 4414, '2026-09-13 08:15:51.092702', 'c40a492681339593772c8f0ec0977fd0a936974ec15de96ef236de2ca3277131', 'validated', '{"audio_key":"81cd266c0cfee38969694eef7ba059db028d24d0bda9530e45b474ed30c7711d","entity_key":"d_work_priorities_blockers_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c40a492681339593772c8f0ec0977fd0a936974ec15de96ef236de2ca3277131","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/81cd266c0cfee38969694eef7ba059db028d24d0bda9530e45b474ed30c7711d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_03:4 -> audio/generated/de-DE/dialogues/8249700cd32a2e098facf463dd105cc95a72c3c6e84635960fa19d250b866993.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a149e58-ed39-5eac-a689-246f0687e06f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6eb3a0428eab1417ab4ae35b478770038fb5c3370b4baa6534311d57f9dae90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0d7fd30-5828-5496-b440-8d46a87f6446', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a149e58-ed39-5eac-a689-246f0687e06f', 1), 'e6eb3a0428eab1417ab4ae35b478770038fb5c3370b4baa6534311d57f9dae90',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8249700cd32a2e098facf463dd105cc95a72c3c6e84635960fa19d250b866993.mp3', 3526, '2026-09-13 08:15:52.040223', 'e4b65b866b985a60dc6a5e2d996b3bd675086a17fac50c755c20814b34a32e19', 'validated', '{"audio_key":"8249700cd32a2e098facf463dd105cc95a72c3c6e84635960fa19d250b866993","entity_key":"d_complaints_service_resolution_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e4b65b866b985a60dc6a5e2d996b3bd675086a17fac50c755c20814b34a32e19","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8249700cd32a2e098facf463dd105cc95a72c3c6e84635960fa19d250b866993.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_02:1 -> audio/generated/de-DE/dialogues/8508109de54199f31e1281e54c3543f9c71923bb2c6b0d12897473ece2f14da7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3da30a6-85b5-5b87-90bb-f8f88771fcb1', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5da8559e60ac106617ca19eeaa69485bc6ffcd1a036e1d147b2a56df1feaa0ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('055eff7a-ffd5-5d54-a370-bb5238ac15f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3da30a6-85b5-5b87-90bb-f8f88771fcb1', 1), '5da8559e60ac106617ca19eeaa69485bc6ffcd1a036e1d147b2a56df1feaa0ec',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8508109de54199f31e1281e54c3543f9c71923bb2c6b0d12897473ece2f14da7.mp3', 3709, '2026-09-13 08:15:52.406970', '958d4082ce103b14fff6fbe0aaf7edcdc7163e4e4b32341d7797f4dcbba44169', 'validated', '{"audio_key":"8508109de54199f31e1281e54c3543f9c71923bb2c6b0d12897473ece2f14da7","entity_key":"d_feedback_critique_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"958d4082ce103b14fff6fbe0aaf7edcdc7163e4e4b32341d7797f4dcbba44169","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8508109de54199f31e1281e54c3543f9c71923bb2c6b0d12897473ece2f14da7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_01:4 -> audio/generated/de-DE/dialogues/856352d1ff61cd783a2e32b3d3b5e6585e01d465ae52dea45b1599b97b069f3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ea05f3f-99f2-5e83-bf96-bcd222179c16', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '305017655b1b588f19d59a54fab5860bba38ab86dbf4b4c18f285fbd5bbb614c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81efe752-5966-501e-9cae-4a53f94b1615', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ea05f3f-99f2-5e83-bf96-bcd222179c16', 1), '305017655b1b588f19d59a54fab5860bba38ab86dbf4b4c18f285fbd5bbb614c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/856352d1ff61cd783a2e32b3d3b5e6585e01d465ae52dea45b1599b97b069f3a.mp3', 5616, '2026-09-13 08:15:53.566027', '33983cda96775b4ea0ec46e378617351b5b7c792558a1930b959c46e2914b800', 'validated', '{"audio_key":"856352d1ff61cd783a2e32b3d3b5e6585e01d465ae52dea45b1599b97b069f3a","entity_key":"d_projects_deadlines_risks_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"33983cda96775b4ea0ec46e378617351b5b7c792558a1930b959c46e2914b800","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/856352d1ff61cd783a2e32b3d3b5e6585e01d465ae52dea45b1599b97b069f3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_03:2 -> audio/generated/de-DE/dialogues/87d3a1f78d6f5e124daffd52e6dd08eb0786fa9b0c1c80906cbf1e22cb82db2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8476381a-30b0-5e88-897c-0355018ce82e', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25fd6ad880b8b0b7218c948e2ce71a2493f452704fa95682d92dfee772ec6747'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05041fa0-5edd-58ac-b544-e7b8620ed05b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8476381a-30b0-5e88-897c-0355018ce82e', 1), '25fd6ad880b8b0b7218c948e2ce71a2493f452704fa95682d92dfee772ec6747',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87d3a1f78d6f5e124daffd52e6dd08eb0786fa9b0c1c80906cbf1e22cb82db2c.mp3', 2638, '2026-09-13 08:15:53.553904', '2df1eb29b03657f8e6065b3a99928f705bb67beae57e08cc5e5d4d543de23aeb', 'validated', '{"audio_key":"87d3a1f78d6f5e124daffd52e6dd08eb0786fa9b0c1c80906cbf1e22cb82db2c","entity_key":"d_work_priorities_blockers_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"2df1eb29b03657f8e6065b3a99928f705bb67beae57e08cc5e5d4d543de23aeb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/87d3a1f78d6f5e124daffd52e6dd08eb0786fa9b0c1c80906cbf1e22cb82db2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_02:3 -> audio/generated/de-DE/dialogues/8d2a1ac5b89d02e26182edbdc219519165152ffb439c420b6b0feed74c45f5cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8a38b71-fa47-50b8-9a94-7b06f583b914', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '338b36a5b87dba9efc1a7bfdfeee0ab5c792ffd016b27b439053afd8c71d333e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd52ccf1-708a-55a1-a588-24c4981162cd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8a38b71-fa47-50b8-9a94-7b06f583b914', 1), '338b36a5b87dba9efc1a7bfdfeee0ab5c792ffd016b27b439053afd8c71d333e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8d2a1ac5b89d02e26182edbdc219519165152ffb439c420b6b0feed74c45f5cf.mp3', 3996, '2026-09-13 08:15:54.857437', 'd6567a36d315dda7b2a8dde96d163691472ff8c918a76ac0feb97042db26c476', 'validated', '{"audio_key":"8d2a1ac5b89d02e26182edbdc219519165152ffb439c420b6b0feed74c45f5cf","entity_key":"d_work_priorities_blockers_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d6567a36d315dda7b2a8dde96d163691472ff8c918a76ac0feb97042db26c476","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8d2a1ac5b89d02e26182edbdc219519165152ffb439c420b6b0feed74c45f5cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_03:3 -> audio/generated/de-DE/dialogues/90906b8244b96bf3da09bf03bec53ab906ead3c9c877c8411cffc02d6419aa5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db45e342-35bf-5696-a8ce-8affa41e7f54', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a110a3dc4a44b480602e7be33eb69b1b32b5dfca727066d5acc63e6fd03edc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa600ff5-3082-5734-8269-68b4d8a888d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db45e342-35bf-5696-a8ce-8affa41e7f54', 1), '5a110a3dc4a44b480602e7be33eb69b1b32b5dfca727066d5acc63e6fd03edc8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/90906b8244b96bf3da09bf03bec53ab906ead3c9c877c8411cffc02d6419aa5f.mp3', 4362, '2026-09-13 08:15:54.866639', '1d7c7c42ddc81087e2fc6a93174f3d7737cf70dcaf210403b4cdf089dc36ca94', 'validated', '{"audio_key":"90906b8244b96bf3da09bf03bec53ab906ead3c9c877c8411cffc02d6419aa5f","entity_key":"d_projects_deadlines_risks_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1d7c7c42ddc81087e2fc6a93174f3d7737cf70dcaf210403b4cdf089dc36ca94","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/90906b8244b96bf3da09bf03bec53ab906ead3c9c877c8411cffc02d6419aa5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_03:1 -> audio/generated/de-DE/dialogues/97a11042d4d677e90d961094dc3013ea91f781385291d01df14ae78ac3873873.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('044a3c68-8d0d-5be9-b141-a73e210664a1', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b78ae40620a95e0af72538b85e2480e7efee9987a2a55e309d830173b250976'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37f9a273-4f76-5987-9405-92d8a75970f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('044a3c68-8d0d-5be9-b141-a73e210664a1', 1), '9b78ae40620a95e0af72538b85e2480e7efee9987a2a55e309d830173b250976',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/97a11042d4d677e90d961094dc3013ea91f781385291d01df14ae78ac3873873.mp3', 3578, '2026-09-13 08:15:56.135831', '44b9ac9b02220e97bcdfa6e12ff8b7e6f17794f6f7279f91d43a3e7de9f537b2', 'validated', '{"audio_key":"97a11042d4d677e90d961094dc3013ea91f781385291d01df14ae78ac3873873","entity_key":"d_job_interviews_achievements_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"44b9ac9b02220e97bcdfa6e12ff8b7e6f17794f6f7279f91d43a3e7de9f537b2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/97a11042d4d677e90d961094dc3013ea91f781385291d01df14ae78ac3873873.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_03:1 -> audio/generated/de-DE/dialogues/9c25bae2b7b2f1b24a5843b55a4163d88358f7eecea47e0a6f90082ca47d236d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d790c8c8-fe89-5635-90fd-8377f8059524', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b15fa8bc1e05f3e7a59b2cbfbba38e99f8b7e41045027badede2facc2078f01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33ddf878-9e6b-539c-8f92-5a63a4c4b338', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d790c8c8-fe89-5635-90fd-8377f8059524', 1), '9b15fa8bc1e05f3e7a59b2cbfbba38e99f8b7e41045027badede2facc2078f01',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c25bae2b7b2f1b24a5843b55a4163d88358f7eecea47e0a6f90082ca47d236d.mp3', 3840, '2026-09-13 08:15:56.241129', 'c5974f7cef078c3f9defc7d73779e937489e1406443179162d2adeba5642205a', 'validated', '{"audio_key":"9c25bae2b7b2f1b24a5843b55a4163d88358f7eecea47e0a6f90082ca47d236d","entity_key":"d_projects_deadlines_risks_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c5974f7cef078c3f9defc7d73779e937489e1406443179162d2adeba5642205a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9c25bae2b7b2f1b24a5843b55a4163d88358f7eecea47e0a6f90082ca47d236d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_02:2 -> audio/generated/de-DE/dialogues/9c60a7a3f9f855372ab86ae488c72389cf6e068bcb59d60ebd031f87f6bf123d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a92464eb-8e6a-5cc3-9cb3-ac1bbba7a399', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92ba04aeff3f164f820e74644838ea6e33330073ef63000f04264bc1ec642192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b345e643-1e6d-5654-ba9a-4236a31ecd71', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a92464eb-8e6a-5cc3-9cb3-ac1bbba7a399', 1), '92ba04aeff3f164f820e74644838ea6e33330073ef63000f04264bc1ec642192',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c60a7a3f9f855372ab86ae488c72389cf6e068bcb59d60ebd031f87f6bf123d.mp3', 2768, '2026-09-13 08:15:57.311379', '983d785fc8ae491829258ce9d7cbd0f0ce77340d030700fa55db1d2eebf242fc', 'validated', '{"audio_key":"9c60a7a3f9f855372ab86ae488c72389cf6e068bcb59d60ebd031f87f6bf123d","entity_key":"d_product_research_decisions_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"983d785fc8ae491829258ce9d7cbd0f0ce77340d030700fa55db1d2eebf242fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9c60a7a3f9f855372ab86ae488c72389cf6e068bcb59d60ebd031f87f6bf123d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_02:2 -> audio/generated/de-DE/dialogues/9d3c60919f0837f9a6b8832c68bb6111e77e599bca4707f327616441249b0167.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c51a540-bcff-558a-a4c6-7efc29c49ea5', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '223862c20a97a8f9e9bd56221be88640e01332760cd5a45a6e11194c6a8d4daa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab7f3627-a0ce-556c-8c6c-a416af543bd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c51a540-bcff-558a-a4c6-7efc29c49ea5', 1), '223862c20a97a8f9e9bd56221be88640e01332760cd5a45a6e11194c6a8d4daa',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9d3c60919f0837f9a6b8832c68bb6111e77e599bca4707f327616441249b0167.mp3', 2168, '2026-09-13 08:15:57.357480', 'c29519dbed8491838cc6c6892dd0876e28aac05aa44bd4403bac5b1b66be7485', 'validated', '{"audio_key":"9d3c60919f0837f9a6b8832c68bb6111e77e599bca4707f327616441249b0167","entity_key":"d_feedback_critique_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"c29519dbed8491838cc6c6892dd0876e28aac05aa44bd4403bac5b1b66be7485","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9d3c60919f0837f9a6b8832c68bb6111e77e599bca4707f327616441249b0167.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_02:1 -> audio/generated/de-DE/dialogues/9ed690e9327e7a1ebec6f69ca79cfcc4f333270f15122ca639fee567794b84d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b83bb2cf-2f28-5eb5-8ed9-ffbe4b2f84f4', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8194e16ac20327bcf433ac01108baf6b11aef233445f72e58168cea7eed76756'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc05ab80-6ec4-561a-b4d2-cdc880d06818', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b83bb2cf-2f28-5eb5-8ed9-ffbe4b2f84f4', 1), '8194e16ac20327bcf433ac01108baf6b11aef233445f72e58168cea7eed76756',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9ed690e9327e7a1ebec6f69ca79cfcc4f333270f15122ca639fee567794b84d2.mp3', 2455, '2026-09-13 08:15:58.440055', 'db787b995b292d99537be4ca19e71e52d8c42f38802e21a88db1d600400366ab', 'validated', '{"audio_key":"9ed690e9327e7a1ebec6f69ca79cfcc4f333270f15122ca639fee567794b84d2","entity_key":"d_projects_deadlines_risks_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"db787b995b292d99537be4ca19e71e52d8c42f38802e21a88db1d600400366ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9ed690e9327e7a1ebec6f69ca79cfcc4f333270f15122ca639fee567794b84d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_03:1 -> audio/generated/de-DE/dialogues/9f54a2aacb164504be31f8d4cad90507d0e5e76697e5a20f12bb1ee5734d8973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8b6917f3-ff18-5d3b-bdc7-e63c853d0a5e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83a1cccb0da276a5983837ceeebb95cc572024329e7f257a461e0ce4acd96ea4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('657998a6-9b50-5230-b4cb-52bc286c207a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8b6917f3-ff18-5d3b-bdc7-e63c853d0a5e', 1), '83a1cccb0da276a5983837ceeebb95cc572024329e7f257a461e0ce4acd96ea4',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9f54a2aacb164504be31f8d4cad90507d0e5e76697e5a20f12bb1ee5734d8973.mp3', 3239, '2026-09-13 08:15:58.615539', 'b2da888784a5ee19ada91bdc76aa4cb86e0769634305e54a2a30773baeb76201', 'validated', '{"audio_key":"9f54a2aacb164504be31f8d4cad90507d0e5e76697e5a20f12bb1ee5734d8973","entity_key":"d_complaints_service_resolution_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b2da888784a5ee19ada91bdc76aa4cb86e0769634305e54a2a30773baeb76201","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9f54a2aacb164504be31f8d4cad90507d0e5e76697e5a20f12bb1ee5734d8973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_02:3 -> audio/generated/de-DE/dialogues/a1633d1885c8e72a9ccc36942297c8e5153e97a92a5135019be885059d3aa7cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75e1e852-3d7e-5b3b-9937-97be53de1c27', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a7448aa7d4c90e5ac681da18b1c3e299d85e06729e78846e84d2f2d26ec9248'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc8b538e-c605-5d2d-8c49-159d88ede914', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75e1e852-3d7e-5b3b-9937-97be53de1c27', 1), '7a7448aa7d4c90e5ac681da18b1c3e299d85e06729e78846e84d2f2d26ec9248',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a1633d1885c8e72a9ccc36942297c8e5153e97a92a5135019be885059d3aa7cd.mp3', 1515, '2026-09-13 08:15:59.518743', 'dff6b4ae72cbe19c84c4a166f6cee2f6b82f312201379180d7310c8e205f1b9e', 'validated', '{"audio_key":"a1633d1885c8e72a9ccc36942297c8e5153e97a92a5135019be885059d3aa7cd","entity_key":"d_study_challenges_feedback_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dff6b4ae72cbe19c84c4a166f6cee2f6b82f312201379180d7310c8e205f1b9e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a1633d1885c8e72a9ccc36942297c8e5153e97a92a5135019be885059d3aa7cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_03:1 -> audio/generated/de-DE/dialogues/a1a03a9160cdfc70195345852e35134f8e14c2b3ef5134f36408b41b910a1fc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75c3292f-c5ae-508a-9f4d-d45bd2cf2a52', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22a5af2893f9bbd0031169d30512ab2c1b6186017fc4502b91b1cafb3508a8c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0245601-65ac-5f6a-a478-0f64fa3725bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75c3292f-c5ae-508a-9f4d-d45bd2cf2a52', 1), '22a5af2893f9bbd0031169d30512ab2c1b6186017fc4502b91b1cafb3508a8c6',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a1a03a9160cdfc70195345852e35134f8e14c2b3ef5134f36408b41b910a1fc1.mp3', 3422, '2026-09-13 08:15:59.894987', '845a6734d94d4f9bf23ee7a98a487a6ffcaeac32c80d136c9825a778d3a33bc8', 'validated', '{"audio_key":"a1a03a9160cdfc70195345852e35134f8e14c2b3ef5134f36408b41b910a1fc1","entity_key":"d_travel_disruptions_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"845a6734d94d4f9bf23ee7a98a487a6ffcaeac32c80d136c9825a778d3a33bc8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a1a03a9160cdfc70195345852e35134f8e14c2b3ef5134f36408b41b910a1fc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_03:2 -> audio/generated/de-DE/dialogues/a851e104737d843f5e86f3afb10ce17dc589d14e7d829d2a872d99944de1d293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fea769b5-c0f6-5cbe-9ec4-004752e0d5c5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76bfb9fe1e50e20fa39f1253a166afc01c39f0fe573495563bda9bbf396d5a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dae06aae-7421-5723-88ec-a15d1a782579', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fea769b5-c0f6-5cbe-9ec4-004752e0d5c5', 1), 'f76bfb9fe1e50e20fa39f1253a166afc01c39f0fe573495563bda9bbf396d5a5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a851e104737d843f5e86f3afb10ce17dc589d14e7d829d2a872d99944de1d293.mp3', 5668, '2026-09-13 08:16:01.075930', '2acd3597726070aa364976c16e7bb2c32993b9979b245cba16ff95cff935940f', 'validated', '{"audio_key":"a851e104737d843f5e86f3afb10ce17dc589d14e7d829d2a872d99944de1d293","entity_key":"d_study_challenges_feedback_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"2acd3597726070aa364976c16e7bb2c32993b9979b245cba16ff95cff935940f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a851e104737d843f5e86f3afb10ce17dc589d14e7d829d2a872d99944de1d293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_03:4 -> audio/generated/de-DE/dialogues/a9fd13428371d3fe2330d744ad5da93d60969509242b1ec8aebdc702ae8de0b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8be47d87-7df1-5784-8c43-8ef129a5029c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9378f8c75ccb195e76b872ae6aabbc6ec8495f7247eb7d55774dab777e4d29a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a70aa48-0bc3-5f6e-a530-5eda4f2507aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8be47d87-7df1-5784-8c43-8ef129a5029c', 1), '9378f8c75ccb195e76b872ae6aabbc6ec8495f7247eb7d55774dab777e4d29a5',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a9fd13428371d3fe2330d744ad5da93d60969509242b1ec8aebdc702ae8de0b7.mp3', 3657, '2026-09-13 08:16:01.200607', '6b633b7054440727ade0f25cc453e0a68a872febefce68f1589920c7558f691f', 'validated', '{"audio_key":"a9fd13428371d3fe2330d744ad5da93d60969509242b1ec8aebdc702ae8de0b7","entity_key":"d_accommodation_issues_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6b633b7054440727ade0f25cc453e0a68a872febefce68f1589920c7558f691f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a9fd13428371d3fe2330d744ad5da93d60969509242b1ec8aebdc702ae8de0b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_01:2 -> audio/generated/de-DE/dialogues/abe0790d5ba8f156d0cc3c01f59699f736081ad7d8570952f4629cd747014092.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d86bba9-ee01-50ed-aac5-34faaa40d6bd', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71c9ab24e49e9e559e2bfc861986c066d69c04d7c12fed1924f26481dbff3d37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea39e2b5-ad6d-580c-8ba0-c4a677329e89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d86bba9-ee01-50ed-aac5-34faaa40d6bd', 1), '71c9ab24e49e9e559e2bfc861986c066d69c04d7c12fed1924f26481dbff3d37',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/abe0790d5ba8f156d0cc3c01f59699f736081ad7d8570952f4629cd747014092.mp3', 3291, '2026-09-13 08:16:02.309531', 'e32639ca425ab12ce74c390e6b188d6953b7f9cea1f91b72955bea8ee0207204', 'validated', '{"audio_key":"abe0790d5ba8f156d0cc3c01f59699f736081ad7d8570952f4629cd747014092","entity_key":"d_study_challenges_feedback_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e32639ca425ab12ce74c390e6b188d6953b7f9cea1f91b72955bea8ee0207204","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/abe0790d5ba8f156d0cc3c01f59699f736081ad7d8570952f4629cd747014092.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_01:1 -> audio/generated/de-DE/dialogues/ac4a2059ad88a38fc4b11e95aca80e0325fe1df4c7b7313e22de12c66a87491a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cc57d54-0d2c-58ca-84ff-5b3ba81f8b40', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e08a36f79b43b7cce51a292aec8b12723054960e89a9cb841f9024a2f0d47a1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c27d8e24-81b1-5a07-9bcf-798b52f3d605', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cc57d54-0d2c-58ca-84ff-5b3ba81f8b40', 1), 'e08a36f79b43b7cce51a292aec8b12723054960e89a9cb841f9024a2f0d47a1e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ac4a2059ad88a38fc4b11e95aca80e0325fe1df4c7b7313e22de12c66a87491a.mp3', 3657, '2026-09-13 08:16:02.464812', '8130684d6215665d7b0c1a2b2a50779cbc039aa96a2f527c422d0a3964063dbb', 'validated', '{"audio_key":"ac4a2059ad88a38fc4b11e95aca80e0325fe1df4c7b7313e22de12c66a87491a","entity_key":"d_work_priorities_blockers_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8130684d6215665d7b0c1a2b2a50779cbc039aa96a2f527c422d0a3964063dbb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ac4a2059ad88a38fc4b11e95aca80e0325fe1df4c7b7313e22de12c66a87491a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_01:3 -> audio/generated/de-DE/dialogues/ad1a41a98a6bef0a9928f1ad1247c6e48c4dac9432fa1cf0d60a950bdd6d703e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3603fd6-4388-5674-bfd7-be36ccbf1f35', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6deb047d95befacb906c428e193d7382a75950be718738477e6910cca1f9aba3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b8e7844-68f3-5886-9cf7-b1acfb911738', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3603fd6-4388-5674-bfd7-be36ccbf1f35', 1), '6deb047d95befacb906c428e193d7382a75950be718738477e6910cca1f9aba3',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ad1a41a98a6bef0a9928f1ad1247c6e48c4dac9432fa1cf0d60a950bdd6d703e.mp3', 4440, '2026-09-13 08:16:03.677603', 'bea30ec177943614eec12a70dde338cc0fc03a74e6bc46b341bd79615272529e', 'validated', '{"audio_key":"ad1a41a98a6bef0a9928f1ad1247c6e48c4dac9432fa1cf0d60a950bdd6d703e","entity_key":"d_product_research_decisions_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bea30ec177943614eec12a70dde338cc0fc03a74e6bc46b341bd79615272529e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ad1a41a98a6bef0a9928f1ad1247c6e48c4dac9432fa1cf0d60a950bdd6d703e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_02:2 -> audio/generated/de-DE/dialogues/adba3f6de849d44a82b3e1646ceb973bab209a21c0a3e4fbffc6554526b7daea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f3de301-b676-54e6-b45a-79e8dfa20f51', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bdeffc8c933ee2dd68f303d5c5e0eb8fd68409d99fad5760d8bb1f5bdf04e4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68c536ee-a0be-51fe-b4ff-3ed3ffd3dd73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f3de301-b676-54e6-b45a-79e8dfa20f51', 1), '2bdeffc8c933ee2dd68f303d5c5e0eb8fd68409d99fad5760d8bb1f5bdf04e4d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/adba3f6de849d44a82b3e1646ceb973bab209a21c0a3e4fbffc6554526b7daea.mp3', 3160, '2026-09-13 08:16:03.702540', '3410de14f737ee316981a01ad51e5602186f57c165076c128f800515fd70d2df', 'validated', '{"audio_key":"adba3f6de849d44a82b3e1646ceb973bab209a21c0a3e4fbffc6554526b7daea","entity_key":"d_relationships_misunderstandings_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"3410de14f737ee316981a01ad51e5602186f57c165076c128f800515fd70d2df","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/adba3f6de849d44a82b3e1646ceb973bab209a21c0a3e4fbffc6554526b7daea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_03:2 -> audio/generated/de-DE/dialogues/aeac1e849e7343431dc8f19778a19ef5a0007b35406cf8de029e5d6707db4c1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5aafb079-756f-5e7a-9da4-068cc94ac350', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a9d83f61eda9d829be52fdec978e23dab80378ea55fcf29f3a4737f47077272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddd85c61-1671-5153-ae69-ae9df8210a47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5aafb079-756f-5e7a-9da4-068cc94ac350', 1), '2a9d83f61eda9d829be52fdec978e23dab80378ea55fcf29f3a4737f47077272',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aeac1e849e7343431dc8f19778a19ef5a0007b35406cf8de029e5d6707db4c1a.mp3', 3239, '2026-09-13 08:16:04.981077', '599cf6d89b69d34f3d05d1403245f64ae20ae68fe99a9ac081a037214856bf84', 'validated', '{"audio_key":"aeac1e849e7343431dc8f19778a19ef5a0007b35406cf8de029e5d6707db4c1a","entity_key":"d_projects_deadlines_risks_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"599cf6d89b69d34f3d05d1403245f64ae20ae68fe99a9ac081a037214856bf84","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/aeac1e849e7343431dc8f19778a19ef5a0007b35406cf8de029e5d6707db4c1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_03:1 -> audio/generated/de-DE/dialogues/aeac9bc590d5e9823b8fdc96c38f806f31412e4e75f1451c098388e7e0884b3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e339f54-bfe8-5917-a889-c43ef7653609', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e3e167bbde4d3f09e47820140e70353347e855347c990aef733d78a2e8e246e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fee7dd0a-18fd-5f6b-9683-77fb592d32ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e339f54-bfe8-5917-a889-c43ef7653609', 1), '7e3e167bbde4d3f09e47820140e70353347e855347c990aef733d78a2e8e246e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aeac9bc590d5e9823b8fdc96c38f806f31412e4e75f1451c098388e7e0884b3d.mp3', 3422, '2026-09-13 08:16:05.116143', 'e06f929f15188172ce6411767193d5b3b73b0a5bc936485a8a01e43137f6ced3', 'validated', '{"audio_key":"aeac9bc590d5e9823b8fdc96c38f806f31412e4e75f1451c098388e7e0884b3d","entity_key":"d_product_research_decisions_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e06f929f15188172ce6411767193d5b3b73b0a5bc936485a8a01e43137f6ced3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/aeac9bc590d5e9823b8fdc96c38f806f31412e4e75f1451c098388e7e0884b3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_03:1 -> audio/generated/de-DE/dialogues/b0e6c1965a658060d8dc9071fc3d2036e04c01c1a0672221a5c01f607948d369.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cbae943a-ebc6-59b3-819d-0a7cd8a472ea', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '519c620592cfe7363d5a8dd60470e0896aec396b6afaab53ea73bde5514275ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e7c18a1-8ac4-51b5-b8ad-ce72fae6a49a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cbae943a-ebc6-59b3-819d-0a7cd8a472ea', 1), '519c620592cfe7363d5a8dd60470e0896aec396b6afaab53ea73bde5514275ce',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b0e6c1965a658060d8dc9071fc3d2036e04c01c1a0672221a5c01f607948d369.mp3', 4310, '2026-09-13 08:16:06.845707', '0e658fc505dfd18580f3da29da0b1c67cca455c92b30cb9a4d5c72f3a9013d54', 'validated', '{"audio_key":"b0e6c1965a658060d8dc9071fc3d2036e04c01c1a0672221a5c01f607948d369","entity_key":"d_feedback_critique_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0e658fc505dfd18580f3da29da0b1c67cca455c92b30cb9a4d5c72f3a9013d54","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b0e6c1965a658060d8dc9071fc3d2036e04c01c1a0672221a5c01f607948d369.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_01:2 -> audio/generated/de-DE/dialogues/b13e0fe301f1e1965d362b23530e1b26f7c6ad2f0a165a2398c659b4bb921480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b68d0bd-5ca5-5523-bda0-1017797dbb79', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e27c137929481d2d803f946f5ee76cf50ea602e2bddc375d2328030e3f508621'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fee20c16-ba1a-56c9-a3bf-d3c7bdac761a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b68d0bd-5ca5-5523-bda0-1017797dbb79', 1), 'e27c137929481d2d803f946f5ee76cf50ea602e2bddc375d2328030e3f508621',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b13e0fe301f1e1965d362b23530e1b26f7c6ad2f0a165a2398c659b4bb921480.mp3', 2586, '2026-09-13 08:16:06.260292', 'c905f9d5516bdcc0e53c8e565dda137382686c41ee2116764d5ad873e46bdec2', 'validated', '{"audio_key":"b13e0fe301f1e1965d362b23530e1b26f7c6ad2f0a165a2398c659b4bb921480","entity_key":"d_work_priorities_blockers_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c905f9d5516bdcc0e53c8e565dda137382686c41ee2116764d5ad873e46bdec2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b13e0fe301f1e1965d362b23530e1b26f7c6ad2f0a165a2398c659b4bb921480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_03:3 -> audio/generated/de-DE/dialogues/b22ffb8e38ccedec6323d690c417484a437c78a18366134fb4278005721405dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aeaee6e2-44eb-562a-98f6-74635cb8115f', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8b2fb7c9c93823a8e4a77acfb2476ac863e4bc686e84e6f9fbb14bfe8a1dc26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19ff4c35-f989-5688-bc24-46e54f9f17f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aeaee6e2-44eb-562a-98f6-74635cb8115f', 1), 'f8b2fb7c9c93823a8e4a77acfb2476ac863e4bc686e84e6f9fbb14bfe8a1dc26',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b22ffb8e38ccedec6323d690c417484a437c78a18366134fb4278005721405dd.mp3', 3787, '2026-09-13 08:16:07.601288', 'd840c8a712801b95ed127df7022d536299ddc570b38190b8dfcab00a26ada62a', 'validated', '{"audio_key":"b22ffb8e38ccedec6323d690c417484a437c78a18366134fb4278005721405dd","entity_key":"d_complaints_service_resolution_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d840c8a712801b95ed127df7022d536299ddc570b38190b8dfcab00a26ada62a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b22ffb8e38ccedec6323d690c417484a437c78a18366134fb4278005721405dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_product_research_decisions_01:2 -> audio/generated/de-DE/dialogues/b57b255f1d06c7751b8c82e725fcfab1ccd5d5ae3acc662f156be5d75e384465.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b3990f6-c39b-5e3a-9f63-6dae575b8302', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_product_research_decisions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de2fe918527a9cd06247e14f8babd594720a7c89f6755386c23255828da67b72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('095a7c1f-82a9-53bd-8515-43efcd3ead2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b3990f6-c39b-5e3a-9f63-6dae575b8302', 1), 'de2fe918527a9cd06247e14f8babd594720a7c89f6755386c23255828da67b72',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b57b255f1d06c7751b8c82e725fcfab1ccd5d5ae3acc662f156be5d75e384465.mp3', 1802, '2026-09-13 08:16:07.981466', 'f7b6d87cd3d2a720e7351bfc1270a401ba483f368a1e122256ff57de1f9d4b81', 'validated', '{"audio_key":"b57b255f1d06c7751b8c82e725fcfab1ccd5d5ae3acc662f156be5d75e384465","entity_key":"d_product_research_decisions_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f7b6d87cd3d2a720e7351bfc1270a401ba483f368a1e122256ff57de1f9d4b81","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b57b255f1d06c7751b8c82e725fcfab1ccd5d5ae3acc662f156be5d75e384465.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_02:3 -> audio/generated/de-DE/dialogues/b5d693fbc3acd851c75ecd34937c0123669c1c20c21b397839fc73d587ee62de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f508332c-4cff-5ee0-a9fa-3221ba281d39', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd173dc16aac3b2f731990ac27ba1097734d013e462fc5a8cb8011568c7c67633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb0b2e12-5b7f-518e-a95a-b0a07500058d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f508332c-4cff-5ee0-a9fa-3221ba281d39', 1), 'd173dc16aac3b2f731990ac27ba1097734d013e462fc5a8cb8011568c7c67633',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b5d693fbc3acd851c75ecd34937c0123669c1c20c21b397839fc73d587ee62de.mp3', 1906, '2026-09-13 08:16:08.753749', '75bbdb10a5b303493628f3a81673d4ef15467bd95f0fe4ec829ebb6bd1cafedf', 'validated', '{"audio_key":"b5d693fbc3acd851c75ecd34937c0123669c1c20c21b397839fc73d587ee62de","entity_key":"d_job_interviews_achievements_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75bbdb10a5b303493628f3a81673d4ef15467bd95f0fe4ec829ebb6bd1cafedf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b5d693fbc3acd851c75ecd34937c0123669c1c20c21b397839fc73d587ee62de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_01:1 -> audio/generated/de-DE/dialogues/c040b6e353b4b72db5b94de8221de921d446c9d0d3b7ea80f734cbe0cf952798.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50c9378c-f3e3-517f-b9ea-39dfe7055b66', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42d9a5a606d933abb0d1012b928f80a4129ba8088ed171467ff0a5a9bf589225'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60d5a92a-fde5-53a6-a4c8-4835faa49646', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50c9378c-f3e3-517f-b9ea-39dfe7055b66', 1), '42d9a5a606d933abb0d1012b928f80a4129ba8088ed171467ff0a5a9bf589225',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c040b6e353b4b72db5b94de8221de921d446c9d0d3b7ea80f734cbe0cf952798.mp3', 2742, '2026-09-13 08:16:09.161278', '02b333a7bef86ed90c62758cc65dc25744d8911fb1a69855cca625d3d93d485c', 'validated', '{"audio_key":"c040b6e353b4b72db5b94de8221de921d446c9d0d3b7ea80f734cbe0cf952798","entity_key":"d_relationships_misunderstandings_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"02b333a7bef86ed90c62758cc65dc25744d8911fb1a69855cca625d3d93d485c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c040b6e353b4b72db5b94de8221de921d446c9d0d3b7ea80f734cbe0cf952798.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_01:1 -> audio/generated/de-DE/dialogues/c4cd292586030ce366ca6a73f9484fe9c3e9bd29cab37113b0ec449ad6cea5d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2085032-82e1-50a3-bebd-4958fa39cd70', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80ceecd54b187354dd7af5ff4f6a8101a141e895cd99daf2024797413988c2d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6041bfe9-3a34-55da-b052-139f0018cb50', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2085032-82e1-50a3-bebd-4958fa39cd70', 1), '80ceecd54b187354dd7af5ff4f6a8101a141e895cd99daf2024797413988c2d8',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4cd292586030ce366ca6a73f9484fe9c3e9bd29cab37113b0ec449ad6cea5d2.mp3', 3239, '2026-09-13 08:16:09.985867', '3c8726fa98bb6c8a9603df0553068269b844aa91db984e994243d01d4e56ba4f', 'validated', '{"audio_key":"c4cd292586030ce366ca6a73f9484fe9c3e9bd29cab37113b0ec449ad6cea5d2","entity_key":"d_complaints_service_resolution_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3c8726fa98bb6c8a9603df0553068269b844aa91db984e994243d01d4e56ba4f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c4cd292586030ce366ca6a73f9484fe9c3e9bd29cab37113b0ec449ad6cea5d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_01:2 -> audio/generated/de-DE/dialogues/c6562e1dcbca6f0785e6fef5ba925adf6ef1503ded5ff230bada9dac9e22019c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6bf819f-dbf2-540c-8a9f-7be2f074c15f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01f9f045550b075fb35d28df89d6a6f49b91f7875306740b37dfce3f198123cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62c86a93-5ca0-503f-94d2-b264f1584048', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6bf819f-dbf2-540c-8a9f-7be2f074c15f', 1), '01f9f045550b075fb35d28df89d6a6f49b91f7875306740b37dfce3f198123cb',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c6562e1dcbca6f0785e6fef5ba925adf6ef1503ded5ff230bada9dac9e22019c.mp3', 4205, '2026-09-13 08:16:10.581890', 'b24c6b5298ef4a6b7c441e63ea4666417ae24441f713a832bf681b6a36ab456a', 'validated', '{"audio_key":"c6562e1dcbca6f0785e6fef5ba925adf6ef1503ded5ff230bada9dac9e22019c","entity_key":"d_accommodation_issues_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b24c6b5298ef4a6b7c441e63ea4666417ae24441f713a832bf681b6a36ab456a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c6562e1dcbca6f0785e6fef5ba925adf6ef1503ded5ff230bada9dac9e22019c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_01:1 -> audio/generated/de-DE/dialogues/c6b846275290a01d1b94e8db474d42f1870675fa50ab3e3cef865191ae32ba3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5d60514e-8f6d-59ff-a6d5-b04c344ab36a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2cf294d64dfe78df863316a92da8b3af6c6477b6aa371d199fedc2b2375172f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05cae79e-40e4-54d7-8fc3-ea8fcc1b8a52', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5d60514e-8f6d-59ff-a6d5-b04c344ab36a', 1), 'f2cf294d64dfe78df863316a92da8b3af6c6477b6aa371d199fedc2b2375172f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c6b846275290a01d1b94e8db474d42f1870675fa50ab3e3cef865191ae32ba3d.mp3', 3239, '2026-09-13 08:16:11.225690', '8b4ae6ca7e740ff188e6639d447ff19fc8b8fa0dae8abc4778928eb97cae9c1d', 'validated', '{"audio_key":"c6b846275290a01d1b94e8db474d42f1870675fa50ab3e3cef865191ae32ba3d","entity_key":"d_study_challenges_feedback_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8b4ae6ca7e740ff188e6639d447ff19fc8b8fa0dae8abc4778928eb97cae9c1d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c6b846275290a01d1b94e8db474d42f1870675fa50ab3e3cef865191ae32ba3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_03:4 -> audio/generated/de-DE/dialogues/ce1417df847a0a38c4197ff87c147e7e23480029145c21c6f19f77382bd14a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15cf9e57-144a-5fda-bc15-7a966a854eca', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '356d11f23bc6b5e94e715cc8c7986f4dc6cc481786df63165027a645cf9d8a7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abefb60c-b634-5737-a713-5481cd94c499', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15cf9e57-144a-5fda-bc15-7a966a854eca', 1), '356d11f23bc6b5e94e715cc8c7986f4dc6cc481786df63165027a645cf9d8a7b',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ce1417df847a0a38c4197ff87c147e7e23480029145c21c6f19f77382bd14a67.mp3', 2403, '2026-09-13 08:16:11.718315', '68027c2af3557552d57e5a09ace436226278e7f4a77c5fc1728eeb354809a211', 'validated', '{"audio_key":"ce1417df847a0a38c4197ff87c147e7e23480029145c21c6f19f77382bd14a67","entity_key":"d_projects_deadlines_risks_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"68027c2af3557552d57e5a09ace436226278e7f4a77c5fc1728eeb354809a211","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ce1417df847a0a38c4197ff87c147e7e23480029145c21c6f19f77382bd14a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_03:1 -> audio/generated/de-DE/dialogues/cf7743bf5b6a9458e8723389ee3a6a8ec3e94b66094cc3fea5c86499bb88683f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6154bba4-5982-5e15-bc94-866956148a5b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9882795bbba2435d1885e1ac6b434bc70847db7ec629b638b32234cc001076e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a385a969-04ef-5696-a994-3b50a6ef8310', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6154bba4-5982-5e15-bc94-866956148a5b', 1), '9882795bbba2435d1885e1ac6b434bc70847db7ec629b638b32234cc001076e7',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf7743bf5b6a9458e8723389ee3a6a8ec3e94b66094cc3fea5c86499bb88683f.mp3', 3709, '2026-09-13 08:16:12.549370', 'e1a10153c59edee2558217505e8feeaf3c0820a9e21e34f94585cf822e5d7827', 'validated', '{"audio_key":"cf7743bf5b6a9458e8723389ee3a6a8ec3e94b66094cc3fea5c86499bb88683f","entity_key":"d_relationships_misunderstandings_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e1a10153c59edee2558217505e8feeaf3c0820a9e21e34f94585cf822e5d7827","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cf7743bf5b6a9458e8723389ee3a6a8ec3e94b66094cc3fea5c86499bb88683f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_03:2 -> audio/generated/de-DE/dialogues/d0044077ad42b2abe815063790c4c7c3245f70675cf71a3fd0f68414b9277863.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c2ab76cf-0b1d-5f69-9cf4-372678898ea9', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d6cae32a4da18539e7e9627489462799ebc143b03c66b93d0c60d6762ec8e6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aa4aabf-62f0-5c58-8a3e-af3d42d1e77e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c2ab76cf-0b1d-5f69-9cf4-372678898ea9', 1), '9d6cae32a4da18539e7e9627489462799ebc143b03c66b93d0c60d6762ec8e6c',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d0044077ad42b2abe815063790c4c7c3245f70675cf71a3fd0f68414b9277863.mp3', 3369, '2026-09-13 08:16:12.997359', 'b115f2fa4efd70db2818183f5e1b8aae12bcbfb5143706ecbfb6e4a3c288199b', 'validated', '{"audio_key":"d0044077ad42b2abe815063790c4c7c3245f70675cf71a3fd0f68414b9277863","entity_key":"d_job_interviews_achievements_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b115f2fa4efd70db2818183f5e1b8aae12bcbfb5143706ecbfb6e4a3c288199b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d0044077ad42b2abe815063790c4c7c3245f70675cf71a3fd0f68414b9277863.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_02:2 -> audio/generated/de-DE/dialogues/d0fff84c90136b980487e00a977da1c59ed6d1d372940f58c066349066ebbf7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('740dae1b-d402-5bd0-97c0-e8fc438756b6', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5c851786f1890956261ccbf94df581976ea67f2b8ad8248597096abf3408106'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47fe8acf-55f9-5ba5-aeb8-97bed11fdf2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('740dae1b-d402-5bd0-97c0-e8fc438756b6', 1), 'e5c851786f1890956261ccbf94df581976ea67f2b8ad8248597096abf3408106',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d0fff84c90136b980487e00a977da1c59ed6d1d372940f58c066349066ebbf7c.mp3', 4022, '2026-09-13 08:16:13.946665', '88f93f631bbd7f7d8a5e70c338e17bda6d98d02f6dff3c7e2cd724da27f5de60', 'validated', '{"audio_key":"d0fff84c90136b980487e00a977da1c59ed6d1d372940f58c066349066ebbf7c","entity_key":"d_job_interviews_achievements_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"88f93f631bbd7f7d8a5e70c338e17bda6d98d02f6dff3c7e2cd724da27f5de60","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d0fff84c90136b980487e00a977da1c59ed6d1d372940f58c066349066ebbf7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_03:1 -> audio/generated/de-DE/dialogues/d2cb54d0eb58270752fd716af9fb58310321e6085089b76f1f26a1f1400d8cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('559c2fc7-fcfe-5f4f-95a6-c38909f908e5', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f25bdf79f085f5fab4fe75b84c9434b76e4d51b9022055a4883ddf732f322a0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('998f7976-7490-5499-86fe-68e5dbc0ca4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('559c2fc7-fcfe-5f4f-95a6-c38909f908e5', 1), 'f25bdf79f085f5fab4fe75b84c9434b76e4d51b9022055a4883ddf732f322a0b',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2cb54d0eb58270752fd716af9fb58310321e6085089b76f1f26a1f1400d8cf0.mp3', 4623, '2026-09-13 08:16:14.424748', 'a1a1dd378d25d8c98784807cff82b3eb540fab4c92f2b439eccb7af2bb8072ff', 'validated', '{"audio_key":"d2cb54d0eb58270752fd716af9fb58310321e6085089b76f1f26a1f1400d8cf0","entity_key":"d_study_challenges_feedback_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a1a1dd378d25d8c98784807cff82b3eb540fab4c92f2b439eccb7af2bb8072ff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d2cb54d0eb58270752fd716af9fb58310321e6085089b76f1f26a1f1400d8cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_03:3 -> audio/generated/de-DE/dialogues/d39d90985d65d56d415d708f7251e00bd35f4ac943316f5bb866f11bfe79d67f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8a0fea2-ce8a-5a47-84d9-f5b5f5beece4', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6eb65010f7ce09cb4ea4e75378fbedbed35ae71a4a6b660b4610d113a1eb8c71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29a27987-86f9-58e4-97d7-c60bff95dcb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8a0fea2-ce8a-5a47-84d9-f5b5f5beece4', 1), '6eb65010f7ce09cb4ea4e75378fbedbed35ae71a4a6b660b4610d113a1eb8c71',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d39d90985d65d56d415d708f7251e00bd35f4ac943316f5bb866f11bfe79d67f.mp3', 3892, '2026-09-13 08:16:15.288584', '3f240744534fef8106aae0efcd3d54de9b25159225d9bf0b4da8f5d54987c1d5', 'validated', '{"audio_key":"d39d90985d65d56d415d708f7251e00bd35f4ac943316f5bb866f11bfe79d67f","entity_key":"d_study_challenges_feedback_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3f240744534fef8106aae0efcd3d54de9b25159225d9bf0b4da8f5d54987c1d5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d39d90985d65d56d415d708f7251e00bd35f4ac943316f5bb866f11bfe79d67f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_01:4 -> audio/generated/de-DE/dialogues/d3fe71326f5645363ffe3e32d6a617f6bfe284181525bea26499f445ef4c5154.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdcd5160-71c9-5e1d-b378-a4dc6058ca85', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58f8e6e6771a6ebec9889ebadef541e1c0055dce3120fa2dc63cb483fd3be65a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbce4c20-69ee-5f59-a7db-306bdf4f5724', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdcd5160-71c9-5e1d-b378-a4dc6058ca85', 1), '58f8e6e6771a6ebec9889ebadef541e1c0055dce3120fa2dc63cb483fd3be65a',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d3fe71326f5645363ffe3e32d6a617f6bfe284181525bea26499f445ef4c5154.mp3', 3108, '2026-09-13 08:16:15.670376', '216e2c0d8341792e58e6f6518209fb9d8c950a69efb702b52ce57f1c71f06790', 'validated', '{"audio_key":"d3fe71326f5645363ffe3e32d6a617f6bfe284181525bea26499f445ef4c5154","entity_key":"d_work_priorities_blockers_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"216e2c0d8341792e58e6f6518209fb9d8c950a69efb702b52ce57f1c71f06790","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d3fe71326f5645363ffe3e32d6a617f6bfe284181525bea26499f445ef4c5154.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_02:4 -> audio/generated/de-DE/dialogues/d69c91970216f58fae3648a31dbe3ca9d1706c5317e35bced2b0c0a6cc1eb29e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc4c9451-4a9f-5dae-af75-f6e5d440dd66', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d6aa4dc4273aa721da7ebc086662299cc2d690a22c208642f9a8e8f8c6cab1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebfaede8-f127-547b-b3ed-514fffe3deed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc4c9451-4a9f-5dae-af75-f6e5d440dd66', 1), '2d6aa4dc4273aa721da7ebc086662299cc2d690a22c208642f9a8e8f8c6cab1f',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d69c91970216f58fae3648a31dbe3ca9d1706c5317e35bced2b0c0a6cc1eb29e.mp3', 4205, '2026-09-13 08:16:16.674437', '1a5dd9313eae6048cae59fb209786a2738aa91c5d832075e79e7b54498a350f1', 'validated', '{"audio_key":"d69c91970216f58fae3648a31dbe3ca9d1706c5317e35bced2b0c0a6cc1eb29e","entity_key":"d_relationships_misunderstandings_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1a5dd9313eae6048cae59fb209786a2738aa91c5d832075e79e7b54498a350f1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d69c91970216f58fae3648a31dbe3ca9d1706c5317e35bced2b0c0a6cc1eb29e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_interviews_achievements_02:1 -> audio/generated/de-DE/dialogues/d6a02deff7fda2308a6e3b533a5ca31fa1d87669915d33cfe11ed05571e3ef69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c01e14f-dab2-5de0-90b8-36989555383d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_interviews_achievements_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e381cb8ef1d5fe70437fb9aefb1fce7fb68a837cc0b21b2c560d6c3e1b938297'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9f8e98f-8973-5993-a4f1-e5cc373bef10', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c01e14f-dab2-5de0-90b8-36989555383d', 1), 'e381cb8ef1d5fe70437fb9aefb1fce7fb68a837cc0b21b2c560d6c3e1b938297',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d6a02deff7fda2308a6e3b533a5ca31fa1d87669915d33cfe11ed05571e3ef69.mp3', 4545, '2026-09-13 08:16:17.067474', '88623cd242977066c2bec666315207a4678d384b8125aaeaa869851c81dff6dd', 'validated', '{"audio_key":"d6a02deff7fda2308a6e3b533a5ca31fa1d87669915d33cfe11ed05571e3ef69","entity_key":"d_job_interviews_achievements_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"88623cd242977066c2bec666315207a4678d384b8125aaeaa869851c81dff6dd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d6a02deff7fda2308a6e3b533a5ca31fa1d87669915d33cfe11ed05571e3ef69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_03:4 -> audio/generated/de-DE/dialogues/d7833c363ff33be07bb60d4ef5ce8ba32b40261c07cd5d9f8a4cc99a702ba2a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('719a23bc-91e4-51af-8b77-42698db659f3', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7acc69c5f82ac2682d7be98a99b45d27b4ebf96c2cdb4244310184e8f79285f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc8baa37-54c5-58c0-b9b8-326b8e44116d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('719a23bc-91e4-51af-8b77-42698db659f3', 1), '7acc69c5f82ac2682d7be98a99b45d27b4ebf96c2cdb4244310184e8f79285f6',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d7833c363ff33be07bb60d4ef5ce8ba32b40261c07cd5d9f8a4cc99a702ba2a7.mp3', 3108, '2026-09-13 08:16:17.909707', 'aaa38c3884c8459753167117fca06cf842ebf321590c23e093f165faa2ddc3f6', 'validated', '{"audio_key":"d7833c363ff33be07bb60d4ef5ce8ba32b40261c07cd5d9f8a4cc99a702ba2a7","entity_key":"d_work_priorities_blockers_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"aaa38c3884c8459753167117fca06cf842ebf321590c23e093f165faa2ddc3f6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d7833c363ff33be07bb60d4ef5ce8ba32b40261c07cd5d9f8a4cc99a702ba2a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_02:3 -> audio/generated/de-DE/dialogues/d849ca10c7bc4f7fa537fca818c5d6fdf59268af1e0d00aa2a7b37fddd6e36cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6041456d-06fc-5a43-8004-2ffec9c29e2c', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ae9e8d52eaf8ef013b442c79590167e17632ba3e652573db3030225841fbe1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87696295-d2be-5b68-bc72-4ad912d58974', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6041456d-06fc-5a43-8004-2ffec9c29e2c', 1), '7ae9e8d52eaf8ef013b442c79590167e17632ba3e652573db3030225841fbe1f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d849ca10c7bc4f7fa537fca818c5d6fdf59268af1e0d00aa2a7b37fddd6e36cd.mp3', 4362, '2026-09-13 08:16:18.428246', '3550b7331f618da269509f9442332cb7345b1deec81fe47bf7eaa5f091602019', 'validated', '{"audio_key":"d849ca10c7bc4f7fa537fca818c5d6fdf59268af1e0d00aa2a7b37fddd6e36cd","entity_key":"d_relationships_misunderstandings_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3550b7331f618da269509f9442332cb7345b1deec81fe47bf7eaa5f091602019","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d849ca10c7bc4f7fa537fca818c5d6fdf59268af1e0d00aa2a7b37fddd6e36cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_challenges_feedback_03:4 -> audio/generated/de-DE/dialogues/dfcfbb5d48aec33c10192d3913cd4b208b639ac5ab7717a0e1dc0c5899296da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f24f26e-1aa9-549f-b6ae-6a59d0fea20d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_challenges_feedback_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e32aa4a8af2a5b6f2c70deea6cfe4e63f9bf8504bf2e5b742577a06d7df394d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b11aa2d-623d-54cc-aea1-f728105f94bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f24f26e-1aa9-549f-b6ae-6a59d0fea20d', 1), 'e32aa4a8af2a5b6f2c70deea6cfe4e63f9bf8504bf2e5b742577a06d7df394d6',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dfcfbb5d48aec33c10192d3913cd4b208b639ac5ab7717a0e1dc0c5899296da9.mp3', 6269, '2026-09-13 08:16:19.489200', 'f989ea38aaca460cf17612c2217f3ba7fe2d9b2fd43011317a9435bdd95565d0', 'validated', '{"audio_key":"dfcfbb5d48aec33c10192d3913cd4b208b639ac5ab7717a0e1dc0c5899296da9","entity_key":"d_study_challenges_feedback_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f989ea38aaca460cf17612c2217f3ba7fe2d9b2fd43011317a9435bdd95565d0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dfcfbb5d48aec33c10192d3913cd4b208b639ac5ab7717a0e1dc0c5899296da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_03:3 -> audio/generated/de-DE/dialogues/e043d62c257129f469779dc481d8e923c4f670f0b9713d6fb12a269f1c9cb1c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('606ec19f-5699-5e28-bd2a-a70b479f2eb3', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9de4d46ce23799c8d61bd19ec3e4b9cafb2a1ebdf53a0e610794dfab9fe67a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e860ecd-b43c-58aa-92cf-816f4302cb4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('606ec19f-5699-5e28-bd2a-a70b479f2eb3', 1), 'da9de4d46ce23799c8d61bd19ec3e4b9cafb2a1ebdf53a0e610794dfab9fe67a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e043d62c257129f469779dc481d8e923c4f670f0b9713d6fb12a269f1c9cb1c6.mp3', 5694, '2026-09-13 08:16:19.982285', '6d0cbce45a649b8a4b1104a5d3e119497c89d22064ee67ad09687e6668c9d3fd', 'validated', '{"audio_key":"e043d62c257129f469779dc481d8e923c4f670f0b9713d6fb12a269f1c9cb1c6","entity_key":"d_relationships_misunderstandings_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6d0cbce45a649b8a4b1104a5d3e119497c89d22064ee67ad09687e6668c9d3fd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e043d62c257129f469779dc481d8e923c4f670f0b9713d6fb12a269f1c9cb1c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_01:4 -> audio/generated/de-DE/dialogues/e531e9cbd68f02e6ea2cc1fc970a15b3af102908ae410bc8b5b2c245ce1c2d38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4b87578-15e1-5495-9115-b9cd30020c51', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '349e2ffa95bce0ed07c673535aed6b15a1979c57fcf3a12caccb74179e923078'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d2aa655-ba8b-50d8-8ab0-a60af590ce4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4b87578-15e1-5495-9115-b9cd30020c51', 1), '349e2ffa95bce0ed07c673535aed6b15a1979c57fcf3a12caccb74179e923078',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e531e9cbd68f02e6ea2cc1fc970a15b3af102908ae410bc8b5b2c245ce1c2d38.mp3', 2925, '2026-09-13 08:16:20.663169', '8efaf3b9eedae1510712b87f97ed917697d8f899cbcfe180aae3363c47c7c240', 'validated', '{"audio_key":"e531e9cbd68f02e6ea2cc1fc970a15b3af102908ae410bc8b5b2c245ce1c2d38","entity_key":"d_complaints_service_resolution_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8efaf3b9eedae1510712b87f97ed917697d8f899cbcfe180aae3363c47c7c240","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e531e9cbd68f02e6ea2cc1fc970a15b3af102908ae410bc8b5b2c245ce1c2d38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_01:2 -> audio/generated/de-DE/dialogues/e7cde0b80e5aa409ce734ac0e21a7660200db934287c68d8f35b3baa3c8533fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9196e9d0-3f9d-54a4-b1d6-66f49e794923', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b77c941f6052912918e7075da551d3e36116d66c7bd196cf414f5259d463a2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c944699-ef4a-5804-9c1b-e2b2ad8affea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9196e9d0-3f9d-54a4-b1d6-66f49e794923', 1), '9b77c941f6052912918e7075da551d3e36116d66c7bd196cf414f5259d463a2e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e7cde0b80e5aa409ce734ac0e21a7660200db934287c68d8f35b3baa3c8533fd.mp3', 2873, '2026-09-13 08:16:21.150636', '8a01f201c9dff657e1fef641bd1415285f86a912781e62e39468114b59621c1c', 'validated', '{"audio_key":"e7cde0b80e5aa409ce734ac0e21a7660200db934287c68d8f35b3baa3c8533fd","entity_key":"d_projects_deadlines_risks_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"8a01f201c9dff657e1fef641bd1415285f86a912781e62e39468114b59621c1c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e7cde0b80e5aa409ce734ac0e21a7660200db934287c68d8f35b3baa3c8533fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_02:1 -> audio/generated/de-DE/dialogues/e82fe4a606da81ae3f6fae6a9671aabe31a16a323ffa75e97a5fe670cf0faaf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66e4d4fe-810c-5d38-9eb8-2d1a7b4c044d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93de35670e6581ed4771472cbfffbd01842f5e88183e74e1187c0c0b59427e9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ce945c1-302e-5e45-a3f4-8a34ee7db5d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66e4d4fe-810c-5d38-9eb8-2d1a7b4c044d', 1), '93de35670e6581ed4771472cbfffbd01842f5e88183e74e1187c0c0b59427e9e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e82fe4a606da81ae3f6fae6a9671aabe31a16a323ffa75e97a5fe670cf0faaf4.mp3', 5459, '2026-09-13 08:16:22.375372', '25353e2a47d2e1590fac5a97b302133804bba10b5fd98fdd1976de7e13044982', 'validated', '{"audio_key":"e82fe4a606da81ae3f6fae6a9671aabe31a16a323ffa75e97a5fe670cf0faaf4","entity_key":"d_relationships_misunderstandings_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25353e2a47d2e1590fac5a97b302133804bba10b5fd98fdd1976de7e13044982","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e82fe4a606da81ae3f6fae6a9671aabe31a16a323ffa75e97a5fe670cf0faaf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_01:3 -> audio/generated/de-DE/dialogues/e87e118694210b0f411bfbe0ada4a92cb771276553e1a60c80d88b272a52cb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b067867e-d25c-53fd-8ccb-c5f762d8a7e5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '986a798a57fe7187a60bde1a90cd2ac20f907dd2a0c42a2f330dc3c016903d6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad23fdb0-2123-5917-b814-ce0fac0a29c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b067867e-d25c-53fd-8ccb-c5f762d8a7e5', 1), '986a798a57fe7187a60bde1a90cd2ac20f907dd2a0c42a2f330dc3c016903d6c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e87e118694210b0f411bfbe0ada4a92cb771276553e1a60c80d88b272a52cb58.mp3', 4257, '2026-09-13 08:16:22.527586', 'd46a3167b5040dbaf4f420f1218322aef482f422db25b8848bbfe88436959fa6', 'validated', '{"audio_key":"e87e118694210b0f411bfbe0ada4a92cb771276553e1a60c80d88b272a52cb58","entity_key":"d_work_priorities_blockers_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d46a3167b5040dbaf4f420f1218322aef482f422db25b8848bbfe88436959fa6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e87e118694210b0f411bfbe0ada4a92cb771276553e1a60c80d88b272a52cb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_02:3 -> audio/generated/de-DE/dialogues/ed39402c5bc961aa9f8e5e62e3a0ea90cc84e74d7da61734223c83e9a0e9ac79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('350f0dd3-c27b-55d1-b8c8-4215dee131cf', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6652ff3a7b3581b374cd95e5f4b8288cef6376c81aba89637010cd58a6c8f20c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b605a797-5fc5-5f83-96c6-f0dc29202933', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('350f0dd3-c27b-55d1-b8c8-4215dee131cf', 1), '6652ff3a7b3581b374cd95e5f4b8288cef6376c81aba89637010cd58a6c8f20c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed39402c5bc961aa9f8e5e62e3a0ea90cc84e74d7da61734223c83e9a0e9ac79.mp3', 4545, '2026-09-13 08:16:23.795318', 'e4b9333d6ba539d797d66ee74073f8b6c4548c2a5873581f322237905ac5af21', 'validated', '{"audio_key":"ed39402c5bc961aa9f8e5e62e3a0ea90cc84e74d7da61734223c83e9a0e9ac79","entity_key":"d_projects_deadlines_risks_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e4b9333d6ba539d797d66ee74073f8b6c4548c2a5873581f322237905ac5af21","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ed39402c5bc961aa9f8e5e62e3a0ea90cc84e74d7da61734223c83e9a0e9ac79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_service_resolution_02:1 -> audio/generated/de-DE/dialogues/ee06bbd0e03b662565d69b5a9c60032ee6862e84b35303578f339f570a8018d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5cba79e8-287f-5afb-b0e5-2ac4c540bbda', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_service_resolution_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38562bad78e813f4968bb1117447db64aaf87bad77e45a2689f2c77d2417d480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39ace351-1a9a-532c-8fbb-4571ba4a671f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5cba79e8-287f-5afb-b0e5-2ac4c540bbda', 1), '38562bad78e813f4968bb1117447db64aaf87bad77e45a2689f2c77d2417d480',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ee06bbd0e03b662565d69b5a9c60032ee6862e84b35303578f339f570a8018d8.mp3', 2925, '2026-09-13 08:16:23.758143', '0e8f65380f7e702c9e4b9019e477a9ab043e184305ceee4655b032bd84cc50f2', 'validated', '{"audio_key":"ee06bbd0e03b662565d69b5a9c60032ee6862e84b35303578f339f570a8018d8","entity_key":"d_complaints_service_resolution_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e8f65380f7e702c9e4b9019e477a9ab043e184305ceee4655b032bd84cc50f2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ee06bbd0e03b662565d69b5a9c60032ee6862e84b35303578f339f570a8018d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_accommodation_issues_01:4 -> audio/generated/de-DE/dialogues/f16b3eaec67a3d5b7be1d40a3f8df60149293bcb34faee17e857a5c6cf80c164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('262c9cb1-ee41-5614-bd22-1a25e249f4ef', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_accommodation_issues_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '018368bd8d04977f4d7e2a42ad25ff2d974083092cd2742a6ffa62a4beb5defc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c57599b5-11b6-5128-a7f2-8e0b77c78ad5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('262c9cb1-ee41-5614-bd22-1a25e249f4ef', 1), '018368bd8d04977f4d7e2a42ad25ff2d974083092cd2742a6ffa62a4beb5defc',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f16b3eaec67a3d5b7be1d40a3f8df60149293bcb34faee17e857a5c6cf80c164.mp3', 3892, '2026-09-13 08:16:25.103412', '3ca2b4bea20684a8672c587e4b44f925f19a3dde6ccb0aefcec52388e028b89a', 'validated', '{"audio_key":"f16b3eaec67a3d5b7be1d40a3f8df60149293bcb34faee17e857a5c6cf80c164","entity_key":"d_accommodation_issues_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3ca2b4bea20684a8672c587e4b44f925f19a3dde6ccb0aefcec52388e028b89a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f16b3eaec67a3d5b7be1d40a3f8df60149293bcb34faee17e857a5c6cf80c164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_01:3 -> audio/generated/de-DE/dialogues/f1e613edc72649be9b36f732a4f7f95a640f4db6e3c18de83aa8edc140c6039e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46aa2550-7466-516a-b18d-5fe9f761d5af', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eebaca051e966f0aee839908d133afb2a0f92b3170a047648ff411eba68c8020'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('210d2267-e2dc-55a5-9ffb-428fbe419309', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46aa2550-7466-516a-b18d-5fe9f761d5af', 1), 'eebaca051e966f0aee839908d133afb2a0f92b3170a047648ff411eba68c8020',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f1e613edc72649be9b36f732a4f7f95a640f4db6e3c18de83aa8edc140c6039e.mp3', 3944, '2026-09-13 08:16:25.087427', '8182ee79fa6ac096e94a5bc6fe934f77e2bcb0e1b41097053e2947a28eccdd1d', 'validated', '{"audio_key":"f1e613edc72649be9b36f732a4f7f95a640f4db6e3c18de83aa8edc140c6039e","entity_key":"d_travel_disruptions_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8182ee79fa6ac096e94a5bc6fe934f77e2bcb0e1b41097053e2947a28eccdd1d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f1e613edc72649be9b36f732a4f7f95a640f4db6e3c18de83aa8edc140c6039e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_disruptions_03:2 -> audio/generated/de-DE/dialogues/f2bdee9cc7ce47273f150c7c306e54c483cbc08854fd6b977fa0c97f1115b7b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5390cd9d-8e5c-5637-919d-752bbb40300c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_disruptions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b309885396d057085474217f7c6da4e3fae7059c218248853ad4ff7f2776c280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('622e5a8b-34e5-57cf-bc16-bd38d2b3a9bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5390cd9d-8e5c-5637-919d-752bbb40300c', 1), 'b309885396d057085474217f7c6da4e3fae7059c218248853ad4ff7f2776c280',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f2bdee9cc7ce47273f150c7c306e54c483cbc08854fd6b977fa0c97f1115b7b7.mp3', 1567, '2026-09-13 08:16:26.153099', 'aba3162d2c36c4f6eeebbddd37959954ec82a4b32f3560c3748656f9b80f21ed', 'validated', '{"audio_key":"f2bdee9cc7ce47273f150c7c306e54c483cbc08854fd6b977fa0c97f1115b7b7","entity_key":"d_travel_disruptions_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aba3162d2c36c4f6eeebbddd37959954ec82a4b32f3560c3748656f9b80f21ed","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f2bdee9cc7ce47273f150c7c306e54c483cbc08854fd6b977fa0c97f1115b7b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_feedback_critique_03:4 -> audio/generated/de-DE/dialogues/f32c9579f5936e381d803952239be604002ce47adfc0a64d207d9112033ca6ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99cb0bb3-7b31-5091-a299-b7d9f9993412', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_feedback_critique_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03ec377ce9ff633e6c8025eee64b3ea6161c679d50dd9b7e52eae0e392cb11f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe22c551-b729-5ff5-9e04-8fc2b69b3858', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99cb0bb3-7b31-5091-a299-b7d9f9993412', 1), 'c03ec377ce9ff633e6c8025eee64b3ea6161c679d50dd9b7e52eae0e392cb11f',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f32c9579f5936e381d803952239be604002ce47adfc0a64d207d9112033ca6ef.mp3', 3108, '2026-09-13 08:16:26.379144', 'c1830da00de741ab911715ba5071cf2d424877769c81738a244bd9d24e8c579e', 'validated', '{"audio_key":"f32c9579f5936e381d803952239be604002ce47adfc0a64d207d9112033ca6ef","entity_key":"d_feedback_critique_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c1830da00de741ab911715ba5071cf2d424877769c81738a244bd9d24e8c579e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f32c9579f5936e381d803952239be604002ce47adfc0a64d207d9112033ca6ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_priorities_blockers_02:1 -> audio/generated/de-DE/dialogues/f45696d0954c18c3d86bde8484eca00ed88f50ac8c5faf2e767816b724ffeebe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('89d5dd10-36b5-5550-8e2f-ffe191aaf55f', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_priorities_blockers_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e194591b48b479ffd87f6cf4a7de5f6eae9f8874166ba4829771953c9251ec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b15b3295-174e-507a-946e-1f63880aef2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('89d5dd10-36b5-5550-8e2f-ffe191aaf55f', 1), '6e194591b48b479ffd87f6cf4a7de5f6eae9f8874166ba4829771953c9251ec7',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f45696d0954c18c3d86bde8484eca00ed88f50ac8c5faf2e767816b724ffeebe.mp3', 3944, '2026-09-13 08:16:27.467390', '960a3eb5982fb03d660e2768f08aa640f7908779529a01d0627184abbe28a836', 'validated', '{"audio_key":"f45696d0954c18c3d86bde8484eca00ed88f50ac8c5faf2e767816b724ffeebe","entity_key":"d_work_priorities_blockers_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"960a3eb5982fb03d660e2768f08aa640f7908779529a01d0627184abbe28a836","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f45696d0954c18c3d86bde8484eca00ed88f50ac8c5faf2e767816b724ffeebe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_misunderstandings_03:4 -> audio/generated/de-DE/dialogues/f52ba21a137118ccd0ca0462697b82083a20f375cd22f1662b6511eb0b9ebf4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f77fcab1-8914-58eb-ac0d-095969f3b479', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_misunderstandings_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edaf97e4289b5970ebe7bb7a80f6ef967981ac377cc5c312e3d040052de96655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('508d79c3-7d8e-57e8-a488-2299faa389dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f77fcab1-8914-58eb-ac0d-095969f3b479', 1), 'edaf97e4289b5970ebe7bb7a80f6ef967981ac377cc5c312e3d040052de96655',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f52ba21a137118ccd0ca0462697b82083a20f375cd22f1662b6511eb0b9ebf4d.mp3', 2951, '2026-09-13 08:16:27.578912', '80ff07b81b0bc68fcdd88ee583f5176823e0cb93aa9ac522adbe69da661c5ed9', 'validated', '{"audio_key":"f52ba21a137118ccd0ca0462697b82083a20f375cd22f1662b6511eb0b9ebf4d","entity_key":"d_relationships_misunderstandings_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"80ff07b81b0bc68fcdd88ee583f5176823e0cb93aa9ac522adbe69da661c5ed9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f52ba21a137118ccd0ca0462697b82083a20f375cd22f1662b6511eb0b9ebf4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_02:2 -> audio/generated/de-DE/dialogues/f96ce7bac779618a834a4e4e44b48966d14b3d8d6ff33fc165f677391685dd9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4255b18-7d22-5e98-b249-546f74fba1d7', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d347d6312fb3c0a6b2825175db1ba9e075d0729a2ab46f72c6a1c2620a4bb22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4e102d1-ec97-52ff-b681-5ad17114d95c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4255b18-7d22-5e98-b249-546f74fba1d7', 1), '8d347d6312fb3c0a6b2825175db1ba9e075d0729a2ab46f72c6a1c2620a4bb22',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f96ce7bac779618a834a4e4e44b48966d14b3d8d6ff33fc165f677391685dd9f.mp3', 2351, '2026-09-13 08:16:28.603455', 'de31a7f84062bf585ebe713fda149c47c2506d5c3e00399343116e1ea93dba64', 'validated', '{"audio_key":"f96ce7bac779618a834a4e4e44b48966d14b3d8d6ff33fc165f677391685dd9f","entity_key":"d_projects_deadlines_risks_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"de31a7f84062bf585ebe713fda149c47c2506d5c3e00399343116e1ea93dba64","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f96ce7bac779618a834a4e4e44b48966d14b3d8d6ff33fc165f677391685dd9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_projects_deadlines_risks_02:4 -> audio/generated/de-DE/dialogues/fa321dacfdc55a79636c7759c8ab754dd343a6fec64eeee3ce90e80b5c70f3a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd5bd98b-d338-542c-b48c-3aa29de937bc', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_projects_deadlines_risks_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd558e1a3b6ee8694edd3e59ba80d9f32617eb6a2385faeddbe5eec7730cb66c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa6aeeb9-b208-57e8-9df5-fba7e0bdf732', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd5bd98b-d338-542c-b48c-3aa29de937bc', 1), 'd558e1a3b6ee8694edd3e59ba80d9f32617eb6a2385faeddbe5eec7730cb66c7',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fa321dacfdc55a79636c7759c8ab754dd343a6fec64eeee3ce90e80b5c70f3a4.mp3', 2115, '2026-09-13 08:16:28.670800', 'a881223c43c1edcaa742369c5220830701e56ac06c391c221e825aeaf1200da6', 'validated', '{"audio_key":"fa321dacfdc55a79636c7759c8ab754dd343a6fec64eeee3ce90e80b5c70f3a4","entity_key":"d_projects_deadlines_risks_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a881223c43c1edcaa742369c5220830701e56ac06c391c221e825aeaf1200da6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fa321dacfdc55a79636c7759c8ab754dd343a6fec64eeee3ce90e80b5c70f3a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_service_resolution_05 -> audio/generated/de-DE/lexical/0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('38aadcb3-2c73-54ac-b6da-741b713e7f57', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_service_resolution_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '451de6f5f859306ff94018bd787fb90fcebc5f8bfffb9bbe2fa9e3b20c622848'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b5cd63b-af58-5e06-ad28-6d9ace5df32c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('38aadcb3-2c73-54ac-b6da-741b713e7f57', 1), '451de6f5f859306ff94018bd787fb90fcebc5f8bfffb9bbe2fa9e3b20c622848',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880.mp3', 1097, '2026-09-13 08:16:29.620026', '08e5ad5e0a19309f52daf136f3067d3c9d12ddd591cd204f5634198609fac347', 'validated', '{"audio_key":"0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880","entity_key":"lx_complaints_service_resolution_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08e5ad5e0a19309f52daf136f3067d3c9d12ddd591cd204f5634198609fac347","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_service_resolution_05 -> audio/generated/de-DE/lexical/0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85fa53dc-6d73-5d39-bc95-efe873714182', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_service_resolution_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '451de6f5f859306ff94018bd787fb90fcebc5f8bfffb9bbe2fa9e3b20c622848'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12020551-bac2-5803-967d-32a172a7d2dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85fa53dc-6d73-5d39-bc95-efe873714182', 1), '451de6f5f859306ff94018bd787fb90fcebc5f8bfffb9bbe2fa9e3b20c622848',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880.mp3', 1097, '2026-09-13 08:16:29.620026', '08e5ad5e0a19309f52daf136f3067d3c9d12ddd591cd204f5634198609fac347', 'validated', '{"audio_key":"0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880","entity_key":"wf_complaints_service_resolution_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08e5ad5e0a19309f52daf136f3067d3c9d12ddd591cd204f5634198609fac347","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d40a04fab7a9ce91576c7e4f439f48010c3a7158a00d9d71735edb0ee60b880.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_interviews_achievements_06 -> audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e91a168-7f43-5bcf-ad58-a259894bbae2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_interviews_achievements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86073aa7-f85f-5c70-a6f9-0cfcc761c5e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e91a168-7f43-5bcf-ad58-a259894bbae2', 1), 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3', 1149, '2026-09-13 08:16:29.660361', '8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2', 'validated', '{"audio_key":"0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da","entity_key":"lx_job_interviews_achievements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_interviews_achievements_06 -> audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ef485fe-0eb8-5945-949b-9fc5df9c25d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_interviews_achievements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58e4464f-e7e7-531d-848d-55852f76c1e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ef485fe-0eb8-5945-949b-9fc5df9c25d2', 1), 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3', 1149, '2026-09-13 08:16:29.660361', '8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2', 'validated', '{"audio_key":"0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da","entity_key":"wf_job_interviews_achievements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_challenges_feedback_02 -> audio/generated/de-DE/lexical/0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1b382558-6fd5-54a7-a6a1-897446c4ad3e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_challenges_feedback_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4681c036b1cb18824e07c263580ed8e3fdb715b68bc195af7dcb43888ec1e363'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6ddd711-aae7-517d-83ea-fbcaf602d924', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1b382558-6fd5-54a7-a6a1-897446c4ad3e', 1), '4681c036b1cb18824e07c263580ed8e3fdb715b68bc195af7dcb43888ec1e363',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7.mp3', 1201, '2026-09-13 08:16:30.665444', '887bcac1c75939e8dc206722ecdd872e1181c3b117447e002660875c5a179556', 'validated', '{"audio_key":"0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7","entity_key":"lx_study_challenges_feedback_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"887bcac1c75939e8dc206722ecdd872e1181c3b117447e002660875c5a179556","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_challenges_feedback_02 -> audio/generated/de-DE/lexical/0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8379b0e-f95d-5303-95d8-c6036558b8d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_challenges_feedback_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4681c036b1cb18824e07c263580ed8e3fdb715b68bc195af7dcb43888ec1e363'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7861c6c5-c039-57e6-91bd-ade651765400', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8379b0e-f95d-5303-95d8-c6036558b8d3', 1), '4681c036b1cb18824e07c263580ed8e3fdb715b68bc195af7dcb43888ec1e363',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7.mp3', 1201, '2026-09-13 08:16:30.665444', '887bcac1c75939e8dc206722ecdd872e1181c3b117447e002660875c5a179556', 'validated', '{"audio_key":"0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7","entity_key":"wf_study_challenges_feedback_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"887bcac1c75939e8dc206722ecdd872e1181c3b117447e002660875c5a179556","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0edc75a404f7717aed61b9469b54ce18bd9bad5f75206e4437099a11617f69b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_critique_03 -> audio/generated/de-DE/lexical/100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('32eca0d6-88f3-555f-ab50-b38f21be998f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03aa8608c9a2d12cc70ec068df6121a7608e9e88c57e7e08bee41a2a945c1e1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c6e8a38-4b5d-5aac-ae1c-4559e370b68e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('32eca0d6-88f3-555f-ab50-b38f21be998f', 1), '03aa8608c9a2d12cc70ec068df6121a7608e9e88c57e7e08bee41a2a945c1e1a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1.mp3', 1149, '2026-09-13 08:16:30.677562', '9d3dd87a2c6212bbe98c5bbfdbee6602afa11dd3b29451da22972919ef29ce7e', 'validated', '{"audio_key":"100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1","entity_key":"lx_feedback_critique_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d3dd87a2c6212bbe98c5bbfdbee6602afa11dd3b29451da22972919ef29ce7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_critique_03 -> audio/generated/de-DE/lexical/100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3b655ca5-5538-56a6-9256-e3b301d5c777', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03aa8608c9a2d12cc70ec068df6121a7608e9e88c57e7e08bee41a2a945c1e1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17d58946-627f-500e-a69b-a8530024c175', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3b655ca5-5538-56a6-9256-e3b301d5c777', 1), '03aa8608c9a2d12cc70ec068df6121a7608e9e88c57e7e08bee41a2a945c1e1a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1.mp3', 1149, '2026-09-13 08:16:30.677562', '9d3dd87a2c6212bbe98c5bbfdbee6602afa11dd3b29451da22972919ef29ce7e', 'validated', '{"audio_key":"100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1","entity_key":"wf_feedback_critique_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d3dd87a2c6212bbe98c5bbfdbee6602afa11dd3b29451da22972919ef29ce7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/100e520a30f637896154197cb9edfe153202432d0d19d6959f00d06e463baab1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_critique_04 -> audio/generated/de-DE/lexical/11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bd4535db-1d4d-5702-af65-d6c669cfda9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d9af5cbb5b5a0ea2ed694dbe875520ffef3209ebd487d54132b9f9b517fcacf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dbfeadd-b064-54fd-a4fd-41ee0235afc3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bd4535db-1d4d-5702-af65-d6c669cfda9e', 1), '8d9af5cbb5b5a0ea2ed694dbe875520ffef3209ebd487d54132b9f9b517fcacf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803.mp3', 1332, '2026-09-13 08:16:31.725211', '556e3f4644a524deaaee9e2c9dc7af148db79b92cc29711011e5717daf04f4f9', 'validated', '{"audio_key":"11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803","entity_key":"lx_feedback_critique_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"556e3f4644a524deaaee9e2c9dc7af148db79b92cc29711011e5717daf04f4f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_critique_04 -> audio/generated/de-DE/lexical/11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a98053d6-f99c-527a-b13a-fa9e46ec8e7a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d9af5cbb5b5a0ea2ed694dbe875520ffef3209ebd487d54132b9f9b517fcacf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e862fbf-edea-5aff-a0c4-d6292e720c26', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a98053d6-f99c-527a-b13a-fa9e46ec8e7a', 1), '8d9af5cbb5b5a0ea2ed694dbe875520ffef3209ebd487d54132b9f9b517fcacf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803.mp3', 1332, '2026-09-13 08:16:31.725211', '556e3f4644a524deaaee9e2c9dc7af148db79b92cc29711011e5717daf04f4f9', 'validated', '{"audio_key":"11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803","entity_key":"wf_feedback_critique_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"556e3f4644a524deaaee9e2c9dc7af148db79b92cc29711011e5717daf04f4f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/11a2740bf101cdeeb8c16facb346eb317f08da112bbdd047803b125a10099803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_accommodation_issues_02 -> audio/generated/de-DE/lexical/1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('58dc7cc7-e361-5d03-a4f8-85bd8224fa99', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_accommodation_issues_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f172ef3a1ad1a6d273eccac4de40fd2d2cdb738689cc2acd94f962d2351d6ff7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35fcc01f-8219-506c-93d0-154c2bf1e1e3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('58dc7cc7-e361-5d03-a4f8-85bd8224fa99', 1), 'f172ef3a1ad1a6d273eccac4de40fd2d2cdb738689cc2acd94f962d2351d6ff7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375.mp3', 1149, '2026-09-13 08:16:31.698617', '9bbbffc8f5843bff15f693efec6743594fbbcbd7fe30dc8d010993aea1899fd5', 'validated', '{"audio_key":"1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375","entity_key":"lx_accommodation_issues_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bbbffc8f5843bff15f693efec6743594fbbcbd7fe30dc8d010993aea1899fd5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_accommodation_issues_02 -> audio/generated/de-DE/lexical/1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a85f84c5-f76c-5f94-8be2-5225e5c1f7b0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_accommodation_issues_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f172ef3a1ad1a6d273eccac4de40fd2d2cdb738689cc2acd94f962d2351d6ff7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dca984ce-8aee-5b25-ae25-fe328abfea9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a85f84c5-f76c-5f94-8be2-5225e5c1f7b0', 1), 'f172ef3a1ad1a6d273eccac4de40fd2d2cdb738689cc2acd94f962d2351d6ff7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375.mp3', 1149, '2026-09-13 08:16:31.698617', '9bbbffc8f5843bff15f693efec6743594fbbcbd7fe30dc8d010993aea1899fd5', 'validated', '{"audio_key":"1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375","entity_key":"wf_accommodation_issues_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bbbffc8f5843bff15f693efec6743594fbbcbd7fe30dc8d010993aea1899fd5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f42ac98b7964ae84e7542bf152044c98ec75123e673b691c94d34a0b4fce375.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_interviews_achievements_03 -> audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aea21ccd-0d46-5790-b7de-df716debd36b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_interviews_achievements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bdb88a3-c149-5e23-8e83-8367bc1ceaa8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aea21ccd-0d46-5790-b7de-df716debd36b', 1), '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3', 1149, '2026-09-13 06:42:58.312673', '092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32', 'validated', '{"audio_key":"2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c","entity_key":"lx_job_interviews_achievements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_interviews_achievements_03 -> audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56ac11b4-609b-54d5-803e-20a18ef78347', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_interviews_achievements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6399cba8-7e33-5dc5-9c0c-f0ad4e802fa3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56ac11b4-609b-54d5-803e-20a18ef78347', 1), '6d842dbbbea42cd3bbc7830a2673525389f98937e81ad5075ae7dc86cc2c9821',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3', 1149, '2026-09-13 06:42:58.312673', '092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32', 'validated', '{"audio_key":"2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c","entity_key":"wf_job_interviews_achievements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092a3ad8ad7649c08dc577d5d82cb091d7cf76656febc5d67610ab4e41beff32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2404dd523499b7ff1dc5510422d5172ddb31fc50d999684d962c98ef76c5960c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_interviews_achievements_05 -> audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31a54650-3df8-5e63-ae03-f79b9de73562', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_interviews_achievements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4077e6e-de7c-5bf9-8ed0-e7da89542de5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31a54650-3df8-5e63-ae03-f79b9de73562', 1), 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3', 1149, '2026-09-13 08:16:32.726321', '550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597', 'validated', '{"audio_key":"26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3","entity_key":"lx_job_interviews_achievements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_interviews_achievements_05 -> audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e11aba2e-30ee-58d4-8c58-634b076ff420', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_interviews_achievements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63eb5046-48cd-5129-b381-ee810e6be86f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e11aba2e-30ee-58d4-8c58-634b076ff420', 1), 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3', 1149, '2026-09-13 08:16:32.726321', '550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597', 'validated', '{"audio_key":"26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3","entity_key":"wf_job_interviews_achievements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_challenges_feedback_06 -> audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a6a40dd1-9e8f-553a-9762-ea0a643a75f7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_challenges_feedback_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f17653f-0131-5545-b90e-5faf65d4eb2c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a6a40dd1-9e8f-553a-9762-ea0a643a75f7', 1), 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3', 1149, '2026-09-13 06:42:59.082971', 'b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83', 'validated', '{"audio_key":"29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130","entity_key":"lx_study_challenges_feedback_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_challenges_feedback_06 -> audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('412ef97e-99fd-5be2-80d7-3311c6b36ef8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_challenges_feedback_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9db8ddda-f1a7-5d28-bf0a-2692bac6d7cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('412ef97e-99fd-5be2-80d7-3311c6b36ef8', 1), 'ae74c4d785f17f40f95593dd62cf8211f317d34a7629eb8975a71bdc041d9958',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3', 1149, '2026-09-13 06:42:59.082971', 'b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83', 'validated', '{"audio_key":"29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130","entity_key":"wf_study_challenges_feedback_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51d1ceb0b1f7e8baaa5b13f7e79a12cc47714ac6a15fd45cff28f63f797dd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/29763ae1a470018174167e04f416d63a54fcf2cb5f8df426e23110f1e7f0a130.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_priorities_blockers_01 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_priorities_blockers_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923f1fdb-70d8-5641-99b9-78a606b22dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"lx_work_priorities_blockers_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_priorities_blockers_01 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e8abf392-f974-556e-b0b8-8912df51e8e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_priorities_blockers_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9029b3f8-c948-5d36-b639-f490567afeca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e8abf392-f974-556e-b0b8-8912df51e8e9', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"wf_work_priorities_blockers_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_service_resolution_04 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_service_resolution_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ac9b86-d70b-58c5-bd3b-2809e05ad52d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"lx_complaints_service_resolution_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_service_resolution_04 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09ff69aa-cfe7-56de-83c1-6f4426c879dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_service_resolution_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1705eb67-f4a7-5852-a329-f172bb7c6903', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09ff69aa-cfe7-56de-83c1-6f4426c879dd', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"wf_complaints_service_resolution_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_misunderstandings_05 -> audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('17bdf3e0-a7ef-5384-b77b-cbdc6798a55a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_misunderstandings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bae0edf-47e0-53a6-bbe1-d7955fe70dfe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('17bdf3e0-a7ef-5384-b77b-cbdc6798a55a', 1), '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3', 1384, '2026-09-13 08:16:32.762418', '7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b', 'validated', '{"audio_key":"35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a","entity_key":"lx_relationships_misunderstandings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_misunderstandings_05 -> audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15bb281c-3a61-5296-9a9b-469f284b66cd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_misunderstandings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a11fe8c3-0856-5f80-b687-3d17de15b08d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15bb281c-3a61-5296-9a9b-469f284b66cd', 1), '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3', 1384, '2026-09-13 08:16:32.762418', '7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b', 'validated', '{"audio_key":"35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a","entity_key":"wf_relationships_misunderstandings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_accommodation_issues_03 -> audio/generated/de-DE/lexical/3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ae13644c-1418-54dd-bc5a-e00c4a019237', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_accommodation_issues_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dec4fdd39cba2d2decca78c3a26172fc3e878c1e8e6564455b8e4ff868e8321b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2adcbcd7-d7d3-5e87-813a-ef3e89942944', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ae13644c-1418-54dd-bc5a-e00c4a019237', 1), 'dec4fdd39cba2d2decca78c3a26172fc3e878c1e8e6564455b8e4ff868e8321b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea.mp3', 1097, '2026-09-13 08:16:33.707973', '4c8a961b2712ef209b13ca260649fa88db0375eb143650b1a4369e53d8b41b4b', 'validated', '{"audio_key":"3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea","entity_key":"lx_accommodation_issues_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c8a961b2712ef209b13ca260649fa88db0375eb143650b1a4369e53d8b41b4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_accommodation_issues_03 -> audio/generated/de-DE/lexical/3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3cf709e2-425c-504c-aa16-707aa1407c98', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_accommodation_issues_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dec4fdd39cba2d2decca78c3a26172fc3e878c1e8e6564455b8e4ff868e8321b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d424891-b5d4-5b32-8a2e-0774fe062b9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3cf709e2-425c-504c-aa16-707aa1407c98', 1), 'dec4fdd39cba2d2decca78c3a26172fc3e878c1e8e6564455b8e4ff868e8321b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea.mp3', 1097, '2026-09-13 08:16:33.707973', '4c8a961b2712ef209b13ca260649fa88db0375eb143650b1a4369e53d8b41b4b', 'validated', '{"audio_key":"3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea","entity_key":"wf_accommodation_issues_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c8a961b2712ef209b13ca260649fa88db0375eb143650b1a4369e53d8b41b4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3859208c491f9f479447ce1d8e00904daef22161cbf6e56eaccc8dc7577c14ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_service_resolution_01 -> audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddd1b3e4-c48b-58b6-8c99-3902c5d327d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_service_resolution_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eec8e8fc-9627-5dfe-8edd-f5152412112c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddd1b3e4-c48b-58b6-8c99-3902c5d327d6', 1), 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3', 1149, '2026-09-13 06:59:24.872665', '32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c', 'validated', '{"audio_key":"3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef","entity_key":"lx_complaints_service_resolution_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_service_resolution_01 -> audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('629a6de8-5f4d-575a-8b5e-fe00576b6df4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_service_resolution_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71dc8c89-8994-563f-9fc4-f31a374b37a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('629a6de8-5f4d-575a-8b5e-fe00576b6df4', 1), 'c7fde7f452c6a6277a0b70935ac1ca1a0fa83336465e7b1edac519e875aa1900',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3', 1149, '2026-09-13 06:59:24.872665', '32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c', 'validated', '{"audio_key":"3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef","entity_key":"wf_complaints_service_resolution_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32d6d0fdbeb9ad771f6e0087e25224199d4ec2d388837c57cb6909da0b13363c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3d3bcde7998e940e06441ca4a0af5117583635b3343d03d4ee5e45c327bd49ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_disruptions_01 -> audio/generated/de-DE/lexical/41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a6da40f-85ed-5007-bc63-468c12f97d1d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_disruptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f16b6c73a23d3c1fb5c57e640b951b71032c1fca50b70e3bbecb61808ff8d22b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0501f92-3940-5784-ac34-e5d20da9bc81', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a6da40f-85ed-5007-bc63-468c12f97d1d', 1), 'f16b6c73a23d3c1fb5c57e640b951b71032c1fca50b70e3bbecb61808ff8d22b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394.mp3', 966, '2026-09-13 08:16:33.752502', '73760ae715379a6e8f0b0c0f5327b6b9ebb9ae500767955592af14e3a2c84d56', 'validated', '{"audio_key":"41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394","entity_key":"lx_travel_disruptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73760ae715379a6e8f0b0c0f5327b6b9ebb9ae500767955592af14e3a2c84d56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_disruptions_01 -> audio/generated/de-DE/lexical/41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d4a25f8-9876-5cf6-a116-c5a1c919ba8d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_disruptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f16b6c73a23d3c1fb5c57e640b951b71032c1fca50b70e3bbecb61808ff8d22b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c724226d-fbbc-55ee-b17a-78b5e3716c05', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d4a25f8-9876-5cf6-a116-c5a1c919ba8d', 1), 'f16b6c73a23d3c1fb5c57e640b951b71032c1fca50b70e3bbecb61808ff8d22b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394.mp3', 966, '2026-09-13 08:16:33.752502', '73760ae715379a6e8f0b0c0f5327b6b9ebb9ae500767955592af14e3a2c84d56', 'validated', '{"audio_key":"41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394","entity_key":"wf_travel_disruptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73760ae715379a6e8f0b0c0f5327b6b9ebb9ae500767955592af14e3a2c84d56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41ed370f50e9f9424dfac593b4467dbe989c873b8c3c9ac908ffee3571f7c394.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_misunderstandings_04 -> audio/generated/de-DE/lexical/46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6b6ccf29-ffe6-5aad-abd0-6a47aa8e9d6f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_misunderstandings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4b94770aa971c92a620f00ae90cdee2f83fb4462e807cb029225278de1bd4d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc531d0a-1170-50a7-af14-2eb199c34144', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6b6ccf29-ffe6-5aad-abd0-6a47aa8e9d6f', 1), 'a4b94770aa971c92a620f00ae90cdee2f83fb4462e807cb029225278de1bd4d7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4.mp3', 1071, '2026-09-13 08:16:34.681023', '4b87e08adc6a47fcbdef918aacbc0bbc5e49f9525ca3f219001a3019d1b1a7dd', 'validated', '{"audio_key":"46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4","entity_key":"lx_relationships_misunderstandings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b87e08adc6a47fcbdef918aacbc0bbc5e49f9525ca3f219001a3019d1b1a7dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_misunderstandings_04 -> audio/generated/de-DE/lexical/46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed7b886a-0cd2-5a3f-9ec7-b4a84213af20', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_misunderstandings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4b94770aa971c92a620f00ae90cdee2f83fb4462e807cb029225278de1bd4d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5008afd6-4c0d-54ec-95db-0f5e5cd93bbc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed7b886a-0cd2-5a3f-9ec7-b4a84213af20', 1), 'a4b94770aa971c92a620f00ae90cdee2f83fb4462e807cb029225278de1bd4d7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4.mp3', 1071, '2026-09-13 08:16:34.681023', '4b87e08adc6a47fcbdef918aacbc0bbc5e49f9525ca3f219001a3019d1b1a7dd', 'validated', '{"audio_key":"46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4","entity_key":"wf_relationships_misunderstandings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b87e08adc6a47fcbdef918aacbc0bbc5e49f9525ca3f219001a3019d1b1a7dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/46f3b29eaa689738634125c253be8d12b10bc7b7a32bb0c3491941d3c29dcde4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projects_deadlines_risks_01 -> audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57084849-58fa-522d-80f8-658ce1c6f89c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projects_deadlines_risks_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8bf70b8-62ae-58c2-ba91-04a444158cb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57084849-58fa-522d-80f8-658ce1c6f89c', 1), '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3', 1097, '2026-09-13 06:17:31.146695', '9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2', 'validated', '{"audio_key":"495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f","entity_key":"lx_projects_deadlines_risks_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projects_deadlines_risks_01 -> audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c51a650a-a9bc-5ec7-9a7f-f317b87988ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projects_deadlines_risks_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('664476e8-22de-598a-bd9a-d604e0420688', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c51a650a-a9bc-5ec7-9a7f-f317b87988ab', 1), '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3', 1097, '2026-09-13 06:17:31.146695', '9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2', 'validated', '{"audio_key":"495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f","entity_key":"wf_projects_deadlines_risks_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_product_research_decisions_04 -> audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9da839b5-ca55-5711-9ebf-c5bdd5bc4dd5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_product_research_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('815f8139-094e-5b3e-8c44-81b0f242fdd0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9da839b5-ca55-5711-9ebf-c5bdd5bc4dd5', 1), '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3', 1201, '2026-09-13 06:17:32.092684', '42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2', 'validated', '{"audio_key":"4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb","entity_key":"lx_product_research_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_product_research_decisions_04 -> audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('73e17426-063c-5a20-be56-9b1ba8bdc8fd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_product_research_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5889245d-dc46-514d-a6dd-aee7cb778eab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('73e17426-063c-5a20-be56-9b1ba8bdc8fd', 1), '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3', 1201, '2026-09-13 06:17:32.092684', '42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2', 'validated', '{"audio_key":"4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb","entity_key":"wf_product_research_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_misunderstandings_06 -> audio/generated/de-DE/lexical/4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d5ac80a5-1815-56b0-9f01-9f7237cfe441', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_misunderstandings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50a4db0d3a5bcdb4c97a825426e172dfae9814f7e489e6cf60863421611b0891'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f050c9e7-24f0-5c46-9d5a-f36d9a23aebb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d5ac80a5-1815-56b0-9f01-9f7237cfe441', 1), '50a4db0d3a5bcdb4c97a825426e172dfae9814f7e489e6cf60863421611b0891',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116.mp3', 1097, '2026-09-13 08:16:34.859617', 'b20b43e2e4475a0d4d722fb06aa3f2f71cbbf415f6064f311ec603a091a52dfb', 'validated', '{"audio_key":"4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116","entity_key":"lx_relationships_misunderstandings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b20b43e2e4475a0d4d722fb06aa3f2f71cbbf415f6064f311ec603a091a52dfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_misunderstandings_06 -> audio/generated/de-DE/lexical/4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('46231099-9cbc-5dfb-ba87-e78b0bb9623f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_misunderstandings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50a4db0d3a5bcdb4c97a825426e172dfae9814f7e489e6cf60863421611b0891'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('614943cb-bef8-5c56-8048-ed768b1acf7d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('46231099-9cbc-5dfb-ba87-e78b0bb9623f', 1), '50a4db0d3a5bcdb4c97a825426e172dfae9814f7e489e6cf60863421611b0891',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116.mp3', 1097, '2026-09-13 08:16:34.859617', 'b20b43e2e4475a0d4d722fb06aa3f2f71cbbf415f6064f311ec603a091a52dfb', 'validated', '{"audio_key":"4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116","entity_key":"wf_relationships_misunderstandings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b20b43e2e4475a0d4d722fb06aa3f2f71cbbf415f6064f311ec603a091a52dfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f909a691081cfaa1a4fd09f5ad9122fb2b1c8115f4b3be9c7ea5fd9544bf116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_priorities_blockers_02 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_priorities_blockers_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70583cd7-3bc1-558d-b60f-dce733c973ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"lx_work_priorities_blockers_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_priorities_blockers_02 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5961923d-4733-5a31-a7fd-c59dd5c37dc5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_priorities_blockers_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f08ebfc-106e-5c32-aefb-e80f58438cd3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5961923d-4733-5a31-a7fd-c59dd5c37dc5', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"wf_work_priorities_blockers_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_disruptions_04 -> audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b0841b23-63e7-59be-9a8d-e14c30c3b8b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_disruptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e177614-adc8-56a4-971c-eff15489e694', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b0841b23-63e7-59be-9a8d-e14c30c3b8b7', 1), '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3', 862, '2026-09-13 06:43:05.428582', '9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51', 'validated', '{"audio_key":"5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6","entity_key":"lx_travel_disruptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_disruptions_04 -> audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f92dfa4a-ee3e-5246-b85c-986cb92c7c4b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_disruptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d3c0cfa-bcb9-56b6-a770-f17f8e84d5a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f92dfa4a-ee3e-5246-b85c-986cb92c7c4b', 1), '69220205e0bf37de2b9073beb41392f130c06c11d8de611c76c692352c7de0b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3', 862, '2026-09-13 06:43:05.428582', '9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51', 'validated', '{"audio_key":"5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6","entity_key":"wf_travel_disruptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c9bce7f0cf21c86cd18ea73474ba31dbb6d7564318abb8efaabe64da2556b51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5fb44bd5352c6a43872368db6753805ddfce471210ce3f8a7c1b4176ce0985a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projects_deadlines_risks_04 -> audio/generated/de-DE/lexical/6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('61656e37-c814-5ec5-9d9c-5073840c7794', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projects_deadlines_risks_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6432ea98b35f6079251db437c507a2684bf279f7b09756f4082da35de57cc8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee8a66fb-e621-5597-ae93-b4957a89971c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('61656e37-c814-5ec5-9d9c-5073840c7794', 1), 'e6432ea98b35f6079251db437c507a2684bf279f7b09756f4082da35de57cc8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90.mp3', 1149, '2026-09-13 08:16:35.720123', 'cc6c3d12ba3033ab89a9e86d26181631b75e3b5a261324a291343db50bf7c68f', 'validated', '{"audio_key":"6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90","entity_key":"lx_projects_deadlines_risks_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc6c3d12ba3033ab89a9e86d26181631b75e3b5a261324a291343db50bf7c68f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projects_deadlines_risks_04 -> audio/generated/de-DE/lexical/6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3e7dcd0f-61f8-5116-af74-176929bc5e0a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projects_deadlines_risks_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6432ea98b35f6079251db437c507a2684bf279f7b09756f4082da35de57cc8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('033fe450-f295-5d2f-9617-a068cf0f545f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3e7dcd0f-61f8-5116-af74-176929bc5e0a', 1), 'e6432ea98b35f6079251db437c507a2684bf279f7b09756f4082da35de57cc8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90.mp3', 1149, '2026-09-13 08:16:35.720123', 'cc6c3d12ba3033ab89a9e86d26181631b75e3b5a261324a291343db50bf7c68f', 'validated', '{"audio_key":"6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90","entity_key":"wf_projects_deadlines_risks_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc6c3d12ba3033ab89a9e86d26181631b75e3b5a261324a291343db50bf7c68f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6996a2e41ab36a75c70f2263406cd404150b0b9e91241c3a80e5dce421abdd90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_misunderstandings_03 -> audio/generated/de-DE/lexical/732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5cc6f793-83fb-5ca9-bcdc-ed6c9fd47f7b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_misunderstandings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98077394eb37a2d9fe4a123757b2bc1cd12c8d9b94485d0603fdb9aafbb5dfa3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a6a4da2-5f37-58e0-bd8f-e6c5aad00582', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5cc6f793-83fb-5ca9-bcdc-ed6c9fd47f7b', 1), '98077394eb37a2d9fe4a123757b2bc1cd12c8d9b94485d0603fdb9aafbb5dfa3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84.mp3', 1201, '2026-09-13 08:16:35.835190', '1dd5aedc41b42aa920e39a884eb82ab3e2a5e0b2276c8748ca3cf9d41a7d51f5', 'validated', '{"audio_key":"732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84","entity_key":"lx_relationships_misunderstandings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dd5aedc41b42aa920e39a884eb82ab3e2a5e0b2276c8748ca3cf9d41a7d51f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_misunderstandings_03 -> audio/generated/de-DE/lexical/732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0d6a7dd-4bb1-5739-8154-8e1d031c0804', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_misunderstandings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98077394eb37a2d9fe4a123757b2bc1cd12c8d9b94485d0603fdb9aafbb5dfa3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ca5733a-8590-59af-9b4c-56cfb35b0660', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0d6a7dd-4bb1-5739-8154-8e1d031c0804', 1), '98077394eb37a2d9fe4a123757b2bc1cd12c8d9b94485d0603fdb9aafbb5dfa3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84.mp3', 1201, '2026-09-13 08:16:35.835190', '1dd5aedc41b42aa920e39a884eb82ab3e2a5e0b2276c8748ca3cf9d41a7d51f5', 'validated', '{"audio_key":"732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84","entity_key":"wf_relationships_misunderstandings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dd5aedc41b42aa920e39a884eb82ab3e2a5e0b2276c8748ca3cf9d41a7d51f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/732240660ab635dfea6fb4601a2d41a5411e71b2e8c7538c77b3b64f87073f84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_service_resolution_06 -> audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed1e0491-8b62-52b4-8b9f-50d23794c10a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_service_resolution_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7be9b78-a900-591b-8417-a075efaf6106', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed1e0491-8b62-52b4-8b9f-50d23794c10a', 1), 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3', 1097, '2026-09-13 08:16:36.733526', 'd830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87', 'validated', '{"audio_key":"76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5","entity_key":"lx_complaints_service_resolution_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_service_resolution_06 -> audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('53acaab4-ea0d-522b-b751-4a6528082d6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_service_resolution_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61300420-b1c2-57be-8777-19d404ee4b0f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('53acaab4-ea0d-522b-b751-4a6528082d6d', 1), 'e1aec1e12b7f12b5ea7bdb24e6c778752a69644161ba7c1efc689fa509678ace',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3', 1097, '2026-09-13 08:16:36.733526', 'd830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87', 'validated', '{"audio_key":"76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5","entity_key":"wf_complaints_service_resolution_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d830bab5bcd89cc1913bc6e1879326baf4e6311e416dfc859e7aef50e173af87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76ca63d8ae111a73fc5dabc7f2311762e27da1a4933dee3cc4938b1879418ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_accommodation_issues_05 -> audio/generated/de-DE/lexical/7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f50a4d7-8688-59ca-827a-499330a5699e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_accommodation_issues_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cfb1211742729034ebc9ff155e4f6a41a2a650f2bb0be7ff77b0183fe5a377b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02c72e13-ecdf-57a0-b3d0-b7b96fab641b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f50a4d7-8688-59ca-827a-499330a5699e', 1), '3cfb1211742729034ebc9ff155e4f6a41a2a650f2bb0be7ff77b0183fe5a377b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e.mp3', 1253, '2026-09-13 08:16:36.875950', '02e9bd1f6f503cb9b938de247d099dafad93a1c4c4f1b5facc18a6237ef92fed', 'validated', '{"audio_key":"7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e","entity_key":"lx_accommodation_issues_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02e9bd1f6f503cb9b938de247d099dafad93a1c4c4f1b5facc18a6237ef92fed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_accommodation_issues_05 -> audio/generated/de-DE/lexical/7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0d5e76bb-8be7-570b-9432-22b60e12a74c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_accommodation_issues_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cfb1211742729034ebc9ff155e4f6a41a2a650f2bb0be7ff77b0183fe5a377b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3592fc37-1c7f-5a83-ba48-86ece952b109', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0d5e76bb-8be7-570b-9432-22b60e12a74c', 1), '3cfb1211742729034ebc9ff155e4f6a41a2a650f2bb0be7ff77b0183fe5a377b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e.mp3', 1253, '2026-09-13 08:16:36.875950', '02e9bd1f6f503cb9b938de247d099dafad93a1c4c4f1b5facc18a6237ef92fed', 'validated', '{"audio_key":"7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e","entity_key":"wf_accommodation_issues_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02e9bd1f6f503cb9b938de247d099dafad93a1c4c4f1b5facc18a6237ef92fed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e4c09933ec614140c8efc215424fcf6ca8ac78d2595d79b2b56f94134bc330e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projects_deadlines_risks_06 -> audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e447824-7a36-58f8-a8de-c6f7021095aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projects_deadlines_risks_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c83a09f7-4f4b-5491-b65b-a76c42a830c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e447824-7a36-58f8-a8de-c6f7021095aa', 1), '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3', 1018, '2026-09-13 08:16:37.725943', '56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f', 'validated', '{"audio_key":"7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219","entity_key":"lx_projects_deadlines_risks_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projects_deadlines_risks_06 -> audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('504d26e4-320b-51c7-820e-9eeddd08ecb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projects_deadlines_risks_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4101cd34-309a-5d5b-93e6-96e409dbc0a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('504d26e4-320b-51c7-820e-9eeddd08ecb5', 1), '38cb2ee20593ba65ffb96b9abdd70942364ddcb7845191ad960411ab55d817d6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3', 1018, '2026-09-13 08:16:37.725943', '56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f', 'validated', '{"audio_key":"7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219","entity_key":"wf_projects_deadlines_risks_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56aed61c48d03ac94ce959910be60d9d4bb7e64e9fa057653badb0e75f5f6e7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e8ed94a0831692f97619380a2288a94e480b466adefd76bcd0bff861e64d219.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_challenges_feedback_04 -> audio/generated/de-DE/lexical/83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ced0ed1-78da-5bdc-87b4-85643000e9e6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_challenges_feedback_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c63dd9a5d17e46ef323a8b0773bde53d3df1d0e2a3544a4e2d8e6abd61c0bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d60af874-3e6c-510e-98e2-e68c6f4f243a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ced0ed1-78da-5bdc-87b4-85643000e9e6', 1), '3c63dd9a5d17e46ef323a8b0773bde53d3df1d0e2a3544a4e2d8e6abd61c0bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79.mp3', 1097, '2026-09-13 08:16:37.902656', 'fe27ffe2f32fd609dd147f59505cd0be0fd2a97d0201e51c0a2bfe6f7c8a3070', 'validated', '{"audio_key":"83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79","entity_key":"lx_study_challenges_feedback_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe27ffe2f32fd609dd147f59505cd0be0fd2a97d0201e51c0a2bfe6f7c8a3070","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_challenges_feedback_04 -> audio/generated/de-DE/lexical/83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('41ed0986-bbc5-5b1d-9c7d-a98c23157880', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_challenges_feedback_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c63dd9a5d17e46ef323a8b0773bde53d3df1d0e2a3544a4e2d8e6abd61c0bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13179827-5c0a-58c6-b64c-4a9be2362997', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('41ed0986-bbc5-5b1d-9c7d-a98c23157880', 1), '3c63dd9a5d17e46ef323a8b0773bde53d3df1d0e2a3544a4e2d8e6abd61c0bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79.mp3', 1097, '2026-09-13 08:16:37.902656', 'fe27ffe2f32fd609dd147f59505cd0be0fd2a97d0201e51c0a2bfe6f7c8a3070', 'validated', '{"audio_key":"83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79","entity_key":"wf_study_challenges_feedback_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe27ffe2f32fd609dd147f59505cd0be0fd2a97d0201e51c0a2bfe6f7c8a3070","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/83920b39ef0a5a4d82de75992a99ba8c2eee172e8b70e8441faddd90d319db79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_disruptions_03 -> audio/generated/de-DE/lexical/8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('820dc8ac-232e-5744-8e8c-d71550c0d34f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_disruptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90dfb0c42d07a978cfd1322cc950fc20ccc558ea3241e103227cedc0aaeede0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f55aadd-0025-5684-8d05-1867fb3a3227', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('820dc8ac-232e-5744-8e8c-d71550c0d34f', 1), '90dfb0c42d07a978cfd1322cc950fc20ccc558ea3241e103227cedc0aaeede0e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9.mp3', 966, '2026-09-13 08:16:38.733475', '938002d7f03ca8f5316a7f67c442a4724826bb8329cd299316a4214a379b8b64', 'validated', '{"audio_key":"8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9","entity_key":"lx_travel_disruptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"938002d7f03ca8f5316a7f67c442a4724826bb8329cd299316a4214a379b8b64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_disruptions_03 -> audio/generated/de-DE/lexical/8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f6249af-0d1c-598b-8e31-1db67b91f9af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_disruptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90dfb0c42d07a978cfd1322cc950fc20ccc558ea3241e103227cedc0aaeede0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1238843a-7bce-5244-9ece-659633e76d3d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f6249af-0d1c-598b-8e31-1db67b91f9af', 1), '90dfb0c42d07a978cfd1322cc950fc20ccc558ea3241e103227cedc0aaeede0e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9.mp3', 966, '2026-09-13 08:16:38.733475', '938002d7f03ca8f5316a7f67c442a4724826bb8329cd299316a4214a379b8b64', 'validated', '{"audio_key":"8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9","entity_key":"wf_travel_disruptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"938002d7f03ca8f5316a7f67c442a4724826bb8329cd299316a4214a379b8b64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8430b4c8fedd755f3680f3ddb0187822ad6c526e48256f7f777b20531cc62dd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_product_research_decisions_06 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_product_research_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_product_research_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_product_research_decisions_06 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7b6e00a1-39a8-5631-82e4-c2913f1ab007', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_product_research_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3d90602-2f24-54f6-ac3c-196b61bf5014', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7b6e00a1-39a8-5631-82e4-c2913f1ab007', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_product_research_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projects_deadlines_risks_02 -> audio/generated/de-DE/lexical/8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ece0a329-8926-5226-b5d1-d05746243045', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projects_deadlines_risks_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ae933b5bbe4cd634f2f42ceaea00ac06811681c928eec96e2089a7a46fc11ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51acc3fe-9a6c-5a69-8841-b83e6cc1a006', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ece0a329-8926-5226-b5d1-d05746243045', 1), '2ae933b5bbe4cd634f2f42ceaea00ac06811681c928eec96e2089a7a46fc11ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208.mp3', 1384, '2026-09-13 08:16:39.794262', 'f4f482ecc5ce6f7c68bd8229e43a7065fc0f597a5601d17c85d13bf07d72770e', 'validated', '{"audio_key":"8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208","entity_key":"lx_projects_deadlines_risks_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4f482ecc5ce6f7c68bd8229e43a7065fc0f597a5601d17c85d13bf07d72770e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projects_deadlines_risks_02 -> audio/generated/de-DE/lexical/8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77d74e99-f4d0-57b4-b81c-c10bc23d3464', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projects_deadlines_risks_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ae933b5bbe4cd634f2f42ceaea00ac06811681c928eec96e2089a7a46fc11ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f026d47e-26e4-5c31-9e75-48250d125e3c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77d74e99-f4d0-57b4-b81c-c10bc23d3464', 1), '2ae933b5bbe4cd634f2f42ceaea00ac06811681c928eec96e2089a7a46fc11ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208.mp3', 1384, '2026-09-13 08:16:39.794262', 'f4f482ecc5ce6f7c68bd8229e43a7065fc0f597a5601d17c85d13bf07d72770e', 'validated', '{"audio_key":"8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208","entity_key":"wf_projects_deadlines_risks_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4f482ecc5ce6f7c68bd8229e43a7065fc0f597a5601d17c85d13bf07d72770e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8a6eeafbe67e4e99206783367a3708cbea177eb6ed6f0ac13b731fd795a46208.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_product_research_decisions_03 -> audio/generated/de-DE/lexical/8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('acb602dd-6f8b-55d2-8e84-69c4a38e8b09', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_product_research_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c98ce9258f841015f6440d10ad70694e87e9652c8e18e03ec2d0f54477c6873'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66b50dae-e043-5b0e-9385-42bcf95ebb85', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('acb602dd-6f8b-55d2-8e84-69c4a38e8b09', 1), '5c98ce9258f841015f6440d10ad70694e87e9652c8e18e03ec2d0f54477c6873',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4.mp3', 1097, '2026-09-13 08:16:39.891222', '2439c3a30ab76b513dbf5f3a5e8b980cbb3cbb019ab2d755df09e3d23f4c515c', 'validated', '{"audio_key":"8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4","entity_key":"lx_product_research_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2439c3a30ab76b513dbf5f3a5e8b980cbb3cbb019ab2d755df09e3d23f4c515c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_product_research_decisions_03 -> audio/generated/de-DE/lexical/8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a8b72bfa-96cd-5cc8-8961-55c55888fbd0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_product_research_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c98ce9258f841015f6440d10ad70694e87e9652c8e18e03ec2d0f54477c6873'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b161f8af-22aa-5ae7-84fc-f5534ca44735', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a8b72bfa-96cd-5cc8-8961-55c55888fbd0', 1), '5c98ce9258f841015f6440d10ad70694e87e9652c8e18e03ec2d0f54477c6873',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4.mp3', 1097, '2026-09-13 08:16:39.891222', '2439c3a30ab76b513dbf5f3a5e8b980cbb3cbb019ab2d755df09e3d23f4c515c', 'validated', '{"audio_key":"8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4","entity_key":"wf_product_research_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2439c3a30ab76b513dbf5f3a5e8b980cbb3cbb019ab2d755df09e3d23f4c515c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8bcd24732a34e3745d3486e55b7ec2ad02b65ff61613d72c452041a6d1982fa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projects_deadlines_risks_03 -> audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('caadaedb-d44e-5fdb-81ee-aacbd6eefa6a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projects_deadlines_risks_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4998d437-399a-5ad9-a281-20cc88537081', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('caadaedb-d44e-5fdb-81ee-aacbd6eefa6a', 1), '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3', 1071, '2026-09-13 05:30:25.868716', '8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1', 'validated', '{"audio_key":"8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f","entity_key":"lx_projects_deadlines_risks_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projects_deadlines_risks_03 -> audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c84ab3a3-9a80-5d87-b0fb-4850be3624f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projects_deadlines_risks_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('388c38f1-5c56-5076-a363-36ee6ad462f7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c84ab3a3-9a80-5d87-b0fb-4850be3624f2', 1), '671082ceeb43e1f97c5dba73f6b6e527cd69625a0af32860f00844835def3e1a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3', 1071, '2026-09-13 05:30:25.868716', '8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1', 'validated', '{"audio_key":"8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f","entity_key":"wf_projects_deadlines_risks_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8122800b2b7e6e63331ea64070a4376439bef56f7a1f5eb2d7065c22ddd1deb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8bed2d986244b189ad7df221a70555650715e8f77857e29ac34d86fcf0d44a9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_accommodation_issues_04 -> audio/generated/de-DE/lexical/8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('12ff9ee4-adee-5fca-b065-fbfbc7ee8b17', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_accommodation_issues_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0165881fdd1eb0b5f6e8535a3c41b5c1edca414ff50b3ed7694648aa1ce71e13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36fdd1b9-2dce-520a-a4df-8a8f47819745', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('12ff9ee4-adee-5fca-b065-fbfbc7ee8b17', 1), '0165881fdd1eb0b5f6e8535a3c41b5c1edca414ff50b3ed7694648aa1ce71e13',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7.mp3', 1097, '2026-09-13 08:16:40.816130', '2b56c22746d1933b55761278e4040901557c9676acb199dd7ca1a28b1be2a98d', 'validated', '{"audio_key":"8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7","entity_key":"lx_accommodation_issues_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b56c22746d1933b55761278e4040901557c9676acb199dd7ca1a28b1be2a98d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_accommodation_issues_04 -> audio/generated/de-DE/lexical/8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17048918-b719-5d8c-a57d-8764a8ba22ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_accommodation_issues_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0165881fdd1eb0b5f6e8535a3c41b5c1edca414ff50b3ed7694648aa1ce71e13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('184b1eea-1fc4-5d3f-9b66-60c01fcb5284', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17048918-b719-5d8c-a57d-8764a8ba22ab', 1), '0165881fdd1eb0b5f6e8535a3c41b5c1edca414ff50b3ed7694648aa1ce71e13',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7.mp3', 1097, '2026-09-13 08:16:40.816130', '2b56c22746d1933b55761278e4040901557c9676acb199dd7ca1a28b1be2a98d', 'validated', '{"audio_key":"8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7","entity_key":"wf_accommodation_issues_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b56c22746d1933b55761278e4040901557c9676acb199dd7ca1a28b1be2a98d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8cf5f982d6eac0465abd266e27dd62a61be71a4af18b5f65746b93a95c6afae7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_product_research_decisions_02 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_product_research_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5f358d-6d3c-5a25-9f12-7781dffa8963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"lx_product_research_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_product_research_decisions_02 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0de6307-f387-531e-a3c0-7e5e6b897c59', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_product_research_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a6e1536-09ae-5612-8882-c52911b4a9a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0de6307-f387-531e-a3c0-7e5e6b897c59', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"wf_product_research_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_priorities_blockers_03 -> audio/generated/de-DE/lexical/90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3aa0411f-4d05-512b-bf3d-3096036f3aa9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_priorities_blockers_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb23ba8101e6359391d67e305fc559c6a20f4903b13d2d3251640b1d2e57736b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('463e25b9-fee1-5871-9dc0-75de1d9c5f45', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3aa0411f-4d05-512b-bf3d-3096036f3aa9', 1), 'cb23ba8101e6359391d67e305fc559c6a20f4903b13d2d3251640b1d2e57736b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493.mp3', 1097, '2026-09-13 08:16:40.872124', 'c6f28b426682f5f02dc9342b15a503f76a87a33fd4610f98b794ba25c6f96b24', 'validated', '{"audio_key":"90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493","entity_key":"lx_work_priorities_blockers_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6f28b426682f5f02dc9342b15a503f76a87a33fd4610f98b794ba25c6f96b24","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_priorities_blockers_03 -> audio/generated/de-DE/lexical/90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0303d98-5214-5630-9158-7006835d071d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_priorities_blockers_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb23ba8101e6359391d67e305fc559c6a20f4903b13d2d3251640b1d2e57736b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4567cb99-aff8-58da-89ba-75175a0ac919', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0303d98-5214-5630-9158-7006835d071d', 1), 'cb23ba8101e6359391d67e305fc559c6a20f4903b13d2d3251640b1d2e57736b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493.mp3', 1097, '2026-09-13 08:16:40.872124', 'c6f28b426682f5f02dc9342b15a503f76a87a33fd4610f98b794ba25c6f96b24', 'validated', '{"audio_key":"90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493","entity_key":"wf_work_priorities_blockers_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6f28b426682f5f02dc9342b15a503f76a87a33fd4610f98b794ba25c6f96b24","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/90e2a122fdf9d73f5639b00e1a6236baaa6bf95c6a1f2c63f2244dbd7f69a493.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_interviews_achievements_01 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_interviews_achievements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3e35bd6-a2cd-5ad2-af02-b411d9185bd7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"lx_job_interviews_achievements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_interviews_achievements_01 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77957696-7ad0-5ee5-9de2-fcd1f5aea50d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_interviews_achievements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aae0ec1b-d4de-5bd9-af3a-d55084239b28', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77957696-7ad0-5ee5-9de2-fcd1f5aea50d', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"wf_job_interviews_achievements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_product_research_decisions_01 -> audio/generated/de-DE/lexical/9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e817ba3-0851-5660-a571-b0919ec8f20b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_product_research_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6befad937bb6e89846553a8f9b30db8b8779863fc66226fe7bbc42ddbac531f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fdb7390-0528-5f4e-93ff-01975f03ff91', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e817ba3-0851-5660-a571-b0919ec8f20b', 1), '6befad937bb6e89846553a8f9b30db8b8779863fc66226fe7bbc42ddbac531f3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539.mp3', 1201, '2026-09-13 08:16:41.845130', '43714a3b9985b29ee1f456b198a2dd7e44c4200da76c48a02fa6e98322fd035b', 'validated', '{"audio_key":"9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539","entity_key":"lx_product_research_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43714a3b9985b29ee1f456b198a2dd7e44c4200da76c48a02fa6e98322fd035b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_product_research_decisions_01 -> audio/generated/de-DE/lexical/9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eeeea17b-65e7-5ded-a025-99a283198c09', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_product_research_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6befad937bb6e89846553a8f9b30db8b8779863fc66226fe7bbc42ddbac531f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2aec97a6-6221-59bc-87bd-2fe5aad99be6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eeeea17b-65e7-5ded-a025-99a283198c09', 1), '6befad937bb6e89846553a8f9b30db8b8779863fc66226fe7bbc42ddbac531f3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539.mp3', 1201, '2026-09-13 08:16:41.845130', '43714a3b9985b29ee1f456b198a2dd7e44c4200da76c48a02fa6e98322fd035b', 'validated', '{"audio_key":"9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539","entity_key":"wf_product_research_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43714a3b9985b29ee1f456b198a2dd7e44c4200da76c48a02fa6e98322fd035b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9a3f9fb2126c50b08d12ad73641d6469684d5047122b921f98e654973eb93539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_misunderstandings_02 -> audio/generated/de-DE/lexical/9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('82cb8dcc-9f84-5626-a7c2-f31a378598b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_misunderstandings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c13bec415fe613972e13a98b6c547738749f1284dc9f4e5041b2ae6b7c6490d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f55803a7-502e-5ca0-9595-5f485a5ea292', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('82cb8dcc-9f84-5626-a7c2-f31a378598b7', 1), '4c13bec415fe613972e13a98b6c547738749f1284dc9f4e5041b2ae6b7c6490d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b.mp3', 1071, '2026-09-13 08:16:41.869553', '0d93c9c65392ad6d9749be3aa5ff7917fed75e1d9641e644b4aad0be94f261bf', 'validated', '{"audio_key":"9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b","entity_key":"lx_relationships_misunderstandings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d93c9c65392ad6d9749be3aa5ff7917fed75e1d9641e644b4aad0be94f261bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_misunderstandings_02 -> audio/generated/de-DE/lexical/9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f330a26-d901-573d-a230-05e48dbd106f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_misunderstandings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c13bec415fe613972e13a98b6c547738749f1284dc9f4e5041b2ae6b7c6490d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62d5835c-e6cb-5ef6-96ac-d0a384d2bc1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f330a26-d901-573d-a230-05e48dbd106f', 1), '4c13bec415fe613972e13a98b6c547738749f1284dc9f4e5041b2ae6b7c6490d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b.mp3', 1071, '2026-09-13 08:16:41.869553', '0d93c9c65392ad6d9749be3aa5ff7917fed75e1d9641e644b4aad0be94f261bf', 'validated', '{"audio_key":"9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b","entity_key":"wf_relationships_misunderstandings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d93c9c65392ad6d9749be3aa5ff7917fed75e1d9641e644b4aad0be94f261bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9a40f1b8c6c25dd254d74641b0d2061dbeb60b77c012ee588c1ef2cdcaf79e6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_critique_01 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abbd542-5b7a-5502-82e9-c0adec735768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"lx_feedback_critique_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_critique_01 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76948385-895e-52cc-8b83-7a0bf6dd081d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea3b7992-0570-5f47-9385-6ee27113618e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76948385-895e-52cc-8b83-7a0bf6dd081d', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"wf_feedback_critique_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_disruptions_06 -> audio/generated/de-DE/lexical/a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b9e084ab-e7dd-51ee-84d6-0661e4828580', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_disruptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbc350f1da86237a695b7466a08a91821c8627e1bb5eadae9ea574d9644dbcb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e154cea-0e30-590c-a5fa-934a52df9f45', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b9e084ab-e7dd-51ee-84d6-0661e4828580', 1), 'dbc350f1da86237a695b7466a08a91821c8627e1bb5eadae9ea574d9644dbcb8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0.mp3', 1149, '2026-09-13 08:16:42.866437', '0a23837789927aa4631d4080f3fc827a3f7d134ee27bc1d2e77664cce55f0938', 'validated', '{"audio_key":"a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0","entity_key":"lx_travel_disruptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a23837789927aa4631d4080f3fc827a3f7d134ee27bc1d2e77664cce55f0938","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_disruptions_06 -> audio/generated/de-DE/lexical/a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e07513f4-42be-519c-9624-843b46e51530', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_disruptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbc350f1da86237a695b7466a08a91821c8627e1bb5eadae9ea574d9644dbcb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('203dd3d5-c92a-53e3-bcd3-7af518fab70f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e07513f4-42be-519c-9624-843b46e51530', 1), 'dbc350f1da86237a695b7466a08a91821c8627e1bb5eadae9ea574d9644dbcb8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0.mp3', 1149, '2026-09-13 08:16:42.866437', '0a23837789927aa4631d4080f3fc827a3f7d134ee27bc1d2e77664cce55f0938', 'validated', '{"audio_key":"a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0","entity_key":"wf_travel_disruptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a23837789927aa4631d4080f3fc827a3f7d134ee27bc1d2e77664cce55f0938","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a5a700168e56f98dd9b05396e69fe536990a18175dc895650f21b74cd87709b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_priorities_blockers_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_priorities_blockers_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c9c26db-fda0-5cdb-9fba-200c7253ca98', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"lx_work_priorities_blockers_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_priorities_blockers_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aca9a7d4-7ed3-540d-89a3-50de05cf14f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_priorities_blockers_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09ea92f2-595c-5b63-80c5-ab71fd6bab50', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aca9a7d4-7ed3-540d-89a3-50de05cf14f2', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"wf_work_priorities_blockers_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_critique_02 -> audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('661d9149-dc03-50c7-8b56-32f2de9c43c7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36873026-98be-539d-a9d9-015987d4c4d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('661d9149-dc03-50c7-8b56-32f2de9c43c7', 1), '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3', 914, '2026-09-13 08:16:42.850632', 'ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2', 'validated', '{"audio_key":"a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f","entity_key":"lx_feedback_critique_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_critique_02 -> audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a48656ac-d38b-5967-8b0d-fcbfc96ce71c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd9c2fdd-e706-56d2-99cc-256019f6f7fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a48656ac-d38b-5967-8b0d-fcbfc96ce71c', 1), '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3', 914, '2026-09-13 08:16:42.850632', 'ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2', 'validated', '{"audio_key":"a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f","entity_key":"wf_feedback_critique_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_interviews_achievements_04 -> audio/generated/de-DE/lexical/add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('69590b36-c165-579d-9885-309233fe0710', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_interviews_achievements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd8e22cf7439433dfde45d030f1c37e1e983eaac1e7b5d83da6ea9cb7ba6bec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12b328d1-0627-534f-87b4-d116f230ca4f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('69590b36-c165-579d-9885-309233fe0710', 1), 'cd8e22cf7439433dfde45d030f1c37e1e983eaac1e7b5d83da6ea9cb7ba6bec7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d.mp3', 1097, '2026-09-13 08:16:43.841580', '534eb7793fa5253e912fe75aea6d29edca53a522770e26b3a59c5e3f7460793d', 'validated', '{"audio_key":"add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d","entity_key":"lx_job_interviews_achievements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"534eb7793fa5253e912fe75aea6d29edca53a522770e26b3a59c5e3f7460793d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_interviews_achievements_04 -> audio/generated/de-DE/lexical/add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('90833a6d-0e5b-593e-a4e1-7c6a3265c903', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_interviews_achievements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd8e22cf7439433dfde45d030f1c37e1e983eaac1e7b5d83da6ea9cb7ba6bec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5157166c-d7ef-5007-b8c6-d45facb7d4f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('90833a6d-0e5b-593e-a4e1-7c6a3265c903', 1), 'cd8e22cf7439433dfde45d030f1c37e1e983eaac1e7b5d83da6ea9cb7ba6bec7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d.mp3', 1097, '2026-09-13 08:16:43.841580', '534eb7793fa5253e912fe75aea6d29edca53a522770e26b3a59c5e3f7460793d', 'validated', '{"audio_key":"add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d","entity_key":"wf_job_interviews_achievements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"534eb7793fa5253e912fe75aea6d29edca53a522770e26b3a59c5e3f7460793d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/add83c9518616df42368b462ea4006a6347fa2f226f8626adc64eafc0a91c72d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_critique_05 -> audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f2b448f-a27a-505d-b458-7732bc16885d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bbb9193-4245-5a92-a9d9-0025d290ad6c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f2b448f-a27a-505d-b458-7732bc16885d', 1), 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3', 1071, '2026-09-13 08:16:43.856727', '0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0', 'validated', '{"audio_key":"b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38","entity_key":"lx_feedback_critique_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_critique_05 -> audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e69bb696-6676-5ea7-a6c1-f20137d245d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50a129c0-951e-5628-90b7-eb6b89460cfd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e69bb696-6676-5ea7-a6c1-f20137d245d3', 1), 'd280e644bff4d1e8409a1412e97e716dd26efd1c36634de555e37b6dd969e490',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3', 1071, '2026-09-13 08:16:43.856727', '0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0', 'validated', '{"audio_key":"b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38","entity_key":"wf_feedback_critique_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0981d35381c2665e07fb70bd9bf53394e85747ed088b2f64b06fa385947ea0a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b720c16e84135e73d28f0912921696b588e878992026d568fa650d329402dd38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_challenges_feedback_03 -> audio/generated/de-DE/lexical/b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('513238c7-39f9-5d77-89ec-a9f243f0be93', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_challenges_feedback_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd583c44fbc0bf83080066b36e55554d0f7766b66a46f350d28b02165a26bec31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c90a4d5-4810-5997-b153-795d40518ae7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('513238c7-39f9-5d77-89ec-a9f243f0be93', 1), 'd583c44fbc0bf83080066b36e55554d0f7766b66a46f350d28b02165a26bec31',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7.mp3', 1149, '2026-09-13 08:16:44.844470', 'e281dcdb6c8e1b3b503c4acbd748d349e8bed8aa8a14fa136d82f62a9e7c61b7', 'validated', '{"audio_key":"b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7","entity_key":"lx_study_challenges_feedback_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e281dcdb6c8e1b3b503c4acbd748d349e8bed8aa8a14fa136d82f62a9e7c61b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_challenges_feedback_03 -> audio/generated/de-DE/lexical/b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('946a0170-9742-5765-87b8-37c3e2f5d1bf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_challenges_feedback_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd583c44fbc0bf83080066b36e55554d0f7766b66a46f350d28b02165a26bec31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1299e254-1103-5a4f-be48-fb0af8f86fe6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('946a0170-9742-5765-87b8-37c3e2f5d1bf', 1), 'd583c44fbc0bf83080066b36e55554d0f7766b66a46f350d28b02165a26bec31',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7.mp3', 1149, '2026-09-13 08:16:44.844470', 'e281dcdb6c8e1b3b503c4acbd748d349e8bed8aa8a14fa136d82f62a9e7c61b7', 'validated', '{"audio_key":"b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7","entity_key":"wf_study_challenges_feedback_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e281dcdb6c8e1b3b503c4acbd748d349e8bed8aa8a14fa136d82f62a9e7c61b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b7734e9c6422e70576e7b9991e93596a13193c4b400aeb1fe175d5522d3a0ba7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_priorities_blockers_06 -> audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('418b684c-b921-56f0-a8c9-a80ac7501758', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_priorities_blockers_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9aa0a52f-8e67-5238-83b4-6bddb15bc5b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('418b684c-b921-56f0-a8c9-a80ac7501758', 1), '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3', 1280, '2026-09-13 06:59:35.496134', '5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231', 'validated', '{"audio_key":"b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee","entity_key":"lx_work_priorities_blockers_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_priorities_blockers_06 -> audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69628b8a-4c61-5d67-9367-fb2c29aab0bb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_priorities_blockers_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e559e793-5980-5e9a-8d3c-39e210ca9171', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69628b8a-4c61-5d67-9367-fb2c29aab0bb', 1), '26bdc6f307b53d7508df9cc4f8b37fcbf1f04af6e67e8bc77692d55f455fc3cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3', 1280, '2026-09-13 06:59:35.496134', '5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231', 'validated', '{"audio_key":"b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee","entity_key":"wf_work_priorities_blockers_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a0d63aea851bc4418debf02c7668f79f5225813aea5013d9575426a8d346231","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b881305a8dcee31dd2215cadedd0dc4cb26484e5b4b79971a4fd1006631b3dee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_service_resolution_02 -> audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36282a63-91b3-5ea2-b011-8d0145447666', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_service_resolution_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5052ff3-15ef-5b46-9de5-f05566efff01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36282a63-91b3-5ea2-b011-8d0145447666', 1), '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3', 1149, '2026-09-13 06:17:41.876568', 'c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d', 'validated', '{"audio_key":"b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652","entity_key":"lx_complaints_service_resolution_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_service_resolution_02 -> audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a092cf6c-22fd-5aac-ad60-25135be26d3d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_service_resolution_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32a41d44-ea5e-5625-b2eb-3490027de424', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a092cf6c-22fd-5aac-ad60-25135be26d3d', 1), '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3', 1149, '2026-09-13 06:17:41.876568', 'c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d', 'validated', '{"audio_key":"b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652","entity_key":"wf_complaints_service_resolution_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_disruptions_05 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_disruptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a2ebf2-ace9-5fad-9a1f-2af88061d174', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"lx_travel_disruptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_disruptions_05 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f295771-5e9e-55df-9889-cc87416f515e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_disruptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8a61891-c56b-5e12-a2ad-323dd2b82458', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f295771-5e9e-55df-9889-cc87416f515e', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"wf_travel_disruptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_projects_deadlines_risks_05 -> audio/generated/de-DE/lexical/d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ffafb586-b7bf-5e16-99f5-f5b0cd94bce0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_projects_deadlines_risks_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bab85e82c9cd98471ae1f5f88c8256ac449465678a247d729c46e27ce0e98c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2325bb4d-1e2e-58b4-9108-077fec9f0773', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ffafb586-b7bf-5e16-99f5-f5b0cd94bce0', 1), '68bab85e82c9cd98471ae1f5f88c8256ac449465678a247d729c46e27ce0e98c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a.mp3', 1071, '2026-09-13 08:16:44.845783', 'c874e5b0d189e96fd38b65707858d46a96cf551174bb0e1ab1d6ffc4893e3afd', 'validated', '{"audio_key":"d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a","entity_key":"lx_projects_deadlines_risks_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c874e5b0d189e96fd38b65707858d46a96cf551174bb0e1ab1d6ffc4893e3afd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_projects_deadlines_risks_05 -> audio/generated/de-DE/lexical/d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b3a225c9-4e7c-5961-8ced-534052b99dcc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_projects_deadlines_risks_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bab85e82c9cd98471ae1f5f88c8256ac449465678a247d729c46e27ce0e98c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8348e27e-5da4-57ee-89bb-e9d737c59bf7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b3a225c9-4e7c-5961-8ced-534052b99dcc', 1), '68bab85e82c9cd98471ae1f5f88c8256ac449465678a247d729c46e27ce0e98c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a.mp3', 1071, '2026-09-13 08:16:44.845783', 'c874e5b0d189e96fd38b65707858d46a96cf551174bb0e1ab1d6ffc4893e3afd', 'validated', '{"audio_key":"d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a","entity_key":"wf_projects_deadlines_risks_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c874e5b0d189e96fd38b65707858d46a96cf551174bb0e1ab1d6ffc4893e3afd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d3e5bc36fc3ce9772756ad09354235d1bda02fc2e023c8619dbd3d509c250d2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_service_resolution_03 -> audio/generated/de-DE/lexical/d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4cfca9a9-6ca6-5b99-92be-be6ae0c81814', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_service_resolution_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a85e534b4dda625e5a7ae59c39e570ce136c4b854f2f40d428706bc26f5807e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3572dad1-08fe-5122-821a-764deab8c963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4cfca9a9-6ca6-5b99-92be-be6ae0c81814', 1), 'a85e534b4dda625e5a7ae59c39e570ce136c4b854f2f40d428706bc26f5807e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85.mp3', 1201, '2026-09-13 08:16:45.891378', 'eb17cfe43ca3a2a63a7804de0f3249c5a38fc7db5f78f3d2fa10845b7f56daab', 'validated', '{"audio_key":"d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85","entity_key":"lx_complaints_service_resolution_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb17cfe43ca3a2a63a7804de0f3249c5a38fc7db5f78f3d2fa10845b7f56daab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_service_resolution_03 -> audio/generated/de-DE/lexical/d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f83d433b-d3cc-51fc-ae36-0c0edf653e39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_service_resolution_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a85e534b4dda625e5a7ae59c39e570ce136c4b854f2f40d428706bc26f5807e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ebec978-a791-53a4-986d-f3cf7a0717a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f83d433b-d3cc-51fc-ae36-0c0edf653e39', 1), 'a85e534b4dda625e5a7ae59c39e570ce136c4b854f2f40d428706bc26f5807e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85.mp3', 1201, '2026-09-13 08:16:45.891378', 'eb17cfe43ca3a2a63a7804de0f3249c5a38fc7db5f78f3d2fa10845b7f56daab', 'validated', '{"audio_key":"d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85","entity_key":"wf_complaints_service_resolution_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb17cfe43ca3a2a63a7804de0f3249c5a38fc7db5f78f3d2fa10845b7f56daab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d8f37c26f6137c5b9d261d8ca75b5ee32fbca41769e8f6818068a5c97a391c85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_accommodation_issues_06 -> audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('15231d96-6627-5697-8a12-18aaee7c8991', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_accommodation_issues_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('158e0c8f-743e-51af-b9b8-72297acf16f1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('15231d96-6627-5697-8a12-18aaee7c8991', 1), '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3', 1280, '2026-09-13 08:16:45.894290', '55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb', 'validated', '{"audio_key":"de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d","entity_key":"lx_accommodation_issues_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_accommodation_issues_06 -> audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ca12de49-2091-56d0-b6cb-d005e180588e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_accommodation_issues_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5e59a93-471a-5ee2-ab57-52333287d9e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ca12de49-2091-56d0-b6cb-d005e180588e', 1), '139fb05af4f27665b4f3d7b1d3800bcdab0d8d1e5b2687fb2b9d0749a424dcf4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3', 1280, '2026-09-13 08:16:45.894290', '55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb', 'validated', '{"audio_key":"de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d","entity_key":"wf_accommodation_issues_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"55ae4ac4ed0f70daef465e3109081ebbeefaf8623450d381c3499e71dce6feeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de144994af2a9299448d2f7115803c824210215a2ed06ac1620a7f4f230b878d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_disruptions_02 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_disruptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97eaf1d6-f1c2-534b-a928-0e42d06ad049', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c2e990ee-54a4-5fd9-8e35-662fbda25bea', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"lx_travel_disruptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_disruptions_02 -> audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('33e70d53-1158-5ffb-99c3-533e2df87463', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_disruptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1af185f2-6ab6-5c66-94ec-8038dbc637ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('33e70d53-1158-5ffb-99c3-533e2df87463', 1), '05d33cdf231ac6e2af06b7ad228b5423e5ec6c972731c0d3863137683ca08ef6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3', 966, '2026-09-13 06:43:12.161147', '3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3', 'validated', '{"audio_key":"ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305","entity_key":"wf_travel_disruptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ee129f6758650efd3eff5dc7c01388e4859c249c2c94add7ed39e1b6bc45de3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea5aac43975ef180dd08401f5a30720f0d9752805a74776560532f19de3f4305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_challenges_feedback_05 -> audio/generated/de-DE/lexical/ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a57d1a14-3e85-5fe3-852f-2b5ddb9b8df8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_challenges_feedback_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfecce69efbc57d84c6925725b56ad2cfb68af37c8f96965db0a1543b7a839e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26c032f3-c1fe-56a6-80db-36a3859b14a6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a57d1a14-3e85-5fe3-852f-2b5ddb9b8df8', 1), 'bfecce69efbc57d84c6925725b56ad2cfb68af37c8f96965db0a1543b7a839e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d.mp3', 1149, '2026-09-13 08:16:46.916272', '743942a52e70d341fe4dd7da22f63ff64efb583b6c39c14f48036aa056d4ee69', 'validated', '{"audio_key":"ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d","entity_key":"lx_study_challenges_feedback_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"743942a52e70d341fe4dd7da22f63ff64efb583b6c39c14f48036aa056d4ee69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_challenges_feedback_05 -> audio/generated/de-DE/lexical/ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39c1b94d-94f1-5976-aa18-86d0a85d4586', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_challenges_feedback_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfecce69efbc57d84c6925725b56ad2cfb68af37c8f96965db0a1543b7a839e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbd46d77-84d5-5333-beb5-d9f909d1cdcc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39c1b94d-94f1-5976-aa18-86d0a85d4586', 1), 'bfecce69efbc57d84c6925725b56ad2cfb68af37c8f96965db0a1543b7a839e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d.mp3', 1149, '2026-09-13 08:16:46.916272', '743942a52e70d341fe4dd7da22f63ff64efb583b6c39c14f48036aa056d4ee69', 'validated', '{"audio_key":"ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d","entity_key":"wf_study_challenges_feedback_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"743942a52e70d341fe4dd7da22f63ff64efb583b6c39c14f48036aa056d4ee69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ed0fd6970cb37d139e94f223cccd8f8ab66d278ee9ea67802df81f539493696d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_feedback_critique_06 -> audio/generated/de-DE/lexical/eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fce20562-22b5-5984-9ff2-18a7e561510d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_feedback_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bffe8c876cd04444fb2ca7a73573b843fefe45c040066ef5d9a708d9505c8abc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52b973b0-d715-52cc-b62b-563d60b53f18', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fce20562-22b5-5984-9ff2-18a7e561510d', 1), 'bffe8c876cd04444fb2ca7a73573b843fefe45c040066ef5d9a708d9505c8abc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2.mp3', 1149, '2026-09-13 08:16:46.890883', 'a0f4d71359024a1c13760ca89121c39978eb6a4d56dd1e70d86a22f5f7caa535', 'validated', '{"audio_key":"eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2","entity_key":"lx_feedback_critique_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0f4d71359024a1c13760ca89121c39978eb6a4d56dd1e70d86a22f5f7caa535","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_feedback_critique_06 -> audio/generated/de-DE/lexical/eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ed678df-097b-5aaa-930b-edf56549a785', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_feedback_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bffe8c876cd04444fb2ca7a73573b843fefe45c040066ef5d9a708d9505c8abc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d0043d4-d660-54e6-8d90-4df48e9aea44', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ed678df-097b-5aaa-930b-edf56549a785', 1), 'bffe8c876cd04444fb2ca7a73573b843fefe45c040066ef5d9a708d9505c8abc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2.mp3', 1149, '2026-09-13 08:16:46.890883', 'a0f4d71359024a1c13760ca89121c39978eb6a4d56dd1e70d86a22f5f7caa535', 'validated', '{"audio_key":"eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2","entity_key":"wf_feedback_critique_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0f4d71359024a1c13760ca89121c39978eb6a4d56dd1e70d86a22f5f7caa535","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eedb310b6d5762d2b912c1adf3e86da7b6021e3d41102fb7493f80bbbae55de2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_challenges_feedback_01 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_challenges_feedback_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8166d85-bb84-5b0c-9bce-ac2b757f2973', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"lx_study_challenges_feedback_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_challenges_feedback_01 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7cb9210f-4228-55e8-b2ec-65a40219ef20', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_challenges_feedback_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9b37dd8-b75f-5636-a736-10c9cff74212', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7cb9210f-4228-55e8-b2ec-65a40219ef20', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"wf_study_challenges_feedback_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_priorities_blockers_04 -> audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4c642cb-dec5-5878-baeb-b0109f1b53a2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_priorities_blockers_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08eb6bad-8009-5934-969b-234f91dcff44', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4c642cb-dec5-5878-baeb-b0109f1b53a2', 1), 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3', 1253, '2026-09-13 08:16:47.949839', 'ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7', 'validated', '{"audio_key":"f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894","entity_key":"lx_work_priorities_blockers_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_priorities_blockers_04 -> audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2cc4cbc8-eb5e-5702-a9e8-388ab5f4489e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_priorities_blockers_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdc19369-7282-5b85-879b-037474c3452c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2cc4cbc8-eb5e-5702-a9e8-388ab5f4489e', 1), 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3', 1253, '2026-09-13 08:16:47.949839', 'ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7', 'validated', '{"audio_key":"f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894","entity_key":"wf_work_priorities_blockers_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_interviews_achievements_02 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_interviews_achievements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fb0e6d0-33b7-5be7-9f6b-adee23e02d22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"lx_job_interviews_achievements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_interviews_achievements_02 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94b1b693-b9a7-5acc-997b-8dc21c0b771a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_interviews_achievements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc14d2be-aa7c-5e41-b5a8-7c1d1e6630f6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94b1b693-b9a7-5acc-997b-8dc21c0b771a', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"wf_job_interviews_achievements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_product_research_decisions_05 -> audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc02d11b-6b35-5279-89de-7eb1329af8df', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_product_research_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0affef6-c64c-5d10-84f2-77cabebb6edc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc02d11b-6b35-5279-89de-7eb1329af8df', 1), '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3', 1097, '2026-09-13 08:16:47.938442', 'f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1', 'validated', '{"audio_key":"f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db","entity_key":"lx_product_research_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_product_research_decisions_05 -> audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('20644cd6-5981-53e3-afe6-139da2072e43', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_product_research_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2ad8a06-a7d8-58c0-b48c-2e80d344a502', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('20644cd6-5981-53e3-afe6-139da2072e43', 1), '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3', 1097, '2026-09-13 08:16:47.938442', 'f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1', 'validated', '{"audio_key":"f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db","entity_key":"wf_product_research_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_misunderstandings_01 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_misunderstandings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f905ca58-4aa4-5cd7-8df0-fedbffa44b3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"lx_relationships_misunderstandings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_misunderstandings_01 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('35a2f3b2-0930-5024-a0c7-abb6a6c3405a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_misunderstandings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5380b1d3-0f16-5bf9-9cf6-e621295ea179', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('35a2f3b2-0930-5024-a0c7-abb6a6c3405a', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"wf_relationships_misunderstandings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_accommodation_issues_01 -> audio/generated/de-DE/lexical/ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('05612a27-2e35-5b3d-88a3-2ca6c8bc862a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_accommodation_issues_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca31c86794a33e9598a354b617852948a254299f85466d2c495d4de4fe3fecf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9750b4a8-6ce2-5c6f-9963-139998ffc908', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('05612a27-2e35-5b3d-88a3-2ca6c8bc862a', 1), 'ca31c86794a33e9598a354b617852948a254299f85466d2c495d4de4fe3fecf5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698.mp3', 1097, '2026-09-13 08:16:48.970411', '3fbda65882f88ed056aac1ac5494a556331afdfc23d156dc5c9c2df86ecefb27', 'validated', '{"audio_key":"ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698","entity_key":"lx_accommodation_issues_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fbda65882f88ed056aac1ac5494a556331afdfc23d156dc5c9c2df86ecefb27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_accommodation_issues_01 -> audio/generated/de-DE/lexical/ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('46bdd347-0a2a-5936-9c84-f696aa958eb8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_accommodation_issues_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca31c86794a33e9598a354b617852948a254299f85466d2c495d4de4fe3fecf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7ad3a53-26fb-5bc7-8f97-093963004040', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('46bdd347-0a2a-5936-9c84-f696aa958eb8', 1), 'ca31c86794a33e9598a354b617852948a254299f85466d2c495d4de4fe3fecf5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698.mp3', 1097, '2026-09-13 08:16:48.970411', '3fbda65882f88ed056aac1ac5494a556331afdfc23d156dc5c9c2df86ecefb27', 'validated', '{"audio_key":"ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698","entity_key":"wf_accommodation_issues_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fbda65882f88ed056aac1ac5494a556331afdfc23d156dc5c9c2df86ecefb27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff9388d76dc3048f864ffca1697a8c9d4808ab04916a6b689a563b99f1b43698.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_interviews_achievements_06 -> audio/generated/de-DE/utterances/02a62ce91220153c6ecb2a5c295e1708eb4afb81220188290bdcfde7a364db59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a1c5f347-a609-5456-938c-80d22917019b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_interviews_achievements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30e8593f8f0a0caf1e90fc3696d7013e81ed430dd95f7a8bc1a3ffa33133dadb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('228b676e-f6a9-577c-88f5-0950a8463c1d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a1c5f347-a609-5456-938c-80d22917019b', 1), '30e8593f8f0a0caf1e90fc3696d7013e81ed430dd95f7a8bc1a3ffa33133dadb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/02a62ce91220153c6ecb2a5c295e1708eb4afb81220188290bdcfde7a364db59.mp3', 4675, '2026-09-13 08:16:49.374308', 'f6781ff63ba0a7e421fa14087ab01ea1b76e75b68eb967a9fb4835e30c374b64', 'validated', '{"audio_key":"02a62ce91220153c6ecb2a5c295e1708eb4afb81220188290bdcfde7a364db59","entity_key":"u_job_interviews_achievements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6781ff63ba0a7e421fa14087ab01ea1b76e75b68eb967a9fb4835e30c374b64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/02a62ce91220153c6ecb2a5c295e1708eb4afb81220188290bdcfde7a364db59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_disruptions_06 -> audio/generated/de-DE/utterances/077a395fc750b9378d15f13f8b0b74232e6bc2560789c0ded85553aded256857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1518e0fc-3146-5148-b5b6-7cb2aa52cd98', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_disruptions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cfba52ec5c822f7cbbfd39bc17007d614e2101c9a29ad825c63560a1c608d4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c26cae34-28c6-5bc6-918a-636d699815a4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1518e0fc-3146-5148-b5b6-7cb2aa52cd98', 1), '5cfba52ec5c822f7cbbfd39bc17007d614e2101c9a29ad825c63560a1c608d4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/077a395fc750b9378d15f13f8b0b74232e6bc2560789c0ded85553aded256857.mp3', 4597, '2026-09-13 08:16:50.418922', '9a4fe14c5125f2cc48825e11409842292652188a6c87a267a9820caba68927d0', 'validated', '{"audio_key":"077a395fc750b9378d15f13f8b0b74232e6bc2560789c0ded85553aded256857","entity_key":"u_travel_disruptions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a4fe14c5125f2cc48825e11409842292652188a6c87a267a9820caba68927d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/077a395fc750b9378d15f13f8b0b74232e6bc2560789c0ded85553aded256857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projects_deadlines_risks_04 -> audio/generated/de-DE/utterances/0a6b3ac0b357ca044cbeb8df4bfcb5f30d842fa82a9a14a1d4745c17811dd3f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('edf7552f-6832-5967-87bc-0691a448916f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projects_deadlines_risks_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25685f0bc527846e43394341073870e8ce178b0259357963e167216336462d9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e80dd99-9837-52b5-a7f8-29c52ab6063d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('edf7552f-6832-5967-87bc-0691a448916f', 1), '25685f0bc527846e43394341073870e8ce178b0259357963e167216336462d9e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0a6b3ac0b357ca044cbeb8df4bfcb5f30d842fa82a9a14a1d4745c17811dd3f9.mp3', 4675, '2026-09-13 08:16:50.797377', '88fd470e5a99c05ca1c56f3fa1d0acb83763e168cbe2e60e9acddd84786cecf5', 'validated', '{"audio_key":"0a6b3ac0b357ca044cbeb8df4bfcb5f30d842fa82a9a14a1d4745c17811dd3f9","entity_key":"u_projects_deadlines_risks_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88fd470e5a99c05ca1c56f3fa1d0acb83763e168cbe2e60e9acddd84786cecf5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0a6b3ac0b357ca044cbeb8df4bfcb5f30d842fa82a9a14a1d4745c17811dd3f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_disruptions_05 -> audio/generated/de-DE/utterances/0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('98ec353d-6c78-5bfa-9f52-cbdfa377978b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_disruptions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727a6f53595be346dc9774674e16df8849227e881b63bc153b65ee6a470c915d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abe5c15e-5121-5d32-bbe1-e2be6595e26a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('98ec353d-6c78-5bfa-9f52-cbdfa377978b', 1), '727a6f53595be346dc9774674e16df8849227e881b63bc153b65ee6a470c915d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457.mp3', 4310, '2026-09-13 08:16:51.779065', '20549c050ec921fd10b0f4b9ab8ce7fa0e68abf6486bde93504875083c1805a8', 'validated', '{"audio_key":"0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457","entity_key":"u_travel_disruptions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20549c050ec921fd10b0f4b9ab8ce7fa0e68abf6486bde93504875083c1805a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_travel_disruptions_03_listen -> audio/generated/de-DE/utterances/0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('08c57e29-35b6-5d13-a80c-b02479f5609e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_travel_disruptions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727a6f53595be346dc9774674e16df8849227e881b63bc153b65ee6a470c915d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e26bd72d-1094-5df3-8464-58701138645e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('08c57e29-35b6-5d13-a80c-b02479f5609e', 1), '727a6f53595be346dc9774674e16df8849227e881b63bc153b65ee6a470c915d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457.mp3', 4310, '2026-09-13 08:16:51.779065', '20549c050ec921fd10b0f4b9ab8ce7fa0e68abf6486bde93504875083c1805a8', 'validated', '{"audio_key":"0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457","entity_key":"ex_travel_disruptions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20549c050ec921fd10b0f4b9ab8ce7fa0e68abf6486bde93504875083c1805a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c4126188feded7f2ee5f61d304e1ae4ba0fea19d7d9655194235fe5cdcd7457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_interviews_achievements_02 -> audio/generated/de-DE/utterances/0c64a7c32759fc2af2396540ab3a5d7c58711bb7cdf5283228a8bbdf6c4eb580.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a5299add-75e7-58e6-87b6-40c716a8c75f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_interviews_achievements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6752915260c59adab91528fa54eb2e3a71b1c06dd1eefc6ea7ee88d457bc9a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98f86e6e-86d2-51c1-b459-f3f5578b5985', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a5299add-75e7-58e6-87b6-40c716a8c75f', 1), 'f6752915260c59adab91528fa54eb2e3a71b1c06dd1eefc6ea7ee88d457bc9a5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c64a7c32759fc2af2396540ab3a5d7c58711bb7cdf5283228a8bbdf6c4eb580.mp3', 4597, '2026-09-13 08:16:52.208056', '25549f5e89a4a85d37f227087f053bce1764eccb4a41910a428b6ffd7ac4844f', 'validated', '{"audio_key":"0c64a7c32759fc2af2396540ab3a5d7c58711bb7cdf5283228a8bbdf6c4eb580","entity_key":"u_job_interviews_achievements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25549f5e89a4a85d37f227087f053bce1764eccb4a41910a428b6ffd7ac4844f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c64a7c32759fc2af2396540ab3a5d7c58711bb7cdf5283228a8bbdf6c4eb580.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_disruptions_03 -> audio/generated/de-DE/utterances/111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b4076ea-63ba-5131-9a2b-eff384f09af7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_disruptions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ce2a69b2c89265e608cbda719c1ab948d40cef71ef377da698e3b219b48108b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91708244-c28d-5cde-a083-8335a7498f44', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b4076ea-63ba-5131-9a2b-eff384f09af7', 1), '9ce2a69b2c89265e608cbda719c1ab948d40cef71ef377da698e3b219b48108b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f.mp3', 3291, '2026-09-13 08:16:53.018701', 'de6133ef6475994602dafa3e9abce4c5b8996a8dc9c33627578162af25cd98d3', 'validated', '{"audio_key":"111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f","entity_key":"u_travel_disruptions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de6133ef6475994602dafa3e9abce4c5b8996a8dc9c33627578162af25cd98d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_travel_disruptions_02_listen -> audio/generated/de-DE/utterances/111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('22ce9b6a-ed73-56bb-8f8f-23ba91e2a376', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_travel_disruptions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ce2a69b2c89265e608cbda719c1ab948d40cef71ef377da698e3b219b48108b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cd83534-2d4d-507e-95ce-194ac23dc08e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('22ce9b6a-ed73-56bb-8f8f-23ba91e2a376', 1), '9ce2a69b2c89265e608cbda719c1ab948d40cef71ef377da698e3b219b48108b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f.mp3', 3291, '2026-09-13 08:16:53.018701', 'de6133ef6475994602dafa3e9abce4c5b8996a8dc9c33627578162af25cd98d3', 'validated', '{"audio_key":"111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f","entity_key":"ex_travel_disruptions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de6133ef6475994602dafa3e9abce4c5b8996a8dc9c33627578162af25cd98d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/111c458c839b5406b334a4eb5258f7546e5211ce1786290651e5241a8933935f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projects_deadlines_risks_01 -> audio/generated/de-DE/utterances/11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f0554cac-d6f4-5bf1-9d5a-66f23816b287', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projects_deadlines_risks_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '583b1ddb676754a94143af7003a9c00b1ac8e55ca5f9d07cd6cc81163ae24730'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4908fb00-75bf-5ace-a91f-11c8dd91b0f5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f0554cac-d6f4-5bf1-9d5a-66f23816b287', 1), '583b1ddb676754a94143af7003a9c00b1ac8e55ca5f9d07cd6cc81163ae24730',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d.mp3', 5146, '2026-09-13 08:16:53.684890', 'db53bd2858afe0350944d99b12c12dc3504ecff98dc4e3c03445f4f9846ea7c9', 'validated', '{"audio_key":"11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d","entity_key":"u_projects_deadlines_risks_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db53bd2858afe0350944d99b12c12dc3504ecff98dc4e3c03445f4f9846ea7c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_projects_deadlines_risks_01_listen -> audio/generated/de-DE/utterances/11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('81edc7e9-d7e1-540d-bcf6-f816a1cc7a39', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_projects_deadlines_risks_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '583b1ddb676754a94143af7003a9c00b1ac8e55ca5f9d07cd6cc81163ae24730'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1f0308b-3cbd-5b05-a820-10b79bdbf5e7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('81edc7e9-d7e1-540d-bcf6-f816a1cc7a39', 1), '583b1ddb676754a94143af7003a9c00b1ac8e55ca5f9d07cd6cc81163ae24730',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d.mp3', 5146, '2026-09-13 08:16:53.684890', 'db53bd2858afe0350944d99b12c12dc3504ecff98dc4e3c03445f4f9846ea7c9', 'validated', '{"audio_key":"11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d","entity_key":"ex_projects_deadlines_risks_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db53bd2858afe0350944d99b12c12dc3504ecff98dc4e3c03445f4f9846ea7c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11e8242a55a63c8d8c8961df9ba8f06ed0fa41cb7b1b8f29e7e50d49cd41700d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_product_research_decisions_02 -> audio/generated/de-DE/utterances/13777a999aaed7313c58c224a84187b3794565885a6a5b8d28a9f5aa8f7b5415.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ff10d618-33de-52e9-b238-cab4f2de8406', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_product_research_decisions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd76c76a2df14ab2c72c0732200127826fa3eb141cf2e845d6ebeff5d955f6e17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36599b8f-0711-5c42-98a6-1f29de1172de', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ff10d618-33de-52e9-b238-cab4f2de8406', 1), 'd76c76a2df14ab2c72c0732200127826fa3eb141cf2e845d6ebeff5d955f6e17',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/13777a999aaed7313c58c224a84187b3794565885a6a5b8d28a9f5aa8f7b5415.mp3', 4205, '2026-09-13 08:16:54.362889', '102d90cd7a0466827908a8f2dabbda144599c0d091a2d8d102ca4b70f66aa564', 'validated', '{"audio_key":"13777a999aaed7313c58c224a84187b3794565885a6a5b8d28a9f5aa8f7b5415","entity_key":"u_product_research_decisions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"102d90cd7a0466827908a8f2dabbda144599c0d091a2d8d102ca4b70f66aa564","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/13777a999aaed7313c58c224a84187b3794565885a6a5b8d28a9f5aa8f7b5415.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_service_resolution_04 -> audio/generated/de-DE/utterances/16467dc8e4e22b0d462e1768f4daa5c9d7f6b0ada0a44a438cc0fb6549ced404.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('11d0e822-0834-5fad-8138-381d7fe1ab9b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_service_resolution_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce61322e4e4d0d878f4e48ce770be83c8c433c6d6e17c8ea4a65ba11bcc153f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1037a947-9511-5331-954e-79ad5ed403cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('11d0e822-0834-5fad-8138-381d7fe1ab9b', 1), 'ce61322e4e4d0d878f4e48ce770be83c8c433c6d6e17c8ea4a65ba11bcc153f1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/16467dc8e4e22b0d462e1768f4daa5c9d7f6b0ada0a44a438cc0fb6549ced404.mp3', 4675, '2026-09-13 08:16:55.103915', 'b0a2c9508f166eec492c52d60e1db5b04650a1e0fbbf4c6a17a816cfd33b9822', 'validated', '{"audio_key":"16467dc8e4e22b0d462e1768f4daa5c9d7f6b0ada0a44a438cc0fb6549ced404","entity_key":"u_complaints_service_resolution_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0a2c9508f166eec492c52d60e1db5b04650a1e0fbbf4c6a17a816cfd33b9822","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/16467dc8e4e22b0d462e1768f4daa5c9d7f6b0ada0a44a438cc0fb6549ced404.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_misunderstandings_05 -> audio/generated/de-DE/utterances/1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18df90c5-2f45-5af9-877b-ae2c5c3168c6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_misunderstandings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b08a9faa6c2199b9589a1a147c87ae4938512174e2017efa2c9f32ee7a10e48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1871ce01-3851-5bf6-b552-b9b72b94147d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18df90c5-2f45-5af9-877b-ae2c5c3168c6', 1), '6b08a9faa6c2199b9589a1a147c87ae4938512174e2017efa2c9f32ee7a10e48',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d.mp3', 4493, '2026-09-13 08:16:55.729746', '4f27eeb397382561ef23976a806ee8aa6ae917fabefef1131fce1cfe4d3939f6', 'validated', '{"audio_key":"1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d","entity_key":"u_relationships_misunderstandings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f27eeb397382561ef23976a806ee8aa6ae917fabefef1131fce1cfe4d3939f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_relationships_misunderstandings_03_listen -> audio/generated/de-DE/utterances/1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ec6e59f9-3b0a-5334-a4eb-dcce1eff811d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_relationships_misunderstandings_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b08a9faa6c2199b9589a1a147c87ae4938512174e2017efa2c9f32ee7a10e48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('277a37f7-fd32-5962-b726-29c7e9b67580', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ec6e59f9-3b0a-5334-a4eb-dcce1eff811d', 1), '6b08a9faa6c2199b9589a1a147c87ae4938512174e2017efa2c9f32ee7a10e48',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d.mp3', 4493, '2026-09-13 08:16:55.729746', '4f27eeb397382561ef23976a806ee8aa6ae917fabefef1131fce1cfe4d3939f6', 'validated', '{"audio_key":"1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d","entity_key":"ex_relationships_misunderstandings_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f27eeb397382561ef23976a806ee8aa6ae917fabefef1131fce1cfe4d3939f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1903569fefe58a6f80e35be1d78d17c704278cc71d6f385dbf5a5a9edb45998d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_accommodation_issues_05 -> audio/generated/de-DE/utterances/1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8c8538b4-904d-5827-9508-b1bc5a1815d7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_accommodation_issues_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39dc904076fc83b142c60af4775eba5ee44f287df364e87c4443df67612884b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdc93f40-56c8-553f-b3cc-458db927c23a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8c8538b4-904d-5827-9508-b1bc5a1815d7', 1), '39dc904076fc83b142c60af4775eba5ee44f287df364e87c4443df67612884b1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3.mp3', 5694, '2026-09-13 08:16:56.640660', 'bec005e1d8059e7e308f1b8d1773234c488125ac112f2984832a9f55b0164fe3', 'validated', '{"audio_key":"1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3","entity_key":"u_accommodation_issues_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bec005e1d8059e7e308f1b8d1773234c488125ac112f2984832a9f55b0164fe3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_accommodation_issues_03_listen -> audio/generated/de-DE/utterances/1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68f9f5f0-0640-5450-9b99-299ccd52a444', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_accommodation_issues_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39dc904076fc83b142c60af4775eba5ee44f287df364e87c4443df67612884b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91e4a4c1-a9e7-5215-9d31-46e8928583c7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68f9f5f0-0640-5450-9b99-299ccd52a444', 1), '39dc904076fc83b142c60af4775eba5ee44f287df364e87c4443df67612884b1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3.mp3', 5694, '2026-09-13 08:16:56.640660', 'bec005e1d8059e7e308f1b8d1773234c488125ac112f2984832a9f55b0164fe3', 'validated', '{"audio_key":"1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3","entity_key":"ex_accommodation_issues_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bec005e1d8059e7e308f1b8d1773234c488125ac112f2984832a9f55b0164fe3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1969f734d6a0429d9e4545cbd78c50dec4e8e5451e5048cc554e09cc605a9ec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_interviews_achievements_04 -> audio/generated/de-DE/utterances/252525fb2b7e3af867f5f8774cc9b85eb8fa6358ef67eb60e0781699c4946bbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dbfbca21-6461-564a-8a46-9fee3fd3d5b2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_interviews_achievements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '029f3e8a77c4a4a5fef7c47ca02b626f0611a63051005873db19b760cfee2038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74a47ef3-2ece-5d0a-9a0f-ef514d4215ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dbfbca21-6461-564a-8a46-9fee3fd3d5b2', 1), '029f3e8a77c4a4a5fef7c47ca02b626f0611a63051005873db19b760cfee2038',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/252525fb2b7e3af867f5f8774cc9b85eb8fa6358ef67eb60e0781699c4946bbd.mp3', 4414, '2026-09-13 08:16:57.067817', '102c2b58fa94b9183dd2b4fb78fc9ca8b24438ebad422c8ff417f5fc251d4d4e', 'validated', '{"audio_key":"252525fb2b7e3af867f5f8774cc9b85eb8fa6358ef67eb60e0781699c4946bbd","entity_key":"u_job_interviews_achievements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"102c2b58fa94b9183dd2b4fb78fc9ca8b24438ebad422c8ff417f5fc251d4d4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/252525fb2b7e3af867f5f8774cc9b85eb8fa6358ef67eb60e0781699c4946bbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_critique_03 -> audio/generated/de-DE/utterances/25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d95bf425-897e-5da9-9f52-c5e312858f6b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32297320f1d78bdaf749c04725937f3df175e6f39c24e9ce6cb2276774618b03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02dfcaed-20a5-5666-a7d3-cafdc056755c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d95bf425-897e-5da9-9f52-c5e312858f6b', 1), '32297320f1d78bdaf749c04725937f3df175e6f39c24e9ce6cb2276774618b03',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1.mp3', 3291, '2026-09-13 08:16:57.886237', 'bb940e4170df837b8aa97eab09f08100e899d1d04c718f91553a402583312517', 'validated', '{"audio_key":"25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1","entity_key":"u_feedback_critique_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb940e4170df837b8aa97eab09f08100e899d1d04c718f91553a402583312517","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_feedback_critique_02_listen -> audio/generated/de-DE/utterances/25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ea30fa54-fbfa-570c-93e6-8a36204b4e07', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_feedback_critique_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32297320f1d78bdaf749c04725937f3df175e6f39c24e9ce6cb2276774618b03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6bbaf2d-a889-5637-b11e-9b2f62a866be', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ea30fa54-fbfa-570c-93e6-8a36204b4e07', 1), '32297320f1d78bdaf749c04725937f3df175e6f39c24e9ce6cb2276774618b03',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1.mp3', 3291, '2026-09-13 08:16:57.886237', 'bb940e4170df837b8aa97eab09f08100e899d1d04c718f91553a402583312517', 'validated', '{"audio_key":"25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1","entity_key":"ex_feedback_critique_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb940e4170df837b8aa97eab09f08100e899d1d04c718f91553a402583312517","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/25bd871ee4b57e774a7c7facdf085a47e4b28ee99f77655956345a5089d086b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_product_research_decisions_01 -> audio/generated/de-DE/utterances/3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53909076-6270-57ca-9711-a963a5d2ab79', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_product_research_decisions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5f48b695d250c91c962dca80e06831890e8de9a5e3ce273c5024497b4142aee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da21d00d-ec06-5b19-b100-446bd3f697b0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53909076-6270-57ca-9711-a963a5d2ab79', 1), 'd5f48b695d250c91c962dca80e06831890e8de9a5e3ce273c5024497b4142aee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8.mp3', 5276, '2026-09-13 08:16:58.557808', 'ffc90047ebb8bc19f33ffab72c1d85b78bc284c3763f25edb4899495476113b6', 'validated', '{"audio_key":"3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8","entity_key":"u_product_research_decisions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffc90047ebb8bc19f33ffab72c1d85b78bc284c3763f25edb4899495476113b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_product_research_decisions_01_listen -> audio/generated/de-DE/utterances/3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('09e983b9-1966-52fd-9395-a0a22e1125eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_product_research_decisions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5f48b695d250c91c962dca80e06831890e8de9a5e3ce273c5024497b4142aee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c6adc2b-20f3-5660-a2d9-56752f6a66f4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('09e983b9-1966-52fd-9395-a0a22e1125eb', 1), 'd5f48b695d250c91c962dca80e06831890e8de9a5e3ce273c5024497b4142aee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8.mp3', 5276, '2026-09-13 08:16:58.557808', 'ffc90047ebb8bc19f33ffab72c1d85b78bc284c3763f25edb4899495476113b6', 'validated', '{"audio_key":"3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8","entity_key":"ex_product_research_decisions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffc90047ebb8bc19f33ffab72c1d85b78bc284c3763f25edb4899495476113b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3722e23bf34eca1c8d6a063134c70684e05f21abdd7848cacbf2eddae434bfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_product_research_decisions_05 -> audio/generated/de-DE/utterances/3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4ca541f7-1d5a-5905-8c19-0adc8eb16d9e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_product_research_decisions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f94eeb4748c1713251ccb261a7328f1748b41c770c665d02d5a96281653ba156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca9ec697-b50d-5871-8f5f-dd78b63b77cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4ca541f7-1d5a-5905-8c19-0adc8eb16d9e', 1), 'f94eeb4748c1713251ccb261a7328f1748b41c770c665d02d5a96281653ba156',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660.mp3', 5982, '2026-09-13 08:16:59.473840', '840d6b12222536e64f36780934e36ac869512bfbd566bb6e1d732bce787f54be', 'validated', '{"audio_key":"3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660","entity_key":"u_product_research_decisions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"840d6b12222536e64f36780934e36ac869512bfbd566bb6e1d732bce787f54be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_product_research_decisions_03_listen -> audio/generated/de-DE/utterances/3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7d3c56c3-4bfa-5177-bbfb-678ff0125d18', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_product_research_decisions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f94eeb4748c1713251ccb261a7328f1748b41c770c665d02d5a96281653ba156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df24177d-ad7b-5103-bf4f-b10cbb8507f3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7d3c56c3-4bfa-5177-bbfb-678ff0125d18', 1), 'f94eeb4748c1713251ccb261a7328f1748b41c770c665d02d5a96281653ba156',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660.mp3', 5982, '2026-09-13 08:16:59.473840', '840d6b12222536e64f36780934e36ac869512bfbd566bb6e1d732bce787f54be', 'validated', '{"audio_key":"3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660","entity_key":"ex_product_research_decisions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"840d6b12222536e64f36780934e36ac869512bfbd566bb6e1d732bce787f54be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3bf9b3bfe3027302e32412e5338fdd1c3260457f371c0baa8221aaa44bfb9660.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_service_resolution_05 -> audio/generated/de-DE/utterances/42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('73f2ad66-eb5f-5145-897a-24fa391125ff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_service_resolution_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff07a3039033b0a4ad1923e29a66745a0a44e8fb0b40c8a3e381834046151bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7661d8ea-3bd8-527b-a9ee-e212e6974b19', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('73f2ad66-eb5f-5145-897a-24fa391125ff', 1), 'ff07a3039033b0a4ad1923e29a66745a0a44e8fb0b40c8a3e381834046151bfb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2.mp3', 3474, '2026-09-13 08:16:59.793255', '0fbcf99199f31d529b4cc59c23d676cda0b14496d7ca5851462d05cd7ea6e3d4', 'validated', '{"audio_key":"42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2","entity_key":"u_complaints_service_resolution_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0fbcf99199f31d529b4cc59c23d676cda0b14496d7ca5851462d05cd7ea6e3d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_complaints_service_resolution_03_listen -> audio/generated/de-DE/utterances/42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('737131c2-5a48-5eb2-87a5-9919187cc37e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_complaints_service_resolution_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff07a3039033b0a4ad1923e29a66745a0a44e8fb0b40c8a3e381834046151bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4daad372-554e-50a2-84d8-d0f6e032d221', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('737131c2-5a48-5eb2-87a5-9919187cc37e', 1), 'ff07a3039033b0a4ad1923e29a66745a0a44e8fb0b40c8a3e381834046151bfb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2.mp3', 3474, '2026-09-13 08:16:59.793255', '0fbcf99199f31d529b4cc59c23d676cda0b14496d7ca5851462d05cd7ea6e3d4', 'validated', '{"audio_key":"42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2","entity_key":"ex_complaints_service_resolution_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0fbcf99199f31d529b4cc59c23d676cda0b14496d7ca5851462d05cd7ea6e3d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/42799b57097c3baebf33791bb4eb539323580fb99b052021021dda090ab6f1e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_priorities_blockers_05 -> audio/generated/de-DE/utterances/43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('644a5957-ddaa-5dae-a09c-3c05bd9a473d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_priorities_blockers_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '680f1b40d6129e2d3b41e0f1b89c2c84d21b7e26540b12c3a21e89c642809e93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd69fc15-389b-574b-bd03-e4fd60d7e7e1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('644a5957-ddaa-5dae-a09c-3c05bd9a473d', 1), '680f1b40d6129e2d3b41e0f1b89c2c84d21b7e26540b12c3a21e89c642809e93',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce.mp3', 4362, '2026-09-13 08:17:00.937557', 'c7cb36819cc510d0ace2ef49ecef0d045bc260c9c6312fd7cd01f8069fea0c8d', 'validated', '{"audio_key":"43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce","entity_key":"u_work_priorities_blockers_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7cb36819cc510d0ace2ef49ecef0d045bc260c9c6312fd7cd01f8069fea0c8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_priorities_blockers_03_listen -> audio/generated/de-DE/utterances/43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0ee21a01-4754-564a-bdfd-982b0f395a99', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_priorities_blockers_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '680f1b40d6129e2d3b41e0f1b89c2c84d21b7e26540b12c3a21e89c642809e93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df35616-27e0-578a-a13a-c4bec6ae41b0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0ee21a01-4754-564a-bdfd-982b0f395a99', 1), '680f1b40d6129e2d3b41e0f1b89c2c84d21b7e26540b12c3a21e89c642809e93',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce.mp3', 4362, '2026-09-13 08:17:00.937557', 'c7cb36819cc510d0ace2ef49ecef0d045bc260c9c6312fd7cd01f8069fea0c8d', 'validated', '{"audio_key":"43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce","entity_key":"ex_work_priorities_blockers_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7cb36819cc510d0ace2ef49ecef0d045bc260c9c6312fd7cd01f8069fea0c8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/43e4989ebd4aa221a4a45e950edbd319040aa249006af2bbf892f592c2e7acce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_service_resolution_03 -> audio/generated/de-DE/utterances/47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('af09c160-1424-58da-aed5-45e946e4f5b1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_service_resolution_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c65282a305d7057ef9494112c2b5fe07016dc9ed890a6d16fd8a97a78cd99d98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f049f009-7aa7-5e3c-ace0-7de4f68e8ad8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('af09c160-1424-58da-aed5-45e946e4f5b1', 1), 'c65282a305d7057ef9494112c2b5fe07016dc9ed890a6d16fd8a97a78cd99d98',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c.mp3', 3892, '2026-09-13 08:17:01.113749', 'da56d2fe8a9c1b7ff450d7cb6fdaa31b3c58e879f4855b630d86cdd1a1c90b68', 'validated', '{"audio_key":"47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c","entity_key":"u_complaints_service_resolution_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da56d2fe8a9c1b7ff450d7cb6fdaa31b3c58e879f4855b630d86cdd1a1c90b68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_complaints_service_resolution_02_listen -> audio/generated/de-DE/utterances/47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8c47e5ad-4a69-546a-b1b8-4db24bb3380b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_complaints_service_resolution_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c65282a305d7057ef9494112c2b5fe07016dc9ed890a6d16fd8a97a78cd99d98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54b0efa1-bf16-55fd-975f-b263420d7675', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8c47e5ad-4a69-546a-b1b8-4db24bb3380b', 1), 'c65282a305d7057ef9494112c2b5fe07016dc9ed890a6d16fd8a97a78cd99d98',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c.mp3', 3892, '2026-09-13 08:17:01.113749', 'da56d2fe8a9c1b7ff450d7cb6fdaa31b3c58e879f4855b630d86cdd1a1c90b68', 'validated', '{"audio_key":"47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c","entity_key":"ex_complaints_service_resolution_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da56d2fe8a9c1b7ff450d7cb6fdaa31b3c58e879f4855b630d86cdd1a1c90b68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47346f983df9ae5b009f86e907bdcc6cbcf3236a7be6903217fc90152ce50d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_service_resolution_02 -> audio/generated/de-DE/utterances/4e441905360060c8f97127a9510d6ae79f5d8a8d5c29f7275bbf36adfeeda0b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('783ed183-00b5-514c-b0d1-87c40662b843', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_service_resolution_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5f2b5e6c29f0e044d1a2819ed676175a38cdbb34c0360da1899187477aa769e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7443fff2-f3a1-56fb-aa15-f57f5d68e146', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('783ed183-00b5-514c-b0d1-87c40662b843', 1), 'd5f2b5e6c29f0e044d1a2819ed676175a38cdbb34c0360da1899187477aa769e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e441905360060c8f97127a9510d6ae79f5d8a8d5c29f7275bbf36adfeeda0b5.mp3', 4257, '2026-09-13 08:17:02.424631', 'c6cdc46965fd8fccb7dde0d6a0d1817fdb9ae8e7d0301c4b11218d067d096a1c', 'validated', '{"audio_key":"4e441905360060c8f97127a9510d6ae79f5d8a8d5c29f7275bbf36adfeeda0b5","entity_key":"u_complaints_service_resolution_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6cdc46965fd8fccb7dde0d6a0d1817fdb9ae8e7d0301c4b11218d067d096a1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e441905360060c8f97127a9510d6ae79f5d8a8d5c29f7275bbf36adfeeda0b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projects_deadlines_risks_03 -> audio/generated/de-DE/utterances/5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('78c51a4e-9bbc-50cd-a24b-bd7d4b5c497d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projects_deadlines_risks_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aef335c01a7eeabc9655fb11f153cbda6a1f57cc1e29461bca834ebc093091a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbc86fb2-c888-52c7-ad4e-e8068fe89f79', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('78c51a4e-9bbc-50cd-a24b-bd7d4b5c497d', 1), 'aef335c01a7eeabc9655fb11f153cbda6a1f57cc1e29461bca834ebc093091a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8.mp3', 4623, '2026-09-13 08:17:02.797246', 'bd51fbb78f5ddc6f5efccaa0eb0b6065b93f99d2eaab111304d79fbfb7b9bee8', 'validated', '{"audio_key":"5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8","entity_key":"u_projects_deadlines_risks_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd51fbb78f5ddc6f5efccaa0eb0b6065b93f99d2eaab111304d79fbfb7b9bee8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_projects_deadlines_risks_02_listen -> audio/generated/de-DE/utterances/5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9b3da523-21b3-5d38-a8ee-905606f8f16d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_projects_deadlines_risks_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aef335c01a7eeabc9655fb11f153cbda6a1f57cc1e29461bca834ebc093091a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daebf4e7-3205-5c28-9f2b-1e755626d0ff', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9b3da523-21b3-5d38-a8ee-905606f8f16d', 1), 'aef335c01a7eeabc9655fb11f153cbda6a1f57cc1e29461bca834ebc093091a6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8.mp3', 4623, '2026-09-13 08:17:02.797246', 'bd51fbb78f5ddc6f5efccaa0eb0b6065b93f99d2eaab111304d79fbfb7b9bee8', 'validated', '{"audio_key":"5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8","entity_key":"ex_projects_deadlines_risks_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd51fbb78f5ddc6f5efccaa0eb0b6065b93f99d2eaab111304d79fbfb7b9bee8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5179e96fa73ebdb1012854ad7f5a6f1c7802b2d8959e944763774487989a01a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_critique_01 -> audio/generated/de-DE/utterances/544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('15b71164-abe9-5afa-a2fe-db6a847b0ce7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df52e1561bc5780bac62c77b7ebecdfdfe6da908436c0b6e2a1ffccfb587085'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e304997-ba82-591e-acbe-53b66b35290b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('15b71164-abe9-5afa-a2fe-db6a847b0ce7', 1), '8df52e1561bc5780bac62c77b7ebecdfdfe6da908436c0b6e2a1ffccfb587085',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b.mp3', 4022, '2026-09-13 08:17:03.784501', '83823a71776ea8cc4723ff4096f0fcfaedbb104f0240432440e324a2d8549320', 'validated', '{"audio_key":"544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b","entity_key":"u_feedback_critique_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"83823a71776ea8cc4723ff4096f0fcfaedbb104f0240432440e324a2d8549320","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_feedback_critique_01_listen -> audio/generated/de-DE/utterances/544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bf34dbba-7884-5e24-8b6c-50663a517ea6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_feedback_critique_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df52e1561bc5780bac62c77b7ebecdfdfe6da908436c0b6e2a1ffccfb587085'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74b5a83c-6bc7-52af-bc54-ba63a71334cd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bf34dbba-7884-5e24-8b6c-50663a517ea6', 1), '8df52e1561bc5780bac62c77b7ebecdfdfe6da908436c0b6e2a1ffccfb587085',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b.mp3', 4022, '2026-09-13 08:17:03.784501', '83823a71776ea8cc4723ff4096f0fcfaedbb104f0240432440e324a2d8549320', 'validated', '{"audio_key":"544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b","entity_key":"ex_feedback_critique_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"83823a71776ea8cc4723ff4096f0fcfaedbb104f0240432440e324a2d8549320","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/544406574b7e64c3e23fbc201ff1034e48835a32920f84e27b780e2cae7c2d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_product_research_decisions_03 -> audio/generated/de-DE/utterances/5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2fa71885-0809-576c-a58c-1fc2636108b1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_product_research_decisions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2c1ab7cf250b99894d19ba7b48eb53fedcc6f0ff268a238aad0147ffd51702c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00c89cf3-5fa2-5615-a979-71b7515f57c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2fa71885-0809-576c-a58c-1fc2636108b1', 1), 'c2c1ab7cf250b99894d19ba7b48eb53fedcc6f0ff268a238aad0147ffd51702c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa.mp3', 5041, '2026-09-13 08:17:04.231583', 'fdc2e196790ee9e44ac2a36c6f9f2a95df7ace3a954159109213c8638ebe6b1e', 'validated', '{"audio_key":"5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa","entity_key":"u_product_research_decisions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdc2e196790ee9e44ac2a36c6f9f2a95df7ace3a954159109213c8638ebe6b1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_product_research_decisions_02_listen -> audio/generated/de-DE/utterances/5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ec4beb9e-ed87-54d2-bc3f-e29266eff9a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_product_research_decisions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2c1ab7cf250b99894d19ba7b48eb53fedcc6f0ff268a238aad0147ffd51702c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e6c1a34-44c0-57f1-9f64-b42471f991d0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ec4beb9e-ed87-54d2-bc3f-e29266eff9a7', 1), 'c2c1ab7cf250b99894d19ba7b48eb53fedcc6f0ff268a238aad0147ffd51702c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa.mp3', 5041, '2026-09-13 08:17:04.231583', 'fdc2e196790ee9e44ac2a36c6f9f2a95df7ace3a954159109213c8638ebe6b1e', 'validated', '{"audio_key":"5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa","entity_key":"ex_product_research_decisions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdc2e196790ee9e44ac2a36c6f9f2a95df7ace3a954159109213c8638ebe6b1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5485c8f059db64a64d251ab5e78f3d6ce33306d3362c2e06962322d51ede0afa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_priorities_blockers_04 -> audio/generated/de-DE/utterances/557eec275684a82cd4fdd85cd7f5d410c9fdce942f43f7f2680d8d4208bf8d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb318ff8-7abe-5881-b4df-04bb34560b07', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_priorities_blockers_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17fdffe667d554c2e244266b43723325ccc9e2dcdf465111164c9f3609c82dab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c91f6148-7796-5514-9322-4c9e1c464458', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb318ff8-7abe-5881-b4df-04bb34560b07', 1), '17fdffe667d554c2e244266b43723325ccc9e2dcdf465111164c9f3609c82dab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/557eec275684a82cd4fdd85cd7f5d410c9fdce942f43f7f2680d8d4208bf8d5c.mp3', 4623, '2026-09-13 08:17:05.264882', '6d876c1d783e0e07a52c71cc14b23979cdbf0eba663eb50e8c2eae337d124200', 'validated', '{"audio_key":"557eec275684a82cd4fdd85cd7f5d410c9fdce942f43f7f2680d8d4208bf8d5c","entity_key":"u_work_priorities_blockers_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d876c1d783e0e07a52c71cc14b23979cdbf0eba663eb50e8c2eae337d124200","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/557eec275684a82cd4fdd85cd7f5d410c9fdce942f43f7f2680d8d4208bf8d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_interviews_achievements_01 -> audio/generated/de-DE/utterances/595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58849973-0cd6-5cfa-aed2-39784cc6d901', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_interviews_achievements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cbb1b0260a6d19b4745eb23dd64c79245ae864f88d2fed4e44bc0e77df53303'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fcba9cf-171c-50b2-8055-88b769680d94', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58849973-0cd6-5cfa-aed2-39784cc6d901', 1), '7cbb1b0260a6d19b4745eb23dd64c79245ae864f88d2fed4e44bc0e77df53303',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61.mp3', 5459, '2026-09-13 08:17:05.738765', 'bdd859fb5369dd9cdf8f2e766ea15476535ed5beef0eaf6ec6dd5d97137b2efd', 'validated', '{"audio_key":"595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61","entity_key":"u_job_interviews_achievements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdd859fb5369dd9cdf8f2e766ea15476535ed5beef0eaf6ec6dd5d97137b2efd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_job_interviews_achievements_01_listen -> audio/generated/de-DE/utterances/595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5f8c3f28-1bec-564d-89c9-745940f09814', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_job_interviews_achievements_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cbb1b0260a6d19b4745eb23dd64c79245ae864f88d2fed4e44bc0e77df53303'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cd90873-7823-5219-a258-f300d8d05886', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5f8c3f28-1bec-564d-89c9-745940f09814', 1), '7cbb1b0260a6d19b4745eb23dd64c79245ae864f88d2fed4e44bc0e77df53303',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61.mp3', 5459, '2026-09-13 08:17:05.738765', 'bdd859fb5369dd9cdf8f2e766ea15476535ed5beef0eaf6ec6dd5d97137b2efd', 'validated', '{"audio_key":"595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61","entity_key":"ex_job_interviews_achievements_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdd859fb5369dd9cdf8f2e766ea15476535ed5beef0eaf6ec6dd5d97137b2efd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/595965cadf39183682183ae12cd96ba695be7ccc93058ff7ed28a0ceb05bce61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_challenges_feedback_02 -> audio/generated/de-DE/utterances/5b414ccf853e2ed397486fe69aa3df266466c5e86931e28c0466dccba561e75e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('45f30df7-a200-502a-a0b8-c19730721ce4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_challenges_feedback_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d55fd873070b6dea3012f27730495398e5f2651e0b36b5728ea73eb4592c38c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a60d2b0-a594-5722-8dcd-8cbf2611e1f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('45f30df7-a200-502a-a0b8-c19730721ce4', 1), '7d55fd873070b6dea3012f27730495398e5f2651e0b36b5728ea73eb4592c38c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b414ccf853e2ed397486fe69aa3df266466c5e86931e28c0466dccba561e75e.mp3', 4022, '2026-09-13 08:17:06.594514', 'b01731ae403ffaad1479aca21dd23e72ded632250ca6615c5906f652cf9d05da', 'validated', '{"audio_key":"5b414ccf853e2ed397486fe69aa3df266466c5e86931e28c0466dccba561e75e","entity_key":"u_study_challenges_feedback_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b01731ae403ffaad1479aca21dd23e72ded632250ca6615c5906f652cf9d05da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b414ccf853e2ed397486fe69aa3df266466c5e86931e28c0466dccba561e75e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projects_deadlines_risks_02 -> audio/generated/de-DE/utterances/5d94641ed823299902eafbcc2042db295e06501aac6f13ad23247878ad6ba506.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1eb68d26-19ff-5038-b68b-9b7bb2e14ced', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projects_deadlines_risks_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1a39ccce7239b27a39f623abda45a4924d5cf1619cfc40efc33014a05edc867'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6b05719-70ee-5b3b-9540-6c24fb77b3cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1eb68d26-19ff-5038-b68b-9b7bb2e14ced', 1), 'b1a39ccce7239b27a39f623abda45a4924d5cf1619cfc40efc33014a05edc867',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5d94641ed823299902eafbcc2042db295e06501aac6f13ad23247878ad6ba506.mp3', 4623, '2026-09-13 08:17:07.187333', '10eb1876dbc79b1f3627f419a410d045c9ae5479930238798db604af41f0d1be', 'validated', '{"audio_key":"5d94641ed823299902eafbcc2042db295e06501aac6f13ad23247878ad6ba506","entity_key":"u_projects_deadlines_risks_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10eb1876dbc79b1f3627f419a410d045c9ae5479930238798db604af41f0d1be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5d94641ed823299902eafbcc2042db295e06501aac6f13ad23247878ad6ba506.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_misunderstandings_06 -> audio/generated/de-DE/utterances/5e64b37a193246b8c355f6f8ebc0522e6e6a9153e96f1de2ae6d5fd4f30fe354.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f64d0b0-a704-5d65-8313-77a2432742a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_misunderstandings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '201bee1823f42022041db9060199790ed027c05e8287be9f85cfb98f69afabad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cdfd08b-41cf-5f7d-8216-39c4284c6ce1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f64d0b0-a704-5d65-8313-77a2432742a7', 1), '201bee1823f42022041db9060199790ed027c05e8287be9f85cfb98f69afabad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e64b37a193246b8c355f6f8ebc0522e6e6a9153e96f1de2ae6d5fd4f30fe354.mp3', 4493, '2026-09-13 08:17:07.960305', 'bf9323a38ba5c2915cdb49e66c363c46ae1310a9b0641c855a87bbb484a85e8f', 'validated', '{"audio_key":"5e64b37a193246b8c355f6f8ebc0522e6e6a9153e96f1de2ae6d5fd4f30fe354","entity_key":"u_relationships_misunderstandings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf9323a38ba5c2915cdb49e66c363c46ae1310a9b0641c855a87bbb484a85e8f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e64b37a193246b8c355f6f8ebc0522e6e6a9153e96f1de2ae6d5fd4f30fe354.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_accommodation_issues_03 -> audio/generated/de-DE/utterances/60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('687af05b-2218-57fb-99cd-1399754dcffa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_accommodation_issues_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce57b67f268a520ffb1bee28ca4172a5005b64bf3738f6c4f5c4eb1f6bc0d07d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e125a8d9-3735-5d79-aa55-f9c853574752', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('687af05b-2218-57fb-99cd-1399754dcffa', 1), 'ce57b67f268a520ffb1bee28ca4172a5005b64bf3738f6c4f5c4eb1f6bc0d07d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb.mp3', 4022, '2026-09-13 08:17:08.543393', '13edd0e276cebcfc0b8250fb65adbb3e5a1e1e73466eb7df1ffbb5b486d53093', 'validated', '{"audio_key":"60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb","entity_key":"u_accommodation_issues_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13edd0e276cebcfc0b8250fb65adbb3e5a1e1e73466eb7df1ffbb5b486d53093","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_accommodation_issues_02_listen -> audio/generated/de-DE/utterances/60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2dd3ba9a-287a-5c27-ab62-ea6d9e8d6f2b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_accommodation_issues_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce57b67f268a520ffb1bee28ca4172a5005b64bf3738f6c4f5c4eb1f6bc0d07d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89416a63-8889-5dfd-8a39-8ecb1bf2f73f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2dd3ba9a-287a-5c27-ab62-ea6d9e8d6f2b', 1), 'ce57b67f268a520ffb1bee28ca4172a5005b64bf3738f6c4f5c4eb1f6bc0d07d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb.mp3', 4022, '2026-09-13 08:17:08.543393', '13edd0e276cebcfc0b8250fb65adbb3e5a1e1e73466eb7df1ffbb5b486d53093', 'validated', '{"audio_key":"60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb","entity_key":"ex_accommodation_issues_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13edd0e276cebcfc0b8250fb65adbb3e5a1e1e73466eb7df1ffbb5b486d53093","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/60e5beed058cc7a1d7533ac9d8557fdf9a2a84ce5fd23abc165cd11ed3d936cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_accommodation_issues_01 -> audio/generated/de-DE/utterances/6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0427a54-89c1-5b84-9d5b-43bbdefb1dd3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_accommodation_issues_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4d9445227e4505f6df905c182886fa3383cfc5a348b3caaf0a3cf65823be987'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('321d003f-0ccb-576a-8357-009464866b77', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0427a54-89c1-5b84-9d5b-43bbdefb1dd3', 1), 'f4d9445227e4505f6df905c182886fa3383cfc5a348b3caaf0a3cf65823be987',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60.mp3', 4963, '2026-09-13 08:17:09.424994', 'fd93c9a3e30557d3ebab9036c0fe9880b713d38cc8a95f4236cf213c08f5e382', 'validated', '{"audio_key":"6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60","entity_key":"u_accommodation_issues_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd93c9a3e30557d3ebab9036c0fe9880b713d38cc8a95f4236cf213c08f5e382","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_accommodation_issues_01_listen -> audio/generated/de-DE/utterances/6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('680d6a7b-ab63-5b8d-b96f-d764561651bf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_accommodation_issues_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4d9445227e4505f6df905c182886fa3383cfc5a348b3caaf0a3cf65823be987'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('880e36ee-9f3c-5aeb-8968-aad8f73b5f3c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('680d6a7b-ab63-5b8d-b96f-d764561651bf', 1), 'f4d9445227e4505f6df905c182886fa3383cfc5a348b3caaf0a3cf65823be987',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60.mp3', 4963, '2026-09-13 08:17:09.424994', 'fd93c9a3e30557d3ebab9036c0fe9880b713d38cc8a95f4236cf213c08f5e382', 'validated', '{"audio_key":"6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60","entity_key":"ex_accommodation_issues_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd93c9a3e30557d3ebab9036c0fe9880b713d38cc8a95f4236cf213c08f5e382","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6658c22b584a3eee357411444b1895fd9df4223427d48dbec2c08ac445bf8f60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_priorities_blockers_03 -> audio/generated/de-DE/utterances/67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a267a6c-645f-51d2-abd3-c58724959242', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_priorities_blockers_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cff836c2b96d274475d4ffcc00634f38306a4b14aa91c51f16b498e0f27a567'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11cc856e-c681-5514-beed-b70623d564de', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a267a6c-645f-51d2-abd3-c58724959242', 1), '7cff836c2b96d274475d4ffcc00634f38306a4b14aa91c51f16b498e0f27a567',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b.mp3', 3422, '2026-09-13 08:17:09.807688', '06af07667b994d3efbdccb63d490b66e10ef57ed0b352b76cd165ccf3de62d48', 'validated', '{"audio_key":"67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b","entity_key":"u_work_priorities_blockers_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06af07667b994d3efbdccb63d490b66e10ef57ed0b352b76cd165ccf3de62d48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_priorities_blockers_02_listen -> audio/generated/de-DE/utterances/67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d622c357-809d-5787-97f7-a4cbf6132825', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_priorities_blockers_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cff836c2b96d274475d4ffcc00634f38306a4b14aa91c51f16b498e0f27a567'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bdd681d-566d-55b1-9935-32de30a0c4c1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d622c357-809d-5787-97f7-a4cbf6132825', 1), '7cff836c2b96d274475d4ffcc00634f38306a4b14aa91c51f16b498e0f27a567',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b.mp3', 3422, '2026-09-13 08:17:09.807688', '06af07667b994d3efbdccb63d490b66e10ef57ed0b352b76cd165ccf3de62d48', 'validated', '{"audio_key":"67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b","entity_key":"ex_work_priorities_blockers_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06af07667b994d3efbdccb63d490b66e10ef57ed0b352b76cd165ccf3de62d48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67686045ff9fdbd70c022384175da2d7974dbe2fb846c4b4b36f3c1caa50408b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_priorities_blockers_01 -> audio/generated/de-DE/utterances/6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54987bef-e8eb-5e5b-b65d-355de1196159', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_priorities_blockers_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d636c6f56730a11f6082f9b3d553199ae970f1e7ffcb0706f0cae0000c14559'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5058aa0e-7ef6-53cc-8d6c-ea596da68ba4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54987bef-e8eb-5e5b-b65d-355de1196159', 1), '1d636c6f56730a11f6082f9b3d553199ae970f1e7ffcb0706f0cae0000c14559',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426.mp3', 3709, '2026-09-13 08:17:10.732670', 'b445202e61ea7c0c0523179abbdc5a639ce83ef498fea533b075be2584605232', 'validated', '{"audio_key":"6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426","entity_key":"u_work_priorities_blockers_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b445202e61ea7c0c0523179abbdc5a639ce83ef498fea533b075be2584605232","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_priorities_blockers_01_listen -> audio/generated/de-DE/utterances/6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('88465596-2872-5d87-9d62-d0740167587e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_priorities_blockers_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d636c6f56730a11f6082f9b3d553199ae970f1e7ffcb0706f0cae0000c14559'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ad4155d-a33e-565e-bb5b-73e96ae5bbcd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('88465596-2872-5d87-9d62-d0740167587e', 1), '1d636c6f56730a11f6082f9b3d553199ae970f1e7ffcb0706f0cae0000c14559',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426.mp3', 3709, '2026-09-13 08:17:10.732670', 'b445202e61ea7c0c0523179abbdc5a639ce83ef498fea533b075be2584605232', 'validated', '{"audio_key":"6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426","entity_key":"ex_work_priorities_blockers_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b445202e61ea7c0c0523179abbdc5a639ce83ef498fea533b075be2584605232","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6ce992c6858adeae3bef7ebe223d54745a867a177fb4d626d1051c6eea2ea426.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_critique_04 -> audio/generated/de-DE/utterances/75d7a8e33969d3f9bf2d1a6840cf114389fc9d98d8b82def1b8e033813e9bb17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3aa09ae5-6618-57f1-b47f-14e4bcfedecb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ac5142aee3388dc8227afec48142976c5ee5f9b45aebebe6753b791c7bdf4e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e96ead3-0232-5d55-91d1-cf5c21d8f147', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3aa09ae5-6618-57f1-b47f-14e4bcfedecb', 1), '3ac5142aee3388dc8227afec48142976c5ee5f9b45aebebe6753b791c7bdf4e8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/75d7a8e33969d3f9bf2d1a6840cf114389fc9d98d8b82def1b8e033813e9bb17.mp3', 4597, '2026-09-13 08:17:11.255141', '1fba3932d34c4963fd570c51b36a74aec425ac6b7858163a822db1defa919ef8', 'validated', '{"audio_key":"75d7a8e33969d3f9bf2d1a6840cf114389fc9d98d8b82def1b8e033813e9bb17","entity_key":"u_feedback_critique_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fba3932d34c4963fd570c51b36a74aec425ac6b7858163a822db1defa919ef8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/75d7a8e33969d3f9bf2d1a6840cf114389fc9d98d8b82def1b8e033813e9bb17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_disruptions_01 -> audio/generated/de-DE/utterances/78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('059b32cc-b3e6-57e9-a23d-7be975403eab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_disruptions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b558593f4a685ad5cea19abf398f2eb6c49c2a5f4d676258ef7f77c7328183b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1ceba8d-ba75-5cd2-b99f-778e66b53d42', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('059b32cc-b3e6-57e9-a23d-7be975403eab', 1), '7b558593f4a685ad5cea19abf398f2eb6c49c2a5f4d676258ef7f77c7328183b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa.mp3', 4440, '2026-09-13 08:17:12.109371', '2e39aa515a2428d6056e3b27263aa4ffa8af5612246124c845d54dae440958da', 'validated', '{"audio_key":"78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa","entity_key":"u_travel_disruptions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e39aa515a2428d6056e3b27263aa4ffa8af5612246124c845d54dae440958da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_travel_disruptions_01_listen -> audio/generated/de-DE/utterances/78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8d25ca20-6d38-52b1-8700-00b7f1271481', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_travel_disruptions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b558593f4a685ad5cea19abf398f2eb6c49c2a5f4d676258ef7f77c7328183b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('342097cf-13a5-5e16-abec-5bfe34d88dc3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8d25ca20-6d38-52b1-8700-00b7f1271481', 1), '7b558593f4a685ad5cea19abf398f2eb6c49c2a5f4d676258ef7f77c7328183b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa.mp3', 4440, '2026-09-13 08:17:12.109371', '2e39aa515a2428d6056e3b27263aa4ffa8af5612246124c845d54dae440958da', 'validated', '{"audio_key":"78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa","entity_key":"ex_travel_disruptions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e39aa515a2428d6056e3b27263aa4ffa8af5612246124c845d54dae440958da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/78024e5e5c28913bb797264cf2c7d6e429407c4cf890dda44a1b5c12ea4fe7fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_priorities_blockers_06 -> audio/generated/de-DE/utterances/7baaa6433a36a8fdd55d4393d486937ff8fc136316976a4395bb8decfd4d93ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f92d4721-9487-5f13-8e04-07912f5e6b47', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_priorities_blockers_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5528a87bbacfec250e9756676a92dc13b47cd8a696ba3cee2f18d51fe558943c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('504a7d52-22a1-59b7-85f9-d94c9c2fa987', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f92d4721-9487-5f13-8e04-07912f5e6b47', 1), '5528a87bbacfec250e9756676a92dc13b47cd8a696ba3cee2f18d51fe558943c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7baaa6433a36a8fdd55d4393d486937ff8fc136316976a4395bb8decfd4d93ce.mp3', 3709, '2026-09-13 08:17:12.552469', '95c21a12bbaa8398af0a24973946b287ae58c7b29cb1be66ecbd699a40d7dbfd', 'validated', '{"audio_key":"7baaa6433a36a8fdd55d4393d486937ff8fc136316976a4395bb8decfd4d93ce","entity_key":"u_work_priorities_blockers_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95c21a12bbaa8398af0a24973946b287ae58c7b29cb1be66ecbd699a40d7dbfd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7baaa6433a36a8fdd55d4393d486937ff8fc136316976a4395bb8decfd4d93ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projects_deadlines_risks_05 -> audio/generated/de-DE/utterances/8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('775ecf1a-1098-5cd5-be7e-4f7614fbb5c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projects_deadlines_risks_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3952bfd3da9c2188cb2ffd4a8185ffac38a2d25b4826633cfa5ac7e2d1d08ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4ab41ab-9c1f-5724-8bbb-1e4db807e8a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('775ecf1a-1098-5cd5-be7e-4f7614fbb5c7', 1), 'a3952bfd3da9c2188cb2ffd4a8185ffac38a2d25b4826633cfa5ac7e2d1d08ee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4.mp3', 3996, '2026-09-13 08:17:13.436542', '4e76e06b9c47f946e9a358b0f777d96ed2f7112e56a30b92f08508202d05e9d0', 'validated', '{"audio_key":"8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4","entity_key":"u_projects_deadlines_risks_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e76e06b9c47f946e9a358b0f777d96ed2f7112e56a30b92f08508202d05e9d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_projects_deadlines_risks_03_listen -> audio/generated/de-DE/utterances/8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6dfd5a22-6ac5-5a7b-8378-72c9efe89a18', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_projects_deadlines_risks_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3952bfd3da9c2188cb2ffd4a8185ffac38a2d25b4826633cfa5ac7e2d1d08ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c6a9459-bc89-5dae-b62c-aa629df09d81', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6dfd5a22-6ac5-5a7b-8378-72c9efe89a18', 1), 'a3952bfd3da9c2188cb2ffd4a8185ffac38a2d25b4826633cfa5ac7e2d1d08ee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4.mp3', 3996, '2026-09-13 08:17:13.436542', '4e76e06b9c47f946e9a358b0f777d96ed2f7112e56a30b92f08508202d05e9d0', 'validated', '{"audio_key":"8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4","entity_key":"ex_projects_deadlines_risks_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e76e06b9c47f946e9a358b0f777d96ed2f7112e56a30b92f08508202d05e9d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8490b1bb435305b796750049b30c6df616da9c87a95fd6f51e65508251f3b8b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_accommodation_issues_02 -> audio/generated/de-DE/utterances/889626cef2eb337eada76720cecf5bf5990f2993d0116cd37e065199299894b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b45251c9-dca8-5223-82c4-ca30814a1518', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_accommodation_issues_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9317a1c55947a4716d723213b94c7e6deb77b5aaf364734e039b757d55147bb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb44879c-b214-5fd1-9161-f02fddd9e42f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b45251c9-dca8-5223-82c4-ca30814a1518', 1), '9317a1c55947a4716d723213b94c7e6deb77b5aaf364734e039b757d55147bb8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/889626cef2eb337eada76720cecf5bf5990f2993d0116cd37e065199299894b5.mp3', 4780, '2026-09-13 08:17:13.986914', 'bacb7dc6f8855ac02a1189339f6921d69868e2f2d8e1a4d93e6239272e453edc', 'validated', '{"audio_key":"889626cef2eb337eada76720cecf5bf5990f2993d0116cd37e065199299894b5","entity_key":"u_accommodation_issues_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bacb7dc6f8855ac02a1189339f6921d69868e2f2d8e1a4d93e6239272e453edc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/889626cef2eb337eada76720cecf5bf5990f2993d0116cd37e065199299894b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_misunderstandings_02 -> audio/generated/de-DE/utterances/90d5da3e166054deac7ab9fb7932da39d20a3d77d2892ea63e9be11968f1f386.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22121601-f064-57d9-856c-fc20a0d2d4a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_misunderstandings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1529c87bac82323b9151d1a7ec242139b8cf020d1679d5e8adfc1d1bd73c3d88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bf5cb51-f63d-5604-8d6b-32fac9364260', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22121601-f064-57d9-856c-fc20a0d2d4a7', 1), '1529c87bac82323b9151d1a7ec242139b8cf020d1679d5e8adfc1d1bd73c3d88',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/90d5da3e166054deac7ab9fb7932da39d20a3d77d2892ea63e9be11968f1f386.mp3', 3604, '2026-09-13 08:17:14.727123', 'd6007269d2588ab2595144665de5fc8bf2657ec7f868978febfe383f14078b25', 'validated', '{"audio_key":"90d5da3e166054deac7ab9fb7932da39d20a3d77d2892ea63e9be11968f1f386","entity_key":"u_relationships_misunderstandings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6007269d2588ab2595144665de5fc8bf2657ec7f868978febfe383f14078b25","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/90d5da3e166054deac7ab9fb7932da39d20a3d77d2892ea63e9be11968f1f386.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_priorities_blockers_02 -> audio/generated/de-DE/utterances/9c0a1f7b73c0c2497a8160ac9e0fc598cb37a52a610ac608504f288835b8f046.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c408adf4-e188-5c07-8bc9-79598a8c4c52', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_priorities_blockers_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '407f6c88f4b0efc67416b249af107a7857f37dac210c931e08164a8df0f617c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('146a0f75-a719-5897-8612-b3e9157c1768', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c408adf4-e188-5c07-8bc9-79598a8c4c52', 1), '407f6c88f4b0efc67416b249af107a7857f37dac210c931e08164a8df0f617c8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9c0a1f7b73c0c2497a8160ac9e0fc598cb37a52a610ac608504f288835b8f046.mp3', 3944, '2026-09-13 08:17:15.293985', 'fad414fc002c4efba3b258ec853d2852361e73d8bab5028518c94d4a38e1d101', 'validated', '{"audio_key":"9c0a1f7b73c0c2497a8160ac9e0fc598cb37a52a610ac608504f288835b8f046","entity_key":"u_work_priorities_blockers_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fad414fc002c4efba3b258ec853d2852361e73d8bab5028518c94d4a38e1d101","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9c0a1f7b73c0c2497a8160ac9e0fc598cb37a52a610ac608504f288835b8f046.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_product_research_decisions_04 -> audio/generated/de-DE/utterances/9c35a35dff028528d0625b6ccad19309e02afdad93945b63d3c1a18a485550e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b79f006-4b32-578d-8b43-468a4762cff6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_product_research_decisions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '931c787fbabebb0d50d9af94877e6999a2c4f0b278512c8cbe9498c98580194e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c56465e-1c92-5daf-8edf-d58b76421dac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b79f006-4b32-578d-8b43-468a4762cff6', 1), '931c787fbabebb0d50d9af94877e6999a2c4f0b278512c8cbe9498c98580194e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9c35a35dff028528d0625b6ccad19309e02afdad93945b63d3c1a18a485550e0.mp3', 6400, '2026-09-13 08:17:16.385133', '807483aeb6eacb36d655126655975780681e1b23d4e025e70eb4028422e82f1e', 'validated', '{"audio_key":"9c35a35dff028528d0625b6ccad19309e02afdad93945b63d3c1a18a485550e0","entity_key":"u_product_research_decisions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"807483aeb6eacb36d655126655975780681e1b23d4e025e70eb4028422e82f1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9c35a35dff028528d0625b6ccad19309e02afdad93945b63d3c1a18a485550e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_product_research_decisions_06 -> audio/generated/de-DE/utterances/a041ad70e599d198e82d33bf7d26e121a43064f0aad0ef7d967eef9fcbb37e49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f10e8b88-0988-51e3-9079-3a4dfcf8d81d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_product_research_decisions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '474a5ee5ec25a14e8270b934896a4cea47ccc0e6748d98d8da7c6db0a5565704'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53d0cfd6-64c6-5c93-b5be-5d280d40a378', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f10e8b88-0988-51e3-9079-3a4dfcf8d81d', 1), '474a5ee5ec25a14e8270b934896a4cea47ccc0e6748d98d8da7c6db0a5565704',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a041ad70e599d198e82d33bf7d26e121a43064f0aad0ef7d967eef9fcbb37e49.mp3', 3578, '2026-09-13 08:17:16.563552', 'c6608d33ed3eeeff0e21e4d2492b876a2ff8001fd8123f7021a2691d3bd123fc', 'validated', '{"audio_key":"a041ad70e599d198e82d33bf7d26e121a43064f0aad0ef7d967eef9fcbb37e49","entity_key":"u_product_research_decisions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6608d33ed3eeeff0e21e4d2492b876a2ff8001fd8123f7021a2691d3bd123fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a041ad70e599d198e82d33bf7d26e121a43064f0aad0ef7d967eef9fcbb37e49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_challenges_feedback_03 -> audio/generated/de-DE/utterances/a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3d9f91bd-ee92-5316-8864-cfe082f6d23b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_challenges_feedback_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7d5b25c4d987b327a566583166c33b5e5ed9b324670b12064e5be5bcdc7eb36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bed07e8a-fddf-5486-b969-7fff750bdeb0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3d9f91bd-ee92-5316-8864-cfe082f6d23b', 1), 'c7d5b25c4d987b327a566583166c33b5e5ed9b324670b12064e5be5bcdc7eb36',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6.mp3', 3840, '2026-09-13 08:17:17.718032', 'b6fb2a289dca29601b8e28e704489c839e0bac437f29b7e1df72eae6dd354608', 'validated', '{"audio_key":"a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6","entity_key":"u_study_challenges_feedback_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6fb2a289dca29601b8e28e704489c839e0bac437f29b7e1df72eae6dd354608","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_study_challenges_feedback_02_listen -> audio/generated/de-DE/utterances/a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8a96125c-5584-550a-b168-ff5886313a2a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_study_challenges_feedback_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7d5b25c4d987b327a566583166c33b5e5ed9b324670b12064e5be5bcdc7eb36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5658d773-e7cd-50d5-b2ef-cfde410e0c02', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8a96125c-5584-550a-b168-ff5886313a2a', 1), 'c7d5b25c4d987b327a566583166c33b5e5ed9b324670b12064e5be5bcdc7eb36',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6.mp3', 3840, '2026-09-13 08:17:17.718032', 'b6fb2a289dca29601b8e28e704489c839e0bac437f29b7e1df72eae6dd354608', 'validated', '{"audio_key":"a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6","entity_key":"ex_study_challenges_feedback_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6fb2a289dca29601b8e28e704489c839e0bac437f29b7e1df72eae6dd354608","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5a1bbbde11a00207f50d0c0477f220e29b4ccf9d1abcaf72f0c35254575f1d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_challenges_feedback_06 -> audio/generated/de-DE/utterances/aa892207808fbdf2a228a57884650647c4bea7308d4604fd6da54d29625ba8c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2bc37492-9b99-5ff5-b737-91237550fe01', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_challenges_feedback_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4531d0e339e388762464e30056dfb8b5ae7a3f9200449548e2807a5c90954aed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8efbb29b-26a8-51b7-9549-0de1e12a5c71', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2bc37492-9b99-5ff5-b737-91237550fe01', 1), '4531d0e339e388762464e30056dfb8b5ae7a3f9200449548e2807a5c90954aed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/aa892207808fbdf2a228a57884650647c4bea7308d4604fd6da54d29625ba8c7.mp3', 4858, '2026-09-13 08:17:18.059195', 'e3033c7d210ab1ec911d0750519bade59d909194d69ba0174fb2370b29d33bad', 'validated', '{"audio_key":"aa892207808fbdf2a228a57884650647c4bea7308d4604fd6da54d29625ba8c7","entity_key":"u_study_challenges_feedback_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3033c7d210ab1ec911d0750519bade59d909194d69ba0174fb2370b29d33bad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/aa892207808fbdf2a228a57884650647c4bea7308d4604fd6da54d29625ba8c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_accommodation_issues_06 -> audio/generated/de-DE/utterances/b48933d8436697ccb34a73ccdebfb2afe78c1a07af3e46c14013a6ac8d44ae43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('17d95b5a-73a2-5e76-89ca-cb5f8d9f6759', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_accommodation_issues_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbe35ba9a34742edc12b908ab1d17ca64fc29f834503fe73440e0889d5ccce6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97593ea4-5d2c-5173-b00d-227d4df2e78b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('17d95b5a-73a2-5e76-89ca-cb5f8d9f6759', 1), 'dbe35ba9a34742edc12b908ab1d17ca64fc29f834503fe73440e0889d5ccce6b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b48933d8436697ccb34a73ccdebfb2afe78c1a07af3e46c14013a6ac8d44ae43.mp3', 3944, '2026-09-13 08:17:19.063535', 'b440d4e597e3f177885ff64d2b0258aa2c022fde5da47912a03a8fd1ec0d53d3', 'validated', '{"audio_key":"b48933d8436697ccb34a73ccdebfb2afe78c1a07af3e46c14013a6ac8d44ae43","entity_key":"u_accommodation_issues_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b440d4e597e3f177885ff64d2b0258aa2c022fde5da47912a03a8fd1ec0d53d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b48933d8436697ccb34a73ccdebfb2afe78c1a07af3e46c14013a6ac8d44ae43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_misunderstandings_03 -> audio/generated/de-DE/utterances/b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4ac23a92-64e0-55df-8669-6def3455ae25', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_misunderstandings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2e2901419bce6f89ee4b4284b4e6d97f607612fad4625f14f690379a1cc8bd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae12e270-2a59-5677-9a71-beb578bc0595', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4ac23a92-64e0-55df-8669-6def3455ae25', 1), 'f2e2901419bce6f89ee4b4284b4e6d97f607612fad4625f14f690379a1cc8bd5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477.mp3', 4728, '2026-09-13 08:17:19.572217', '2f9dd8877e767022fcd4e50a6437a42f3c42669021b9226cee7250178fd1d4af', 'validated', '{"audio_key":"b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477","entity_key":"u_relationships_misunderstandings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f9dd8877e767022fcd4e50a6437a42f3c42669021b9226cee7250178fd1d4af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_relationships_misunderstandings_02_listen -> audio/generated/de-DE/utterances/b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dd460393-d740-5808-abac-fbf8734487c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_relationships_misunderstandings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2e2901419bce6f89ee4b4284b4e6d97f607612fad4625f14f690379a1cc8bd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa2a0067-a5a8-512e-a9c2-e6cdf6487445', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dd460393-d740-5808-abac-fbf8734487c8', 1), 'f2e2901419bce6f89ee4b4284b4e6d97f607612fad4625f14f690379a1cc8bd5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477.mp3', 4728, '2026-09-13 08:17:19.572217', '2f9dd8877e767022fcd4e50a6437a42f3c42669021b9226cee7250178fd1d4af', 'validated', '{"audio_key":"b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477","entity_key":"ex_relationships_misunderstandings_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f9dd8877e767022fcd4e50a6437a42f3c42669021b9226cee7250178fd1d4af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8d48af6d5cd389e4fe9b7e40affe1e375ac1b581699b6cc9a44c02ccf4c4477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_misunderstandings_04 -> audio/generated/de-DE/utterances/ba6adde3d8cc5369889c227965a56a428377671f5731b049f70a4ecb640ce305.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f06f2da1-81ff-5482-a237-f4d9d6250590', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_misunderstandings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8263c86164d9f4c2f1926c2538cb8d2b7ab90fddc838c36bca517667bb922179'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('958606d9-38ec-5707-bd63-e213d0114d0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f06f2da1-81ff-5482-a237-f4d9d6250590', 1), '8263c86164d9f4c2f1926c2538cb8d2b7ab90fddc838c36bca517667bb922179',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ba6adde3d8cc5369889c227965a56a428377671f5731b049f70a4ecb640ce305.mp3', 4127, '2026-09-13 08:17:20.526124', 'e1c3a85485c03ccc6db0d470f55f4b264cde7bb3e7ab95d6a68a60b16cd247d4', 'validated', '{"audio_key":"ba6adde3d8cc5369889c227965a56a428377671f5731b049f70a4ecb640ce305","entity_key":"u_relationships_misunderstandings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1c3a85485c03ccc6db0d470f55f4b264cde7bb3e7ab95d6a68a60b16cd247d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ba6adde3d8cc5369889c227965a56a428377671f5731b049f70a4ecb640ce305.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_disruptions_04 -> audio/generated/de-DE/utterances/becbea19811e243fb0d5f481a8d3aa068d5501dbecb8b1cb5b3d8a2e24ef8a3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b2093bfa-1e25-5879-b63a-5f68132d0705', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_disruptions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32bd761bf6c99e433632f703557524d9c3a6e444c5e464ead55a1ba98a4b7d0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25c17cbb-acc0-5be5-8c01-e650d098ed8a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b2093bfa-1e25-5879-b63a-5f68132d0705', 1), '32bd761bf6c99e433632f703557524d9c3a6e444c5e464ead55a1ba98a4b7d0c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/becbea19811e243fb0d5f481a8d3aa068d5501dbecb8b1cb5b3d8a2e24ef8a3f.mp3', 5276, '2026-09-13 08:17:21.076422', '73d98735b0a80f4164d1d3b54778fa3c6e4f4f31000972b5b15c7190cf26da16', 'validated', '{"audio_key":"becbea19811e243fb0d5f481a8d3aa068d5501dbecb8b1cb5b3d8a2e24ef8a3f","entity_key":"u_travel_disruptions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73d98735b0a80f4164d1d3b54778fa3c6e4f4f31000972b5b15c7190cf26da16","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/becbea19811e243fb0d5f481a8d3aa068d5501dbecb8b1cb5b3d8a2e24ef8a3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_interviews_achievements_05 -> audio/generated/de-DE/utterances/cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9b15164e-c6f6-59e7-9e57-1ea62b1ef1ee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_interviews_achievements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1753ed1f91a32213c775d018b3fa6076e823bec62333101b968e80cdf5fb9e30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23db7521-3033-5da4-99d8-9553b2ff19b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9b15164e-c6f6-59e7-9e57-1ea62b1ef1ee', 1), '1753ed1f91a32213c775d018b3fa6076e823bec62333101b968e80cdf5fb9e30',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987.mp3', 3996, '2026-09-13 08:17:21.851440', '3b02ee33c6f3836d02730b935159236fb4a3560695d9273bea7bf7e362208882', 'validated', '{"audio_key":"cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987","entity_key":"u_job_interviews_achievements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b02ee33c6f3836d02730b935159236fb4a3560695d9273bea7bf7e362208882","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_job_interviews_achievements_03_listen -> audio/generated/de-DE/utterances/cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dd40fd52-4a17-5fed-a53c-7e2cc5dfbdc7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_job_interviews_achievements_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1753ed1f91a32213c775d018b3fa6076e823bec62333101b968e80cdf5fb9e30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f3d0202-d7ee-5f02-8b8f-60e88b810e0d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dd40fd52-4a17-5fed-a53c-7e2cc5dfbdc7', 1), '1753ed1f91a32213c775d018b3fa6076e823bec62333101b968e80cdf5fb9e30',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987.mp3', 3996, '2026-09-13 08:17:21.851440', '3b02ee33c6f3836d02730b935159236fb4a3560695d9273bea7bf7e362208882', 'validated', '{"audio_key":"cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987","entity_key":"ex_job_interviews_achievements_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b02ee33c6f3836d02730b935159236fb4a3560695d9273bea7bf7e362208882","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cae7c7f3bda24669ea526b682e018bbd5f620b242ef0b5444326fbc2ebce7987.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_critique_02 -> audio/generated/de-DE/utterances/d14c15878127906e5a7318ac2f15159cbc34e69ed2edee1dce3dbdffcf7c4017.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('435ac889-01bd-5418-abea-1b0a28f51f44', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c58c705ce3d9de1be7cee5452d553bb41693bc615753bf705b47b644fd00b304'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6f0157e-7b09-5a64-8466-abbff2c1f0d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('435ac889-01bd-5418-abea-1b0a28f51f44', 1), 'c58c705ce3d9de1be7cee5452d553bb41693bc615753bf705b47b644fd00b304',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d14c15878127906e5a7318ac2f15159cbc34e69ed2edee1dce3dbdffcf7c4017.mp3', 4597, '2026-09-13 08:17:22.499118', '76c77938d6da3d060e354d3ac44d23435cb57c7f9ce757a0a307cb5fc1c456a5', 'validated', '{"audio_key":"d14c15878127906e5a7318ac2f15159cbc34e69ed2edee1dce3dbdffcf7c4017","entity_key":"u_feedback_critique_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76c77938d6da3d060e354d3ac44d23435cb57c7f9ce757a0a307cb5fc1c456a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d14c15878127906e5a7318ac2f15159cbc34e69ed2edee1dce3dbdffcf7c4017.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_challenges_feedback_04 -> audio/generated/de-DE/utterances/d79388b54f296554fac9b472fd64b06774f969b72f3e6d02bd5a59f7a681148d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dd880c94-c0c2-5a2c-99c3-24ec36c0759c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_challenges_feedback_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c49b8bbf5a409fbaaccb43356f3b157eeb3e5a90a27fec3321ea6aab7c0e1f9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bd112eb-1b60-5d81-bd3f-4a557b1d4f61', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dd880c94-c0c2-5a2c-99c3-24ec36c0759c', 1), 'c49b8bbf5a409fbaaccb43356f3b157eeb3e5a90a27fec3321ea6aab7c0e1f9c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d79388b54f296554fac9b472fd64b06774f969b72f3e6d02bd5a59f7a681148d.mp3', 4440, '2026-09-13 08:17:23.221923', '2e95154bd76ef01713f34473e6a33e0aa5298f7946683f0730327c0b29ebd37a', 'validated', '{"audio_key":"d79388b54f296554fac9b472fd64b06774f969b72f3e6d02bd5a59f7a681148d","entity_key":"u_study_challenges_feedback_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e95154bd76ef01713f34473e6a33e0aa5298f7946683f0730327c0b29ebd37a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d79388b54f296554fac9b472fd64b06774f969b72f3e6d02bd5a59f7a681148d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_service_resolution_06 -> audio/generated/de-DE/utterances/da732d525862a081663bae2caa7cd031b623d3d465648a5cd75295c2d11239df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f0ddd9cc-a8a7-5673-9a85-959e8326c1b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_service_resolution_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c832394d9cd429029b9bd8197b7b70f5db7f689fb773176b84a347aed02e1c04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77c2e6d0-a029-5a97-b876-6dd444922f76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f0ddd9cc-a8a7-5673-9a85-959e8326c1b6', 1), 'c832394d9cd429029b9bd8197b7b70f5db7f689fb773176b84a347aed02e1c04',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/da732d525862a081663bae2caa7cd031b623d3d465648a5cd75295c2d11239df.mp3', 5015, '2026-09-13 08:17:24.017218', '5a30d8a794a4e5c96b7d9303ba826a6c83c1233e8f9902af6cb3130ce7c49001', 'validated', '{"audio_key":"da732d525862a081663bae2caa7cd031b623d3d465648a5cd75295c2d11239df","entity_key":"u_complaints_service_resolution_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a30d8a794a4e5c96b7d9303ba826a6c83c1233e8f9902af6cb3130ce7c49001","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/da732d525862a081663bae2caa7cd031b623d3d465648a5cd75295c2d11239df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_service_resolution_01 -> audio/generated/de-DE/utterances/dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4542cbe2-40b0-50d0-94f1-aecda06f75da', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_service_resolution_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdf5f028ba0da92d10d3d700584d3726bc0d24fa39ec84a61500c383051943a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4bc5cec-feb2-56a8-942f-b7879cc908dd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4542cbe2-40b0-50d0-94f1-aecda06f75da', 1), 'cdf5f028ba0da92d10d3d700584d3726bc0d24fa39ec84a61500c383051943a5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c.mp3', 4440, '2026-09-13 08:17:24.624037', 'c83461522b43e7271eeb4f3548a7287ce21aed5c7ccf21d87ea69ffa0104bc29', 'validated', '{"audio_key":"dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c","entity_key":"u_complaints_service_resolution_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c83461522b43e7271eeb4f3548a7287ce21aed5c7ccf21d87ea69ffa0104bc29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_complaints_service_resolution_01_listen -> audio/generated/de-DE/utterances/dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ecd93ea9-8767-5d9b-aa36-f1e256333e78', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_complaints_service_resolution_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdf5f028ba0da92d10d3d700584d3726bc0d24fa39ec84a61500c383051943a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4594cc22-6881-5a3e-a37e-3a1cb80d411c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ecd93ea9-8767-5d9b-aa36-f1e256333e78', 1), 'cdf5f028ba0da92d10d3d700584d3726bc0d24fa39ec84a61500c383051943a5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c.mp3', 4440, '2026-09-13 08:17:24.624037', 'c83461522b43e7271eeb4f3548a7287ce21aed5c7ccf21d87ea69ffa0104bc29', 'validated', '{"audio_key":"dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c","entity_key":"ex_complaints_service_resolution_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c83461522b43e7271eeb4f3548a7287ce21aed5c7ccf21d87ea69ffa0104bc29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dd4302753c1fe3f1f7fe92f20becacf5e4391152dff4ee3dd4cf748be6403d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_misunderstandings_01 -> audio/generated/de-DE/utterances/de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6e432a02-17c9-59ce-9a20-8e226b9ac866', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_misunderstandings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd0735179132f1f46061345505bda755a8cc1d449320c03970f0c22a39c6a223'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df80bc00-9d88-584d-b349-43984b0d881e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6e432a02-17c9-59ce-9a20-8e226b9ac866', 1), 'cd0735179132f1f46061345505bda755a8cc1d449320c03970f0c22a39c6a223',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a.mp3', 4205, '2026-09-13 08:17:25.351836', 'b555c03b32f9d19be9e7b3ded845879453fe1b81c27f1a9a632a98b3863c8d4b', 'validated', '{"audio_key":"de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a","entity_key":"u_relationships_misunderstandings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b555c03b32f9d19be9e7b3ded845879453fe1b81c27f1a9a632a98b3863c8d4b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_relationships_misunderstandings_01_listen -> audio/generated/de-DE/utterances/de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('735a460c-42a6-56fe-8374-a733feecfa37', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_relationships_misunderstandings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd0735179132f1f46061345505bda755a8cc1d449320c03970f0c22a39c6a223'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb790882-f416-5398-9717-f6c4e62035b5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('735a460c-42a6-56fe-8374-a733feecfa37', 1), 'cd0735179132f1f46061345505bda755a8cc1d449320c03970f0c22a39c6a223',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a.mp3', 4205, '2026-09-13 08:17:25.351836', 'b555c03b32f9d19be9e7b3ded845879453fe1b81c27f1a9a632a98b3863c8d4b', 'validated', '{"audio_key":"de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a","entity_key":"ex_relationships_misunderstandings_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b555c03b32f9d19be9e7b3ded845879453fe1b81c27f1a9a632a98b3863c8d4b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/de5ab18dd9dcf69a034049f5f88d2868e9b2ca1707ace9f34edd83c120cd043a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_critique_06 -> audio/generated/de-DE/utterances/e3c45de87709fa67cb2b6a905e6d34a025bbd3c2d49b32b49e5d8a06c5677bb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('08f2ebdd-147c-5cba-a793-75233a700a39', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70fb461ed6678dc7abed3519bc48b7fffd8f9dc8b4ebc8e0b26df87062fcd157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc41b5d3-2b21-50b7-b053-7d92ead3c2f6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('08f2ebdd-147c-5cba-a793-75233a700a39', 1), '70fb461ed6678dc7abed3519bc48b7fffd8f9dc8b4ebc8e0b26df87062fcd157',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e3c45de87709fa67cb2b6a905e6d34a025bbd3c2d49b32b49e5d8a06c5677bb7.mp3', 3709, '2026-09-13 08:17:25.956919', 'ac89bfe66d395c06cb9c35e8500f60de2a71784af32a3aff4ca12a32ecdd37ae', 'validated', '{"audio_key":"e3c45de87709fa67cb2b6a905e6d34a025bbd3c2d49b32b49e5d8a06c5677bb7","entity_key":"u_feedback_critique_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac89bfe66d395c06cb9c35e8500f60de2a71784af32a3aff4ca12a32ecdd37ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e3c45de87709fa67cb2b6a905e6d34a025bbd3c2d49b32b49e5d8a06c5677bb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_challenges_feedback_05 -> audio/generated/de-DE/utterances/e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2b28ff4d-ec8a-589d-83fb-fde3ed37f54d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_challenges_feedback_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8012d4d4ccde028b905798422f465f5b76ceab005e1eb6388a4bf79c1b5ae246'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eead29dd-59be-585f-9ca5-227e7596fd2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2b28ff4d-ec8a-589d-83fb-fde3ed37f54d', 1), '8012d4d4ccde028b905798422f465f5b76ceab005e1eb6388a4bf79c1b5ae246',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb.mp3', 5250, '2026-09-13 08:17:26.841230', '08b6b11e37d1ca2d82df0ac28ac368df12b5479ef229b019241bc745a8c70b8d', 'validated', '{"audio_key":"e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb","entity_key":"u_study_challenges_feedback_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08b6b11e37d1ca2d82df0ac28ac368df12b5479ef229b019241bc745a8c70b8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_study_challenges_feedback_03_listen -> audio/generated/de-DE/utterances/e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3bf58ce7-5a86-520f-ac7c-8d22870fb393', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_study_challenges_feedback_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8012d4d4ccde028b905798422f465f5b76ceab005e1eb6388a4bf79c1b5ae246'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f37587d0-d426-5e38-b68c-d1e6dced21b3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3bf58ce7-5a86-520f-ac7c-8d22870fb393', 1), '8012d4d4ccde028b905798422f465f5b76ceab005e1eb6388a4bf79c1b5ae246',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb.mp3', 5250, '2026-09-13 08:17:26.841230', '08b6b11e37d1ca2d82df0ac28ac368df12b5479ef229b019241bc745a8c70b8d', 'validated', '{"audio_key":"e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb","entity_key":"ex_study_challenges_feedback_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08b6b11e37d1ca2d82df0ac28ac368df12b5479ef229b019241bc745a8c70b8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4a8256e57905cf09e3e2b32c529db88c547a5fdb44122c6a18b35df6dcd3bfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_accommodation_issues_04 -> audio/generated/de-DE/utterances/e8985b1fda38773878220d8be61321e8f448176b977ce70c5c317d2fc4d3414f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fdfc092e-f9a3-5dae-8351-e8da4ba3315d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_accommodation_issues_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93f1f135d609743d9ca37b69a2e290799513f913768d778e985287a515bf8786'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('478182f3-e4f5-5120-b90c-467aed4e29b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fdfc092e-f9a3-5dae-8351-e8da4ba3315d', 1), '93f1f135d609743d9ca37b69a2e290799513f913768d778e985287a515bf8786',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e8985b1fda38773878220d8be61321e8f448176b977ce70c5c317d2fc4d3414f.mp3', 5198, '2026-09-13 08:17:27.484003', 'a54fcd594c4b9db92e81fef85261f82b77c1f4a474a5937ea2b0648c72a107c0', 'validated', '{"audio_key":"e8985b1fda38773878220d8be61321e8f448176b977ce70c5c317d2fc4d3414f","entity_key":"u_accommodation_issues_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a54fcd594c4b9db92e81fef85261f82b77c1f4a474a5937ea2b0648c72a107c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e8985b1fda38773878220d8be61321e8f448176b977ce70c5c317d2fc4d3414f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_disruptions_02 -> audio/generated/de-DE/utterances/ea11415861a11e81a6b06cf5730498d9729637bc80df053fb7caecc05ef97b01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b14fd752-3bbb-558b-8e23-9be8a3abbbe8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_disruptions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96c3eb59782049b3d36ba70dd26c7908869fca3eeb3d72d412e5d52478fc0480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a825663e-faa3-59ec-ac36-2a42f66082fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b14fd752-3bbb-558b-8e23-9be8a3abbbe8', 1), '96c3eb59782049b3d36ba70dd26c7908869fca3eeb3d72d412e5d52478fc0480',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ea11415861a11e81a6b06cf5730498d9729637bc80df053fb7caecc05ef97b01.mp3', 5146, '2026-09-13 08:17:28.341207', 'c0ba685876793d02acbfe9da274ce85d806909fc0e121666ef9543fcc40bc01b', 'validated', '{"audio_key":"ea11415861a11e81a6b06cf5730498d9729637bc80df053fb7caecc05ef97b01","entity_key":"u_travel_disruptions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0ba685876793d02acbfe9da274ce85d806909fc0e121666ef9543fcc40bc01b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ea11415861a11e81a6b06cf5730498d9729637bc80df053fb7caecc05ef97b01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_challenges_feedback_01 -> audio/generated/de-DE/utterances/f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c7b5791a-0b62-5ebe-a9bb-0d733a29811c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_challenges_feedback_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afb440d67b3474e3ba2d9c4fed8f7165e5159fb9e479f7cc77623fc827215f76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63302dc4-0236-55fd-a1d5-5e12547709e8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c7b5791a-0b62-5ebe-a9bb-0d733a29811c', 1), 'afb440d67b3474e3ba2d9c4fed8f7165e5159fb9e479f7cc77623fc827215f76',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607.mp3', 4780, '2026-09-13 08:17:28.965066', '03d0fa21e0a485016c5e02dfee8960f98f3dec56cf495bd891e4819a4a26efbd', 'validated', '{"audio_key":"f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607","entity_key":"u_study_challenges_feedback_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03d0fa21e0a485016c5e02dfee8960f98f3dec56cf495bd891e4819a4a26efbd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_study_challenges_feedback_01_listen -> audio/generated/de-DE/utterances/f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ab2f399-d8e0-5947-86e1-acbc856a45f0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_study_challenges_feedback_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afb440d67b3474e3ba2d9c4fed8f7165e5159fb9e479f7cc77623fc827215f76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11a2ae93-717b-52ce-b87c-7c8c5a5d801a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ab2f399-d8e0-5947-86e1-acbc856a45f0', 1), 'afb440d67b3474e3ba2d9c4fed8f7165e5159fb9e479f7cc77623fc827215f76',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607.mp3', 4780, '2026-09-13 08:17:28.965066', '03d0fa21e0a485016c5e02dfee8960f98f3dec56cf495bd891e4819a4a26efbd', 'validated', '{"audio_key":"f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607","entity_key":"ex_study_challenges_feedback_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03d0fa21e0a485016c5e02dfee8960f98f3dec56cf495bd891e4819a4a26efbd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f5fcba7d5c7aa092d43fa674210a0b27051a40cb789bd9099b80edf75c76c607.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_interviews_achievements_03 -> audio/generated/de-DE/utterances/f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ccae9102-d077-5301-ad50-7307160fa7a3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_interviews_achievements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3d6b5aa59ea59e45e0fad251b873bdb03023bc591c44b214867b7d55b44f415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cbd30a7-6980-531d-a636-58999a368d4e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ccae9102-d077-5301-ad50-7307160fa7a3', 1), 'a3d6b5aa59ea59e45e0fad251b873bdb03023bc591c44b214867b7d55b44f415',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a.mp3', 5041, '2026-09-13 08:17:29.798126', '4e5ee0826328417ae4faee9067b7e770db0523ab4e39e101fbe0829694716789', 'validated', '{"audio_key":"f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a","entity_key":"u_job_interviews_achievements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e5ee0826328417ae4faee9067b7e770db0523ab4e39e101fbe0829694716789","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_job_interviews_achievements_02_listen -> audio/generated/de-DE/utterances/f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('28ee3896-8e0d-5395-b092-91c98ab38b30', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_job_interviews_achievements_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3d6b5aa59ea59e45e0fad251b873bdb03023bc591c44b214867b7d55b44f415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdd25193-4c73-583c-989a-9f5dd561b8fe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('28ee3896-8e0d-5395-b092-91c98ab38b30', 1), 'a3d6b5aa59ea59e45e0fad251b873bdb03023bc591c44b214867b7d55b44f415',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a.mp3', 5041, '2026-09-13 08:17:29.798126', '4e5ee0826328417ae4faee9067b7e770db0523ab4e39e101fbe0829694716789', 'validated', '{"audio_key":"f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a","entity_key":"ex_job_interviews_achievements_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e5ee0826328417ae4faee9067b7e770db0523ab4e39e101fbe0829694716789","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f72ab67c78daa008416914e5a000b4ea118a8cefce1e7242e2c5626be353508a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_feedback_critique_05 -> audio/generated/de-DE/utterances/fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e092c09a-4163-5339-9765-c00071bf5ebd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_feedback_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd239ef479beb47e4ed6ee2c3f2ff2501be7e411cfe28ad135583d5dfcb5a87e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b3f4cab-d197-5dc2-b86a-68f6ac5aa8a9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e092c09a-4163-5339-9765-c00071bf5ebd', 1), 'd239ef479beb47e4ed6ee2c3f2ff2501be7e411cfe28ad135583d5dfcb5a87e4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8.mp3', 3709, '2026-09-13 08:17:30.294966', '3468ca14e65da02e60f9218798e0bc9a8f75b828f9e77b2155169c93f850779b', 'validated', '{"audio_key":"fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8","entity_key":"u_feedback_critique_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3468ca14e65da02e60f9218798e0bc9a8f75b828f9e77b2155169c93f850779b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_feedback_critique_03_listen -> audio/generated/de-DE/utterances/fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c1b158d-7928-560b-aaa2-069258264559', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_feedback_critique_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd239ef479beb47e4ed6ee2c3f2ff2501be7e411cfe28ad135583d5dfcb5a87e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c06bd87-3ba7-5ddc-9a6a-457a7d8c5ddd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c1b158d-7928-560b-aaa2-069258264559', 1), 'd239ef479beb47e4ed6ee2c3f2ff2501be7e411cfe28ad135583d5dfcb5a87e4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8.mp3', 3709, '2026-09-13 08:17:30.294966', '3468ca14e65da02e60f9218798e0bc9a8f75b828f9e77b2155169c93f850779b', 'validated', '{"audio_key":"fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8","entity_key":"ex_feedback_critique_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3468ca14e65da02e60f9218798e0bc9a8f75b828f9e77b2155169c93f850779b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fc14edb517f174ccc79ae36b393a6b606d091f75e70ed290dc93193b314fd9d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_projects_deadlines_risks_06 -> audio/generated/de-DE/utterances/fe052de356dbbead97ff39805f305728f5990d70995e08074fe02778377395ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3523c817-4341-5f12-9a82-823a6c74af13', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_projects_deadlines_risks_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0d38e5a645593b628343473505cd1e9cf3810f982d5730d62ebfb8271153bc2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bb49e13-4681-5fcb-822a-9beae57380d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3523c817-4341-5f12-9a82-823a6c74af13', 1), 'f0d38e5a645593b628343473505cd1e9cf3810f982d5730d62ebfb8271153bc2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fe052de356dbbead97ff39805f305728f5990d70995e08074fe02778377395ce.mp3', 4179, '2026-09-13 08:17:31.153977', 'dcf31863d6d5b9bac68ee266abc6526097d2ec6159b6c301b2f3d87b43e05459', 'validated', '{"audio_key":"fe052de356dbbead97ff39805f305728f5990d70995e08074fe02778377395ce","entity_key":"u_projects_deadlines_risks_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcf31863d6d5b9bac68ee266abc6526097d2ec6159b6c301b2f3d87b43e05459","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fe052de356dbbead97ff39805f305728f5990d70995e08074fe02778377395ce.mp3"}'
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

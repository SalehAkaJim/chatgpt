-- Generated audio link import for tr-TR B2
-- Source manifest: audio/manifests/tr/B2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_passive_processes_01:4 -> audio/generated/tr-TR/dialogues/01cb3105ba1da1e60fd80a635720e7df060467f698e86fbe7894ca8fbb018f61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72130f5d-54c7-5d1b-a53c-ed05077c5c4a', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccc332e88a29e4eacc018633ff8357b22b607875ed1a1760b5fa85b13658289d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ed90370-40e9-5f3f-9a14-87231917fe88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72130f5d-54c7-5d1b-a53c-ed05077c5c4a', 1), 'ccc332e88a29e4eacc018633ff8357b22b607875ed1a1760b5fa85b13658289d',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/01cb3105ba1da1e60fd80a635720e7df060467f698e86fbe7894ca8fbb018f61.mp3', 2351, '2026-09-13 19:06:34.524792', 'b021015c360940b3dc7b56e7b326a9867f3c5dd41aba1f43fff68f7fe848742c', 'validated', '{"audio_key":"01cb3105ba1da1e60fd80a635720e7df060467f698e86fbe7894ca8fbb018f61","entity_key":"d_passive_processes_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b021015c360940b3dc7b56e7b326a9867f3c5dd41aba1f43fff68f7fe848742c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/01cb3105ba1da1e60fd80a635720e7df060467f698e86fbe7894ca8fbb018f61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_02:3 -> audio/generated/tr-TR/dialogues/057e9246758e19964d91071f88461826c6379592d7417b15efd3ef33e566d0dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6d0c259-d07f-59df-81ed-71f84e90ce63', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d6b1c2233f1c4024fb7324fca103bb5bae87a31357f17e61f89f304980bd0b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f072de21-42e8-5129-a394-7f0c77aff403', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6d0c259-d07f-59df-81ed-71f84e90ce63', 1), '9d6b1c2233f1c4024fb7324fca103bb5bae87a31357f17e61f89f304980bd0b1',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/057e9246758e19964d91071f88461826c6379592d7417b15efd3ef33e566d0dd.mp3', 1619, '2026-09-13 19:06:34.403144', '56e37f9a151fd327bb56e84d72d3353c3e0fc34e67e441bcc3555c23365cfcd1', 'validated', '{"audio_key":"057e9246758e19964d91071f88461826c6379592d7417b15efd3ef33e566d0dd","entity_key":"d_summarizing_viewpoints_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56e37f9a151fd327bb56e84d72d3353c3e0fc34e67e441bcc3555c23365cfcd1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/057e9246758e19964d91071f88461826c6379592d7417b15efd3ef33e566d0dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_01:4 -> audio/generated/tr-TR/dialogues/08f500d6ff6edd1b8ca5a62b9042d56308e07392430420a529e58daae0d48a38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2066160c-8cba-565d-b7c0-5181c73d1d89', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4da172563dcf96b7a20992e601c104b3de1e9bdb19af7ef8fe1530a13237b594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f36e532-5e1e-57d9-8f24-4b8b1e601ff7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2066160c-8cba-565d-b7c0-5181c73d1d89', 1), '4da172563dcf96b7a20992e601c104b3de1e9bdb19af7ef8fe1530a13237b594',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/08f500d6ff6edd1b8ca5a62b9042d56308e07392430420a529e58daae0d48a38.mp3', 2533, '2026-09-13 19:06:35.729665', '1df6217f96b06a6130aa9a1a5d528c6231d4f738e6c31abd7f2e6d021a952df9', 'validated', '{"audio_key":"08f500d6ff6edd1b8ca5a62b9042d56308e07392430420a529e58daae0d48a38","entity_key":"d_hypothetical_alternatives_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1df6217f96b06a6130aa9a1a5d528c6231d4f738e6c31abd7f2e6d021a952df9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/08f500d6ff6edd1b8ca5a62b9042d56308e07392430420a529e58daae0d48a38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_02:3 -> audio/generated/tr-TR/dialogues/101356148f7c61141cbf6b447a0d658a0e993a03d5776e279aaed6e4c629bc28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5f89a7c-459f-52bd-95ad-3d0a74bbacfd', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19c9dc5b11d47b5dcc766badd51370b357f6f4d0627c731b5a446596131ee6ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e2590cb-659e-5d18-8baf-5d04844bba0e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5f89a7c-459f-52bd-95ad-3d0a74bbacfd', 1), '19c9dc5b11d47b5dcc766badd51370b357f6f4d0627c731b5a446596131ee6ad',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/101356148f7c61141cbf6b447a0d658a0e993a03d5776e279aaed6e4c629bc28.mp3', 1515, '2026-09-13 19:06:35.668867', '1416abacf84fef3529f5e93a478434c61e748574179c40e3e81b00a69bfee17b', 'validated', '{"audio_key":"101356148f7c61141cbf6b447a0d658a0e993a03d5776e279aaed6e4c629bc28","entity_key":"d_hypothetical_alternatives_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1416abacf84fef3529f5e93a478434c61e748574179c40e3e81b00a69bfee17b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/101356148f7c61141cbf6b447a0d658a0e993a03d5776e279aaed6e4c629bc28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:2 -> audio/generated/tr-TR/dialogues/1a6876846563bc846c8f1a7f56c7aa1b335c5051ecc1aa7e2ac5b26479d11061.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4462d715-0c7a-50bf-ad6d-d3a51b5327b7', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a8cf9ee707c0206d9f3ddda03d142cb8c76375654a1ff50a75a795fcec22192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cb2641e-8c38-54a9-be10-a82fcadeaadf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4462d715-0c7a-50bf-ad6d-d3a51b5327b7', 1), '5a8cf9ee707c0206d9f3ddda03d142cb8c76375654a1ff50a75a795fcec22192',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1a6876846563bc846c8f1a7f56c7aa1b335c5051ecc1aa7e2ac5b26479d11061.mp3', 3056, '2026-09-13 19:06:37.054988', 'c07f35929e42ece4db4319f8db316c17ff66f7a5ad74cb8ceac4a85965f3700a', 'validated', '{"audio_key":"1a6876846563bc846c8f1a7f56c7aa1b335c5051ecc1aa7e2ac5b26479d11061","entity_key":"d_nuanced_stance_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c07f35929e42ece4db4319f8db316c17ff66f7a5ad74cb8ceac4a85965f3700a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/1a6876846563bc846c8f1a7f56c7aa1b335c5051ecc1aa7e2ac5b26479d11061.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:2 -> audio/generated/tr-TR/dialogues/1a85cc353990b32c90672f794973959095b9d19154e4d876a88a6810250840f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf461bce-5b4f-53bc-8e4e-7edb0ef8ae67', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fed57d67e6aedd7513aebd26ceca752f36834089749c96e6b0b4cf2877031dba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1503e214-5779-5f7d-9e30-cc81cb2eb07e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf461bce-5b4f-53bc-8e4e-7edb0ef8ae67', 1), 'fed57d67e6aedd7513aebd26ceca752f36834089749c96e6b0b4cf2877031dba',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1a85cc353990b32c90672f794973959095b9d19154e4d876a88a6810250840f4.mp3', 3604, '2026-09-13 19:06:37.013856', '0f40b9fb83211c8a50d1470207d19da4cabb1cca5aee59cddb0b6459536b19f6', 'validated', '{"audio_key":"1a85cc353990b32c90672f794973959095b9d19154e4d876a88a6810250840f4","entity_key":"d_nuanced_stance_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0f40b9fb83211c8a50d1470207d19da4cabb1cca5aee59cddb0b6459536b19f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1a85cc353990b32c90672f794973959095b9d19154e4d876a88a6810250840f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_01:3 -> audio/generated/tr-TR/dialogues/1b8db667f6b45ccdfcb95998475f7ee3ad9cd87fc1a56854ea5b33efe117cf42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a700681a-71cd-5a10-9b79-1c23a7144e57', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29e3345c2716aa16591e899a315acc3fce6c010b0a16f3a7edec7f3196648535'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71b5ae7a-e0ed-5608-a9dc-b048e627e236', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a700681a-71cd-5a10-9b79-1c23a7144e57', 1), '29e3345c2716aa16591e899a315acc3fce6c010b0a16f3a7edec7f3196648535',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b8db667f6b45ccdfcb95998475f7ee3ad9cd87fc1a56854ea5b33efe117cf42.mp3', 2768, '2026-09-13 19:06:38.376193', 'cef70f263ba4e5f62f8f9219b5a4d992b27e9348a85d94c54b356ad01122b7a5', 'validated', '{"audio_key":"1b8db667f6b45ccdfcb95998475f7ee3ad9cd87fc1a56854ea5b33efe117cf42","entity_key":"d_b2_community_forum_capstone_01:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cef70f263ba4e5f62f8f9219b5a4d992b27e9348a85d94c54b356ad01122b7a5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/1b8db667f6b45ccdfcb95998475f7ee3ad9cd87fc1a56854ea5b33efe117cf42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_02:2 -> audio/generated/tr-TR/dialogues/1c5813f53a4b25eacf80c6c89fe14798dcdbae6840dd1869c412f5000ef9cbe3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95a029bc-2df0-51e4-819b-ba0e749eb59a', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d345d0e805d919f6bb53e6750a69023d98bb68b6df685c99772d4811dc38420'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1fba2d3-87ca-581b-bf48-82561b31c06c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95a029bc-2df0-51e4-819b-ba0e749eb59a', 1), '9d345d0e805d919f6bb53e6750a69023d98bb68b6df685c99772d4811dc38420',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1c5813f53a4b25eacf80c6c89fe14798dcdbae6840dd1869c412f5000ef9cbe3.mp3', 4022, '2026-09-13 19:06:38.344808', '70bc605a3b6eb9a7ac95aad95b7a3022bcb2678e77da3d5b6bb751b1a5271a46', 'validated', '{"audio_key":"1c5813f53a4b25eacf80c6c89fe14798dcdbae6840dd1869c412f5000ef9cbe3","entity_key":"d_hypothetical_alternatives_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70bc605a3b6eb9a7ac95aad95b7a3022bcb2678e77da3d5b6bb751b1a5271a46","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1c5813f53a4b25eacf80c6c89fe14798dcdbae6840dd1869c412f5000ef9cbe3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_02:3 -> audio/generated/tr-TR/dialogues/1f2b3db22d29853dde538a03e164d2ae22506612b4940ed5a061c2d8006621f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9eff9b29-cc5a-5e5c-bea6-78db4b654d58', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49916c7b1c4d88176de1444716434497b507c1dfd0e7f081ee136770749eb52d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9706457e-491b-5370-a925-04c184bd818c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9eff9b29-cc5a-5e5c-bea6-78db4b654d58', 1), '49916c7b1c4d88176de1444716434497b507c1dfd0e7f081ee136770749eb52d',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1f2b3db22d29853dde538a03e164d2ae22506612b4940ed5a061c2d8006621f6.mp3', 2089, '2026-09-13 19:06:39.441868', '2caf076f64c5085713097cbf5394c2e915d5c9317a8f662a44021a296eeffbf6', 'validated', '{"audio_key":"1f2b3db22d29853dde538a03e164d2ae22506612b4940ed5a061c2d8006621f6","entity_key":"d_inference_and_evidence_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2caf076f64c5085713097cbf5394c2e915d5c9317a8f662a44021a296eeffbf6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1f2b3db22d29853dde538a03e164d2ae22506612b4940ed5a061c2d8006621f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_01:2 -> audio/generated/tr-TR/dialogues/27ced1e3dce1983a831eeae4914212f6259f755f4c2d9ffb221876298d2dc4e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ae2ca32-b9b6-5acb-b7e1-dd60f1724040', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5674bcd74e1e5fdd2f611b972758f6e4fc88693c1aaeacb00f9d342faf0b6be5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3428197-29e2-5c08-9fda-2aae62d3871d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ae2ca32-b9b6-5acb-b7e1-dd60f1724040', 1), '5674bcd74e1e5fdd2f611b972758f6e4fc88693c1aaeacb00f9d342faf0b6be5',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/27ced1e3dce1983a831eeae4914212f6259f755f4c2d9ffb221876298d2dc4e8.mp3', 4623, '2026-09-13 19:06:39.896296', '4f5cca42dc1d636cd1095bd6ccf37d2a1d33ff73a139ee833bc7f2b93626bedc', 'validated', '{"audio_key":"27ced1e3dce1983a831eeae4914212f6259f755f4c2d9ffb221876298d2dc4e8","entity_key":"d_causes_and_consequences_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f5cca42dc1d636cd1095bd6ccf37d2a1d33ff73a139ee833bc7f2b93626bedc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/27ced1e3dce1983a831eeae4914212f6259f755f4c2d9ffb221876298d2dc4e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_01:3 -> audio/generated/tr-TR/dialogues/286aa581957e8f1a18790cbbbd1a7a8d4df7044560dced850ff67c0e7e51ffab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f2bb047b-7864-5ffe-b66f-98a9bd6033bf', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '398df3d3be45e604c9b8e5ac6b9a71a601a435ac7fe289eb682fceee0ff6eab3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f59caf7b-c790-5ca3-90c0-7708e2805866', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f2bb047b-7864-5ffe-b66f-98a9bd6033bf', 1), '398df3d3be45e604c9b8e5ac6b9a71a601a435ac7fe289eb682fceee0ff6eab3',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/286aa581957e8f1a18790cbbbd1a7a8d4df7044560dced850ff67c0e7e51ffab.mp3', 2220, '2026-09-13 19:06:40.696094', '8b2e82ae114de7364a3dad8d0fdb2cf717377562d19c9af4b9a77ffb529d5c30', 'validated', '{"audio_key":"286aa581957e8f1a18790cbbbd1a7a8d4df7044560dced850ff67c0e7e51ffab","entity_key":"d_inference_and_evidence_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b2e82ae114de7364a3dad8d0fdb2cf717377562d19c9af4b9a77ffb529d5c30","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/286aa581957e8f1a18790cbbbd1a7a8d4df7044560dced850ff67c0e7e51ffab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:3 -> audio/generated/tr-TR/dialogues/2bbbc4ac0a6b74ed145f20ae3cb285aaf56ac37f6a7da7bfa989d6033e961eba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5fca2ca-2022-5961-b4c3-58763889c861', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4db4da20aa51220f167a71efff596d19dfdf5df64290c6c221c21b1a68f92f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ed59a3-0a48-5edf-8d19-44d24ab83f59', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5fca2ca-2022-5961-b4c3-58763889c861', 1), 'fe4db4da20aa51220f167a71efff596d19dfdf5df64290c6c221c21b1a68f92f',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2bbbc4ac0a6b74ed145f20ae3cb285aaf56ac37f6a7da7bfa989d6033e961eba.mp3', 1515, '2026-09-13 19:06:40.957199', 'a885652b6d75598f6e2aa0093c0149f7cf1def30e32c7c3ec8d86d957eb50bc0', 'validated', '{"audio_key":"2bbbc4ac0a6b74ed145f20ae3cb285aaf56ac37f6a7da7bfa989d6033e961eba","entity_key":"d_nuanced_stance_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a885652b6d75598f6e2aa0093c0149f7cf1def30e32c7c3ec8d86d957eb50bc0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2bbbc4ac0a6b74ed145f20ae3cb285aaf56ac37f6a7da7bfa989d6033e961eba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_02:1 -> audio/generated/tr-TR/dialogues/2c740984c199b54a64fa5f0f7e4cf728886c33d05e9147f152dc884526143f2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f311fce-6317-535c-bfb9-ada46104487c', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a96cee633a6b18365cfe4833d11820563d64a3ba80c36a5d8cb17dab45d9387'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05fe0788-de49-5d84-b356-2e6ce354dfee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f311fce-6317-535c-bfb9-ada46104487c', 1), '3a96cee633a6b18365cfe4833d11820563d64a3ba80c36a5d8cb17dab45d9387',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2c740984c199b54a64fa5f0f7e4cf728886c33d05e9147f152dc884526143f2f.mp3', 2403, '2026-09-13 19:06:41.822800', '07cd92da2974357deebf732974dd2dd373bb8229f006761884d43871ce158f4c', 'validated', '{"audio_key":"2c740984c199b54a64fa5f0f7e4cf728886c33d05e9147f152dc884526143f2f","entity_key":"d_hypothetical_alternatives_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07cd92da2974357deebf732974dd2dd373bb8229f006761884d43871ce158f4c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2c740984c199b54a64fa5f0f7e4cf728886c33d05e9147f152dc884526143f2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:4 -> audio/generated/tr-TR/dialogues/34d66cedfdf5577944f6f173df407871d8ea0d2cf512a6193f87164ba5510397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4da407ae-1cae-57cd-bb7f-eee9393ef972', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25599427863b64a38ec74676c98783a370602262ea1f94e0b9da190a34012b8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de2eebf8-dde0-52cc-965c-d6de630ce10d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4da407ae-1cae-57cd-bb7f-eee9393ef972', 1), '25599427863b64a38ec74676c98783a370602262ea1f94e0b9da190a34012b8c',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/34d66cedfdf5577944f6f173df407871d8ea0d2cf512a6193f87164ba5510397.mp3', 2742, '2026-09-13 19:06:42.124186', '578a98d5c66cf483257d2349d0ad4fd69cfc4ba1a0a76103b573bf157ac29fd9', 'validated', '{"audio_key":"34d66cedfdf5577944f6f173df407871d8ea0d2cf512a6193f87164ba5510397","entity_key":"d_nuanced_stance_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"578a98d5c66cf483257d2349d0ad4fd69cfc4ba1a0a76103b573bf157ac29fd9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/34d66cedfdf5577944f6f173df407871d8ea0d2cf512a6193f87164ba5510397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:3 -> audio/generated/tr-TR/dialogues/3747da26edbec5fde5504f61dae4856650639ee22c76c8e27006944172ebe874.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e38957e-ee3d-5020-932a-f5ff32d9394f', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ffd6814c432f49cb3481efe47a06b7f2a508f6a17d02666d125c3303a4c7cb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c64a7b2-5968-5de5-974b-15ef206fd162', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e38957e-ee3d-5020-932a-f5ff32d9394f', 1), '6ffd6814c432f49cb3481efe47a06b7f2a508f6a17d02666d125c3303a4c7cb0',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3747da26edbec5fde5504f61dae4856650639ee22c76c8e27006944172ebe874.mp3', 1436, '2026-09-13 19:06:42.863979', '1417308ba689689b39ef12036ffb4531eb55a9e516e538f21a36225f98e0aa2e', 'validated', '{"audio_key":"3747da26edbec5fde5504f61dae4856650639ee22c76c8e27006944172ebe874","entity_key":"d_nuanced_stance_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1417308ba689689b39ef12036ffb4531eb55a9e516e538f21a36225f98e0aa2e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3747da26edbec5fde5504f61dae4856650639ee22c76c8e27006944172ebe874.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_02:2 -> audio/generated/tr-TR/dialogues/375f5642d23355ad8d0b9e049ca5554d1c74ad349adad92202850e78a648c314.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f9d0d40-1c46-5c75-a527-0cbbc881a7fc', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '669ad7f962a706364a90fb0009f2b9cbeb732601b52c5ce6bfc5f4e547cbf7ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('778c618b-42fe-59a8-84a9-080881f6d4f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f9d0d40-1c46-5c75-a527-0cbbc881a7fc', 1), '669ad7f962a706364a90fb0009f2b9cbeb732601b52c5ce6bfc5f4e547cbf7ea',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/375f5642d23355ad8d0b9e049ca5554d1c74ad349adad92202850e78a648c314.mp3', 2351, '2026-09-13 19:06:43.302946', '1c49f4748d832103c9c1e515835f670f947b62e16cdbead5f9c5febb104c9e30', 'validated', '{"audio_key":"375f5642d23355ad8d0b9e049ca5554d1c74ad349adad92202850e78a648c314","entity_key":"d_relative_detail_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"1c49f4748d832103c9c1e515835f670f947b62e16cdbead5f9c5febb104c9e30","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/375f5642d23355ad8d0b9e049ca5554d1c74ad349adad92202850e78a648c314.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_01:4 -> audio/generated/tr-TR/dialogues/4e7c3d0a404376aaf1b54bff46e71635ac48b5ec4151571ab868a48dbc4bedb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0b5cc59-86f8-50dc-9bfe-9120c2cfd0e8', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8937e20db641cf77670c0b0a8ee9033e193257e0476a9d6719c17aba5a88c028'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf4a7c8f-01e4-5d2c-be62-34f80c204ea7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0b5cc59-86f8-50dc-9bfe-9120c2cfd0e8', 1), '8937e20db641cf77670c0b0a8ee9033e193257e0476a9d6719c17aba5a88c028',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4e7c3d0a404376aaf1b54bff46e71635ac48b5ec4151571ab868a48dbc4bedb5.mp3', 3239, '2026-09-13 19:06:44.095873', '381bcbeaf8c9e6214cfdd0ac7bf49897941c9ab64fda3af36c2eaaf791a54fc1', 'validated', '{"audio_key":"4e7c3d0a404376aaf1b54bff46e71635ac48b5ec4151571ab868a48dbc4bedb5","entity_key":"d_summarizing_viewpoints_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"381bcbeaf8c9e6214cfdd0ac7bf49897941c9ab64fda3af36c2eaaf791a54fc1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4e7c3d0a404376aaf1b54bff46e71635ac48b5ec4151571ab868a48dbc4bedb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_02:3 -> audio/generated/tr-TR/dialogues/4f3daa4a17f9aef4c3dd068fb430f55083d3c1719fb1c25d91c35e072a87b749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ceee797-2942-5af2-b81f-ea831f766883', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '236a606d06e1580851fd638d04dfd3fe89d9a9ab7cd95bdef0bc177b7926a591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a4d783f-22df-5a0e-8279-68fd642ceb57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ceee797-2942-5af2-b81f-ea831f766883', 1), '236a606d06e1580851fd638d04dfd3fe89d9a9ab7cd95bdef0bc177b7926a591',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4f3daa4a17f9aef4c3dd068fb430f55083d3c1719fb1c25d91c35e072a87b749.mp3', 1697, '2026-09-13 19:06:44.324301', '65a31d520e533efd70d693fe2fa57bda3e3f4d9a0cd25e21db1df6caadc741ec', 'validated', '{"audio_key":"4f3daa4a17f9aef4c3dd068fb430f55083d3c1719fb1c25d91c35e072a87b749","entity_key":"d_passive_processes_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65a31d520e533efd70d693fe2fa57bda3e3f4d9a0cd25e21db1df6caadc741ec","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4f3daa4a17f9aef4c3dd068fb430f55083d3c1719fb1c25d91c35e072a87b749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_02:3 -> audio/generated/tr-TR/dialogues/50ab5e36fcb172ecee5e7c3ff402e9cca1dac3cf9a7329286d80f1f0d2b4c09b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fee7deb5-3799-5a79-9dca-45fcdec80971', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a9433f0e36fc408832a8592fbbb4a1a8ad5cedbcd3d808bb7513306ba6021b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e27233e-7430-56b4-a056-c1775b4b222c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fee7deb5-3799-5a79-9dca-45fcdec80971', 1), '2a9433f0e36fc408832a8592fbbb4a1a8ad5cedbcd3d808bb7513306ba6021b8',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/50ab5e36fcb172ecee5e7c3ff402e9cca1dac3cf9a7329286d80f1f0d2b4c09b.mp3', 2324, '2026-09-13 19:06:45.212749', '7d74e1256698de6694b49e9a4a7913d5cff9d7507ee33901a151185b570229d9', 'validated', '{"audio_key":"50ab5e36fcb172ecee5e7c3ff402e9cca1dac3cf9a7329286d80f1f0d2b4c09b","entity_key":"d_causes_and_consequences_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d74e1256698de6694b49e9a4a7913d5cff9d7507ee33901a151185b570229d9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/50ab5e36fcb172ecee5e7c3ff402e9cca1dac3cf9a7329286d80f1f0d2b4c09b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_01:3 -> audio/generated/tr-TR/dialogues/51e6b7b208bea4b237a06481ca939cd14f8cefde5f41cde55b6595977c840445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f14658de-4646-558f-9d11-4c6841b80523', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c141cbb9351e8e220a8e7b4c0618c9affcae7e8ce5db8b790d6e3d48a6e5d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90b372a2-8c58-586e-bba0-8e7b37cadbb5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f14658de-4646-558f-9d11-4c6841b80523', 1), '60c141cbb9351e8e220a8e7b4c0618c9affcae7e8ce5db8b790d6e3d48a6e5d1',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/51e6b7b208bea4b237a06481ca939cd14f8cefde5f41cde55b6595977c840445.mp3', 1854, '2026-09-13 19:06:45.443807', '39d33cdc19fe30dd9f5975ce8a7532cb4db38e2d9128cddcc0c3730e66353ce8', 'validated', '{"audio_key":"51e6b7b208bea4b237a06481ca939cd14f8cefde5f41cde55b6595977c840445","entity_key":"d_summarizing_viewpoints_01:3","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"39d33cdc19fe30dd9f5975ce8a7532cb4db38e2d9128cddcc0c3730e66353ce8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/51e6b7b208bea4b237a06481ca939cd14f8cefde5f41cde55b6595977c840445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:1 -> audio/generated/tr-TR/dialogues/5289f99087c394a8a0a29d9503ff2c4696f15d5419fc25e5da30b6eae36e28ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3ca84f6-17cc-5dd5-970c-80b96ba5232f', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fc3130de7e4b4a84efae8a602447db248f0716d02acd06fabf2155177cc9b9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7858b3d8-557e-5ee9-8d98-1be457463104', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3ca84f6-17cc-5dd5-970c-80b96ba5232f', 1), '5fc3130de7e4b4a84efae8a602447db248f0716d02acd06fabf2155177cc9b9e',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5289f99087c394a8a0a29d9503ff2c4696f15d5419fc25e5da30b6eae36e28ad.mp3', 2220, '2026-09-13 19:06:46.246220', 'ebd51220552f3e8dc84026765fd32d1c5f66d3d96b8df76d401c63610d70e0e6', 'validated', '{"audio_key":"5289f99087c394a8a0a29d9503ff2c4696f15d5419fc25e5da30b6eae36e28ad","entity_key":"d_formal_negotiation_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebd51220552f3e8dc84026765fd32d1c5f66d3d96b8df76d401c63610d70e0e6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5289f99087c394a8a0a29d9503ff2c4696f15d5419fc25e5da30b6eae36e28ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_01:4 -> audio/generated/tr-TR/dialogues/5632b879c18613de9f1586aef702ee846e1554957688a3df70786f1776693c54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30c140ce-7119-5c7c-8641-fe0085c4d8a0', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5840d501f1ac31f01a4e853a0eb2055ef30c1746112335a371766098f0cf4c3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16f9aa2c-e212-5028-9d02-6ecddf3afee8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30c140ce-7119-5c7c-8641-fe0085c4d8a0', 1), '5840d501f1ac31f01a4e853a0eb2055ef30c1746112335a371766098f0cf4c3a',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5632b879c18613de9f1586aef702ee846e1554957688a3df70786f1776693c54.mp3', 3056, '2026-09-13 19:06:46.668530', '7529696a68a993b1862e99cb0fb2a49d135f88b869fef98dbe9363592fc75aaa', 'validated', '{"audio_key":"5632b879c18613de9f1586aef702ee846e1554957688a3df70786f1776693c54","entity_key":"d_inference_and_evidence_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"7529696a68a993b1862e99cb0fb2a49d135f88b869fef98dbe9363592fc75aaa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5632b879c18613de9f1586aef702ee846e1554957688a3df70786f1776693c54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_02:1 -> audio/generated/tr-TR/dialogues/57e42cc17005abc3988f10498acd95e04f10b4b6d02a1bb83d2b0be4b96224ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ded06ccb-dda6-53f8-8607-657b2ffdfc5a', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '678a5844756e7fce6fd9781ec9fe84a622c899919d5f8db46ce462f21c80c0ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1c2ccc6-5070-5081-b8c9-6233264eb793', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ded06ccb-dda6-53f8-8607-657b2ffdfc5a', 1), '678a5844756e7fce6fd9781ec9fe84a622c899919d5f8db46ce462f21c80c0ef',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/57e42cc17005abc3988f10498acd95e04f10b4b6d02a1bb83d2b0be4b96224ac.mp3', 1671, '2026-09-13 19:06:47.339228', '03d467f656584398d8170b20aa84b0a77a44782009ef360f69b9b0d5f47da248', 'validated', '{"audio_key":"57e42cc17005abc3988f10498acd95e04f10b4b6d02a1bb83d2b0be4b96224ac","entity_key":"d_relative_detail_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03d467f656584398d8170b20aa84b0a77a44782009ef360f69b9b0d5f47da248","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/57e42cc17005abc3988f10498acd95e04f10b4b6d02a1bb83d2b0be4b96224ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_01:4 -> audio/generated/tr-TR/dialogues/59bd49488cbc0fdace39655b102822c1f289e6470336652f5dc6112484e8e6eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6e4cb41-75e1-5907-aed6-9e6bc13ef654', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '586b10401a7b5e6f7c068382c019834a8bb875cba436769feea6ea30f453a30b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc8f7388-a18b-59c0-87e3-970d8f56a9fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6e4cb41-75e1-5907-aed6-9e6bc13ef654', 1), '586b10401a7b5e6f7c068382c019834a8bb875cba436769feea6ea30f453a30b',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/59bd49488cbc0fdace39655b102822c1f289e6470336652f5dc6112484e8e6eb.mp3', 2768, '2026-09-13 19:06:47.844809', '3e5f87aab43b554a9277e16c9f6e205a4d3a56dab7184d8953bbcb236a1856b2', 'validated', '{"audio_key":"59bd49488cbc0fdace39655b102822c1f289e6470336652f5dc6112484e8e6eb","entity_key":"d_b2_community_forum_capstone_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e5f87aab43b554a9277e16c9f6e205a4d3a56dab7184d8953bbcb236a1856b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/59bd49488cbc0fdace39655b102822c1f289e6470336652f5dc6112484e8e6eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_01:1 -> audio/generated/tr-TR/dialogues/5d8bd89e1029f42ee8bb61d076df5c98f60544173c7f77074e90a8e6ebc6a134.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a7b6a8d-6ada-5e37-a2d4-bf13da35f26b', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e5cbb842b0f53508e3e44678a9c1cfc254b00a56f91582e1859b2a30cad07ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd4e31be-b61f-5ace-840a-50170d98012b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a7b6a8d-6ada-5e37-a2d4-bf13da35f26b', 1), '8e5cbb842b0f53508e3e44678a9c1cfc254b00a56f91582e1859b2a30cad07ce',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5d8bd89e1029f42ee8bb61d076df5c98f60544173c7f77074e90a8e6ebc6a134.mp3', 2272, '2026-09-13 19:06:48.690380', 'aa3db6700fdda7a055da8e34f30b69bdff39c580a4f129bec395b57f7ba15f20', 'validated', '{"audio_key":"5d8bd89e1029f42ee8bb61d076df5c98f60544173c7f77074e90a8e6ebc6a134","entity_key":"d_summarizing_viewpoints_01:1","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"aa3db6700fdda7a055da8e34f30b69bdff39c580a4f129bec395b57f7ba15f20","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5d8bd89e1029f42ee8bb61d076df5c98f60544173c7f77074e90a8e6ebc6a134.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:4 -> audio/generated/tr-TR/dialogues/5ed1f65af46741d8512a5c9b97cd9ab6e06eb5728947ca0974f6950b60b97798.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb510d2b-8b85-5499-aa2a-dc2889f12cb5', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61bdf1a3bedf8ced00a949934a472879dc763a2a062bd19ebf0eb04a36c1f92d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a3282a6-2ba0-516d-8b9a-8e9019c981c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb510d2b-8b85-5499-aa2a-dc2889f12cb5', 1), '61bdf1a3bedf8ced00a949934a472879dc763a2a062bd19ebf0eb04a36c1f92d',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5ed1f65af46741d8512a5c9b97cd9ab6e06eb5728947ca0974f6950b60b97798.mp3', 1933, '2026-09-13 19:06:48.877172', '04e55ad79bb269be89c46430f3a4d07d729e486d5fd8753c6dcc4dc88620fbf2', 'validated', '{"audio_key":"5ed1f65af46741d8512a5c9b97cd9ab6e06eb5728947ca0974f6950b60b97798","entity_key":"d_concession_and_disagreement_02:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04e55ad79bb269be89c46430f3a4d07d729e486d5fd8753c6dcc4dc88620fbf2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5ed1f65af46741d8512a5c9b97cd9ab6e06eb5728947ca0974f6950b60b97798.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_02:4 -> audio/generated/tr-TR/dialogues/626fc035013f58d282f15101cd6fdb411f66b4cbdd7e6afdbb17906c62c17d0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b9d811b-9e39-53e1-aa63-0352fc4e3b55', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a691e091b0b31f411d24fdd6c06b72b431d5dbf3b70a13e1b4acacde8450f93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6f80637-caa1-5594-bacc-22d901be93d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b9d811b-9e39-53e1-aa63-0352fc4e3b55', 1), '7a691e091b0b31f411d24fdd6c06b72b431d5dbf3b70a13e1b4acacde8450f93',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/626fc035013f58d282f15101cd6fdb411f66b4cbdd7e6afdbb17906c62c17d0c.mp3', 3369, '2026-09-13 19:06:50.233141', '918ec8b6682c94c239f538c09165ea404fea9d66d48728ff26d3503c425460fd', 'validated', '{"audio_key":"626fc035013f58d282f15101cd6fdb411f66b4cbdd7e6afdbb17906c62c17d0c","entity_key":"d_inference_and_evidence_02:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"918ec8b6682c94c239f538c09165ea404fea9d66d48728ff26d3503c425460fd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/626fc035013f58d282f15101cd6fdb411f66b4cbdd7e6afdbb17906c62c17d0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:4 -> audio/generated/tr-TR/dialogues/65da089b2f89109f89a7a9efa2c721545c9412c5289df1748b619775e713d5be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c39760f-95a8-53d7-baae-e607145ac3e3', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f1bee95c8589ebcdc43d93f39c22319feb39197c6fb8a7fea45a37ae9729100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('516792d6-2027-513e-b31c-e75445d285ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c39760f-95a8-53d7-baae-e607145ac3e3', 1), '4f1bee95c8589ebcdc43d93f39c22319feb39197c6fb8a7fea45a37ae9729100',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/65da089b2f89109f89a7a9efa2c721545c9412c5289df1748b619775e713d5be.mp3', 2586, '2026-09-13 19:06:49.985403', '27294d6677ee7cb57c5f378a6de12a4e6eb214abda4fadf52bd4457dc4559c14', 'validated', '{"audio_key":"65da089b2f89109f89a7a9efa2c721545c9412c5289df1748b619775e713d5be","entity_key":"d_formal_negotiation_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"27294d6677ee7cb57c5f378a6de12a4e6eb214abda4fadf52bd4457dc4559c14","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/65da089b2f89109f89a7a9efa2c721545c9412c5289df1748b619775e713d5be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:3 -> audio/generated/tr-TR/dialogues/691b9d19fed3d03530a574a9e1e47f6218a36507a4d170832192a729fe11d2cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3be78bdb-f961-516d-9141-a0b02a4aef38', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2486d80921a3893cf225180bca23e8b4da33ae2f1428b2c25cb02a03b45c1508'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9eea5f58-96f1-5171-8318-39bc9993aa33', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3be78bdb-f961-516d-9141-a0b02a4aef38', 1), '2486d80921a3893cf225180bca23e8b4da33ae2f1428b2c25cb02a03b45c1508',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/691b9d19fed3d03530a574a9e1e47f6218a36507a4d170832192a729fe11d2cd.mp3', 2115, '2026-09-13 19:06:51.086790', 'f6b8a812fdc215e25055b04473b77a2115020c9c3a412859fd684c3e0faf5f54', 'validated', '{"audio_key":"691b9d19fed3d03530a574a9e1e47f6218a36507a4d170832192a729fe11d2cd","entity_key":"d_formal_negotiation_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6b8a812fdc215e25055b04473b77a2115020c9c3a412859fd684c3e0faf5f54","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/691b9d19fed3d03530a574a9e1e47f6218a36507a4d170832192a729fe11d2cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_02:4 -> audio/generated/tr-TR/dialogues/708b8249d06cf5aae1bc9ae4f213df44e036239824ff5e1744359dfe53ab6da3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bcd27563-b28a-5ba4-be6e-25dfd75d4556', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '200e9094248b317bffc434f8a8e7ffac03ee4f70cb792ebcd4e63c445bc14fbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b92e3a3-d92d-5b03-8b6f-c3f58a444995', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bcd27563-b28a-5ba4-be6e-25dfd75d4556', 1), '200e9094248b317bffc434f8a8e7ffac03ee4f70cb792ebcd4e63c445bc14fbb',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/708b8249d06cf5aae1bc9ae4f213df44e036239824ff5e1744359dfe53ab6da3.mp3', 1906, '2026-09-13 19:06:51.367693', '3de285e5873160c40a8197658639f7cb3fa0100895f3e481096d258e28ad160e', 'validated', '{"audio_key":"708b8249d06cf5aae1bc9ae4f213df44e036239824ff5e1744359dfe53ab6da3","entity_key":"d_passive_processes_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3de285e5873160c40a8197658639f7cb3fa0100895f3e481096d258e28ad160e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/708b8249d06cf5aae1bc9ae4f213df44e036239824ff5e1744359dfe53ab6da3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_01:2 -> audio/generated/tr-TR/dialogues/70b5953bc486b4386697789a1b6f62c40302ede99129f82e53adc8798f2c30e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d865bcb-bd20-5599-a2f8-198f8b745fb9', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '273cb3890bec3c179c07101caf213dde875a818f0fb4bbc287b91f48398ae238'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('718b084b-c26f-5fa8-8a78-c59cb0f091b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d865bcb-bd20-5599-a2f8-198f8b745fb9', 1), '273cb3890bec3c179c07101caf213dde875a818f0fb4bbc287b91f48398ae238',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/70b5953bc486b4386697789a1b6f62c40302ede99129f82e53adc8798f2c30e2.mp3', 3996, '2026-09-13 19:06:52.417137', '9c75c3507d28ae1a72e2969293e6005ce84a7015d754ecb6a4a6d8987557780c', 'validated', '{"audio_key":"70b5953bc486b4386697789a1b6f62c40302ede99129f82e53adc8798f2c30e2","entity_key":"d_summarizing_viewpoints_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c75c3507d28ae1a72e2969293e6005ce84a7015d754ecb6a4a6d8987557780c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/70b5953bc486b4386697789a1b6f62c40302ede99129f82e53adc8798f2c30e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_01:4 -> audio/generated/tr-TR/dialogues/7158753a5b6631cd80d8622c7c4d6682f9924cc0cfa6783b94185fa4c03078f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('41aa9302-3969-5b6c-95a3-e7556ea341c0', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56268ac1da85b4e3f64f2758ecb0215c9a1c1bdbb9e94b2be6e3f3b3cdb60dbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfa02417-0082-572c-abb3-53a5ea083e85', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('41aa9302-3969-5b6c-95a3-e7556ea341c0', 1), '56268ac1da85b4e3f64f2758ecb0215c9a1c1bdbb9e94b2be6e3f3b3cdb60dbd',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7158753a5b6631cd80d8622c7c4d6682f9924cc0cfa6783b94185fa4c03078f4.mp3', 3578, '2026-09-13 19:06:52.664903', 'cf9ce5feabc498eb7f0d9a3c0f0814e3b56ffdf924da24ab63d9a901e4d33366', 'validated', '{"audio_key":"7158753a5b6631cd80d8622c7c4d6682f9924cc0cfa6783b94185fa4c03078f4","entity_key":"d_causes_and_consequences_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf9ce5feabc498eb7f0d9a3c0f0814e3b56ffdf924da24ab63d9a901e4d33366","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/7158753a5b6631cd80d8622c7c4d6682f9924cc0cfa6783b94185fa4c03078f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_02:1 -> audio/generated/tr-TR/dialogues/71588febf2b36ae90438c6dae46ed647eab60cfc9b8f87b21a68a4f497b2ce86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('821b686d-d31e-57bf-8e34-bcd60e34a5ff', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08d440423d084c757c5545d254e193042d44477873ae6c52bb59b67604a78136'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21fa74bb-0adf-50e6-b240-c66b2fefac06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('821b686d-d31e-57bf-8e34-bcd60e34a5ff', 1), '08d440423d084c757c5545d254e193042d44477873ae6c52bb59b67604a78136',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/71588febf2b36ae90438c6dae46ed647eab60cfc9b8f87b21a68a4f497b2ce86.mp3', 1671, '2026-09-13 19:06:53.515160', '6e7520a6b363bb0ca4f0e133978f85ae1c809eaefff3d59063ffae0c83a149b9', 'validated', '{"audio_key":"71588febf2b36ae90438c6dae46ed647eab60cfc9b8f87b21a68a4f497b2ce86","entity_key":"d_inference_and_evidence_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e7520a6b363bb0ca4f0e133978f85ae1c809eaefff3d59063ffae0c83a149b9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/71588febf2b36ae90438c6dae46ed647eab60cfc9b8f87b21a68a4f497b2ce86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_02:1 -> audio/generated/tr-TR/dialogues/7305457132983761c82d17d0553d72291a91d004cdc3fe2ab4258135ff7f37c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74505d86-b884-509d-bc28-819df8a71fe3', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c9e6be9c799b338b2fb5f87519ad28fd38477361719d58f9fb45fb88db290ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d00f24a-2433-556a-83ba-f0df096f4506', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74505d86-b884-509d-bc28-819df8a71fe3', 1), '6c9e6be9c799b338b2fb5f87519ad28fd38477361719d58f9fb45fb88db290ab',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7305457132983761c82d17d0553d72291a91d004cdc3fe2ab4258135ff7f37c8.mp3', 2455, '2026-09-13 19:06:53.752906', '829802ff9e7feebc271d5ca3238e2a2f3229dfc59ddd44a2ec693b285dfff439', 'validated', '{"audio_key":"7305457132983761c82d17d0553d72291a91d004cdc3fe2ab4258135ff7f37c8","entity_key":"d_b2_community_forum_capstone_02:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"829802ff9e7feebc271d5ca3238e2a2f3229dfc59ddd44a2ec693b285dfff439","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7305457132983761c82d17d0553d72291a91d004cdc3fe2ab4258135ff7f37c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:2 -> audio/generated/tr-TR/dialogues/74f5200b3354b5e648d4adb25acf3f93bb10f8a6177b27bea70cdfcdf54961ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22309155-7739-5a38-8c7c-d597a555bdbb', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e65ca95b990915eaff2107fb151cf9109ac0f33760f9759528909990aeec6358'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f66da01-a5c2-5f54-9d93-16c4fb591ed6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22309155-7739-5a38-8c7c-d597a555bdbb', 1), 'e65ca95b990915eaff2107fb151cf9109ac0f33760f9759528909990aeec6358',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/74f5200b3354b5e648d4adb25acf3f93bb10f8a6177b27bea70cdfcdf54961ae.mp3', 2533, '2026-09-13 19:06:54.623220', 'fa0de7724ec76de284b7c92efb58ce4a71f17c414b523578698be7b4deac0645', 'validated', '{"audio_key":"74f5200b3354b5e648d4adb25acf3f93bb10f8a6177b27bea70cdfcdf54961ae","entity_key":"d_formal_negotiation_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa0de7724ec76de284b7c92efb58ce4a71f17c414b523578698be7b4deac0645","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/74f5200b3354b5e648d4adb25acf3f93bb10f8a6177b27bea70cdfcdf54961ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_02:2 -> audio/generated/tr-TR/dialogues/7883a8f852b356f43545c5865e8e190d9dce4a3a3cd4a8222f9da9df70e69270.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2b337f8e-0661-5d52-9ada-2b0eacccca55', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '246fea36b350d94d8a8dca2773b2a1109eaaecf22c631368224f072f11a4e1a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69aad666-fb9b-548b-9ed1-a9796dfcd6f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2b337f8e-0661-5d52-9ada-2b0eacccca55', 1), '246fea36b350d94d8a8dca2773b2a1109eaaecf22c631368224f072f11a4e1a0',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7883a8f852b356f43545c5865e8e190d9dce4a3a3cd4a8222f9da9df70e69270.mp3', 3160, '2026-09-13 19:06:54.965204', '8fdccd605536a6ce59f90e0282ca4ad98d793aad7753945c5eeb2c54992e506c', 'validated', '{"audio_key":"7883a8f852b356f43545c5865e8e190d9dce4a3a3cd4a8222f9da9df70e69270","entity_key":"d_causes_and_consequences_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"8fdccd605536a6ce59f90e0282ca4ad98d793aad7753945c5eeb2c54992e506c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/7883a8f852b356f43545c5865e8e190d9dce4a3a3cd4a8222f9da9df70e69270.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_02:4 -> audio/generated/tr-TR/dialogues/7b806478966f24e55943744e44a2c019743c9294d7d1095ca8adcd5301bd2960.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67dcfa00-1ddb-5d98-ba93-289e18852718', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee486eab47dc508d4234bd1928c89bc9c471d6adc2664d11fcc069e267967e95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e934d9dd-ece1-54c8-aa22-8f85d5aee8bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67dcfa00-1ddb-5d98-ba93-289e18852718', 1), 'ee486eab47dc508d4234bd1928c89bc9c471d6adc2664d11fcc069e267967e95',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7b806478966f24e55943744e44a2c019743c9294d7d1095ca8adcd5301bd2960.mp3', 3160, '2026-09-13 19:06:55.822946', 'bd6b01f30361512b06eba255282aef88e500ba13e3d09493f329caf3c37b573c', 'validated', '{"audio_key":"7b806478966f24e55943744e44a2c019743c9294d7d1095ca8adcd5301bd2960","entity_key":"d_relative_detail_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"bd6b01f30361512b06eba255282aef88e500ba13e3d09493f329caf3c37b573c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/7b806478966f24e55943744e44a2c019743c9294d7d1095ca8adcd5301bd2960.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_01:3 -> audio/generated/tr-TR/dialogues/7ccee8277063af7eb9f505370cba15b5710623f8b35e25c505647964e0468984.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f7217f2-2eb4-57c8-a0ad-0a43d7ca388b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3870bb16f5c4281fa348ca981c846045e4929b2418eb8ac0b64571daf9c4bfa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45ba84e0-71b1-579c-b4ed-9063ae853d77', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f7217f2-2eb4-57c8-a0ad-0a43d7ca388b', 1), '3870bb16f5c4281fa348ca981c846045e4929b2418eb8ac0b64571daf9c4bfa6',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7ccee8277063af7eb9f505370cba15b5710623f8b35e25c505647964e0468984.mp3', 1933, '2026-09-13 19:06:56.048320', '0cfab205e5d10e5c79c5f0f447d6444e66bd89bc5a470089ecfcbeb1296d6268', 'validated', '{"audio_key":"7ccee8277063af7eb9f505370cba15b5710623f8b35e25c505647964e0468984","entity_key":"d_relative_detail_01:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cfab205e5d10e5c79c5f0f447d6444e66bd89bc5a470089ecfcbeb1296d6268","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/7ccee8277063af7eb9f505370cba15b5710623f8b35e25c505647964e0468984.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_02:4 -> audio/generated/tr-TR/dialogues/7f03dc5020c16950a0494bacf1754bd18f1d6e2c42f3b74b565162c754b401a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c7aed55-8105-5c9d-b475-a400ad478b36', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24caa1a88aad3d4e40103018a327f6009ee54e8987102d24f244beebddd1950c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c51b6901-4e0a-5937-83a1-e939828c8263', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c7aed55-8105-5c9d-b475-a400ad478b36', 1), '24caa1a88aad3d4e40103018a327f6009ee54e8987102d24f244beebddd1950c',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7f03dc5020c16950a0494bacf1754bd18f1d6e2c42f3b74b565162c754b401a5.mp3', 2586, '2026-09-13 19:06:56.890618', 'f836f754fe6ea2cb0e5467f0dcfd6f324a499370bbbdc84dd13a0c36d59e156f', 'validated', '{"audio_key":"7f03dc5020c16950a0494bacf1754bd18f1d6e2c42f3b74b565162c754b401a5","entity_key":"d_summarizing_viewpoints_02:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f836f754fe6ea2cb0e5467f0dcfd6f324a499370bbbdc84dd13a0c36d59e156f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7f03dc5020c16950a0494bacf1754bd18f1d6e2c42f3b74b565162c754b401a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:2 -> audio/generated/tr-TR/dialogues/804a0c3d6765ddf8ea9b83c15bf6207c07c9056d106bb056a638c6ffaef3ef68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43e0ee18-7317-53ec-b5d2-c28630b858df', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0ee0d6abc9c2595d3fda5e8bff72a139f114b48593566554ce9f7df22c87133'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21a34f53-bf6d-5d1f-8638-ad18497859b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43e0ee18-7317-53ec-b5d2-c28630b858df', 1), 'c0ee0d6abc9c2595d3fda5e8bff72a139f114b48593566554ce9f7df22c87133',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/804a0c3d6765ddf8ea9b83c15bf6207c07c9056d106bb056a638c6ffaef3ef68.mp3', 4858, '2026-09-13 19:06:57.489361', '57601541866b69193c104a2b31fe6779380e1d4683dbb697e56cff89328c5155', 'validated', '{"audio_key":"804a0c3d6765ddf8ea9b83c15bf6207c07c9056d106bb056a638c6ffaef3ef68","entity_key":"d_concession_and_disagreement_02:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57601541866b69193c104a2b31fe6779380e1d4683dbb697e56cff89328c5155","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/804a0c3d6765ddf8ea9b83c15bf6207c07c9056d106bb056a638c6ffaef3ef68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:4 -> audio/generated/tr-TR/dialogues/897b801f8c824abcac92b8276555a8dc9d1d389567eb6dcba58fa2cbf85892b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b965f742-6e35-5c76-adc9-36f378d1e333', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ed7169225aa1ff334f24daa93a304a49cebfb863cfb656ac6c60d7fce45ee10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6654f6d-530e-51ab-9c61-92b2a3dcd676', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b965f742-6e35-5c76-adc9-36f378d1e333', 1), '7ed7169225aa1ff334f24daa93a304a49cebfb863cfb656ac6c60d7fce45ee10',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/897b801f8c824abcac92b8276555a8dc9d1d389567eb6dcba58fa2cbf85892b0.mp3', 2272, '2026-09-13 19:06:57.963744', 'e5d28529c9bdf2f6369ae385eb77625537c7b72610a6f1a41f910f3ba6af7d23', 'validated', '{"audio_key":"897b801f8c824abcac92b8276555a8dc9d1d389567eb6dcba58fa2cbf85892b0","entity_key":"d_nuanced_stance_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e5d28529c9bdf2f6369ae385eb77625537c7b72610a6f1a41f910f3ba6af7d23","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/897b801f8c824abcac92b8276555a8dc9d1d389567eb6dcba58fa2cbf85892b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:1 -> audio/generated/tr-TR/dialogues/89cac6ce679cb58384207c4cca7e8b02c9f7e862393e269420c20720d4be36ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bf771c2-da0a-52cf-9e73-0f43953d48e5', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cad3dcf544074122bea1a62ccdbc183466a4dabd1410b322cbe40130674691c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d83ef899-a039-5148-a883-c3b3d9fa455a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bf771c2-da0a-52cf-9e73-0f43953d48e5', 1), 'cad3dcf544074122bea1a62ccdbc183466a4dabd1410b322cbe40130674691c1',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/89cac6ce679cb58384207c4cca7e8b02c9f7e862393e269420c20720d4be36ce.mp3', 2638, '2026-09-13 19:06:58.615116', '7d042aa3f66812efb7fd73a10b0c307dfab4b5c4a415bb367a6313c97ee00634', 'validated', '{"audio_key":"89cac6ce679cb58384207c4cca7e8b02c9f7e862393e269420c20720d4be36ce","entity_key":"d_formal_negotiation_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d042aa3f66812efb7fd73a10b0c307dfab4b5c4a415bb367a6313c97ee00634","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/89cac6ce679cb58384207c4cca7e8b02c9f7e862393e269420c20720d4be36ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_02:4 -> audio/generated/tr-TR/dialogues/8af07178f9a45c1f8987b02006f56e783b2967ca6d6d206d8765b11bdf8c5541.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c8a9bc93-8f52-5663-8444-c25be412302d', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '129f85b59773156c453f5ce2adb8a8483a4012526f4b9aca0f37df1a9c3a8c70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('523f9a07-411a-525e-aa02-2e2d89284f00', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c8a9bc93-8f52-5663-8444-c25be412302d', 1), '129f85b59773156c453f5ce2adb8a8483a4012526f4b9aca0f37df1a9c3a8c70',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8af07178f9a45c1f8987b02006f56e783b2967ca6d6d206d8765b11bdf8c5541.mp3', 2089, '2026-09-13 19:06:59.053566', 'b7fcc730d5378fb8b06d8558f8f91cf04b8adee5b9e3c773d0c0cfe6b00d3b84', 'validated', '{"audio_key":"8af07178f9a45c1f8987b02006f56e783b2967ca6d6d206d8765b11bdf8c5541","entity_key":"d_causes_and_consequences_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"b7fcc730d5378fb8b06d8558f8f91cf04b8adee5b9e3c773d0c0cfe6b00d3b84","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/8af07178f9a45c1f8987b02006f56e783b2967ca6d6d206d8765b11bdf8c5541.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_02:1 -> audio/generated/tr-TR/dialogues/9051e951cc947900717ab6b24c9f76c0cc7a3e84bf84ad217f8eba79f49859d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ed9b870e-1916-59d0-a2cc-c55a590d95a8', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f648ed86425dfbf119a9cdc0bca5a8b391c1109bc7d960215bd2cc3b2c68c30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc460e85-4a70-5a31-8138-7e2cbe918384', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ed9b870e-1916-59d0-a2cc-c55a590d95a8', 1), '5f648ed86425dfbf119a9cdc0bca5a8b391c1109bc7d960215bd2cc3b2c68c30',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9051e951cc947900717ab6b24c9f76c0cc7a3e84bf84ad217f8eba79f49859d8.mp3', 1750, '2026-09-13 19:06:59.640020', '86afe0395d0b1d200e1fb8f3caaffa33014903a6172a675247f83ba227c07120', 'validated', '{"audio_key":"9051e951cc947900717ab6b24c9f76c0cc7a3e84bf84ad217f8eba79f49859d8","entity_key":"d_summarizing_viewpoints_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86afe0395d0b1d200e1fb8f3caaffa33014903a6172a675247f83ba227c07120","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9051e951cc947900717ab6b24c9f76c0cc7a3e84bf84ad217f8eba79f49859d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_01:1 -> audio/generated/tr-TR/dialogues/924617421d9005e12683b3583c9f546e4060d03e0fe682375660f25122310113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76e2efe5-a5f1-5ca9-9b94-7393991841b2', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '219c631c6c6cf707584702ccb3c78b937c02d0d652f680f642a16e9d13c511e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12e86ee1-947a-5a6f-8749-0f4337256493', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76e2efe5-a5f1-5ca9-9b94-7393991841b2', 1), '219c631c6c6cf707584702ccb3c78b937c02d0d652f680f642a16e9d13c511e8',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/924617421d9005e12683b3583c9f546e4060d03e0fe682375660f25122310113.mp3', 2220, '2026-09-13 19:07:00.151878', '5a22a9c707789f8bb4cd0139627410727c63edc7b747664786cfd4c537c92875', 'validated', '{"audio_key":"924617421d9005e12683b3583c9f546e4060d03e0fe682375660f25122310113","entity_key":"d_relative_detail_01:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a22a9c707789f8bb4cd0139627410727c63edc7b747664786cfd4c537c92875","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/924617421d9005e12683b3583c9f546e4060d03e0fe682375660f25122310113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_01:3 -> audio/generated/tr-TR/dialogues/951b2ba806ddc271faac8b6cdbc8e1549e33a3d732b79812194d5cc9830dc079.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5870b673-bc47-5f99-b073-43cc066fa726', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b44befc03775e55a39dc66aa1c1c7a9ae378523c9e94b55599beaa1ece103c26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81a2b55a-f493-551d-80e5-db1e289b3aea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5870b673-bc47-5f99-b073-43cc066fa726', 1), 'b44befc03775e55a39dc66aa1c1c7a9ae378523c9e94b55599beaa1ece103c26',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/951b2ba806ddc271faac8b6cdbc8e1549e33a3d732b79812194d5cc9830dc079.mp3', 2037, '2026-09-13 19:07:00.677988', 'f1c4e08fe688a3ce03964fde7a86f1e0121f0e0e040f320b738e694048600791', 'validated', '{"audio_key":"951b2ba806ddc271faac8b6cdbc8e1549e33a3d732b79812194d5cc9830dc079","entity_key":"d_passive_processes_01:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1c4e08fe688a3ce03964fde7a86f1e0121f0e0e040f320b738e694048600791","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/951b2ba806ddc271faac8b6cdbc8e1549e33a3d732b79812194d5cc9830dc079.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_01:2 -> audio/generated/tr-TR/dialogues/973ecce575aaaf749ff635d60a0f3f23aca908baa716f3f4276e3e6030eb25a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7e2fe0d-464d-587a-a99a-6f1fe752ff5f', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b85dd0f3934f9aad624678633e7329ba731bf7b9e9f87c2e1d1513cce709776'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fe8b917-9218-55dd-9a17-f46ae1fb877e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7e2fe0d-464d-587a-a99a-6f1fe752ff5f', 1), '2b85dd0f3934f9aad624678633e7329ba731bf7b9e9f87c2e1d1513cce709776',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/973ecce575aaaf749ff635d60a0f3f23aca908baa716f3f4276e3e6030eb25a7.mp3', 3709, '2026-09-13 19:07:01.481023', 'd479e60d29b4ab40c270c2138ab7fd242a840751d29e49125e7f7cc2f5d262c1', 'validated', '{"audio_key":"973ecce575aaaf749ff635d60a0f3f23aca908baa716f3f4276e3e6030eb25a7","entity_key":"d_b2_community_forum_capstone_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d479e60d29b4ab40c270c2138ab7fd242a840751d29e49125e7f7cc2f5d262c1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/973ecce575aaaf749ff635d60a0f3f23aca908baa716f3f4276e3e6030eb25a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_01:1 -> audio/generated/tr-TR/dialogues/98b4aa503c890c225e4166fe064e4927f55f670801ee3fc34c1062e944d8468b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('57f44e38-1222-557c-87c9-b329bea16d96', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6ce4aa2314af8a2ce7fa56bb3eae36317a2048e292e199f9ef057f779df7609'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68ce8606-e642-53fa-9e8a-23646f5d28c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('57f44e38-1222-557c-87c9-b329bea16d96', 1), 'c6ce4aa2314af8a2ce7fa56bb3eae36317a2048e292e199f9ef057f779df7609',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/98b4aa503c890c225e4166fe064e4927f55f670801ee3fc34c1062e944d8468b.mp3', 3343, '2026-09-13 19:07:01.924731', '10936edfebe6cc786fdd1e8c91de2df6ecbdeca14f86fd504c5bb039ad0ad081', 'validated', '{"audio_key":"98b4aa503c890c225e4166fe064e4927f55f670801ee3fc34c1062e944d8468b","entity_key":"d_inference_and_evidence_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"10936edfebe6cc786fdd1e8c91de2df6ecbdeca14f86fd504c5bb039ad0ad081","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/98b4aa503c890c225e4166fe064e4927f55f670801ee3fc34c1062e944d8468b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_02:3 -> audio/generated/tr-TR/dialogues/9d9242484b1bf430414b2f43ab6b8c89c6f235fede3c477efa88f201e1e4aabd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d62a05a2-d3b3-5875-a7ca-e0756680324e', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd13ec25ad71bf038268bb89657a8d5f8131d9b4dd5be16b3e42396cddbb2ec65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe4279d3-ccea-5bd4-8341-406812a50e6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d62a05a2-d3b3-5875-a7ca-e0756680324e', 1), 'd13ec25ad71bf038268bb89657a8d5f8131d9b4dd5be16b3e42396cddbb2ec65',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9d9242484b1bf430414b2f43ab6b8c89c6f235fede3c477efa88f201e1e4aabd.mp3', 2168, '2026-09-13 19:07:02.544986', '37bd68e9d0021f61625f6c9ba7693e5d36f8eb6ef33115e5a87376f12b8e8c95', 'validated', '{"audio_key":"9d9242484b1bf430414b2f43ab6b8c89c6f235fede3c477efa88f201e1e4aabd","entity_key":"d_relative_detail_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"37bd68e9d0021f61625f6c9ba7693e5d36f8eb6ef33115e5a87376f12b8e8c95","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/9d9242484b1bf430414b2f43ab6b8c89c6f235fede3c477efa88f201e1e4aabd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_01:1 -> audio/generated/tr-TR/dialogues/9e835d7b1cf16f18e29baa0cb6dd1f56e92d80c615d0c9198256fce43dac4863.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82f2c66b-d1d0-54f7-9e44-e887b47b7cbb', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7ac346a68d6151f0507d9551bf6e2687cd52eaee333f25045e7afca2107896a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13fc8cc6-9434-5f89-a38c-2f885a6fc079', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82f2c66b-d1d0-54f7-9e44-e887b47b7cbb', 1), 'a7ac346a68d6151f0507d9551bf6e2687cd52eaee333f25045e7afca2107896a',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9e835d7b1cf16f18e29baa0cb6dd1f56e92d80c615d0c9198256fce43dac4863.mp3', 1985, '2026-09-13 19:07:03.007742', '00dc15d7fcbf7e5241133e5eff071ee65a672fbec78154a1a2167dfe79018a15', 'validated', '{"audio_key":"9e835d7b1cf16f18e29baa0cb6dd1f56e92d80c615d0c9198256fce43dac4863","entity_key":"d_causes_and_consequences_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00dc15d7fcbf7e5241133e5eff071ee65a672fbec78154a1a2167dfe79018a15","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9e835d7b1cf16f18e29baa0cb6dd1f56e92d80c615d0c9198256fce43dac4863.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:3 -> audio/generated/tr-TR/dialogues/a09179490fe9c7a1ee4d2346b27149c5f1bacf5fbcd216a5d8691265e3eee6b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('caf93f13-d366-57de-a036-cbebe861fbff', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8d444c1c24d64b5b614a702176cadda76ba17097376d42c40c27c1da466e506'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1cda6f6-8e32-561f-a325-d7cf794625b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('caf93f13-d366-57de-a036-cbebe861fbff', 1), 'e8d444c1c24d64b5b614a702176cadda76ba17097376d42c40c27c1da466e506',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a09179490fe9c7a1ee4d2346b27149c5f1bacf5fbcd216a5d8691265e3eee6b6.mp3', 1671, '2026-09-13 19:07:03.670071', 'f5e6a5154fbc1a1a7256a232b5f1cff07d4f0f4cd20018c291a61ff18b9fe174', 'validated', '{"audio_key":"a09179490fe9c7a1ee4d2346b27149c5f1bacf5fbcd216a5d8691265e3eee6b6","entity_key":"d_concession_and_disagreement_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5e6a5154fbc1a1a7256a232b5f1cff07d4f0f4cd20018c291a61ff18b9fe174","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/a09179490fe9c7a1ee4d2346b27149c5f1bacf5fbcd216a5d8691265e3eee6b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_01:2 -> audio/generated/tr-TR/dialogues/af8571b586e7b7eb097b2d266e6dffc71e5a894d9c1bd3b5d2e4b6385912311d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15547def-f318-55d8-8f6c-a1e141108d46', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd33be9cc9daa3ffd436b8776868dbfb272493f932f95f93474cca905c73cc921'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49e7b061-9fb9-5070-b46d-389cc025053a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15547def-f318-55d8-8f6c-a1e141108d46', 1), 'd33be9cc9daa3ffd436b8776868dbfb272493f932f95f93474cca905c73cc921',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/af8571b586e7b7eb097b2d266e6dffc71e5a894d9c1bd3b5d2e4b6385912311d.mp3', 2351, '2026-09-13 19:07:04.144039', 'ebb3fee68e7eeec5ec979c3841e52fcf1982fa76e7a94adf0c4a7ddf6b0576a6', 'validated', '{"audio_key":"af8571b586e7b7eb097b2d266e6dffc71e5a894d9c1bd3b5d2e4b6385912311d","entity_key":"d_hypothetical_alternatives_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ebb3fee68e7eeec5ec979c3841e52fcf1982fa76e7a94adf0c4a7ddf6b0576a6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/af8571b586e7b7eb097b2d266e6dffc71e5a894d9c1bd3b5d2e4b6385912311d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_02:1 -> audio/generated/tr-TR/dialogues/b1da41d86bb7cb91e1f654a9a38bae12bd79a45101b8bfa89f8aaaa2615501ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a05dd4fe-16a8-5fb8-8732-b2a1246fe26a', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69d29b004c7c6b59134198f374822f31fcb2113b6a090f46d422d99d2ea4ca13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efe9f71a-f149-552b-b75d-f05f9511546e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a05dd4fe-16a8-5fb8-8732-b2a1246fe26a', 1), '69d29b004c7c6b59134198f374822f31fcb2113b6a090f46d422d99d2ea4ca13',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b1da41d86bb7cb91e1f654a9a38bae12bd79a45101b8bfa89f8aaaa2615501ed.mp3', 2037, '2026-09-13 19:07:04.737785', 'ae40590bf3d001294e716799a98f45399310cb3000c844f073a5ec6541cd81bd', 'validated', '{"audio_key":"b1da41d86bb7cb91e1f654a9a38bae12bd79a45101b8bfa89f8aaaa2615501ed","entity_key":"d_causes_and_consequences_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae40590bf3d001294e716799a98f45399310cb3000c844f073a5ec6541cd81bd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b1da41d86bb7cb91e1f654a9a38bae12bd79a45101b8bfa89f8aaaa2615501ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_02:3 -> audio/generated/tr-TR/dialogues/b42287e84db5cf7fb91cceac7b558b041f04f62a68c3e9c64a5ab816f13e9a5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbfbcc29-3ca1-557c-bb7d-5ff4082d154b', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e39fe00b5a78bf0f649077c70b6f0813c36bb3e26fbef40d519c289c4d91e462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5bdb0e8-fdc7-583f-bb2d-9095ef704063', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbfbcc29-3ca1-557c-bb7d-5ff4082d154b', 1), 'e39fe00b5a78bf0f649077c70b6f0813c36bb3e26fbef40d519c289c4d91e462',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b42287e84db5cf7fb91cceac7b558b041f04f62a68c3e9c64a5ab816f13e9a5d.mp3', 2638, '2026-09-13 19:07:05.211260', '24fd02e099df5d780c9d573488c0920b79457b130255333b6e751767d2201a73', 'validated', '{"audio_key":"b42287e84db5cf7fb91cceac7b558b041f04f62a68c3e9c64a5ab816f13e9a5d","entity_key":"d_b2_community_forum_capstone_02:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24fd02e099df5d780c9d573488c0920b79457b130255333b6e751767d2201a73","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/b42287e84db5cf7fb91cceac7b558b041f04f62a68c3e9c64a5ab816f13e9a5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_02:1 -> audio/generated/tr-TR/dialogues/b51b80efd70ce1fe5f2ae62d633ad327f63a81906860e4c9f3b06de11cf8aac0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55c3f7fe-56c0-5af6-9158-e304eb17e437', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b366a64d3f6948d7c89c4bb37d5add86a76e436f5831e7dd63b06497549f7dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b54c8c0-27d4-5440-8edc-899670b12bf8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55c3f7fe-56c0-5af6-9158-e304eb17e437', 1), '3b366a64d3f6948d7c89c4bb37d5add86a76e436f5831e7dd63b06497549f7dc',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b51b80efd70ce1fe5f2ae62d633ad327f63a81906860e4c9f3b06de11cf8aac0.mp3', 1697, '2026-09-13 19:07:05.793320', 'f6208fb748f0fb82f9e0164fcf831415380e937edac15e37db25f34e8a30d19d', 'validated', '{"audio_key":"b51b80efd70ce1fe5f2ae62d633ad327f63a81906860e4c9f3b06de11cf8aac0","entity_key":"d_nuanced_stance_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6208fb748f0fb82f9e0164fcf831415380e937edac15e37db25f34e8a30d19d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b51b80efd70ce1fe5f2ae62d633ad327f63a81906860e4c9f3b06de11cf8aac0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:4 -> audio/generated/tr-TR/dialogues/b66041043f534c228313ce8b80bb03b213c9a6e8940bfdc0193b07955e32d1f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd776364-54ed-5ad4-aeca-4f849fe6cdff', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dccee9349de940aeef1abbbf7d7afed72a8e8372d2930a229ffe0ce445b466df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b30e80a-1d16-5308-aa0f-8b47804e9880', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd776364-54ed-5ad4-aeca-4f849fe6cdff', 1), 'dccee9349de940aeef1abbbf7d7afed72a8e8372d2930a229ffe0ce445b466df',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b66041043f534c228313ce8b80bb03b213c9a6e8940bfdc0193b07955e32d1f0.mp3', 2089, '2026-09-13 19:07:06.331938', '4d1f186958743145a7e2fa7b4f435b148049f994c4bfe6951479b31f03aa37db', 'validated', '{"audio_key":"b66041043f534c228313ce8b80bb03b213c9a6e8940bfdc0193b07955e32d1f0","entity_key":"d_formal_negotiation_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4d1f186958743145a7e2fa7b4f435b148049f994c4bfe6951479b31f03aa37db","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b66041043f534c228313ce8b80bb03b213c9a6e8940bfdc0193b07955e32d1f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_02:4 -> audio/generated/tr-TR/dialogues/ba4fc670ccacefcc16383b34745bac8a49059fe274408b813ced4aa1ff2c74fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5d213dcf-226e-56b8-ad6c-0ba9d1be59a9', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91741f639d5ae6753141645a078cb58aaf8808604685a7133647481a6805f149'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40e3ff3b-6e67-52e1-af7d-313fff3478bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5d213dcf-226e-56b8-ad6c-0ba9d1be59a9', 1), '91741f639d5ae6753141645a078cb58aaf8808604685a7133647481a6805f149',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ba4fc670ccacefcc16383b34745bac8a49059fe274408b813ced4aa1ff2c74fc.mp3', 2821, '2026-09-13 19:07:06.900379', '433149fca37dd8a61619ae50e44b2b31d2617c82d3a37b035b319310f1566318', 'validated', '{"audio_key":"ba4fc670ccacefcc16383b34745bac8a49059fe274408b813ced4aa1ff2c74fc","entity_key":"d_hypothetical_alternatives_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"433149fca37dd8a61619ae50e44b2b31d2617c82d3a37b035b319310f1566318","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/ba4fc670ccacefcc16383b34745bac8a49059fe274408b813ced4aa1ff2c74fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_01:2 -> audio/generated/tr-TR/dialogues/bbd251437061ee54d8ffab54fc7eab456676ff7b604bc8bdc216e95165a5cd88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ffcfa52-9682-56ab-ac06-cffc38798a5c', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c88439fd0a5fa1090308689d57cc5eaa4adece0dfa4e683d49b89312c4cd5186'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe7e6611-2316-554c-9383-bd511255818b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ffcfa52-9682-56ab-ac06-cffc38798a5c', 1), 'c88439fd0a5fa1090308689d57cc5eaa4adece0dfa4e683d49b89312c4cd5186',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bbd251437061ee54d8ffab54fc7eab456676ff7b604bc8bdc216e95165a5cd88.mp3', 3343, '2026-09-13 19:07:07.558861', '04e56d20426c139f805a88acfe3ad2a5b63de32755a7e598f43b66d0f38d2ccf', 'validated', '{"audio_key":"bbd251437061ee54d8ffab54fc7eab456676ff7b604bc8bdc216e95165a5cd88","entity_key":"d_passive_processes_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04e56d20426c139f805a88acfe3ad2a5b63de32755a7e598f43b66d0f38d2ccf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/bbd251437061ee54d8ffab54fc7eab456676ff7b604bc8bdc216e95165a5cd88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_01:1 -> audio/generated/tr-TR/dialogues/bcbb94bb268df2c7fa981a7d9ac92b2302565f4d06d89ac29421ecb0ce36c2dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61c5e13c-1e22-550b-b177-3c4cc38637a7', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ab6565ad237f44449d4abaec15d2041e4e47dbcc0927a17995e2f8debcf7807'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da954f41-dd06-5d54-8915-88ada5a46faf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61c5e13c-1e22-550b-b177-3c4cc38637a7', 1), '5ab6565ad237f44449d4abaec15d2041e4e47dbcc0927a17995e2f8debcf7807',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bcbb94bb268df2c7fa981a7d9ac92b2302565f4d06d89ac29421ecb0ce36c2dc.mp3', 2168, '2026-09-13 19:07:08.036294', '4fa640ef2fd9eefb96e2f30054358c4798619e174c053d3fd27d67623faff02b', 'validated', '{"audio_key":"bcbb94bb268df2c7fa981a7d9ac92b2302565f4d06d89ac29421ecb0ce36c2dc","entity_key":"d_passive_processes_01:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4fa640ef2fd9eefb96e2f30054358c4798619e174c053d3fd27d67623faff02b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/bcbb94bb268df2c7fa981a7d9ac92b2302565f4d06d89ac29421ecb0ce36c2dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_02:4 -> audio/generated/tr-TR/dialogues/c0a48887a58b7998afb954ea855f3065a64e50d92da1d57eafd5581c4f76acd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5918db59-1591-5ffb-bfad-f8552bbe29c9', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bdc562480bfc6337473f03e5e8e5db82207e9fa9dceaf45f9097968bedb4beb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f54fd548-50ec-5517-a302-e398eb7ddd08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5918db59-1591-5ffb-bfad-f8552bbe29c9', 1), '5bdc562480bfc6337473f03e5e8e5db82207e9fa9dceaf45f9097968bedb4beb',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c0a48887a58b7998afb954ea855f3065a64e50d92da1d57eafd5581c4f76acd7.mp3', 3604, '2026-09-13 19:07:08.780622', '79f3a17e0d9aa112fb75cc07cd790cc7385ac9b837202afbcae97c7c8b42faa8', 'validated', '{"audio_key":"c0a48887a58b7998afb954ea855f3065a64e50d92da1d57eafd5581c4f76acd7","entity_key":"d_b2_community_forum_capstone_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"79f3a17e0d9aa112fb75cc07cd790cc7385ac9b837202afbcae97c7c8b42faa8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c0a48887a58b7998afb954ea855f3065a64e50d92da1d57eafd5581c4f76acd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_01:1 -> audio/generated/tr-TR/dialogues/c11716508c97e3631e1c2fd47dbf1517ffd483daa4ab78fe474ad67346fd81dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9e5fa24-043b-548e-8bf8-4e0c36512ad7', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e3d61d7f0e168a60140429bb7ebc750ccc038520132cfe2d33b4386f9ff11c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0f25746-be6d-5c5b-9890-b2643e4ee48f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9e5fa24-043b-548e-8bf8-4e0c36512ad7', 1), '1e3d61d7f0e168a60140429bb7ebc750ccc038520132cfe2d33b4386f9ff11c5',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c11716508c97e3631e1c2fd47dbf1517ffd483daa4ab78fe474ad67346fd81dc.mp3', 2638, '2026-09-13 19:07:09.101971', 'a3b9eedd76c71fc722cb15e48a08c860bce680b020135b96233d0efb8a62e4c7', 'validated', '{"audio_key":"c11716508c97e3631e1c2fd47dbf1517ffd483daa4ab78fe474ad67346fd81dc","entity_key":"d_hypothetical_alternatives_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a3b9eedd76c71fc722cb15e48a08c860bce680b020135b96233d0efb8a62e4c7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c11716508c97e3631e1c2fd47dbf1517ffd483daa4ab78fe474ad67346fd81dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_02:1 -> audio/generated/tr-TR/dialogues/c46307891f9787bfe2d18ba44b3cb5ba4f0739d127c4690f385e448224db3ef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1f33135-006d-58b6-b3f6-e35705a52607', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e6fbf7e34aa4ced2f8ff5119724b40ebbfbc3f63585580ae67a25d789d7baf6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6699c163-be80-575b-9f53-13a667cc29b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1f33135-006d-58b6-b3f6-e35705a52607', 1), '9e6fbf7e34aa4ced2f8ff5119724b40ebbfbc3f63585580ae67a25d789d7baf6',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c46307891f9787bfe2d18ba44b3cb5ba4f0739d127c4690f385e448224db3ef0.mp3', 2507, '2026-09-13 19:07:09.893054', '54cdb56277652e52fb8775b13a973ff013cb1778913422d10d8584d40d40a1dd', 'validated', '{"audio_key":"c46307891f9787bfe2d18ba44b3cb5ba4f0739d127c4690f385e448224db3ef0","entity_key":"d_concession_and_disagreement_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"54cdb56277652e52fb8775b13a973ff013cb1778913422d10d8584d40d40a1dd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c46307891f9787bfe2d18ba44b3cb5ba4f0739d127c4690f385e448224db3ef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:3 -> audio/generated/tr-TR/dialogues/c60eccdf168e83e01234cddc7f580166748fd8a49ea94d82fa6b57a27ac2ee9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('869394a5-31a3-5dbb-93ae-2627615d700d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7efc68e8ef1c9d7285f84a902ea23cddb8a3a5282693bf8ca605276c6c782cc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8dcf98c1-01ef-57f2-bd0a-6a9dcfd5158e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('869394a5-31a3-5dbb-93ae-2627615d700d', 1), '7efc68e8ef1c9d7285f84a902ea23cddb8a3a5282693bf8ca605276c6c782cc9',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c60eccdf168e83e01234cddc7f580166748fd8a49ea94d82fa6b57a27ac2ee9a.mp3', 1933, '2026-09-13 19:07:10.137118', '9d22e2c9456038183c57bbd311cd1b52b5be762a7405af41bdbc876164aad4c6', 'validated', '{"audio_key":"c60eccdf168e83e01234cddc7f580166748fd8a49ea94d82fa6b57a27ac2ee9a","entity_key":"d_concession_and_disagreement_01:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d22e2c9456038183c57bbd311cd1b52b5be762a7405af41bdbc876164aad4c6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c60eccdf168e83e01234cddc7f580166748fd8a49ea94d82fa6b57a27ac2ee9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:4 -> audio/generated/tr-TR/dialogues/c86a57bf7c3e8a5c032f4a6efa45476ff10fa39c5ba26f7a3b6b6fb9a33cdb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50b9b9d4-9cb9-5b10-becc-50c6e7d05abb', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef5ab5245d444c0bc016223a6876b21f74c0978b60990592abbea09eed917378'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b5e5011-5f27-57d4-af14-b86d2087bb9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50b9b9d4-9cb9-5b10-becc-50c6e7d05abb', 1), 'ef5ab5245d444c0bc016223a6876b21f74c0978b60990592abbea09eed917378',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c86a57bf7c3e8a5c032f4a6efa45476ff10fa39c5ba26f7a3b6b6fb9a33cdb58.mp3', 2821, '2026-09-13 19:07:11.024708', '63561a81b588eafba5f5a3fd7bd183317864085a09d292d58239c282b24e10d9', 'validated', '{"audio_key":"c86a57bf7c3e8a5c032f4a6efa45476ff10fa39c5ba26f7a3b6b6fb9a33cdb58","entity_key":"d_concession_and_disagreement_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63561a81b588eafba5f5a3fd7bd183317864085a09d292d58239c282b24e10d9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c86a57bf7c3e8a5c032f4a6efa45476ff10fa39c5ba26f7a3b6b6fb9a33cdb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_01:2 -> audio/generated/tr-TR/dialogues/c8bf9fdca98831569637e2ce67a47495e1377c482e41788f41e88f17f72f0129.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b56b2d6-f4f5-5a12-8f95-fcdf995f0f1c', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e876cf6a46fea8caeb141ac5da5fd04241248af9cdcbe29f4f566ce4aebba8d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb772263-b9c0-5528-800f-34810988b2e7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b56b2d6-f4f5-5a12-8f95-fcdf995f0f1c', 1), 'e876cf6a46fea8caeb141ac5da5fd04241248af9cdcbe29f4f566ce4aebba8d8',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c8bf9fdca98831569637e2ce67a47495e1377c482e41788f41e88f17f72f0129.mp3', 1854, '2026-09-13 19:07:11.154371', '63b176fc033bdeb47819a4c1150ce017c7b6720d0777d9bfcfecff8b0c15e44c', 'validated', '{"audio_key":"c8bf9fdca98831569637e2ce67a47495e1377c482e41788f41e88f17f72f0129","entity_key":"d_formal_negotiation_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63b176fc033bdeb47819a4c1150ce017c7b6720d0777d9bfcfecff8b0c15e44c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c8bf9fdca98831569637e2ce67a47495e1377c482e41788f41e88f17f72f0129.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_negotiation_02:3 -> audio/generated/tr-TR/dialogues/ccda9bf0c31667c84da96daf070a52db4a78baef1bb971cafd47111b51c34f39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d78c67a6-f94a-5ee7-81a3-7da8430b13a6', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63da385aed915c458139b91ee3e9dead084a0c6c279823dc9f578966a4637a15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd89c86f-d71e-5eb9-94ea-a090180a86d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d78c67a6-f94a-5ee7-81a3-7da8430b13a6', 1), '63da385aed915c458139b91ee3e9dead084a0c6c279823dc9f578966a4637a15',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ccda9bf0c31667c84da96daf070a52db4a78baef1bb971cafd47111b51c34f39.mp3', 3056, '2026-09-13 19:07:12.182065', 'de1c4133a73757c65ff8c25cc600f1a9c547894568afede974b4d42879416f05', 'validated', '{"audio_key":"ccda9bf0c31667c84da96daf070a52db4a78baef1bb971cafd47111b51c34f39","entity_key":"d_formal_negotiation_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de1c4133a73757c65ff8c25cc600f1a9c547894568afede974b4d42879416f05","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ccda9bf0c31667c84da96daf070a52db4a78baef1bb971cafd47111b51c34f39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_02:2 -> audio/generated/tr-TR/dialogues/d3796c3892311e89ee3ca92de41de286e041db2df56947a6b6fc263459823c3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7a3095f-d315-56fc-bb26-ca1d2a7e3dbf', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd114a35f2ff39a331bce7a7cdc6d4f0cbfe49e349b810b75b422c2246797c17a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6fcbab3-9b07-5dee-b9d1-b7e6297ba850', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7a3095f-d315-56fc-bb26-ca1d2a7e3dbf', 1), 'd114a35f2ff39a331bce7a7cdc6d4f0cbfe49e349b810b75b422c2246797c17a',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d3796c3892311e89ee3ca92de41de286e041db2df56947a6b6fc263459823c3a.mp3', 3160, '2026-09-13 19:07:12.330385', '6a6caf756fab49ac338906b5ce4e6572e560c97f64457d1682bc2ccb993bde8c', 'validated', '{"audio_key":"d3796c3892311e89ee3ca92de41de286e041db2df56947a6b6fc263459823c3a","entity_key":"d_passive_processes_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6a6caf756fab49ac338906b5ce4e6572e560c97f64457d1682bc2ccb993bde8c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/d3796c3892311e89ee3ca92de41de286e041db2df56947a6b6fc263459823c3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_02:2 -> audio/generated/tr-TR/dialogues/d4fb5b8fd2b8bf073210a9fd9b5bd01a199dc124eced8f682d3716e673cb8cee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fade12e3-051c-52ce-bec5-ca503b58c823', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b55f3718f1cc34438b42f8c53af111eb2d204b142926a656cead1f7295e5105'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40f52f4a-9651-5513-bd5a-ec9c0cc2c438', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fade12e3-051c-52ce-bec5-ca503b58c823', 1), '6b55f3718f1cc34438b42f8c53af111eb2d204b142926a656cead1f7295e5105',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d4fb5b8fd2b8bf073210a9fd9b5bd01a199dc124eced8f682d3716e673cb8cee.mp3', 4179, '2026-09-13 19:07:13.429878', 'c1bc32edcdd4dbcc209e69804e066c49f295535fe03718160f623e30546063e6', 'validated', '{"audio_key":"d4fb5b8fd2b8bf073210a9fd9b5bd01a199dc124eced8f682d3716e673cb8cee","entity_key":"d_b2_community_forum_capstone_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"c1bc32edcdd4dbcc209e69804e066c49f295535fe03718160f623e30546063e6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/d4fb5b8fd2b8bf073210a9fd9b5bd01a199dc124eced8f682d3716e673cb8cee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_passive_processes_02:1 -> audio/generated/tr-TR/dialogues/d84d510592f800aea5c1e5c6c993d51a7a8a757c0181f9fe2f75c4783a1366ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8221521-79ce-550b-b7f2-5eb050be9fcf', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_passive_processes_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe90c5464fc4cd6a87df3786d29de6aad920acf280a564885cc53b62cf9e5974'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73c76315-05ee-5530-a380-6dff93879ec4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8221521-79ce-550b-b7f2-5eb050be9fcf', 1), 'fe90c5464fc4cd6a87df3786d29de6aad920acf280a564885cc53b62cf9e5974',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d84d510592f800aea5c1e5c6c993d51a7a8a757c0181f9fe2f75c4783a1366ca.mp3', 2168, '2026-09-13 19:07:13.493663', '3aff3a72399ed61fa07d4bfefd3968a2456f1dd3614bef7b9370822a29a5b627', 'validated', '{"audio_key":"d84d510592f800aea5c1e5c6c993d51a7a8a757c0181f9fe2f75c4783a1366ca","entity_key":"d_passive_processes_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aff3a72399ed61fa07d4bfefd3968a2456f1dd3614bef7b9370822a29a5b627","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/d84d510592f800aea5c1e5c6c993d51a7a8a757c0181f9fe2f75c4783a1366ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:1 -> audio/generated/tr-TR/dialogues/d90e99dc656a06affe565c3d4692d98c9e830afa81a90f6d2f3c4108bad183d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4fdd3fd-6ed0-51db-b9df-58c988af2134', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddde8f32d6b18d7f05c1abd92abe04b04362274c7440f5c591b821a9be88289a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('177c4f7a-453b-5ff4-8e9c-3ed82874044f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4fdd3fd-6ed0-51db-b9df-58c988af2134', 1), 'ddde8f32d6b18d7f05c1abd92abe04b04362274c7440f5c591b821a9be88289a',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d90e99dc656a06affe565c3d4692d98c9e830afa81a90f6d2f3c4108bad183d5.mp3', 2168, '2026-09-13 19:07:14.516192', 'e841b62c7275bc9bb8226d39e770115a0c397804a77b64a9f9244b26aa898f40', 'validated', '{"audio_key":"d90e99dc656a06affe565c3d4692d98c9e830afa81a90f6d2f3c4108bad183d5","entity_key":"d_concession_and_disagreement_01:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e841b62c7275bc9bb8226d39e770115a0c397804a77b64a9f9244b26aa898f40","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/d90e99dc656a06affe565c3d4692d98c9e830afa81a90f6d2f3c4108bad183d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_01:2 -> audio/generated/tr-TR/dialogues/d9a7c5c7765f08e60891e67d24239dbac69b070afd2c6342eaafda1822d79e62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd0682a7-234f-5d19-8cc8-aa4b4867b2e4', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3566c72c6ccbcd6215cae0e8dc56be6c29d920ac18187079310b6452d3984939'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2e1f597-8fa3-51d6-b4eb-4f631f9e40c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd0682a7-234f-5d19-8cc8-aa4b4867b2e4', 1), '3566c72c6ccbcd6215cae0e8dc56be6c29d920ac18187079310b6452d3984939',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d9a7c5c7765f08e60891e67d24239dbac69b070afd2c6342eaafda1822d79e62.mp3', 3004, '2026-09-13 19:07:14.607205', 'fe3be9d3f12c26df8d54825ad07d48970e308627b3c02791534ce66b4d05e310', 'validated', '{"audio_key":"d9a7c5c7765f08e60891e67d24239dbac69b070afd2c6342eaafda1822d79e62","entity_key":"d_relative_detail_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe3be9d3f12c26df8d54825ad07d48970e308627b3c02791534ce66b4d05e310","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/d9a7c5c7765f08e60891e67d24239dbac69b070afd2c6342eaafda1822d79e62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b2_community_forum_capstone_01:1 -> audio/generated/tr-TR/dialogues/dd1c58c27290cc72cf25544dd1188256f523a93d73f85c474cb0a24d85597a84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4256718-5f3f-57af-966a-791aedc8484b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b2_community_forum_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97ca03eee6fa81929aec055384085c84f880d1cfc64f83a9fd98e3df054aeecf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8000e35-dadc-5c12-b50f-26ee33567c5e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4256718-5f3f-57af-966a-791aedc8484b', 1), '97ca03eee6fa81929aec055384085c84f880d1cfc64f83a9fd98e3df054aeecf',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/dd1c58c27290cc72cf25544dd1188256f523a93d73f85c474cb0a24d85597a84.mp3', 2690, '2026-09-13 19:07:15.652589', '304b00336067db74d21ade19e8edfcf4cbcf7664132fefe4bcdbe0ffff7ec472', 'validated', '{"audio_key":"dd1c58c27290cc72cf25544dd1188256f523a93d73f85c474cb0a24d85597a84","entity_key":"d_b2_community_forum_capstone_01:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"304b00336067db74d21ade19e8edfcf4cbcf7664132fefe4bcdbe0ffff7ec472","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/dd1c58c27290cc72cf25544dd1188256f523a93d73f85c474cb0a24d85597a84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_02:2 -> audio/generated/tr-TR/dialogues/df1d126f2111c405ff034040602f2f9d41ecd962590e8ce0011d3251bde1b3f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('161f9945-b847-5008-b20d-634cd3a322fc', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '883ff3a8be84d580c007b727958909c35583e176d3b9c67f225bcc9a35824110'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b992657-acf7-5a38-b48f-414d018d634c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('161f9945-b847-5008-b20d-634cd3a322fc', 1), '883ff3a8be84d580c007b727958909c35583e176d3b9c67f225bcc9a35824110',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/df1d126f2111c405ff034040602f2f9d41ecd962590e8ce0011d3251bde1b3f2.mp3', 2455, '2026-09-13 19:07:15.690883', '8f70fc70572fe0ea416b88c3cb5adbe34d8a422b37f0ba894c3d659e249ffda7', 'validated', '{"audio_key":"df1d126f2111c405ff034040602f2f9d41ecd962590e8ce0011d3251bde1b3f2","entity_key":"d_inference_and_evidence_02:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f70fc70572fe0ea416b88c3cb5adbe34d8a422b37f0ba894c3d659e249ffda7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/df1d126f2111c405ff034040602f2f9d41ecd962590e8ce0011d3251bde1b3f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hypothetical_alternatives_01:3 -> audio/generated/tr-TR/dialogues/df2eac80dedd458359a1430f6913e7fb271bec48609327dc8c3b21f0fa9e705a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e457d80-adad-5fb6-b501-0ffa03389b60', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hypothetical_alternatives_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ecab88b94ed1e8053462d0e254ec5a3a658a7e2fcfdb31ef13cd6c433bc30d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c0edc1d-519c-5834-9e2b-548b74802dcc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e457d80-adad-5fb6-b501-0ffa03389b60', 1), '0ecab88b94ed1e8053462d0e254ec5a3a658a7e2fcfdb31ef13cd6c433bc30d4',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/df2eac80dedd458359a1430f6913e7fb271bec48609327dc8c3b21f0fa9e705a.mp3', 1750, '2026-09-13 19:07:16.703029', 'a65ea31213b0880e49bf97c40c0eac2673ce8283f2e649f7101bb7a9d53bc098', 'validated', '{"audio_key":"df2eac80dedd458359a1430f6913e7fb271bec48609327dc8c3b21f0fa9e705a","entity_key":"d_hypothetical_alternatives_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a65ea31213b0880e49bf97c40c0eac2673ce8283f2e649f7101bb7a9d53bc098","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/df2eac80dedd458359a1430f6913e7fb271bec48609327dc8c3b21f0fa9e705a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_viewpoints_02:2 -> audio/generated/tr-TR/dialogues/e73d2270169e2af2d8967a18afbc2948e013b57efc1563fdbe3bb5abf652c6d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac9cd925-98ca-54c9-b175-1d86289edd60', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_viewpoints_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77edd24038eab013e76a8fbe084b42c94a93f8b833c4dbab65f0432a4a7801fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f151834-930f-56fa-9952-a2e8d92eedf6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac9cd925-98ca-54c9-b175-1d86289edd60', 1), '77edd24038eab013e76a8fbe084b42c94a93f8b833c4dbab65f0432a4a7801fb',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e73d2270169e2af2d8967a18afbc2948e013b57efc1563fdbe3bb5abf652c6d5.mp3', 4257, '2026-09-13 19:07:16.966100', '2f7296c5e681387ee2a7d20c13d61f15191eaff328c049368dc7c64a6a5ea3ae', 'validated', '{"audio_key":"e73d2270169e2af2d8967a18afbc2948e013b57efc1563fdbe3bb5abf652c6d5","entity_key":"d_summarizing_viewpoints_02:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f7296c5e681387ee2a7d20c13d61f15191eaff328c049368dc7c64a6a5ea3ae","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e73d2270169e2af2d8967a18afbc2948e013b57efc1563fdbe3bb5abf652c6d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_disagreement_01:2 -> audio/generated/tr-TR/dialogues/ed5f2aa1114f0a8b759f9b1587e9e8102bae4e05f5fb43c45180937ffa1d6b8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('766625da-ce58-5840-a988-6e8b1221b08e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_disagreement_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '401a6731dd10fab01eebf6308cd8af953ebef959859bae2be56bd5031dbc432e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46e0d32d-ecb5-56e1-865b-e33209673c23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('766625da-ce58-5840-a988-6e8b1221b08e', 1), '401a6731dd10fab01eebf6308cd8af953ebef959859bae2be56bd5031dbc432e',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ed5f2aa1114f0a8b759f9b1587e9e8102bae4e05f5fb43c45180937ffa1d6b8e.mp3', 3787, '2026-09-13 19:07:17.999560', '0f18c9227ecac879cbeecf312b86d1d7a4d965e2d0407d617e2ac0a80be1bdff', 'validated', '{"audio_key":"ed5f2aa1114f0a8b759f9b1587e9e8102bae4e05f5fb43c45180937ffa1d6b8e","entity_key":"d_concession_and_disagreement_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f18c9227ecac879cbeecf312b86d1d7a4d965e2d0407d617e2ac0a80be1bdff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ed5f2aa1114f0a8b759f9b1587e9e8102bae4e05f5fb43c45180937ffa1d6b8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relative_detail_01:4 -> audio/generated/tr-TR/dialogues/eff787bb5a7f3df01d0426e3805aa6c42a3a319af799fd50e669ebef6cb28949.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8567cd4-81db-509a-a095-6ed76e996fec', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relative_detail_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a5fdc025d19c652ae2bbdbe0d758beee01193a72ff642f6cccbf0f084281871'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fc815c9-3e8e-562c-b86d-440b92b6d895', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8567cd4-81db-509a-a095-6ed76e996fec', 1), '6a5fdc025d19c652ae2bbdbe0d758beee01193a72ff642f6cccbf0f084281871',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/eff787bb5a7f3df01d0426e3805aa6c42a3a319af799fd50e669ebef6cb28949.mp3', 2324, '2026-09-13 19:07:18.031330', 'f876eb024a3573e6ff36ccf893d500738feaa204a80e0a57849e4e2516421bdd', 'validated', '{"audio_key":"eff787bb5a7f3df01d0426e3805aa6c42a3a319af799fd50e669ebef6cb28949","entity_key":"d_relative_detail_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f876eb024a3573e6ff36ccf893d500738feaa204a80e0a57849e4e2516421bdd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/eff787bb5a7f3df01d0426e3805aa6c42a3a319af799fd50e669ebef6cb28949.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_causes_and_consequences_01:3 -> audio/generated/tr-TR/dialogues/f0ed9259fcd6747b0d2a531e53dbab38339742e501d8c909298177e13b36f201.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e6512fc-a92f-574a-9871-a8cb3bb5a8b9', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_causes_and_consequences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09180676c84b4805f66bb9fbe1600bab6ecac25532b9b43d6629f93cb2149cee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('417f05b2-7aa2-5c9b-8ef5-88c193e905e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e6512fc-a92f-574a-9871-a8cb3bb5a8b9', 1), '09180676c84b4805f66bb9fbe1600bab6ecac25532b9b43d6629f93cb2149cee',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f0ed9259fcd6747b0d2a531e53dbab38339742e501d8c909298177e13b36f201.mp3', 2272, '2026-09-13 19:07:19.070148', '6e6ecc47fe8ffdbdd506307fadea2090f7636486428ff40353701881cc81d6e7', 'validated', '{"audio_key":"f0ed9259fcd6747b0d2a531e53dbab38339742e501d8c909298177e13b36f201","entity_key":"d_causes_and_consequences_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e6ecc47fe8ffdbdd506307fadea2090f7636486428ff40353701881cc81d6e7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/f0ed9259fcd6747b0d2a531e53dbab38339742e501d8c909298177e13b36f201.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_inference_and_evidence_01:2 -> audio/generated/tr-TR/dialogues/f8d2dcad200301ee9b0b352ba82dd0670187bab990ff622c3956bff5834ab582.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d0b362c-d561-54b6-9fa2-b924ee6ee7f9', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_inference_and_evidence_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b60ce0ff275665276957d8140baea65c260f1ba48b8b9469d11e7333d9f5b10b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22183205-dc7a-5341-891b-1cc1d022ad7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d0b362c-d561-54b6-9fa2-b924ee6ee7f9', 1), 'b60ce0ff275665276957d8140baea65c260f1ba48b8b9469d11e7333d9f5b10b',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f8d2dcad200301ee9b0b352ba82dd0670187bab990ff622c3956bff5834ab582.mp3', 3422, '2026-09-13 19:07:19.239888', 'e15192c358c19c53be80cb4e56f1d6d621ad00547953ff1c327a813624ab97cb', 'validated', '{"audio_key":"f8d2dcad200301ee9b0b352ba82dd0670187bab990ff622c3956bff5834ab582","entity_key":"d_inference_and_evidence_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"e15192c358c19c53be80cb4e56f1d6d621ad00547953ff1c327a813624ab97cb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f8d2dcad200301ee9b0b352ba82dd0670187bab990ff622c3956bff5834ab582.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nuanced_stance_01:1 -> audio/generated/tr-TR/dialogues/fc67f1961833a722817fef546a8dc9dad6970c980399055bbe51b03ed7452b7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6fd5a98c-bf06-591e-ace7-0bdecfafadeb', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nuanced_stance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac51f17c885e29b6a18e172ce9e78266c8910c8d004a852a766aa0f32caade77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64e2b39f-8e10-58dd-a986-a8a88bd97802', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6fd5a98c-bf06-591e-ace7-0bdecfafadeb', 1), 'ac51f17c885e29b6a18e172ce9e78266c8910c8d004a852a766aa0f32caade77',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fc67f1961833a722817fef546a8dc9dad6970c980399055bbe51b03ed7452b7d.mp3', 2037, '2026-09-13 19:07:20.245468', 'ef2cec534d7965f0b57aa2696bdaeda97e77000fdf3f6e4ca71ed4688d43a69a', 'validated', '{"audio_key":"fc67f1961833a722817fef546a8dc9dad6970c980399055bbe51b03ed7452b7d","entity_key":"d_nuanced_stance_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef2cec534d7965f0b57aa2696bdaeda97e77000fdf3f6e4ca71ed4688d43a69a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/fc67f1961833a722817fef546a8dc9dad6970c980399055bbe51b03ed7452b7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relative_detail_05 -> audio/generated/tr-TR/lexical/022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5207cf4a-fdbf-5fd6-8fb4-fd9ffd4a9ee5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relative_detail_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '084c1006a8ac862f21babeaaad5edad604592a29f3e89e9a5b80a68506bdd8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02f017d1-80c9-56b9-a56e-516024feb7bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5207cf4a-fdbf-5fd6-8fb4-fd9ffd4a9ee5', 1), '084c1006a8ac862f21babeaaad5edad604592a29f3e89e9a5b80a68506bdd8fd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c.mp3', 1097, '2026-09-13 19:07:20.225475', '01effa493835b8dcf875de3c5246101510c7d65df46708528e677c2b7a286e17', 'validated', '{"audio_key":"022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c","entity_key":"lx_relative_detail_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01effa493835b8dcf875de3c5246101510c7d65df46708528e677c2b7a286e17","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relative_detail_05 -> audio/generated/tr-TR/lexical/022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c86d88c4-e669-53ad-a79f-0cf43f5117b9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relative_detail_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '084c1006a8ac862f21babeaaad5edad604592a29f3e89e9a5b80a68506bdd8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22f9b448-2e0f-5faf-95c3-6b375c38b229', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c86d88c4-e669-53ad-a79f-0cf43f5117b9', 1), '084c1006a8ac862f21babeaaad5edad604592a29f3e89e9a5b80a68506bdd8fd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c.mp3', 1097, '2026-09-13 19:07:20.225475', '01effa493835b8dcf875de3c5246101510c7d65df46708528e677c2b7a286e17', 'validated', '{"audio_key":"022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c","entity_key":"wf_relative_detail_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01effa493835b8dcf875de3c5246101510c7d65df46708528e677c2b7a286e17","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/022fd8e147b20ca8c40b72d68c045d814a0837d290c6189caa6e29148fc1bb9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inference_and_evidence_03 -> audio/generated/tr-TR/lexical/08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('edf47fc3-3029-5475-b338-4c21c9812d7b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inference_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78dbfa77c2bb0fc9cfaef3310820d5bbfa5b041a751a4484275c7ba6bd712638'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d04c837-9ea1-5895-b72f-86cf61568f1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('edf47fc3-3029-5475-b338-4c21c9812d7b', 1), '78dbfa77c2bb0fc9cfaef3310820d5bbfa5b041a751a4484275c7ba6bd712638',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf.mp3', 1201, '2026-09-13 19:07:21.264580', '9b1d770808e8bed831ceb6bb593b3304e110781dc0cfaf3323e483f3858d19d4', 'validated', '{"audio_key":"08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf","entity_key":"lx_inference_and_evidence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b1d770808e8bed831ceb6bb593b3304e110781dc0cfaf3323e483f3858d19d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inference_and_evidence_03 -> audio/generated/tr-TR/lexical/08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('375679f7-2f61-59c2-9ff3-b60242841275', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inference_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78dbfa77c2bb0fc9cfaef3310820d5bbfa5b041a751a4484275c7ba6bd712638'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e160800a-dd66-518b-9464-86421d9ded09', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('375679f7-2f61-59c2-9ff3-b60242841275', 1), '78dbfa77c2bb0fc9cfaef3310820d5bbfa5b041a751a4484275c7ba6bd712638',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf.mp3', 1201, '2026-09-13 19:07:21.264580', '9b1d770808e8bed831ceb6bb593b3304e110781dc0cfaf3323e483f3858d19d4', 'validated', '{"audio_key":"08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf","entity_key":"wf_inference_and_evidence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b1d770808e8bed831ceb6bb593b3304e110781dc0cfaf3323e483f3858d19d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/08cb4e37ac39fb2c34bb0cd8df2a149d1f25c1ba357feb2a86c18da679b4efdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_04 -> audio/generated/tr-TR/lexical/0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c66f980f-07cc-5fa9-b573-95c68f206680', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98342e8f403bc1b06765e635b72556b924513cb30b9d981d4a364988e32dcdf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('037537b7-e088-5437-8621-d263f2b61c7a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c66f980f-07cc-5fa9-b573-95c68f206680', 1), '98342e8f403bc1b06765e635b72556b924513cb30b9d981d4a364988e32dcdf1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca.mp3', 1149, '2026-09-13 19:07:21.476761', '588d1f246a12221a43a453d89471a965b54ec868bddeb9ec40de7ce83a407198', 'validated', '{"audio_key":"0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca","entity_key":"lx_concession_and_disagreement_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"588d1f246a12221a43a453d89471a965b54ec868bddeb9ec40de7ce83a407198","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_04 -> audio/generated/tr-TR/lexical/0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae468503-0ffb-572b-b635-c6dd2c3c0d2a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98342e8f403bc1b06765e635b72556b924513cb30b9d981d4a364988e32dcdf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('786b1d2f-24ae-57d3-a817-617eb58b272d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae468503-0ffb-572b-b635-c6dd2c3c0d2a', 1), '98342e8f403bc1b06765e635b72556b924513cb30b9d981d4a364988e32dcdf1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca.mp3', 1149, '2026-09-13 19:07:21.476761', '588d1f246a12221a43a453d89471a965b54ec868bddeb9ec40de7ce83a407198', 'validated', '{"audio_key":"0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca","entity_key":"wf_concession_and_disagreement_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"588d1f246a12221a43a453d89471a965b54ec868bddeb9ec40de7ce83a407198","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0ca9c74e3fb5b90e14bec13df1954538d486ebdb4115139ebd31098beaf8fbca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_02 -> audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b60d7207-06e9-538f-835b-3d7011655da0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a3dbec1-4bda-533e-8afd-3f5f4fb6120b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b60d7207-06e9-538f-835b-3d7011655da0', 1), 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3', 1384, '2026-09-13 19:07:22.248464', 'faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f', 'validated', '{"audio_key":"154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04","entity_key":"lx_concession_and_disagreement_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_02 -> audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8091b3aa-a4fb-5b9d-8ed1-1b2d4b29ed70', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('004cf42d-cbd2-5edf-be96-52bf7a2789c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8091b3aa-a4fb-5b9d-8ed1-1b2d4b29ed70', 1), 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3', 1384, '2026-09-13 19:07:22.248464', 'faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f', 'validated', '{"audio_key":"154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04","entity_key":"wf_concession_and_disagreement_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inference_and_evidence_01 -> audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35a3ea7c-0a9f-56d7-88e9-5ca9ab5f8f10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inference_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c53fb2d-159b-5437-a314-a44fa1497537', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35a3ea7c-0a9f-56d7-88e9-5ca9ab5f8f10', 1), '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3', 1071, '2026-09-13 19:07:22.415282', '1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1', 'validated', '{"audio_key":"160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276","entity_key":"lx_inference_and_evidence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inference_and_evidence_01 -> audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eaf714e4-3528-5119-ad3e-7934131adc38', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inference_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2f8a5c6-11dc-5d4b-9622-2fc4b4d20fb5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eaf714e4-3528-5119-ad3e-7934131adc38', 1), '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3', 1071, '2026-09-13 19:07:22.415282', '1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1', 'validated', '{"audio_key":"160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276","entity_key":"wf_inference_and_evidence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_02 -> audio/generated/tr-TR/lexical/1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2f9b108a-83f9-5696-b278-d5ec5d6f7aae', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c88d96dcb914f606ff7dc0b10061aa129950a9cf928a1eaa944e8bdfbe00c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbb90811-c28e-5def-b5a9-da60ead36747', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2f9b108a-83f9-5696-b278-d5ec5d6f7aae', 1), '7c88d96dcb914f606ff7dc0b10061aa129950a9cf928a1eaa944e8bdfbe00c69',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24.mp3', 1201, '2026-09-13 19:07:23.201260', 'aa894da77acb0ced44256ce090de04a362a522ca1d8aa28616b276bef8730daa', 'validated', '{"audio_key":"1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24","entity_key":"lx_nuanced_stance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa894da77acb0ced44256ce090de04a362a522ca1d8aa28616b276bef8730daa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_02 -> audio/generated/tr-TR/lexical/1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e6064572-19ff-5b0d-873c-81d5762c52f9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c88d96dcb914f606ff7dc0b10061aa129950a9cf928a1eaa944e8bdfbe00c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0d7ce6b-db96-5964-8442-108a34a28a88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e6064572-19ff-5b0d-873c-81d5762c52f9', 1), '7c88d96dcb914f606ff7dc0b10061aa129950a9cf928a1eaa944e8bdfbe00c69',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24.mp3', 1201, '2026-09-13 19:07:23.201260', 'aa894da77acb0ced44256ce090de04a362a522ca1d8aa28616b276bef8730daa', 'validated', '{"audio_key":"1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24","entity_key":"wf_nuanced_stance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa894da77acb0ced44256ce090de04a362a522ca1d8aa28616b276bef8730daa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1708ab63b5a5319451513753c9e58b505009d0aea79845f912aa74fad17fcf24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_06 -> audio/generated/tr-TR/lexical/1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fc052e2-e06e-50de-96a5-eb6aab786f8c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03d95d51d0e24733f15ede9d55e8036dd324c60430d4221b92331259a6b06a17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9f352cb-908f-54d5-a197-8eeeab3c497c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fc052e2-e06e-50de-96a5-eb6aab786f8c', 1), '03d95d51d0e24733f15ede9d55e8036dd324c60430d4221b92331259a6b06a17',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d.mp3', 1201, '2026-09-13 19:07:23.377856', 'c88967c24d3a1688bd4aa5bac002401f29707087c08583853a3e87fd0e5c7af6', 'validated', '{"audio_key":"1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d","entity_key":"lx_nuanced_stance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c88967c24d3a1688bd4aa5bac002401f29707087c08583853a3e87fd0e5c7af6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_06 -> audio/generated/tr-TR/lexical/1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9b0ff082-8a40-5f89-805b-a9493793ca97', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03d95d51d0e24733f15ede9d55e8036dd324c60430d4221b92331259a6b06a17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d466782-0ef5-5ce6-80d6-d59c81da02eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9b0ff082-8a40-5f89-805b-a9493793ca97', 1), '03d95d51d0e24733f15ede9d55e8036dd324c60430d4221b92331259a6b06a17',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d.mp3', 1201, '2026-09-13 19:07:23.377856', 'c88967c24d3a1688bd4aa5bac002401f29707087c08583853a3e87fd0e5c7af6', 'validated', '{"audio_key":"1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d","entity_key":"wf_nuanced_stance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c88967c24d3a1688bd4aa5bac002401f29707087c08583853a3e87fd0e5c7af6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a07531a57d32b6bdd9fb043aff4b0e251b8ca9980ab4f633c36d829a3db632d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causes_and_consequences_05 -> audio/generated/tr-TR/lexical/1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f33d486b-87cb-5b38-a10e-6d3814bda128', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causes_and_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7605e3b1b766803fb598206afc22198ff3c627c9c4a157531cf5bb81ce84f4a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00d45cfa-7d5b-581a-9a15-d789f72f7b03', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f33d486b-87cb-5b38-a10e-6d3814bda128', 1), '7605e3b1b766803fb598206afc22198ff3c627c9c4a157531cf5bb81ce84f4a5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4.mp3', 1018, '2026-09-13 19:07:24.357503', '89c70549ae92a9ee5fcba9dc33dce50af02c3b63bce9de1ad7be5b4fca7370b9', 'validated', '{"audio_key":"1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4","entity_key":"lx_causes_and_consequences_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89c70549ae92a9ee5fcba9dc33dce50af02c3b63bce9de1ad7be5b4fca7370b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causes_and_consequences_05 -> audio/generated/tr-TR/lexical/1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03f3f3e5-4866-536d-9499-8b37c59b376a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causes_and_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7605e3b1b766803fb598206afc22198ff3c627c9c4a157531cf5bb81ce84f4a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de6799a6-cfac-5199-b8a1-ecda066ffcff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03f3f3e5-4866-536d-9499-8b37c59b376a', 1), '7605e3b1b766803fb598206afc22198ff3c627c9c4a157531cf5bb81ce84f4a5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4.mp3', 1018, '2026-09-13 19:07:24.357503', '89c70549ae92a9ee5fcba9dc33dce50af02c3b63bce9de1ad7be5b4fca7370b9', 'validated', '{"audio_key":"1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4","entity_key":"wf_causes_and_consequences_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89c70549ae92a9ee5fcba9dc33dce50af02c3b63bce9de1ad7be5b4fca7370b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1cb8177378d90473b9efd417d33b80db98c331dfa9db85a064a7b270deb32ed4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_processes_03 -> audio/generated/tr-TR/lexical/1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab4098f3-09a4-5a1c-b7cf-352ce6aed553', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_processes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dd685fbcc69fc9c314b51fed414c2e9fb6d9b4653f1222ee1b178086fd63234'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc709546-7cd1-5ccf-a71c-89fce3d90cae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab4098f3-09a4-5a1c-b7cf-352ce6aed553', 1), '1dd685fbcc69fc9c314b51fed414c2e9fb6d9b4653f1222ee1b178086fd63234',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b.mp3', 1332, '2026-09-13 19:07:24.404859', '30701ba8e1763698073280a107d6f192122fa190eceb2de029ce6f049a09cbe1', 'validated', '{"audio_key":"1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b","entity_key":"lx_passive_processes_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30701ba8e1763698073280a107d6f192122fa190eceb2de029ce6f049a09cbe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_processes_03 -> audio/generated/tr-TR/lexical/1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('25993d58-a004-56b5-b2a8-ac02cf93d50a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_processes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dd685fbcc69fc9c314b51fed414c2e9fb6d9b4653f1222ee1b178086fd63234'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d75f2068-0401-50c0-8e42-eadf51c51a18', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('25993d58-a004-56b5-b2a8-ac02cf93d50a', 1), '1dd685fbcc69fc9c314b51fed414c2e9fb6d9b4653f1222ee1b178086fd63234',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b.mp3', 1332, '2026-09-13 19:07:24.404859', '30701ba8e1763698073280a107d6f192122fa190eceb2de029ce6f049a09cbe1', 'validated', '{"audio_key":"1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b","entity_key":"wf_passive_processes_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30701ba8e1763698073280a107d6f192122fa190eceb2de029ce6f049a09cbe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1f0f5d6ce57099e76a9b0432105ff175eb76d7751204acb6713339987be81d7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hypothetical_alternatives_04 -> audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5da635a0-3dba-5313-a2dc-ea0d3f4c533e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hypothetical_alternatives_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c661ba7-e70d-577c-aad7-919af6f94609', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5da635a0-3dba-5313-a2dc-ea0d3f4c533e', 1), '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3', 1071, '2026-09-13 17:56:43.805401', 'fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af', 'validated', '{"audio_key":"22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b","entity_key":"lx_hypothetical_alternatives_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hypothetical_alternatives_04 -> audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c7c017f-149e-5099-820f-c048b174c9d8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hypothetical_alternatives_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07e0f5e8-9792-515e-ab8f-f1e71686805e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c7c017f-149e-5099-820f-c048b174c9d8', 1), '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3', 1071, '2026-09-13 17:56:43.805401', 'fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af', 'validated', '{"audio_key":"22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b","entity_key":"wf_hypothetical_alternatives_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_05 -> audio/generated/tr-TR/lexical/2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b71084ba-9e81-5e64-8bf4-09a1e8085528', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd068dc33567ded778a2950f5048fc13761dd23ac4736792bc20327260290998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('533f1977-ddeb-598f-8284-5a133e60b473', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b71084ba-9e81-5e64-8bf4-09a1e8085528', 1), 'bd068dc33567ded778a2950f5048fc13761dd23ac4736792bc20327260290998',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19.mp3', 1149, '2026-09-13 19:07:25.329222', '5dc14cc33dcd1b1f972c0408a99a9869936532793d9add6e56e4d62928a38813', 'validated', '{"audio_key":"2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19","entity_key":"lx_nuanced_stance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dc14cc33dcd1b1f972c0408a99a9869936532793d9add6e56e4d62928a38813","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_05 -> audio/generated/tr-TR/lexical/2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f245cb0-4081-5c29-8141-e74e9f011248', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd068dc33567ded778a2950f5048fc13761dd23ac4736792bc20327260290998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a247d36d-8b00-5400-8826-8ed7faa6b0cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f245cb0-4081-5c29-8141-e74e9f011248', 1), 'bd068dc33567ded778a2950f5048fc13761dd23ac4736792bc20327260290998',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19.mp3', 1149, '2026-09-13 19:07:25.329222', '5dc14cc33dcd1b1f972c0408a99a9869936532793d9add6e56e4d62928a38813', 'validated', '{"audio_key":"2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19","entity_key":"wf_nuanced_stance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dc14cc33dcd1b1f972c0408a99a9869936532793d9add6e56e4d62928a38813","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2a532e89502c756c1b076b04225da23e62793968df13240a6ff9e7b8300f6e19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relative_detail_06 -> audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('638a4353-7ef6-53a0-bbc8-dd539d95aec3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relative_detail_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cd24951-79ae-543c-812a-cf377bf25974', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('638a4353-7ef6-53a0-bbc8-dd539d95aec3', 1), 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3', 1332, '2026-09-13 19:07:25.392580', '750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14', 'validated', '{"audio_key":"30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da","entity_key":"lx_relative_detail_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relative_detail_06 -> audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb5500f1-2871-5775-b551-95b57eef54ad', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relative_detail_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c843bce-a773-5d32-bbd7-04eff83c32b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb5500f1-2871-5775-b551-95b57eef54ad', 1), 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3', 1332, '2026-09-13 19:07:25.392580', '750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14', 'validated', '{"audio_key":"30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da","entity_key":"wf_relative_detail_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_viewpoints_06 -> audio/generated/tr-TR/lexical/3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('24bfa3ea-3be0-50f8-bb5a-85e497665ede', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_viewpoints_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94a791987ecf28a2ca1b790c957f1cb31194d70cf23502529a59c808c72c09fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b439e0d-414f-5ed4-92de-aa8fb80245a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('24bfa3ea-3be0-50f8-bb5a-85e497665ede', 1), '94a791987ecf28a2ca1b790c957f1cb31194d70cf23502529a59c808c72c09fc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6.mp3', 1149, '2026-09-13 19:07:26.286188', 'ab4ee94dfc173127b5c2a0bdbc67df38c93fdd0e56784c35f0c025a92fd3fd6b', 'validated', '{"audio_key":"3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6","entity_key":"lx_summarizing_viewpoints_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab4ee94dfc173127b5c2a0bdbc67df38c93fdd0e56784c35f0c025a92fd3fd6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_viewpoints_06 -> audio/generated/tr-TR/lexical/3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bea44e92-50f6-5ad2-995a-37e50950127d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_viewpoints_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94a791987ecf28a2ca1b790c957f1cb31194d70cf23502529a59c808c72c09fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e010849-f38f-56d9-9d31-0c410dfa6e3b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bea44e92-50f6-5ad2-995a-37e50950127d', 1), '94a791987ecf28a2ca1b790c957f1cb31194d70cf23502529a59c808c72c09fc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6.mp3', 1149, '2026-09-13 19:07:26.286188', 'ab4ee94dfc173127b5c2a0bdbc67df38c93fdd0e56784c35f0c025a92fd3fd6b', 'validated', '{"audio_key":"3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6","entity_key":"wf_summarizing_viewpoints_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab4ee94dfc173127b5c2a0bdbc67df38c93fdd0e56784c35f0c025a92fd3fd6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3438dd6c2b7db8758936e8015825705264e7686e2c003dde86694689cb9befa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_01 -> audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('947b9233-c119-53b5-977e-3c75f23a37ad', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35af92a3-7208-5481-aba3-cda756b0a722', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('947b9233-c119-53b5-977e-3c75f23a37ad', 1), '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3', 1071, '2026-09-13 19:07:26.353961', '4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d', 'validated', '{"audio_key":"39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76","entity_key":"lx_concession_and_disagreement_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_01 -> audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('465bdeca-5645-5c3a-87aa-ffc7c2b5e04e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a3109a3-f298-581e-88af-00fe0dd38017', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('465bdeca-5645-5c3a-87aa-ffc7c2b5e04e', 1), '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3', 1071, '2026-09-13 19:07:26.353961', '4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d', 'validated', '{"audio_key":"39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76","entity_key":"wf_concession_and_disagreement_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relative_detail_03 -> audio/generated/tr-TR/lexical/3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31e3e407-1c5b-5cd8-9eeb-9aeb697d531a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relative_detail_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '200561e6a8e1356056c7a4f2d7f3b6c8ae069b35f2427e6240440645a7a99821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b81bb98-94fc-5abe-88cf-2bd81f833787', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31e3e407-1c5b-5cd8-9eeb-9aeb697d531a', 1), '200561e6a8e1356056c7a4f2d7f3b6c8ae069b35f2427e6240440645a7a99821',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452.mp3', 1201, '2026-09-13 19:07:27.238611', '5c3d031324d89563ab7eb58e3dfca356e53dece6d9f18af131489d042dce0c57', 'validated', '{"audio_key":"3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452","entity_key":"lx_relative_detail_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c3d031324d89563ab7eb58e3dfca356e53dece6d9f18af131489d042dce0c57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relative_detail_03 -> audio/generated/tr-TR/lexical/3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c30ee61e-6cbb-53ee-83c6-ba72d807f8b0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relative_detail_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '200561e6a8e1356056c7a4f2d7f3b6c8ae069b35f2427e6240440645a7a99821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a342fdc2-e28b-5b23-a432-692b63bebafd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c30ee61e-6cbb-53ee-83c6-ba72d807f8b0', 1), '200561e6a8e1356056c7a4f2d7f3b6c8ae069b35f2427e6240440645a7a99821',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452.mp3', 1201, '2026-09-13 19:07:27.238611', '5c3d031324d89563ab7eb58e3dfca356e53dece6d9f18af131489d042dce0c57', 'validated', '{"audio_key":"3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452","entity_key":"wf_relative_detail_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c3d031324d89563ab7eb58e3dfca356e53dece6d9f18af131489d042dce0c57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3b237183aa30c50b207e8e18af77bee010fef71a970abf0f6a4ea82713a93452.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_processes_04 -> audio/generated/tr-TR/lexical/3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5f0a9a7-90d3-543a-a66d-33c4dfce1c42', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_processes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97dc663271d734345faea4ee699c502df3bf77ea90a26fb90504d68feb93af0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05e9e99e-2fac-54e9-a66f-b65450cdbd29', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5f0a9a7-90d3-543a-a66d-33c4dfce1c42', 1), '97dc663271d734345faea4ee699c502df3bf77ea90a26fb90504d68feb93af0f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0.mp3', 1253, '2026-09-13 19:07:27.315553', 'b1ffa6b33e1684107f4a72ae4c99943391b32e48169f8a10029658a79843119e', 'validated', '{"audio_key":"3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0","entity_key":"lx_passive_processes_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1ffa6b33e1684107f4a72ae4c99943391b32e48169f8a10029658a79843119e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_processes_04 -> audio/generated/tr-TR/lexical/3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c50fdfe-1029-59fb-89f3-91a5bd275bf8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_processes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97dc663271d734345faea4ee699c502df3bf77ea90a26fb90504d68feb93af0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3fb4ab6-757e-5f1d-98ec-d564524840de', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c50fdfe-1029-59fb-89f3-91a5bd275bf8', 1), '97dc663271d734345faea4ee699c502df3bf77ea90a26fb90504d68feb93af0f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0.mp3', 1253, '2026-09-13 19:07:27.315553', 'b1ffa6b33e1684107f4a72ae4c99943391b32e48169f8a10029658a79843119e', 'validated', '{"audio_key":"3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0","entity_key":"wf_passive_processes_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1ffa6b33e1684107f4a72ae4c99943391b32e48169f8a10029658a79843119e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3f5301fe633721f4d14f2edd28ccc3a7540de627544cd3872577c91621aa19d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causes_and_consequences_01 -> audio/generated/tr-TR/lexical/4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('645c5060-212a-5880-b4ad-15534c13b8af', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causes_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11510c0b327da60a3f7083af8ee82f8723fe627508ca8aa374a736abf1b7081b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c3ecd21-9a1e-5943-8088-fbbde520c99f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('645c5060-212a-5880-b4ad-15534c13b8af', 1), '11510c0b327da60a3f7083af8ee82f8723fe627508ca8aa374a736abf1b7081b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444.mp3', 1071, '2026-09-13 19:07:28.184972', '0aecbfbf38386aeae93eb180eac03e3e1d2b6e09fb2eae2ddd5a5b1c52d9db25', 'validated', '{"audio_key":"4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444","entity_key":"lx_causes_and_consequences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0aecbfbf38386aeae93eb180eac03e3e1d2b6e09fb2eae2ddd5a5b1c52d9db25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causes_and_consequences_01 -> audio/generated/tr-TR/lexical/4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b579690-5436-56cc-bb7d-0b7c44bb04b9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causes_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11510c0b327da60a3f7083af8ee82f8723fe627508ca8aa374a736abf1b7081b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2783e35-ea50-566b-9949-843147eeef9f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b579690-5436-56cc-bb7d-0b7c44bb04b9', 1), '11510c0b327da60a3f7083af8ee82f8723fe627508ca8aa374a736abf1b7081b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444.mp3', 1071, '2026-09-13 19:07:28.184972', '0aecbfbf38386aeae93eb180eac03e3e1d2b6e09fb2eae2ddd5a5b1c52d9db25', 'validated', '{"audio_key":"4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444","entity_key":"wf_causes_and_consequences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0aecbfbf38386aeae93eb180eac03e3e1d2b6e09fb2eae2ddd5a5b1c52d9db25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4003bd821a7445423b5c9e29fcc4164aa770c0664561898aeebe60fae5af9444.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hypothetical_alternatives_05 -> audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b046d29d-0809-55b6-a620-ae06f581d72a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hypothetical_alternatives_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f773f8b6-5ebf-5663-a933-6ba766202bc8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b046d29d-0809-55b6-a620-ae06f581d72a', 1), '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3', 1201, '2026-09-13 17:08:20.308564', 'dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5', 'validated', '{"audio_key":"4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407","entity_key":"lx_hypothetical_alternatives_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hypothetical_alternatives_05 -> audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d4c6b0b-2f2a-55d1-9b36-736747052d2c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hypothetical_alternatives_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae5720c8-3528-54e9-9366-bfe1f54c5c01', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d4c6b0b-2f2a-55d1-9b36-736747052d2c', 1), '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3', 1201, '2026-09-13 17:08:20.308564', 'dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5', 'validated', '{"audio_key":"4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407","entity_key":"wf_hypothetical_alternatives_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relative_detail_04 -> audio/generated/tr-TR/lexical/4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c9a9536-1202-5f42-89a1-ebb7cb9e3f66', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relative_detail_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ef06d951614056aeef3211191f2c4558c5c085ad520a263517e1c10daa1f4e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc1d52b2-e71f-5c1a-905a-4b662e590d88', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c9a9536-1202-5f42-89a1-ebb7cb9e3f66', 1), '9ef06d951614056aeef3211191f2c4558c5c085ad520a263517e1c10daa1f4e3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71.mp3', 1201, '2026-09-13 19:07:28.270782', '7e6f4714f03949617cffb04cce3b4c96d91f8cd13f4806fb91ee48569643eb3f', 'validated', '{"audio_key":"4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71","entity_key":"lx_relative_detail_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e6f4714f03949617cffb04cce3b4c96d91f8cd13f4806fb91ee48569643eb3f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relative_detail_04 -> audio/generated/tr-TR/lexical/4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d3a8ed7-415e-57c7-906a-4e4b85c808cc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relative_detail_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ef06d951614056aeef3211191f2c4558c5c085ad520a263517e1c10daa1f4e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e799fd4f-ea78-5aaf-baa9-a7cfd3ccb880', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d3a8ed7-415e-57c7-906a-4e4b85c808cc', 1), '9ef06d951614056aeef3211191f2c4558c5c085ad520a263517e1c10daa1f4e3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71.mp3', 1201, '2026-09-13 19:07:28.270782', '7e6f4714f03949617cffb04cce3b4c96d91f8cd13f4806fb91ee48569643eb3f', 'validated', '{"audio_key":"4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71","entity_key":"wf_relative_detail_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e6f4714f03949617cffb04cce3b4c96d91f8cd13f4806fb91ee48569643eb3f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4638c1ba7a199d8fbde3a214b83f52c0a75ead5edd2b88562fbdfaa260cdec71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_processes_06 -> audio/generated/tr-TR/lexical/4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aaffa764-4f37-5dff-8b92-e2fc8038c7c9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_processes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3931005cd44a61b04febdc094dee4bd0cc1b4e34024620b9ec5e8403109676d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecbf9f02-3347-59cd-80cf-136f33a5557b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aaffa764-4f37-5dff-8b92-e2fc8038c7c9', 1), '3931005cd44a61b04febdc094dee4bd0cc1b4e34024620b9ec5e8403109676d5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7.mp3', 1097, '2026-09-13 19:07:29.231907', '663cf53c429893722f0c5f0a1568d47d8e68aa731ad441a56087f60eb375ada4', 'validated', '{"audio_key":"4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7","entity_key":"lx_passive_processes_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"663cf53c429893722f0c5f0a1568d47d8e68aa731ad441a56087f60eb375ada4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_processes_06 -> audio/generated/tr-TR/lexical/4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f04674a0-c22f-52eb-a55c-47d1a78259a3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_processes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3931005cd44a61b04febdc094dee4bd0cc1b4e34024620b9ec5e8403109676d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df3dc30d-cb42-5536-80cf-471fc4eb2cbf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f04674a0-c22f-52eb-a55c-47d1a78259a3', 1), '3931005cd44a61b04febdc094dee4bd0cc1b4e34024620b9ec5e8403109676d5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7.mp3', 1097, '2026-09-13 19:07:29.231907', '663cf53c429893722f0c5f0a1568d47d8e68aa731ad441a56087f60eb375ada4', 'validated', '{"audio_key":"4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7","entity_key":"wf_passive_processes_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"663cf53c429893722f0c5f0a1568d47d8e68aa731ad441a56087f60eb375ada4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4c14aa8be6a677243b2396abfa7d4c4f1a122da25ef9dbb2eeaea73ea3200fe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_viewpoints_03 -> audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08001cb1-01fc-5d67-8461-245c914a8b4a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_viewpoints_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adc7f9c7-4499-5e2b-bb5b-2b80286e6b5d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08001cb1-01fc-5d67-8461-245c914a8b4a', 1), '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3', 1018, '2026-09-13 19:07:29.204815', '7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9', 'validated', '{"audio_key":"4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1","entity_key":"lx_summarizing_viewpoints_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_viewpoints_03 -> audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c94d6b2-e559-55b4-8f2d-52e604116051', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_viewpoints_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46d80cfb-b1db-58e3-9a35-cc6ec7f5fbc2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c94d6b2-e559-55b4-8f2d-52e604116051', 1), '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3', 1018, '2026-09-13 19:07:29.204815', '7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9', 'validated', '{"audio_key":"4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1","entity_key":"wf_summarizing_viewpoints_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_forum_capstone_05 -> audio/generated/tr-TR/lexical/51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f9842f8-3c65-52c0-a120-a6d6cad0735d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7893aae09bf8b1f0eab4663495e60fee42b06a2e9dd192eac5e21b8e8612a23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14b02df0-7163-52b8-a582-361e1de07580', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f9842f8-3c65-52c0-a120-a6d6cad0735d', 1), 'c7893aae09bf8b1f0eab4663495e60fee42b06a2e9dd192eac5e21b8e8612a23',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e.mp3', 1071, '2026-09-13 19:07:30.160967', '56213bc447874c98c3e34622d590d6c8d425499f7ac09aa32aa0860a41e54a5f', 'validated', '{"audio_key":"51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e","entity_key":"lx_b2_community_forum_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56213bc447874c98c3e34622d590d6c8d425499f7ac09aa32aa0860a41e54a5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_forum_capstone_05 -> audio/generated/tr-TR/lexical/51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7099f88f-0cd3-5228-adfe-98050a3e83b5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7893aae09bf8b1f0eab4663495e60fee42b06a2e9dd192eac5e21b8e8612a23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da40e0b5-2fb4-5e90-a8b8-a5f49098a5a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7099f88f-0cd3-5228-adfe-98050a3e83b5', 1), 'c7893aae09bf8b1f0eab4663495e60fee42b06a2e9dd192eac5e21b8e8612a23',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e.mp3', 1071, '2026-09-13 19:07:30.160967', '56213bc447874c98c3e34622d590d6c8d425499f7ac09aa32aa0860a41e54a5f', 'validated', '{"audio_key":"51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e","entity_key":"wf_b2_community_forum_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56213bc447874c98c3e34622d590d6c8d425499f7ac09aa32aa0860a41e54a5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/51b3c7ae6a24473f86a0cda0e009de4803c2e0c50a63450b5a5e64e80a7ff56e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hypothetical_alternatives_03 -> audio/generated/tr-TR/lexical/5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ec620495-7c9f-5678-b597-ce758b783568', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hypothetical_alternatives_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee826cf4e77e3eb78b1e546f41d167950401325a425e2d3671d4929a8fe5095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4558a90-7cf9-530c-aab4-5d2eb0c90462', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ec620495-7c9f-5678-b597-ce758b783568', 1), '4ee826cf4e77e3eb78b1e546f41d167950401325a425e2d3671d4929a8fe5095',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f.mp3', 1201, '2026-09-13 19:07:30.176455', '53f78d0db352e63204974701cc1ba2113f72eed97e662c4bef790e51a1cffd25', 'validated', '{"audio_key":"5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f","entity_key":"lx_hypothetical_alternatives_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"53f78d0db352e63204974701cc1ba2113f72eed97e662c4bef790e51a1cffd25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hypothetical_alternatives_03 -> audio/generated/tr-TR/lexical/5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27cdf624-6c0d-51f7-abc0-e4bf5ca2c52a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hypothetical_alternatives_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee826cf4e77e3eb78b1e546f41d167950401325a425e2d3671d4929a8fe5095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11dfe86b-eb67-572a-b8aa-18999df0e16b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27cdf624-6c0d-51f7-abc0-e4bf5ca2c52a', 1), '4ee826cf4e77e3eb78b1e546f41d167950401325a425e2d3671d4929a8fe5095',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f.mp3', 1201, '2026-09-13 19:07:30.176455', '53f78d0db352e63204974701cc1ba2113f72eed97e662c4bef790e51a1cffd25', 'validated', '{"audio_key":"5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f","entity_key":"wf_hypothetical_alternatives_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"53f78d0db352e63204974701cc1ba2113f72eed97e662c4bef790e51a1cffd25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5a7224ee7316348fd0d95475a9062672ff0738230480f8624697f9672d251e9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_03 -> audio/generated/tr-TR/lexical/5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a512685-03c7-5075-91e0-9946d3aeef70', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a6dc292ecd71b7b7bcefa81bf9479a39770c0dbf8eaeb51312779c192fb001e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04a75e10-9e5f-52d2-a15c-889195880e72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a512685-03c7-5075-91e0-9946d3aeef70', 1), '4a6dc292ecd71b7b7bcefa81bf9479a39770c0dbf8eaeb51312779c192fb001e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8.mp3', 1280, '2026-09-13 19:07:31.139352', 'f46ecd63537d9caa8679f51dfb551a96f9aa8c86d701b41e8edce539df3524c3', 'validated', '{"audio_key":"5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8","entity_key":"lx_nuanced_stance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f46ecd63537d9caa8679f51dfb551a96f9aa8c86d701b41e8edce539df3524c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_03 -> audio/generated/tr-TR/lexical/5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18597957-694f-5ad6-89ce-d5456672fd97', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a6dc292ecd71b7b7bcefa81bf9479a39770c0dbf8eaeb51312779c192fb001e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5194bc6c-2d3b-5cd9-a013-a7201885ad34', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18597957-694f-5ad6-89ce-d5456672fd97', 1), '4a6dc292ecd71b7b7bcefa81bf9479a39770c0dbf8eaeb51312779c192fb001e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8.mp3', 1280, '2026-09-13 19:07:31.139352', 'f46ecd63537d9caa8679f51dfb551a96f9aa8c86d701b41e8edce539df3524c3', 'validated', '{"audio_key":"5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8","entity_key":"wf_nuanced_stance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f46ecd63537d9caa8679f51dfb551a96f9aa8c86d701b41e8edce539df3524c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5f3d6f1e48965dc224df75ba6ab07677b8d2264eb1f938721d297632ade0ada8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inference_and_evidence_02 -> audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bac241eb-561f-59ab-bd4e-928d5adf3f68', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inference_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1d27901-7033-5e67-89ac-e115832d45f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bac241eb-561f-59ab-bd4e-928d5adf3f68', 1), '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3', 1071, '2026-09-13 19:07:31.130628', '59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651', 'validated', '{"audio_key":"61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a","entity_key":"lx_inference_and_evidence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inference_and_evidence_02 -> audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2e2e2348-d2f7-592e-a39f-3fe35f8543c8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inference_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffd7f76d-5c0d-50a5-a5bb-5e0335ebfd82', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2e2e2348-d2f7-592e-a39f-3fe35f8543c8', 1), '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3', 1071, '2026-09-13 19:07:31.130628', '59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651', 'validated', '{"audio_key":"61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a","entity_key":"wf_inference_and_evidence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_processes_05 -> audio/generated/tr-TR/lexical/6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab6c30f7-3fa2-58b2-b878-b122c88e1ce7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_processes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f0195fe8713fc4658fed7b2fa8b6d397fef449ca0479030da8172c61755a706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de8fa5a5-3846-52d3-8e06-354e7c6f1c45', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab6c30f7-3fa2-58b2-b878-b122c88e1ce7', 1), '4f0195fe8713fc4658fed7b2fa8b6d397fef449ca0479030da8172c61755a706',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb.mp3', 1018, '2026-09-13 19:07:32.099169', '914f2e5fa8734f81f73c52ee06d13d8abbb2410b3407cd7d62c14fb9eb5330d2', 'validated', '{"audio_key":"6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb","entity_key":"lx_passive_processes_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"914f2e5fa8734f81f73c52ee06d13d8abbb2410b3407cd7d62c14fb9eb5330d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_processes_05 -> audio/generated/tr-TR/lexical/6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ef5ca38-0cb1-55ca-8df4-959868df98b3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_processes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f0195fe8713fc4658fed7b2fa8b6d397fef449ca0479030da8172c61755a706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddc03f22-91fd-5e4e-859d-1c137a3bc6be', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ef5ca38-0cb1-55ca-8df4-959868df98b3', 1), '4f0195fe8713fc4658fed7b2fa8b6d397fef449ca0479030da8172c61755a706',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb.mp3', 1018, '2026-09-13 19:07:32.099169', '914f2e5fa8734f81f73c52ee06d13d8abbb2410b3407cd7d62c14fb9eb5330d2', 'validated', '{"audio_key":"6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb","entity_key":"wf_passive_processes_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"914f2e5fa8734f81f73c52ee06d13d8abbb2410b3407cd7d62c14fb9eb5330d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ff38214777df7b4da2fd7833a300afd2d59be84d9e90491e272de30df6d18cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_05 -> audio/generated/tr-TR/lexical/733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc1ba75c-a1ee-591a-b2d1-193c44da00a7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc1b53e73912e506e176e2a26fdfd81fed4a509b5788732fe519dd2bf5e0d809'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abf692e1-c509-573a-a0f6-b40c70b4f379', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc1ba75c-a1ee-591a-b2d1-193c44da00a7', 1), 'dc1b53e73912e506e176e2a26fdfd81fed4a509b5788732fe519dd2bf5e0d809',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3.mp3', 1201, '2026-09-13 19:07:32.157212', '3a1621624dad82823bfa774a9563b648b71d527a687db356a9675e75ef887e17', 'validated', '{"audio_key":"733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3","entity_key":"lx_formal_negotiation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a1621624dad82823bfa774a9563b648b71d527a687db356a9675e75ef887e17","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_05 -> audio/generated/tr-TR/lexical/733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c951597-f00a-5ac1-9593-d326f1870e39', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc1b53e73912e506e176e2a26fdfd81fed4a509b5788732fe519dd2bf5e0d809'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e33b553d-2f19-5059-9849-1c4a19300b3a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c951597-f00a-5ac1-9593-d326f1870e39', 1), 'dc1b53e73912e506e176e2a26fdfd81fed4a509b5788732fe519dd2bf5e0d809',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3.mp3', 1201, '2026-09-13 19:07:32.157212', '3a1621624dad82823bfa774a9563b648b71d527a687db356a9675e75ef887e17', 'validated', '{"audio_key":"733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3","entity_key":"wf_formal_negotiation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a1621624dad82823bfa774a9563b648b71d527a687db356a9675e75ef887e17","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/733db36a985a7f84b004dfad99b28422fca01b5bb6c79c29b5db05b471ad0ad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_02 -> audio/generated/tr-TR/lexical/78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ba549f2f-3863-5be3-a69a-5e0f1b8c9b3b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41996af529302b3e0e55795a6d4c69a78a94caa180ef1d4445a9d58dbd285e7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('300be797-d010-5b02-ba22-3eee7552b80b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ba549f2f-3863-5be3-a69a-5e0f1b8c9b3b', 1), '41996af529302b3e0e55795a6d4c69a78a94caa180ef1d4445a9d58dbd285e7d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293.mp3', 1097, '2026-09-13 19:07:33.051099', 'f25922977b6c97ad3617aa353fcadb746477470d734aa27c6f9b6add37569c01', 'validated', '{"audio_key":"78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293","entity_key":"lx_formal_negotiation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f25922977b6c97ad3617aa353fcadb746477470d734aa27c6f9b6add37569c01","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_02 -> audio/generated/tr-TR/lexical/78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec634fb1-103a-5c04-989d-32d80b097ea1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41996af529302b3e0e55795a6d4c69a78a94caa180ef1d4445a9d58dbd285e7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f554e821-abe4-55a7-8097-064296726091', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec634fb1-103a-5c04-989d-32d80b097ea1', 1), '41996af529302b3e0e55795a6d4c69a78a94caa180ef1d4445a9d58dbd285e7d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293.mp3', 1097, '2026-09-13 19:07:33.051099', 'f25922977b6c97ad3617aa353fcadb746477470d734aa27c6f9b6add37569c01', 'validated', '{"audio_key":"78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293","entity_key":"wf_formal_negotiation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f25922977b6c97ad3617aa353fcadb746477470d734aa27c6f9b6add37569c01","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/78b6543829b6df9d7583a92c4979f09fe25aa962adefac4f19a5deea44403293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causes_and_consequences_06 -> audio/generated/tr-TR/lexical/7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('91417637-b254-5381-970d-4cbbd6c19edf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causes_and_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '070e580b2b745a1e9ce57565d0265d66c38daaf7b11765a5d3a38faf920d68b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a05efcd3-63f6-5ee9-bf7a-75d9a5b2a960', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('91417637-b254-5381-970d-4cbbd6c19edf', 1), '070e580b2b745a1e9ce57565d0265d66c38daaf7b11765a5d3a38faf920d68b3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67.mp3', 1149, '2026-09-13 19:07:33.127733', '12ad8720d4d8524691c7949230c9b8b20ed6538e9a170141f70319cdd6fccd1a', 'validated', '{"audio_key":"7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67","entity_key":"lx_causes_and_consequences_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12ad8720d4d8524691c7949230c9b8b20ed6538e9a170141f70319cdd6fccd1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causes_and_consequences_06 -> audio/generated/tr-TR/lexical/7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ed7dfac-9650-524f-baca-2141004286f3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causes_and_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '070e580b2b745a1e9ce57565d0265d66c38daaf7b11765a5d3a38faf920d68b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd3d8006-4554-5f8f-86fd-5dc6a5723a0b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ed7dfac-9650-524f-baca-2141004286f3', 1), '070e580b2b745a1e9ce57565d0265d66c38daaf7b11765a5d3a38faf920d68b3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67.mp3', 1149, '2026-09-13 19:07:33.127733', '12ad8720d4d8524691c7949230c9b8b20ed6538e9a170141f70319cdd6fccd1a', 'validated', '{"audio_key":"7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67","entity_key":"wf_causes_and_consequences_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12ad8720d4d8524691c7949230c9b8b20ed6538e9a170141f70319cdd6fccd1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7b7c48f5bd0f8edce039ed3c145adc075a58981ba7270d10705403f72c130a67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causes_and_consequences_02 -> audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('84fb2055-e4b9-5ec1-bb3d-46b8d9ff28c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causes_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7764286d-d798-5c40-ba26-5fb30a22f22a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('84fb2055-e4b9-5ec1-bb3d-46b8d9ff28c7', 1), 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3', 1018, '2026-09-13 17:56:52.745477', '77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741', 'validated', '{"audio_key":"7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b","entity_key":"lx_causes_and_consequences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causes_and_consequences_02 -> audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('137f451a-361c-51a6-8420-f8c4c07cd150', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causes_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02a11db4-1b3f-5be5-90d7-69f103bcbb2b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('137f451a-361c-51a6-8420-f8c4c07cd150', 1), 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3', 1018, '2026-09-13 17:56:52.745477', '77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741', 'validated', '{"audio_key":"7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b","entity_key":"wf_causes_and_consequences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hypothetical_alternatives_06 -> audio/generated/tr-TR/lexical/7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c0d91d47-dcad-533b-b839-e4d55e8d4c20', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hypothetical_alternatives_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e69301aa4ea777be6d79bde7ad032d26e510027fd9e7a556da8476ec06c02e42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27d6d638-772c-5e8c-af90-10e21898f388', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c0d91d47-dcad-533b-b839-e4d55e8d4c20', 1), 'e69301aa4ea777be6d79bde7ad032d26e510027fd9e7a556da8476ec06c02e42',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2.mp3', 1253, '2026-09-13 19:07:34.025187', '39000acfbb7a4cbdb29f476e3176955e09bca415dbe349eeb5a4d264d1462324', 'validated', '{"audio_key":"7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2","entity_key":"lx_hypothetical_alternatives_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39000acfbb7a4cbdb29f476e3176955e09bca415dbe349eeb5a4d264d1462324","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hypothetical_alternatives_06 -> audio/generated/tr-TR/lexical/7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('64e5eba0-98de-5946-bb0b-946406de1e7a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hypothetical_alternatives_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e69301aa4ea777be6d79bde7ad032d26e510027fd9e7a556da8476ec06c02e42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fffb2104-a3c3-5c23-adb2-9c460ce48945', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('64e5eba0-98de-5946-bb0b-946406de1e7a', 1), 'e69301aa4ea777be6d79bde7ad032d26e510027fd9e7a556da8476ec06c02e42',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2.mp3', 1253, '2026-09-13 19:07:34.025187', '39000acfbb7a4cbdb29f476e3176955e09bca415dbe349eeb5a4d264d1462324', 'validated', '{"audio_key":"7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2","entity_key":"wf_hypothetical_alternatives_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39000acfbb7a4cbdb29f476e3176955e09bca415dbe349eeb5a4d264d1462324","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7efd87c400efd42e59b03b598606f618307a559940fa4b6eabd3a11e94274ad2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relative_detail_02 -> audio/generated/tr-TR/lexical/817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('430dd2c2-e25a-5405-aec6-0e240f840cdb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relative_detail_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fa8fc3fa3cd5be629e8b975735f2c4cc3e0f017dc6ace7ad6d6c9992da778f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44650ad2-8ce1-5d64-9f51-b1b7634bde3f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('430dd2c2-e25a-5405-aec6-0e240f840cdb', 1), '7fa8fc3fa3cd5be629e8b975735f2c4cc3e0f017dc6ace7ad6d6c9992da778f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091.mp3', 1149, '2026-09-13 19:07:34.192356', 'bdb45d9e1065751ec6e8532212974899197768b3030038480d9c469b7580266d', 'validated', '{"audio_key":"817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091","entity_key":"lx_relative_detail_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdb45d9e1065751ec6e8532212974899197768b3030038480d9c469b7580266d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relative_detail_02 -> audio/generated/tr-TR/lexical/817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ac9409b-2dbc-59af-bbd5-f13a7739f434', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relative_detail_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fa8fc3fa3cd5be629e8b975735f2c4cc3e0f017dc6ace7ad6d6c9992da778f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0424feda-36d4-5728-bf8c-b127695d8bab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ac9409b-2dbc-59af-bbd5-f13a7739f434', 1), '7fa8fc3fa3cd5be629e8b975735f2c4cc3e0f017dc6ace7ad6d6c9992da778f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091.mp3', 1149, '2026-09-13 19:07:34.192356', 'bdb45d9e1065751ec6e8532212974899197768b3030038480d9c469b7580266d', 'validated', '{"audio_key":"817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091","entity_key":"wf_relative_detail_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdb45d9e1065751ec6e8532212974899197768b3030038480d9c469b7580266d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/817c0b90c994b602159e22dbc16b723d7a60fe1e7aa36532ad8bf80758dbb091.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_01 -> audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('14f5f0fc-90a4-520e-a3d5-eda321db2667', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('063d2a83-9536-580e-a712-95b6c80aa79b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('14f5f0fc-90a4-520e-a3d5-eda321db2667', 1), '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3', 1201, '2026-09-13 19:07:34.996866', '7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779', 'validated', '{"audio_key":"84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f","entity_key":"lx_formal_negotiation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_01 -> audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('54f43100-388f-589e-9686-2683bdcc0264', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('350c6d8d-45c5-51c3-af50-30c810bb40ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('54f43100-388f-589e-9686-2683bdcc0264', 1), '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3', 1201, '2026-09-13 19:07:34.996866', '7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779', 'validated', '{"audio_key":"84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f","entity_key":"wf_formal_negotiation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_forum_capstone_02 -> audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5d43d6b-dd6e-592a-86c3-997bd685dc7d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48fa40c5-22f0-5e6b-b1f8-ca302b827f61', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5d43d6b-dd6e-592a-86c3-997bd685dc7d', 1), 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3', 1097, '2026-09-13 19:07:35.127462', 'b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c', 'validated', '{"audio_key":"88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7","entity_key":"lx_b2_community_forum_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_forum_capstone_02 -> audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5978717-faf1-5ee3-9bc3-c4c873e00f55', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62bfa633-cd7c-5c09-a1b0-53b84e584e2b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5978717-faf1-5ee3-9bc3-c4c873e00f55', 1), 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3', 1097, '2026-09-13 19:07:35.127462', 'b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c', 'validated', '{"audio_key":"88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7","entity_key":"wf_b2_community_forum_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_viewpoints_04 -> audio/generated/tr-TR/lexical/8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b2acbf7c-5dd1-51b2-9e4f-a01a71144989', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_viewpoints_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e656215c61de1bd55c22bbeed85d776fbc88ebbac19104c9cacaccbeebfafa48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f287613a-fb2f-54dd-b434-f493a2e8fd48', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b2acbf7c-5dd1-51b2-9e4f-a01a71144989', 1), 'e656215c61de1bd55c22bbeed85d776fbc88ebbac19104c9cacaccbeebfafa48',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911.mp3', 1201, '2026-09-13 19:07:35.978907', 'e14968e6be9d0faeae1bfbb967231db3c1f3e1ed575dad3b27f1ab3d3111ac2b', 'validated', '{"audio_key":"8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911","entity_key":"lx_summarizing_viewpoints_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e14968e6be9d0faeae1bfbb967231db3c1f3e1ed575dad3b27f1ab3d3111ac2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_viewpoints_04 -> audio/generated/tr-TR/lexical/8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d545a489-9a96-5b2f-99e5-6e11c8dc94ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_viewpoints_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e656215c61de1bd55c22bbeed85d776fbc88ebbac19104c9cacaccbeebfafa48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9edd613f-49a3-516f-9f29-7c8258efe3db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d545a489-9a96-5b2f-99e5-6e11c8dc94ed', 1), 'e656215c61de1bd55c22bbeed85d776fbc88ebbac19104c9cacaccbeebfafa48',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911.mp3', 1201, '2026-09-13 19:07:35.978907', 'e14968e6be9d0faeae1bfbb967231db3c1f3e1ed575dad3b27f1ab3d3111ac2b', 'validated', '{"audio_key":"8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911","entity_key":"wf_summarizing_viewpoints_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e14968e6be9d0faeae1bfbb967231db3c1f3e1ed575dad3b27f1ab3d3111ac2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8a710a05d3afd1445e6f84d33f84ca3674e59c7f53cb12438c684a78d2455911.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_viewpoints_01 -> audio/generated/tr-TR/lexical/90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('11d656d9-0cee-52a1-9e94-ac98a23cfb93', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_viewpoints_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed5b639a1379aabab4e49b98c85b697461a856516208ae9055d624ea84804414'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f419f821-71e9-5068-a15f-159118ae5ffa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('11d656d9-0cee-52a1-9e94-ac98a23cfb93', 1), 'ed5b639a1379aabab4e49b98c85b697461a856516208ae9055d624ea84804414',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176.mp3', 1071, '2026-09-13 19:07:36.073070', '9eb238d76bb17bb20d191008c37690a896bed412d19c13cc6a31826caf18f1fc', 'validated', '{"audio_key":"90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176","entity_key":"lx_summarizing_viewpoints_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9eb238d76bb17bb20d191008c37690a896bed412d19c13cc6a31826caf18f1fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_viewpoints_01 -> audio/generated/tr-TR/lexical/90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a1a7826-16f2-5093-9771-d0cb65446fa9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_viewpoints_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed5b639a1379aabab4e49b98c85b697461a856516208ae9055d624ea84804414'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30249f06-25aa-54c4-b12a-fd0658c1d41e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a1a7826-16f2-5093-9771-d0cb65446fa9', 1), 'ed5b639a1379aabab4e49b98c85b697461a856516208ae9055d624ea84804414',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176.mp3', 1071, '2026-09-13 19:07:36.073070', '9eb238d76bb17bb20d191008c37690a896bed412d19c13cc6a31826caf18f1fc', 'validated', '{"audio_key":"90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176","entity_key":"wf_summarizing_viewpoints_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9eb238d76bb17bb20d191008c37690a896bed412d19c13cc6a31826caf18f1fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/90179c4bb3fc5fe205f7fcc827efcbcbd9a2b4d19a017c74869073f094d77176.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inference_and_evidence_04 -> audio/generated/tr-TR/lexical/9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9053ec3-dd75-50ce-bf2a-34f3570086fe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inference_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c728cd6489c0d45aaae703fc7ef4c49706afba2faaa8768dd23a173463d19c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57854d6e-f7b2-5887-b8af-485c405e81bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9053ec3-dd75-50ce-bf2a-34f3570086fe', 1), '4c728cd6489c0d45aaae703fc7ef4c49706afba2faaa8768dd23a173463d19c9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728.mp3', 1515, '2026-09-13 19:07:36.967085', '0c7053c953dce7ba9f51ebb1c847f595c01526abde21ce07d706cd4fb9f4e013', 'validated', '{"audio_key":"9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728","entity_key":"lx_inference_and_evidence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c7053c953dce7ba9f51ebb1c847f595c01526abde21ce07d706cd4fb9f4e013","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inference_and_evidence_04 -> audio/generated/tr-TR/lexical/9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a34f835-7a16-5138-bd6c-2949e2aca0d5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inference_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c728cd6489c0d45aaae703fc7ef4c49706afba2faaa8768dd23a173463d19c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55c2e330-4118-54d4-a5bd-027d71259dd9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a34f835-7a16-5138-bd6c-2949e2aca0d5', 1), '4c728cd6489c0d45aaae703fc7ef4c49706afba2faaa8768dd23a173463d19c9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728.mp3', 1515, '2026-09-13 19:07:36.967085', '0c7053c953dce7ba9f51ebb1c847f595c01526abde21ce07d706cd4fb9f4e013', 'validated', '{"audio_key":"9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728","entity_key":"wf_inference_and_evidence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c7053c953dce7ba9f51ebb1c847f595c01526abde21ce07d706cd4fb9f4e013","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9283146a2e34487298bb5ad8e611d7d0fbf5a7b5a8f6801a88a8d9b90d302728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_forum_capstone_01 -> audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68400317-7266-5544-a3a3-d1e9d442fb97', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0cac353-be55-58c8-9b8f-58aa457f4bb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68400317-7266-5544-a3a3-d1e9d442fb97', 1), '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3', 1201, '2026-09-13 19:07:37.068546', '7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d', 'validated', '{"audio_key":"96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563","entity_key":"lx_b2_community_forum_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_forum_capstone_01 -> audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('74108063-c034-5a59-848b-52ccd4816d3e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53c355b1-24b6-5589-8200-1c37fa8722ed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('74108063-c034-5a59-848b-52ccd4816d3e', 1), '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3', 1201, '2026-09-13 19:07:37.068546', '7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d', 'validated', '{"audio_key":"96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563","entity_key":"wf_b2_community_forum_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_processes_02 -> audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70fd7b7e-6a81-5189-9b30-b2578b8c1f13', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_processes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3084b12e-aa2d-535f-ba7b-90856a27e5bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70fd7b7e-6a81-5189-9b30-b2578b8c1f13', 1), 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3', 1515, '2026-09-13 17:56:56.623743', '8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb', 'validated', '{"audio_key":"a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e","entity_key":"lx_passive_processes_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_processes_02 -> audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d983bd54-ff59-58dd-86b6-b36aa400318a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_processes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c015b0f8-8e6e-5798-890e-bcf1046a6921', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d983bd54-ff59-58dd-86b6-b36aa400318a', 1), 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3', 1515, '2026-09-13 17:56:56.623743', '8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb', 'validated', '{"audio_key":"a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e","entity_key":"wf_passive_processes_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hypothetical_alternatives_02 -> audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa86dc3b-4c59-5839-abaf-64ff2cf1030f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hypothetical_alternatives_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7654355-e210-5bb9-a16d-91503400fb6b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa86dc3b-4c59-5839-abaf-64ff2cf1030f', 1), '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3', 1280, '2026-09-13 17:56:57.652710', '8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab', 'validated', '{"audio_key":"a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879","entity_key":"lx_hypothetical_alternatives_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hypothetical_alternatives_02 -> audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cf2fdbb9-2feb-53ca-ac9b-e33915801084', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hypothetical_alternatives_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f47e1606-a9e4-5b29-91b1-7fce9553ab39', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cf2fdbb9-2feb-53ca-ac9b-e33915801084', 1), '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3', 1280, '2026-09-13 17:56:57.652710', '8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab', 'validated', '{"audio_key":"a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879","entity_key":"wf_hypothetical_alternatives_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_passive_processes_01 -> audio/generated/tr-TR/lexical/af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2adbb750-1cd0-52bc-9bf4-23df78ab1348', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_passive_processes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f312d947c8533aae12067ec2e1014afbc71148ecee51f07aed43f32ba257ffa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d72493f8-bb4a-5ece-b10c-0712a12e0f81', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2adbb750-1cd0-52bc-9bf4-23df78ab1348', 1), 'f312d947c8533aae12067ec2e1014afbc71148ecee51f07aed43f32ba257ffa1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840.mp3', 966, '2026-09-13 19:07:37.912162', '30c0d37a92b3bf7c4d101f7eec407b25ad373fd61fa6baa552ec889e6c33c279', 'validated', '{"audio_key":"af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840","entity_key":"lx_passive_processes_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30c0d37a92b3bf7c4d101f7eec407b25ad373fd61fa6baa552ec889e6c33c279","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_passive_processes_01 -> audio/generated/tr-TR/lexical/af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e05cff1c-b14a-50c4-bb8b-3cf727ee91ca', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_passive_processes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f312d947c8533aae12067ec2e1014afbc71148ecee51f07aed43f32ba257ffa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df19d740-237e-54ae-879c-f96d4c8fd6ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e05cff1c-b14a-50c4-bb8b-3cf727ee91ca', 1), 'f312d947c8533aae12067ec2e1014afbc71148ecee51f07aed43f32ba257ffa1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840.mp3', 966, '2026-09-13 19:07:37.912162', '30c0d37a92b3bf7c4d101f7eec407b25ad373fd61fa6baa552ec889e6c33c279', 'validated', '{"audio_key":"af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840","entity_key":"wf_passive_processes_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30c0d37a92b3bf7c4d101f7eec407b25ad373fd61fa6baa552ec889e6c33c279","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/af603c62115af46081572946952dbc2d45cd64b71457f868169b969ebeaab840.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_05 -> audio/generated/tr-TR/lexical/b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('474f70d3-c0e7-5a81-81ef-bbf6230b75c3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76a60f2b477f839400c095a20f803a8937cec02b6b342e82c288fa60d1493009'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a342b782-0303-5e5e-b3b5-15c767240fd9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('474f70d3-c0e7-5a81-81ef-bbf6230b75c3', 1), '76a60f2b477f839400c095a20f803a8937cec02b6b342e82c288fa60d1493009',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4.mp3', 1097, '2026-09-13 19:07:38.116152', '21b8e41749fcbb50ddcdea97c8af39f536561e122bf0c5b015ca4c453fc1c575', 'validated', '{"audio_key":"b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4","entity_key":"lx_concession_and_disagreement_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21b8e41749fcbb50ddcdea97c8af39f536561e122bf0c5b015ca4c453fc1c575","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_05 -> audio/generated/tr-TR/lexical/b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8bce9737-3e8c-55cc-b2c8-ec5e0ebb5edc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76a60f2b477f839400c095a20f803a8937cec02b6b342e82c288fa60d1493009'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49da48fe-c0e4-5257-acfd-0a505ca2c920', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8bce9737-3e8c-55cc-b2c8-ec5e0ebb5edc', 1), '76a60f2b477f839400c095a20f803a8937cec02b6b342e82c288fa60d1493009',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4.mp3', 1097, '2026-09-13 19:07:38.116152', '21b8e41749fcbb50ddcdea97c8af39f536561e122bf0c5b015ca4c453fc1c575', 'validated', '{"audio_key":"b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4","entity_key":"wf_concession_and_disagreement_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21b8e41749fcbb50ddcdea97c8af39f536561e122bf0c5b015ca4c453fc1c575","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b1cdb8a9d7447e3885a30bb240a9557606804955950e6e797da786050af46af4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hypothetical_alternatives_01 -> audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('17bd78ca-133d-52f8-af81-fa24a3cfb69c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hypothetical_alternatives_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60af2ab4-e206-5949-9b7c-a159db4768b7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('17bd78ca-133d-52f8-af81-fa24a3cfb69c', 1), 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3', 1149, '2026-09-13 19:07:38.891800', 'c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f', 'validated', '{"audio_key":"c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10","entity_key":"lx_hypothetical_alternatives_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hypothetical_alternatives_01 -> audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b3184803-774f-59d7-bf06-c0259f396fd0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hypothetical_alternatives_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb88b4a0-1f7e-545f-aaef-2f718d3c73df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b3184803-774f-59d7-bf06-c0259f396fd0', 1), 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3', 1149, '2026-09-13 19:07:38.891800', 'c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f', 'validated', '{"audio_key":"c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10","entity_key":"wf_hypothetical_alternatives_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inference_and_evidence_05 -> audio/generated/tr-TR/lexical/c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2db65087-9dd9-5d15-b6c8-f35411bd1367', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inference_and_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20c6d0d1b4d56f313fb5f77cf7e6a10707c49f0a3a010a65c7dbc927ec110e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72dc1d3f-4fca-5995-8f5b-96702c94bcbe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2db65087-9dd9-5d15-b6c8-f35411bd1367', 1), '20c6d0d1b4d56f313fb5f77cf7e6a10707c49f0a3a010a65c7dbc927ec110e84',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98.mp3', 1071, '2026-09-13 19:07:39.078143', '2b444f6a2fabfe9d195c38e3061ff7cdb7db8d7542a930254fdd9a9c1e750672', 'validated', '{"audio_key":"c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98","entity_key":"lx_inference_and_evidence_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b444f6a2fabfe9d195c38e3061ff7cdb7db8d7542a930254fdd9a9c1e750672","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inference_and_evidence_05 -> audio/generated/tr-TR/lexical/c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('471d9c64-2e94-5b5c-b1ee-efed71803464', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inference_and_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20c6d0d1b4d56f313fb5f77cf7e6a10707c49f0a3a010a65c7dbc927ec110e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1eab2e54-5f66-53ff-8ef7-7f6c81a8f03f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('471d9c64-2e94-5b5c-b1ee-efed71803464', 1), '20c6d0d1b4d56f313fb5f77cf7e6a10707c49f0a3a010a65c7dbc927ec110e84',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98.mp3', 1071, '2026-09-13 19:07:39.078143', '2b444f6a2fabfe9d195c38e3061ff7cdb7db8d7542a930254fdd9a9c1e750672', 'validated', '{"audio_key":"c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98","entity_key":"wf_inference_and_evidence_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b444f6a2fabfe9d195c38e3061ff7cdb7db8d7542a930254fdd9a9c1e750672","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c688f2f9d95f3295fd98d1adcc294ff658b6888fdb25ee13313b11d131e5cd98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_01 -> audio/generated/tr-TR/lexical/cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d7dbb19f-820a-5b1b-8517-0c9c4c294a87', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31052c4e436244703e90693090c18787e7b30a8ed123622d4c60a1ce9f0b55dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1f9e724-3a40-5dea-9d9b-f8a017279d39', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d7dbb19f-820a-5b1b-8517-0c9c4c294a87', 1), '31052c4e436244703e90693090c18787e7b30a8ed123622d4c60a1ce9f0b55dd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec.mp3', 1253, '2026-09-13 19:07:39.855956', '57b975bd4ab0264d8f0ffe21e5ee8cdff9fa169c1ecbfb1c36b5e726fbf43128', 'validated', '{"audio_key":"cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec","entity_key":"lx_nuanced_stance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57b975bd4ab0264d8f0ffe21e5ee8cdff9fa169c1ecbfb1c36b5e726fbf43128","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_01 -> audio/generated/tr-TR/lexical/cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('19371288-5105-5f10-b392-10c1aa634221', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31052c4e436244703e90693090c18787e7b30a8ed123622d4c60a1ce9f0b55dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1065e308-89b1-5f20-84d4-458e25ce1899', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('19371288-5105-5f10-b392-10c1aa634221', 1), '31052c4e436244703e90693090c18787e7b30a8ed123622d4c60a1ce9f0b55dd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec.mp3', 1253, '2026-09-13 19:07:39.855956', '57b975bd4ab0264d8f0ffe21e5ee8cdff9fa169c1ecbfb1c36b5e726fbf43128', 'validated', '{"audio_key":"cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec","entity_key":"wf_nuanced_stance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57b975bd4ab0264d8f0ffe21e5ee8cdff9fa169c1ecbfb1c36b5e726fbf43128","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/cc2f3842744b70f1dbf02e3d7979e2153cc35d40a7dce76a944d7269ab4b2eec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nuanced_stance_04 -> audio/generated/tr-TR/lexical/d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ace3b53b-46d3-5451-b38f-9dff9c0654f3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nuanced_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f6a6fe222f53597a0589d62111d2c8896f398259dbd62623e4883ada1324320'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc272fd5-00ab-5102-acb5-7155f6d079bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ace3b53b-46d3-5451-b38f-9dff9c0654f3', 1), '2f6a6fe222f53597a0589d62111d2c8896f398259dbd62623e4883ada1324320',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e.mp3', 1149, '2026-09-13 19:07:40.314142', 'cd299108f395967ccb71e1e60a2922a9b16074e2f955169f6d7918c4b7450766', 'validated', '{"audio_key":"d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e","entity_key":"lx_nuanced_stance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd299108f395967ccb71e1e60a2922a9b16074e2f955169f6d7918c4b7450766","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nuanced_stance_04 -> audio/generated/tr-TR/lexical/d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e4ec87f4-f6b2-557f-88a0-7a31e73641f6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nuanced_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f6a6fe222f53597a0589d62111d2c8896f398259dbd62623e4883ada1324320'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61d6adb4-9cff-5714-8373-0e010dfdb49f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e4ec87f4-f6b2-557f-88a0-7a31e73641f6', 1), '2f6a6fe222f53597a0589d62111d2c8896f398259dbd62623e4883ada1324320',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e.mp3', 1149, '2026-09-13 19:07:40.314142', 'cd299108f395967ccb71e1e60a2922a9b16074e2f955169f6d7918c4b7450766', 'validated', '{"audio_key":"d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e","entity_key":"wf_nuanced_stance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd299108f395967ccb71e1e60a2922a9b16074e2f955169f6d7918c4b7450766","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d656b37ca1dbbe6db24bf6c93949a74b74b8fba7e9bc8adefb50c4c0d929e66e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_06 -> audio/generated/tr-TR/lexical/d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1baca6c8-5495-5305-bd0f-a08e5d13a73b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65736b5e4189bb166114cd5aa2aea8e49f4d2709289b18bcb9696a9b29f4597c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8209d461-fd52-5b8e-a63b-45de0736b30e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1baca6c8-5495-5305-bd0f-a08e5d13a73b', 1), '65736b5e4189bb166114cd5aa2aea8e49f4d2709289b18bcb9696a9b29f4597c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53.mp3', 1253, '2026-09-13 19:07:40.810385', 'ad267d2736c71f92cc71e06ab9df5f940e351ade6a7e93a6160589ea93683f62', 'validated', '{"audio_key":"d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53","entity_key":"lx_formal_negotiation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad267d2736c71f92cc71e06ab9df5f940e351ade6a7e93a6160589ea93683f62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_06 -> audio/generated/tr-TR/lexical/d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b639a341-69c3-5cef-8f6a-8f406f36d5c0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65736b5e4189bb166114cd5aa2aea8e49f4d2709289b18bcb9696a9b29f4597c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef2c386a-c35b-5717-82ba-4b558c3a7404', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b639a341-69c3-5cef-8f6a-8f406f36d5c0', 1), '65736b5e4189bb166114cd5aa2aea8e49f4d2709289b18bcb9696a9b29f4597c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53.mp3', 1253, '2026-09-13 19:07:40.810385', 'ad267d2736c71f92cc71e06ab9df5f940e351ade6a7e93a6160589ea93683f62', 'validated', '{"audio_key":"d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53","entity_key":"wf_formal_negotiation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad267d2736c71f92cc71e06ab9df5f940e351ade6a7e93a6160589ea93683f62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d86a2ab8a621c72cf90dab9872633013dfe1ff320d7481a358f3168a9b983c53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_inference_and_evidence_06 -> audio/generated/tr-TR/lexical/de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16587a9a-ed37-5050-a57a-384fe365ad09', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_inference_and_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '429aa7db07238c080eee0e55d905473592796be578cd2d3ff52b36c53f3fd672'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94b659f7-f647-5f01-a567-7a0aaa4d94c4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16587a9a-ed37-5050-a57a-384fe365ad09', 1), '429aa7db07238c080eee0e55d905473592796be578cd2d3ff52b36c53f3fd672',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07.mp3', 1149, '2026-09-13 19:07:41.267272', 'de4d5a3f0ddc9f131eeac34b8ed0487cf4f8610957e071060df764bd65a47a23', 'validated', '{"audio_key":"de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07","entity_key":"lx_inference_and_evidence_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de4d5a3f0ddc9f131eeac34b8ed0487cf4f8610957e071060df764bd65a47a23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_inference_and_evidence_06 -> audio/generated/tr-TR/lexical/de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da53fd8e-c7fd-57eb-aefc-57975229405e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_inference_and_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '429aa7db07238c080eee0e55d905473592796be578cd2d3ff52b36c53f3fd672'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c484a26-7d74-519b-bf5c-1866a5803ae9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da53fd8e-c7fd-57eb-aefc-57975229405e', 1), '429aa7db07238c080eee0e55d905473592796be578cd2d3ff52b36c53f3fd672',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07.mp3', 1149, '2026-09-13 19:07:41.267272', 'de4d5a3f0ddc9f131eeac34b8ed0487cf4f8610957e071060df764bd65a47a23', 'validated', '{"audio_key":"de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07","entity_key":"wf_inference_and_evidence_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de4d5a3f0ddc9f131eeac34b8ed0487cf4f8610957e071060df764bd65a47a23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/de460b6f34c4cf5800543a8cae30d90cf6dc57898d5eec70c303c139cdf15c07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_viewpoints_02 -> audio/generated/tr-TR/lexical/e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46948fa9-510c-514a-9fc8-eb634066508f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_viewpoints_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54e62add275e06563ecc846c49f7ace0a08fd1c8c0c2811b3ea4faf40d1ab26f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e6517f9-6827-5d20-ae81-2e4241eabf3f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46948fa9-510c-514a-9fc8-eb634066508f', 1), '54e62add275e06563ecc846c49f7ace0a08fd1c8c0c2811b3ea4faf40d1ab26f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c.mp3', 1384, '2026-09-13 19:07:41.774907', 'ae0634ed7ce7a0ea32c5248229e3de5e2538009909f0ff9c4a9395dbfc270669', 'validated', '{"audio_key":"e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c","entity_key":"lx_summarizing_viewpoints_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae0634ed7ce7a0ea32c5248229e3de5e2538009909f0ff9c4a9395dbfc270669","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_viewpoints_02 -> audio/generated/tr-TR/lexical/e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ef792f5-08c8-5eff-b6d7-f2d188365c4b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_viewpoints_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54e62add275e06563ecc846c49f7ace0a08fd1c8c0c2811b3ea4faf40d1ab26f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cd688a2-bc9a-529a-aec9-215b09a502eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ef792f5-08c8-5eff-b6d7-f2d188365c4b', 1), '54e62add275e06563ecc846c49f7ace0a08fd1c8c0c2811b3ea4faf40d1ab26f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c.mp3', 1384, '2026-09-13 19:07:41.774907', 'ae0634ed7ce7a0ea32c5248229e3de5e2538009909f0ff9c4a9395dbfc270669', 'validated', '{"audio_key":"e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c","entity_key":"wf_summarizing_viewpoints_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae0634ed7ce7a0ea32c5248229e3de5e2538009909f0ff9c4a9395dbfc270669","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e51348196b3866efcbbf3ab29a35e513499896ae0d19a08a92af7fa04e38244c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_viewpoints_05 -> audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('974f7937-795f-5110-b43b-b94eaac7eb40', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_viewpoints_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd28659-8140-55af-8fad-5a6a1f213a65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('974f7937-795f-5110-b43b-b94eaac7eb40', 1), '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3', 1149, '2026-09-13 19:07:42.226623', '8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2', 'validated', '{"audio_key":"e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d","entity_key":"lx_summarizing_viewpoints_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_viewpoints_05 -> audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97e42b94-c13c-5705-9a0f-1129d5bdc831', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_viewpoints_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2ef1938-55a3-529d-ae4d-69b8fb343374', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97e42b94-c13c-5705-9a0f-1129d5bdc831', 1), '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3', 1149, '2026-09-13 19:07:42.226623', '8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2', 'validated', '{"audio_key":"e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d","entity_key":"wf_summarizing_viewpoints_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causes_and_consequences_04 -> audio/generated/tr-TR/lexical/e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2b0f9bef-e7ee-5c02-9dd3-d62b583a5575', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causes_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ffa70d0d0e7c4e61530909473a462847e0a84708f8055bb77463b48507072b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9796ee55-181f-5288-87db-650aea78c0f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2b0f9bef-e7ee-5c02-9dd3-d62b583a5575', 1), '0ffa70d0d0e7c4e61530909473a462847e0a84708f8055bb77463b48507072b0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a.mp3', 1384, '2026-09-13 19:07:42.738972', 'b1e0dc2f98cddd6a35211ceec73e357593d8e3190947ede21768b91a1f5f0933', 'validated', '{"audio_key":"e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a","entity_key":"lx_causes_and_consequences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1e0dc2f98cddd6a35211ceec73e357593d8e3190947ede21768b91a1f5f0933","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causes_and_consequences_04 -> audio/generated/tr-TR/lexical/e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00b8eabb-e0cc-5b49-9e60-d7e13fe16a6c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causes_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ffa70d0d0e7c4e61530909473a462847e0a84708f8055bb77463b48507072b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83000308-e8c9-5a22-ae56-de4096fbe064', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00b8eabb-e0cc-5b49-9e60-d7e13fe16a6c', 1), '0ffa70d0d0e7c4e61530909473a462847e0a84708f8055bb77463b48507072b0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a.mp3', 1384, '2026-09-13 19:07:42.738972', 'b1e0dc2f98cddd6a35211ceec73e357593d8e3190947ede21768b91a1f5f0933', 'validated', '{"audio_key":"e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a","entity_key":"wf_causes_and_consequences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1e0dc2f98cddd6a35211ceec73e357593d8e3190947ede21768b91a1f5f0933","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e7a46da247829b2a755fbe9df9aa7bb2be14901c1ccca8ba154a6b4f3582333a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_causes_and_consequences_03 -> audio/generated/tr-TR/lexical/e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('60feff34-b4e4-5435-9a6a-d7990b8472ab', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_causes_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be4aca74856737c39159204885a8b2f32bd68bfab4543495303b1708e7052766'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bb074e0-71d8-5b75-bf16-682280e74cf9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('60feff34-b4e4-5435-9a6a-d7990b8472ab', 1), 'be4aca74856737c39159204885a8b2f32bd68bfab4543495303b1708e7052766',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112.mp3', 1201, '2026-09-13 19:07:43.179324', '0a9042006cbf58edd79be7991e24f828d77fc14e418f2b7b3b80b1f22dbeda7b', 'validated', '{"audio_key":"e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112","entity_key":"lx_causes_and_consequences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a9042006cbf58edd79be7991e24f828d77fc14e418f2b7b3b80b1f22dbeda7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_causes_and_consequences_03 -> audio/generated/tr-TR/lexical/e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ab8ea52e-47ee-5628-b6a4-3f7239c91695', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_causes_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be4aca74856737c39159204885a8b2f32bd68bfab4543495303b1708e7052766'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00944e67-174c-5a29-8189-cf707a35c4ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ab8ea52e-47ee-5628-b6a4-3f7239c91695', 1), 'be4aca74856737c39159204885a8b2f32bd68bfab4543495303b1708e7052766',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112.mp3', 1201, '2026-09-13 19:07:43.179324', '0a9042006cbf58edd79be7991e24f828d77fc14e418f2b7b3b80b1f22dbeda7b', 'validated', '{"audio_key":"e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112","entity_key":"wf_causes_and_consequences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a9042006cbf58edd79be7991e24f828d77fc14e418f2b7b3b80b1f22dbeda7b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e9ae365fe66373c532ac745939faf3a568bf828814b967d7f4571df242ec9112.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_forum_capstone_03 -> audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1187acf7-ddb1-5b19-b7cc-674740fc2f54', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b0d4d34-3631-5a8c-b9ee-d030984f6fe0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1187acf7-ddb1-5b19-b7cc-674740fc2f54', 1), '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3', 1149, '2026-09-13 19:07:43.663704', '75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4', 'validated', '{"audio_key":"ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0","entity_key":"lx_b2_community_forum_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_forum_capstone_03 -> audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('75852753-5d44-50d0-b4eb-26eab5ec7f5e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6d16091-03ae-599f-9e8d-5c43e6f72715', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('75852753-5d44-50d0-b4eb-26eab5ec7f5e', 1), '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3', 1149, '2026-09-13 19:07:43.663704', '75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4', 'validated', '{"audio_key":"ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0","entity_key":"wf_b2_community_forum_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_forum_capstone_06 -> audio/generated/tr-TR/lexical/f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('94978766-3f2c-5f4b-aab3-f6c7f96dc31f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87969ea89856b889f13141ea32a4fa627c1a3caa3270debe5bda75af51d64b6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7b816e8-ee17-5c8e-adf4-c9652861c7c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('94978766-3f2c-5f4b-aab3-f6c7f96dc31f', 1), '87969ea89856b889f13141ea32a4fa627c1a3caa3270debe5bda75af51d64b6d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282.mp3', 1332, '2026-09-13 19:07:44.188352', '86d9d27575df4b099ddb99b2901cf572397a0a87565405dd0d3127b575aa7202', 'validated', '{"audio_key":"f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282","entity_key":"lx_b2_community_forum_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86d9d27575df4b099ddb99b2901cf572397a0a87565405dd0d3127b575aa7202","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_forum_capstone_06 -> audio/generated/tr-TR/lexical/f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eae0b8a6-63d1-5e0b-9d56-61d97e626d61', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87969ea89856b889f13141ea32a4fa627c1a3caa3270debe5bda75af51d64b6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e730e598-6c25-5811-a415-f6f4b11fdc3f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eae0b8a6-63d1-5e0b-9d56-61d97e626d61', 1), '87969ea89856b889f13141ea32a4fa627c1a3caa3270debe5bda75af51d64b6d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282.mp3', 1332, '2026-09-13 19:07:44.188352', '86d9d27575df4b099ddb99b2901cf572397a0a87565405dd0d3127b575aa7202', 'validated', '{"audio_key":"f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282","entity_key":"wf_b2_community_forum_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86d9d27575df4b099ddb99b2901cf572397a0a87565405dd0d3127b575aa7202","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f251fc0be80c0ec396ea8569686e903e6f09d5f71405cc0ee8e33d450284d282.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b2_community_forum_capstone_04 -> audio/generated/tr-TR/lexical/f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35275246-88ee-59d6-bd5a-9de4ceb4bbaa', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b2_community_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49d7c344aac08132cc6ecf4a91b514d30ab7a603c7fe3a52a3eb474c10f229c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('281b7cce-c1af-5211-b28e-38b98d3cbb4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35275246-88ee-59d6-bd5a-9de4ceb4bbaa', 1), '49d7c344aac08132cc6ecf4a91b514d30ab7a603c7fe3a52a3eb474c10f229c4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e.mp3', 1097, '2026-09-13 19:07:44.681008', 'c673ef3e17b7a5c4e97bde22dced929c5d1c88748e806d6882f25a5d9248b02b', 'validated', '{"audio_key":"f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e","entity_key":"lx_b2_community_forum_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c673ef3e17b7a5c4e97bde22dced929c5d1c88748e806d6882f25a5d9248b02b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b2_community_forum_capstone_04 -> audio/generated/tr-TR/lexical/f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8cf81089-9538-5c84-8194-2b91bd2d9f3c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b2_community_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49d7c344aac08132cc6ecf4a91b514d30ab7a603c7fe3a52a3eb474c10f229c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fc28251-795e-5956-98cf-f983101c5bde', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8cf81089-9538-5c84-8194-2b91bd2d9f3c', 1), '49d7c344aac08132cc6ecf4a91b514d30ab7a603c7fe3a52a3eb474c10f229c4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e.mp3', 1097, '2026-09-13 19:07:44.681008', 'c673ef3e17b7a5c4e97bde22dced929c5d1c88748e806d6882f25a5d9248b02b', 'validated', '{"audio_key":"f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e","entity_key":"wf_b2_community_forum_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c673ef3e17b7a5c4e97bde22dced929c5d1c88748e806d6882f25a5d9248b02b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f2fd800b0e9aafbdfd61ecb6f436ed994e94ec653eaec0d3b8fa6a8b06ab479e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_03 -> audio/generated/tr-TR/lexical/f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a4f816d2-4054-5431-a9aa-4b0225b210d8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec771eefe0d440432cb90fc9380b9da86ede508d556643ae32286ff4ea44d709'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6fce2ed-821b-5066-bfd9-0ced83cb7504', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a4f816d2-4054-5431-a9aa-4b0225b210d8', 1), 'ec771eefe0d440432cb90fc9380b9da86ede508d556643ae32286ff4ea44d709',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0.mp3', 1071, '2026-09-13 19:07:45.132547', '7e53f3e0a47532387ca630c0407146f119f61462258a4bbaa04fc968cc19b8f2', 'validated', '{"audio_key":"f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0","entity_key":"lx_formal_negotiation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e53f3e0a47532387ca630c0407146f119f61462258a4bbaa04fc968cc19b8f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_03 -> audio/generated/tr-TR/lexical/f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ccf2a8f5-293a-5fb7-8eed-25b42318fdd3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec771eefe0d440432cb90fc9380b9da86ede508d556643ae32286ff4ea44d709'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('553218d7-b649-55db-8f2d-94038380430a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ccf2a8f5-293a-5fb7-8eed-25b42318fdd3', 1), 'ec771eefe0d440432cb90fc9380b9da86ede508d556643ae32286ff4ea44d709',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0.mp3', 1071, '2026-09-13 19:07:45.132547', '7e53f3e0a47532387ca630c0407146f119f61462258a4bbaa04fc968cc19b8f2', 'validated', '{"audio_key":"f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0","entity_key":"wf_formal_negotiation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e53f3e0a47532387ca630c0407146f119f61462258a4bbaa04fc968cc19b8f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f3f5f408f6277cf4d9a48850c9fb60325f22e1795cba8485a31410b3199718f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_negotiation_04 -> audio/generated/tr-TR/lexical/f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('52867413-cd2c-525c-8bc2-f3f1fa52c47a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ff127206dca2947c08112c94e5cf4e54f8756e2811d0d54152e8fdd636141ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bc83a13-61e4-5931-b1f0-1196b917d8e7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('52867413-cd2c-525c-8bc2-f3f1fa52c47a', 1), '8ff127206dca2947c08112c94e5cf4e54f8756e2811d0d54152e8fdd636141ba',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf.mp3', 1384, '2026-09-13 19:07:45.651489', '5b64bd3b08c6777753f2a0756fc3a4f8c3fa566cf8d7c2a1b762dc870c52121c', 'validated', '{"audio_key":"f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf","entity_key":"lx_formal_negotiation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b64bd3b08c6777753f2a0756fc3a4f8c3fa566cf8d7c2a1b762dc870c52121c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_negotiation_04 -> audio/generated/tr-TR/lexical/f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e358a8ac-2d7f-5d43-a459-9dba34c2c784', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ff127206dca2947c08112c94e5cf4e54f8756e2811d0d54152e8fdd636141ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('982d9157-4dfb-56f8-898c-7aab12bdaad8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e358a8ac-2d7f-5d43-a459-9dba34c2c784', 1), '8ff127206dca2947c08112c94e5cf4e54f8756e2811d0d54152e8fdd636141ba',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf.mp3', 1384, '2026-09-13 19:07:45.651489', '5b64bd3b08c6777753f2a0756fc3a4f8c3fa566cf8d7c2a1b762dc870c52121c', 'validated', '{"audio_key":"f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf","entity_key":"wf_formal_negotiation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b64bd3b08c6777753f2a0756fc3a4f8c3fa566cf8d7c2a1b762dc870c52121c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f4d71ee4d3416b9ea05a1e0caf1cd22b62643db74f9dc1772432c00369b59edf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_06 -> audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a63d531-14b1-5e7d-949e-3d296b91ce9e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94a2914d-7397-59bf-8025-5e11861b03b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a63d531-14b1-5e7d-949e-3d296b91ce9e', 1), 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3', 1201, '2026-09-13 17:57:06.364216', 'af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd', 'validated', '{"audio_key":"f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1","entity_key":"lx_concession_and_disagreement_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_06 -> audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e641db27-6edf-56ca-8e25-4feec7fc7bea', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f816a9a-d047-5e41-9b5f-1967aa499922', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e641db27-6edf-56ca-8e25-4feec7fc7bea', 1), 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3', 1201, '2026-09-13 17:57:06.364216', 'af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd', 'validated', '{"audio_key":"f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1","entity_key":"wf_concession_and_disagreement_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_disagreement_03 -> audio/generated/tr-TR/lexical/f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2bbb62ca-48e5-51c7-9c66-91aa51f82c3f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5fe8c99919c5b100dbc249157f01bf721ffce995c1c66abe7155ecc69e0946a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33249b66-af7a-5b37-b252-0895d54a9bd6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2bbb62ca-48e5-51c7-9c66-91aa51f82c3f', 1), 'e5fe8c99919c5b100dbc249157f01bf721ffce995c1c66abe7155ecc69e0946a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20.mp3', 1071, '2026-09-13 19:07:46.106448', 'e9d147ad9cc2ddb6a5d13b6d38b4e741c38d5c9e7c1ad11fbdc40bc7f575015c', 'validated', '{"audio_key":"f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20","entity_key":"lx_concession_and_disagreement_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9d147ad9cc2ddb6a5d13b6d38b4e741c38d5c9e7c1ad11fbdc40bc7f575015c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_disagreement_03 -> audio/generated/tr-TR/lexical/f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ae08c00-21a7-5ce5-b7c0-e339e7e6a128', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5fe8c99919c5b100dbc249157f01bf721ffce995c1c66abe7155ecc69e0946a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d9d47e3-c222-51f0-b280-e271c687ea47', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ae08c00-21a7-5ce5-b7c0-e339e7e6a128', 1), 'e5fe8c99919c5b100dbc249157f01bf721ffce995c1c66abe7155ecc69e0946a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20.mp3', 1071, '2026-09-13 19:07:46.106448', 'e9d147ad9cc2ddb6a5d13b6d38b4e741c38d5c9e7c1ad11fbdc40bc7f575015c', 'validated', '{"audio_key":"f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20","entity_key":"wf_concession_and_disagreement_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9d147ad9cc2ddb6a5d13b6d38b4e741c38d5c9e7c1ad11fbdc40bc7f575015c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f86eeead6ce98a2852908241f3ad0b90882a4fce85091434603e5bece7e98e20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relative_detail_01 -> audio/generated/tr-TR/lexical/fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e036dd0-4f9c-53aa-aa1e-9d63c9de0f87', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relative_detail_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '221a6b83df7267db4bcca08941c65bb248fec3b60bbe1f57e63ee737f2e7eb20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af39b01d-8099-53cd-b496-5994c3e009a2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e036dd0-4f9c-53aa-aa1e-9d63c9de0f87', 1), '221a6b83df7267db4bcca08941c65bb248fec3b60bbe1f57e63ee737f2e7eb20',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945.mp3', 1149, '2026-09-13 19:07:46.613044', 'bb0ec9ac1d0e6141fd5d5f03dbf5b56d05bc710d82ffabfdc4d653529af88973', 'validated', '{"audio_key":"fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945","entity_key":"lx_relative_detail_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb0ec9ac1d0e6141fd5d5f03dbf5b56d05bc710d82ffabfdc4d653529af88973","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relative_detail_01 -> audio/generated/tr-TR/lexical/fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('954cc0c0-f2b5-58e2-bc44-3a0ed548b668', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relative_detail_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '221a6b83df7267db4bcca08941c65bb248fec3b60bbe1f57e63ee737f2e7eb20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0789fe7d-94f7-5a10-a13f-45e298828540', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('954cc0c0-f2b5-58e2-bc44-3a0ed548b668', 1), '221a6b83df7267db4bcca08941c65bb248fec3b60bbe1f57e63ee737f2e7eb20',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945.mp3', 1149, '2026-09-13 19:07:46.613044', 'bb0ec9ac1d0e6141fd5d5f03dbf5b56d05bc710d82ffabfdc4d653529af88973', 'validated', '{"audio_key":"fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945","entity_key":"wf_relative_detail_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb0ec9ac1d0e6141fd5d5f03dbf5b56d05bc710d82ffabfdc4d653529af88973","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fb5a98956af139ae579944c359ca0b20087d6e36ed1639ffb8a229f543573945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causes_and_consequences_02 -> audio/generated/tr-TR/utterances/02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eb2fa9da-b8ad-5d79-8b2e-7a47872abe5c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causes_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '087fb2a676c999d65cec8cc4b374d780105d8681562c08d6a172c304b77c9a3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acd4a0fe-90ef-59a8-a8cf-7b49a3957219', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eb2fa9da-b8ad-5d79-8b2e-7a47872abe5c', 1), '087fb2a676c999d65cec8cc4b374d780105d8681562c08d6a172c304b77c9a3c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71.mp3', 2690, '2026-09-13 19:07:47.271570', '81b0fdf6f3c0ed18a830a0f1b9585761f9150097a3e574afc965fcf3466404af', 'validated', '{"audio_key":"02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71","entity_key":"u_causes_and_consequences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81b0fdf6f3c0ed18a830a0f1b9585761f9150097a3e574afc965fcf3466404af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_causes_and_consequences_01_listen -> audio/generated/tr-TR/utterances/02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('95916362-9990-5c28-a14a-ac27fe17ab2c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_causes_and_consequences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '087fb2a676c999d65cec8cc4b374d780105d8681562c08d6a172c304b77c9a3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fee63788-48d1-555b-867e-e2b440c0769d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('95916362-9990-5c28-a14a-ac27fe17ab2c', 1), '087fb2a676c999d65cec8cc4b374d780105d8681562c08d6a172c304b77c9a3c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71.mp3', 2690, '2026-09-13 19:07:47.271570', '81b0fdf6f3c0ed18a830a0f1b9585761f9150097a3e574afc965fcf3466404af', 'validated', '{"audio_key":"02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71","entity_key":"e_causes_and_consequences_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81b0fdf6f3c0ed18a830a0f1b9585761f9150097a3e574afc965fcf3466404af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/02f02ce0398fb3ef15f234ac2fc26101513091dc09b6e253de14e38e74a00b71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_forum_capstone_01 -> audio/generated/tr-TR/utterances/0dca86b161d9fbbdf898883fe885de030eb924ea82a167c253acecc9855974f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a51e1eeb-9ab2-5057-94ee-0af555060176', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e55ade39d0d49528fb5db6f5728e4804b72a980fd7d5742ccdc3ab3b8c296b26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34c83025-c997-555d-b0d2-752062f153a0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a51e1eeb-9ab2-5057-94ee-0af555060176', 1), 'e55ade39d0d49528fb5db6f5728e4804b72a980fd7d5742ccdc3ab3b8c296b26',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0dca86b161d9fbbdf898883fe885de030eb924ea82a167c253acecc9855974f9.mp3', 4911, '2026-09-13 19:07:48.040538', '4cea9837116879233bba6ee0bcd39347d821adcd9b5f2a05911292d5e43ac8c1', 'validated', '{"audio_key":"0dca86b161d9fbbdf898883fe885de030eb924ea82a167c253acecc9855974f9","entity_key":"u_b2_community_forum_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cea9837116879233bba6ee0bcd39347d821adcd9b5f2a05911292d5e43ac8c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0dca86b161d9fbbdf898883fe885de030eb924ea82a167c253acecc9855974f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inference_and_evidence_02 -> audio/generated/tr-TR/utterances/121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9974ba6d-02e4-5d75-887f-c1590533d72f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inference_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e09c8d5dd2da019c030396e24aae5449209d1fa4751ca307de861ba258181b18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c32e8fe-e110-5d62-969f-7916bfd13720', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9974ba6d-02e4-5d75-887f-c1590533d72f', 1), 'e09c8d5dd2da019c030396e24aae5449209d1fa4751ca307de861ba258181b18',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21.mp3', 4832, '2026-09-13 19:07:48.648909', '80e3e66050ce5709708b2691858af040b294b30e672f5ac8cd379af575dc925a', 'validated', '{"audio_key":"121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21","entity_key":"u_inference_and_evidence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80e3e66050ce5709708b2691858af040b294b30e672f5ac8cd379af575dc925a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_inference_and_evidence_01_listen -> audio/generated/tr-TR/utterances/121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d4fa5655-ba90-5f50-bf63-6aec5a622a34', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_inference_and_evidence_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e09c8d5dd2da019c030396e24aae5449209d1fa4751ca307de861ba258181b18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5306c46-7de9-5f3b-b82b-ccd930359e92', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d4fa5655-ba90-5f50-bf63-6aec5a622a34', 1), 'e09c8d5dd2da019c030396e24aae5449209d1fa4751ca307de861ba258181b18',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21.mp3', 4832, '2026-09-13 19:07:48.648909', '80e3e66050ce5709708b2691858af040b294b30e672f5ac8cd379af575dc925a', 'validated', '{"audio_key":"121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21","entity_key":"e_inference_and_evidence_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80e3e66050ce5709708b2691858af040b294b30e672f5ac8cd379af575dc925a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/121dac145bd5cb2102b16bf83aee1d7b584ee8dac0059326d89d170f78f3bc21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_04 -> audio/generated/tr-TR/utterances/1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5c17899-e6d8-540b-ab64-0092d4e89093', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fa33c7bb8fb23f8e0d64e4f594dc1d3bc5669c3159dca0a2692c391f6e62859'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('375cc26b-2b53-55b6-ba56-d29edff9ad7a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5c17899-e6d8-540b-ab64-0092d4e89093', 1), '4fa33c7bb8fb23f8e0d64e4f594dc1d3bc5669c3159dca0a2692c391f6e62859',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b.mp3', 3892, '2026-09-13 19:07:49.345419', '22e70afc2fb81e9680df3192d2ee18f4d50da66dca509328c7f13f2bf330feaa', 'validated', '{"audio_key":"1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b","entity_key":"u_concession_and_disagreement_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22e70afc2fb81e9680df3192d2ee18f4d50da66dca509328c7f13f2bf330feaa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_disagreement_02_listen -> audio/generated/tr-TR/utterances/1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5defb6c6-caa0-526b-968a-b8532785172c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_disagreement_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fa33c7bb8fb23f8e0d64e4f594dc1d3bc5669c3159dca0a2692c391f6e62859'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('def5387e-ce55-5524-8813-3e09f3a11748', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5defb6c6-caa0-526b-968a-b8532785172c', 1), '4fa33c7bb8fb23f8e0d64e4f594dc1d3bc5669c3159dca0a2692c391f6e62859',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b.mp3', 3892, '2026-09-13 19:07:49.345419', '22e70afc2fb81e9680df3192d2ee18f4d50da66dca509328c7f13f2bf330feaa', 'validated', '{"audio_key":"1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b","entity_key":"e_concession_and_disagreement_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22e70afc2fb81e9680df3192d2ee18f4d50da66dca509328c7f13f2bf330feaa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1511c4e35dec987b41bd9de16a094954c8746c5a442fcb87302515f9f84f9c7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_viewpoints_04 -> audio/generated/tr-TR/utterances/25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('05192228-5b3e-5879-87be-573615766102', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_viewpoints_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f9118a062d69bc3c533a715c5d1a7a7c1c7d889d173b5e8a4459452ac5d3440'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e8b00dd-c7ee-549c-afa9-16670e04a8d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('05192228-5b3e-5879-87be-573615766102', 1), '7f9118a062d69bc3c533a715c5d1a7a7c1c7d889d173b5e8a4459452ac5d3440',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff.mp3', 5433, '2026-09-13 19:07:50.116824', '00b2c1c2e974daca899b25fa73bb25e477c93a89109da591b75cc14d0888462c', 'validated', '{"audio_key":"25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff","entity_key":"u_summarizing_viewpoints_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00b2c1c2e974daca899b25fa73bb25e477c93a89109da591b75cc14d0888462c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_summarizing_viewpoints_02_listen -> audio/generated/tr-TR/utterances/25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3bbff6f4-a607-5fd9-be20-ac53444d22c6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_summarizing_viewpoints_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f9118a062d69bc3c533a715c5d1a7a7c1c7d889d173b5e8a4459452ac5d3440'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b775e4b-fe4c-53b4-8b69-f37c10aa4fbc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3bbff6f4-a607-5fd9-be20-ac53444d22c6', 1), '7f9118a062d69bc3c533a715c5d1a7a7c1c7d889d173b5e8a4459452ac5d3440',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff.mp3', 5433, '2026-09-13 19:07:50.116824', '00b2c1c2e974daca899b25fa73bb25e477c93a89109da591b75cc14d0888462c', 'validated', '{"audio_key":"25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff","entity_key":"e_summarizing_viewpoints_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00b2c1c2e974daca899b25fa73bb25e477c93a89109da591b75cc14d0888462c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/25b4ac5dff2f70a2ef66ef768a38f43f0743958ab99943349392a919b34d6bff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_processes_01 -> audio/generated/tr-TR/utterances/301d99f21ed684a12a26074a6199bd4ba152f380f2e8b842c437870e2479004c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('626f8281-fca5-5ef9-865c-7d4b86a8dcf2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_processes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7946246cd8ad0b7e9a0c5d7778965940ebb480135a77bbe68ffdfae478d32669'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ae9145-d228-5ccb-8b99-45541a3e409d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('626f8281-fca5-5ef9-865c-7d4b86a8dcf2', 1), '7946246cd8ad0b7e9a0c5d7778965940ebb480135a77bbe68ffdfae478d32669',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/301d99f21ed684a12a26074a6199bd4ba152f380f2e8b842c437870e2479004c.mp3', 3787, '2026-09-13 19:07:50.604878', 'a8bcb3b3ebfec57e962886424a00df57e66d14722e93fc4c4f783430f87fd892', 'validated', '{"audio_key":"301d99f21ed684a12a26074a6199bd4ba152f380f2e8b842c437870e2479004c","entity_key":"u_passive_processes_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8bcb3b3ebfec57e962886424a00df57e66d14722e93fc4c4f783430f87fd892","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/301d99f21ed684a12a26074a6199bd4ba152f380f2e8b842c437870e2479004c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inference_and_evidence_01 -> audio/generated/tr-TR/utterances/371ef1d09fbe13b07c3bbef34b184447f5c8b90d578a00169fb3d62bded9f53c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('19d2ba4c-5336-5d8b-b798-9917186e9c55', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inference_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75a4861e69dfe822d157261c8d8091cd39574abedede3374fd9f622a5279aa44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c4999d3-88d3-5d2b-b496-72cf4431ec1a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('19d2ba4c-5336-5d8b-b798-9917186e9c55', 1), '75a4861e69dfe822d157261c8d8091cd39574abedede3374fd9f622a5279aa44',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/371ef1d09fbe13b07c3bbef34b184447f5c8b90d578a00169fb3d62bded9f53c.mp3', 3291, '2026-09-13 19:07:51.346663', 'e824cd9da00d2b2f5d071b4ffcd7ee9156338d66e520c76779ee76ccecde446a', 'validated', '{"audio_key":"371ef1d09fbe13b07c3bbef34b184447f5c8b90d578a00169fb3d62bded9f53c","entity_key":"u_inference_and_evidence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e824cd9da00d2b2f5d071b4ffcd7ee9156338d66e520c76779ee76ccecde446a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/371ef1d09fbe13b07c3bbef34b184447f5c8b90d578a00169fb3d62bded9f53c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relative_detail_03 -> audio/generated/tr-TR/utterances/37cfee5f11988c8d8ff068ac5eebf0557f388b740fa41201374523c97efe6ada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('702b6a94-4a21-59b7-9474-08822884e036', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relative_detail_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e9e67a83f1077c7bdc4211070f9efa0291767aa9a3454edaf4177ca20d853c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0b1ad82-a0e9-5517-b339-6fc9e83df167', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('702b6a94-4a21-59b7-9474-08822884e036', 1), '9e9e67a83f1077c7bdc4211070f9efa0291767aa9a3454edaf4177ca20d853c1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/37cfee5f11988c8d8ff068ac5eebf0557f388b740fa41201374523c97efe6ada.mp3', 3474, '2026-09-13 19:07:51.788958', '1acb6149ddff1444b74834620113e2bf587866b7b3ead28b9df5b9dab0e27894', 'validated', '{"audio_key":"37cfee5f11988c8d8ff068ac5eebf0557f388b740fa41201374523c97efe6ada","entity_key":"u_relative_detail_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1acb6149ddff1444b74834620113e2bf587866b7b3ead28b9df5b9dab0e27894","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/37cfee5f11988c8d8ff068ac5eebf0557f388b740fa41201374523c97efe6ada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_viewpoints_02 -> audio/generated/tr-TR/utterances/38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f005c7da-19a4-57b1-ab32-ea86641c3396', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_viewpoints_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a682c8dbafda3575a9015605bf1d6b77e1defeba6fb109a92ead9f373c7b5d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb9adeb6-8596-59ae-93b6-114f80250347', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f005c7da-19a4-57b1-ab32-ea86641c3396', 1), 'a682c8dbafda3575a9015605bf1d6b77e1defeba6fb109a92ead9f373c7b5d8b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f.mp3', 3761, '2026-09-13 19:07:52.619359', 'd26bc8ae195fb0e8b444bdedeed4bdb62d9d3ccd08d6d1952795cf7d3353fa46', 'validated', '{"audio_key":"38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f","entity_key":"u_summarizing_viewpoints_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d26bc8ae195fb0e8b444bdedeed4bdb62d9d3ccd08d6d1952795cf7d3353fa46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_summarizing_viewpoints_01_listen -> audio/generated/tr-TR/utterances/38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fa681a7b-4ec8-5868-803b-6cfbac8eadec', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_summarizing_viewpoints_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a682c8dbafda3575a9015605bf1d6b77e1defeba6fb109a92ead9f373c7b5d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fb22e8d-dc96-5ac6-80c3-98ae1341ce23', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fa681a7b-4ec8-5868-803b-6cfbac8eadec', 1), 'a682c8dbafda3575a9015605bf1d6b77e1defeba6fb109a92ead9f373c7b5d8b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f.mp3', 3761, '2026-09-13 19:07:52.619359', 'd26bc8ae195fb0e8b444bdedeed4bdb62d9d3ccd08d6d1952795cf7d3353fa46', 'validated', '{"audio_key":"38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f","entity_key":"e_summarizing_viewpoints_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d26bc8ae195fb0e8b444bdedeed4bdb62d9d3ccd08d6d1952795cf7d3353fa46","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/38ec57709f2a2917ad47fc864e5717ee42c573d5fe3635e7d76932bfa9ddfe6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hypothetical_alternatives_03 -> audio/generated/tr-TR/utterances/3c22242b7de5829e46bc4293870bacd754e9bd05764ea53667e3ea55da3c1e50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ebc38571-0205-5528-8348-3835f58cd6bd', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hypothetical_alternatives_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1388751926b43047ed43a7de50b8998612f8fd0c9736a9bb21956d9fc5d693a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70abf51b-290d-58fb-9a4e-e5ead97f87d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ebc38571-0205-5528-8348-3835f58cd6bd', 1), '1388751926b43047ed43a7de50b8998612f8fd0c9736a9bb21956d9fc5d693a8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3c22242b7de5829e46bc4293870bacd754e9bd05764ea53667e3ea55da3c1e50.mp3', 2742, '2026-09-13 19:07:52.907551', '60fb5dcf2e0dd51da6c1d86fab6c4cf27163f10cb077bab438c70a1ece4cef28', 'validated', '{"audio_key":"3c22242b7de5829e46bc4293870bacd754e9bd05764ea53667e3ea55da3c1e50","entity_key":"u_hypothetical_alternatives_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60fb5dcf2e0dd51da6c1d86fab6c4cf27163f10cb077bab438c70a1ece4cef28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3c22242b7de5829e46bc4293870bacd754e9bd05764ea53667e3ea55da3c1e50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_01 -> audio/generated/tr-TR/utterances/40b2a09b2202d9f5412bcab817f1c3c9841c75b46e8584d34120013913e1ff35.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('498ed83f-1264-5abd-945f-cb447230d1cd', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd396478dab44c503801819f17dcc017579abb603c8e292d7bb6857087c83232c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b63ef95-f27e-5394-a3aa-593708053fbc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('498ed83f-1264-5abd-945f-cb447230d1cd', 1), 'd396478dab44c503801819f17dcc017579abb603c8e292d7bb6857087c83232c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/40b2a09b2202d9f5412bcab817f1c3c9841c75b46e8584d34120013913e1ff35.mp3', 2821, '2026-09-13 19:07:53.768749', '4f00372fce2fd1764203df46553d4bc50d25f1bbac87276128bfa65b4e9af2bb', 'validated', '{"audio_key":"40b2a09b2202d9f5412bcab817f1c3c9841c75b46e8584d34120013913e1ff35","entity_key":"u_nuanced_stance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f00372fce2fd1764203df46553d4bc50d25f1bbac87276128bfa65b4e9af2bb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/40b2a09b2202d9f5412bcab817f1c3c9841c75b46e8584d34120013913e1ff35.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_processes_04 -> audio/generated/tr-TR/utterances/538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1138c6f8-ff07-5ff7-9135-885cb5627b8a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_processes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f359e74f3e0b207a7d37cac660c181f20a3b8325912c5666eeed565d100343e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe96fa8-bc14-528c-82e2-a1c0cd418bf6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1138c6f8-ff07-5ff7-9135-885cb5627b8a', 1), '1f359e74f3e0b207a7d37cac660c181f20a3b8325912c5666eeed565d100343e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e.mp3', 3787, '2026-09-13 19:07:54.167977', 'd6eafd01e8f9a46689d2a1ca3eec7daac22512c866bf372c58daa5789aed8ec0', 'validated', '{"audio_key":"538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e","entity_key":"u_passive_processes_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6eafd01e8f9a46689d2a1ca3eec7daac22512c866bf372c58daa5789aed8ec0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_passive_processes_02_listen -> audio/generated/tr-TR/utterances/538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6a5800d4-151f-55ac-b956-4922cb40e716', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_passive_processes_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f359e74f3e0b207a7d37cac660c181f20a3b8325912c5666eeed565d100343e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46eae514-66ba-5fc9-b16d-c283400f2e8b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6a5800d4-151f-55ac-b956-4922cb40e716', 1), '1f359e74f3e0b207a7d37cac660c181f20a3b8325912c5666eeed565d100343e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e.mp3', 3787, '2026-09-13 19:07:54.167977', 'd6eafd01e8f9a46689d2a1ca3eec7daac22512c866bf372c58daa5789aed8ec0', 'validated', '{"audio_key":"538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e","entity_key":"e_passive_processes_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6eafd01e8f9a46689d2a1ca3eec7daac22512c866bf372c58daa5789aed8ec0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/538cdcc7066cefbf8d42a726b969621a06eabb41ec8e33f7d6b342addb3e974e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_01 -> audio/generated/tr-TR/utterances/5a8098d8a50b73f7c36b425d2cf11d0368def1cfa79af3eb8fcdd4763a52ee8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e5a106e-7b79-5258-84a8-bcfa784935b9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31fa6b6f21794f1bbc1afcc91f28c36352b1c9f5ae2c628c09aa1e15dc08a232'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78054ae5-4493-5bbb-bde0-84efcb48055b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e5a106e-7b79-5258-84a8-bcfa784935b9', 1), '31fa6b6f21794f1bbc1afcc91f28c36352b1c9f5ae2c628c09aa1e15dc08a232',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a8098d8a50b73f7c36b425d2cf11d0368def1cfa79af3eb8fcdd4763a52ee8a.mp3', 3892, '2026-09-13 19:07:55.100334', 'a300251b3eb1b3f5082f61d6db8e386ee2f418521af94b050474f49af131bb3f', 'validated', '{"audio_key":"5a8098d8a50b73f7c36b425d2cf11d0368def1cfa79af3eb8fcdd4763a52ee8a","entity_key":"u_formal_negotiation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a300251b3eb1b3f5082f61d6db8e386ee2f418521af94b050474f49af131bb3f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a8098d8a50b73f7c36b425d2cf11d0368def1cfa79af3eb8fcdd4763a52ee8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_forum_capstone_02 -> audio/generated/tr-TR/utterances/5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a44f0ddc-c9ee-55ab-86c6-34bb8c7d50e3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffebe2c7d7ddb52a8577076d32c8ce15665c751085591feda168d3656aa6b25b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('100941ef-725b-5728-adc5-16ae7b546d6c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a44f0ddc-c9ee-55ab-86c6-34bb8c7d50e3', 1), 'ffebe2c7d7ddb52a8577076d32c8ce15665c751085591feda168d3656aa6b25b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e.mp3', 4963, '2026-09-13 19:07:55.616291', 'ef16b717941ca81475a617e491916e782073db49872ee11c1406769a859bf0af', 'validated', '{"audio_key":"5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e","entity_key":"u_b2_community_forum_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef16b717941ca81475a617e491916e782073db49872ee11c1406769a859bf0af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b2_community_forum_capstone_01_listen -> audio/generated/tr-TR/utterances/5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('83fceaa4-f975-52e6-9bff-c1cf6d6d30ea', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b2_community_forum_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffebe2c7d7ddb52a8577076d32c8ce15665c751085591feda168d3656aa6b25b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b82602d-09ec-5364-a879-ea951da5400b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('83fceaa4-f975-52e6-9bff-c1cf6d6d30ea', 1), 'ffebe2c7d7ddb52a8577076d32c8ce15665c751085591feda168d3656aa6b25b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e.mp3', 4963, '2026-09-13 19:07:55.616291', 'ef16b717941ca81475a617e491916e782073db49872ee11c1406769a859bf0af', 'validated', '{"audio_key":"5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e","entity_key":"e_b2_community_forum_capstone_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef16b717941ca81475a617e491916e782073db49872ee11c1406769a859bf0af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a8cb069eadfada2a08e6fab42aae5c0200a48aaab639f3e8f3cf729c686c01e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hypothetical_alternatives_01 -> audio/generated/tr-TR/utterances/63d176988fcba224dd6477448cd281f64a12e2381fdeecd7ff026ac40bcffdc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('35f9261b-b9db-5c85-88aa-9466ad3a3194', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hypothetical_alternatives_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '726ed0801ad455733e8e9fdeacc69be3800a9e51fdff07ad00e32f50d3eafc80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b3f1c5e-1800-5ac3-a527-b92c18e0615d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('35f9261b-b9db-5c85-88aa-9466ad3a3194', 1), '726ed0801ad455733e8e9fdeacc69be3800a9e51fdff07ad00e32f50d3eafc80',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/63d176988fcba224dd6477448cd281f64a12e2381fdeecd7ff026ac40bcffdc4.mp3', 4179, '2026-09-13 19:07:56.367592', '19cdeeb27c51108d121e574b11d3774489f8efb881914ce771d61f8141e61b85', 'validated', '{"audio_key":"63d176988fcba224dd6477448cd281f64a12e2381fdeecd7ff026ac40bcffdc4","entity_key":"u_hypothetical_alternatives_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"19cdeeb27c51108d121e574b11d3774489f8efb881914ce771d61f8141e61b85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/63d176988fcba224dd6477448cd281f64a12e2381fdeecd7ff026ac40bcffdc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_04 -> audio/generated/tr-TR/utterances/68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6dabc983-b74a-5a60-b3e3-2e27a1c80ba8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b046c2ccf100e51b3a5d3488d7ec6f854cfe32fc34e804d902bc5285bd22d80b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa77b334-3194-5af3-b936-e97852930dd7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6dabc983-b74a-5a60-b3e3-2e27a1c80ba8', 1), 'b046c2ccf100e51b3a5d3488d7ec6f854cfe32fc34e804d902bc5285bd22d80b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11.mp3', 4022, '2026-09-13 19:07:56.964837', 'cf5b67d4221174bb99e5dbb4a3431d01b40a1a8b92e3118581ce6462d3cfb704', 'validated', '{"audio_key":"68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11","entity_key":"u_nuanced_stance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf5b67d4221174bb99e5dbb4a3431d01b40a1a8b92e3118581ce6462d3cfb704","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nuanced_stance_02_listen -> audio/generated/tr-TR/utterances/68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('28ec372e-cab4-5ad5-9b8a-92ec248ac4a0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nuanced_stance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b046c2ccf100e51b3a5d3488d7ec6f854cfe32fc34e804d902bc5285bd22d80b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac2c5b8b-21c9-5a86-afe4-1ef395d6bafb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('28ec372e-cab4-5ad5-9b8a-92ec248ac4a0', 1), 'b046c2ccf100e51b3a5d3488d7ec6f854cfe32fc34e804d902bc5285bd22d80b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11.mp3', 4022, '2026-09-13 19:07:56.964837', 'cf5b67d4221174bb99e5dbb4a3431d01b40a1a8b92e3118581ce6462d3cfb704', 'validated', '{"audio_key":"68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11","entity_key":"e_nuanced_stance_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf5b67d4221174bb99e5dbb4a3431d01b40a1a8b92e3118581ce6462d3cfb704","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/68c1f667f6f098e08a330d315883dc35a281a40fcc55857a4ced51b33adc6e11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hypothetical_alternatives_04 -> audio/generated/tr-TR/utterances/6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13c5ef94-3a56-59ff-9297-fa767f4f194f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hypothetical_alternatives_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e4c8d11d3efa1bbab47f8eb6b80fa2550574f9e491ec915738384fb2e852331'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b08e371-baa8-5e60-887e-47275969a64c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13c5ef94-3a56-59ff-9297-fa767f4f194f', 1), '1e4c8d11d3efa1bbab47f8eb6b80fa2550574f9e491ec915738384fb2e852331',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8.mp3', 3787, '2026-09-13 19:07:57.585779', '16a5fb54fce51fa0f8f2c0a29c41cb68fc5918fad7e0283dc2558184e9329ca8', 'validated', '{"audio_key":"6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8","entity_key":"u_hypothetical_alternatives_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16a5fb54fce51fa0f8f2c0a29c41cb68fc5918fad7e0283dc2558184e9329ca8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_hypothetical_alternatives_02_listen -> audio/generated/tr-TR/utterances/6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('01838d68-14fd-5089-a7f9-0d3b0b899316', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_hypothetical_alternatives_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e4c8d11d3efa1bbab47f8eb6b80fa2550574f9e491ec915738384fb2e852331'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5028b7b8-5842-5901-90b9-47236c7193d6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('01838d68-14fd-5089-a7f9-0d3b0b899316', 1), '1e4c8d11d3efa1bbab47f8eb6b80fa2550574f9e491ec915738384fb2e852331',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8.mp3', 3787, '2026-09-13 19:07:57.585779', '16a5fb54fce51fa0f8f2c0a29c41cb68fc5918fad7e0283dc2558184e9329ca8', 'validated', '{"audio_key":"6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8","entity_key":"e_hypothetical_alternatives_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16a5fb54fce51fa0f8f2c0a29c41cb68fc5918fad7e0283dc2558184e9329ca8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a257e34176076b4bd9ab4b26c74f0cade0adc8125589b7fcd481a30a389e0a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_01 -> audio/generated/tr-TR/utterances/6a75baea1c83a5dff69a8e12c14a09ae059898f8a9a234898f44150de18a084d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bfb098ef-6abe-5ac8-98d7-d89fba667d4c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4ae63611cee1dbaf76e255249aafda2fb680398fd506a6ac0f68eb24afd22cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('023f8f84-55ea-59e6-a4cc-6f7d041750ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bfb098ef-6abe-5ac8-98d7-d89fba667d4c', 1), 'a4ae63611cee1dbaf76e255249aafda2fb680398fd506a6ac0f68eb24afd22cc',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a75baea1c83a5dff69a8e12c14a09ae059898f8a9a234898f44150de18a084d.mp3', 4832, '2026-09-13 19:07:58.338272', '4740c7510dd791e2650fab3f8e96b794eb2bf22881b3757b31e07e3161249e31', 'validated', '{"audio_key":"6a75baea1c83a5dff69a8e12c14a09ae059898f8a9a234898f44150de18a084d","entity_key":"u_concession_and_disagreement_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4740c7510dd791e2650fab3f8e96b794eb2bf22881b3757b31e07e3161249e31","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a75baea1c83a5dff69a8e12c14a09ae059898f8a9a234898f44150de18a084d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relative_detail_04 -> audio/generated/tr-TR/utterances/6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6951024-103c-5eaa-9a97-3b496b54c3e2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relative_detail_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1731ecb9d06aa3b36aa76499e629d01c18efa3a818ca6e74132a750981fe684a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe888e4-edd5-5344-92f2-1b7f54619966', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6951024-103c-5eaa-9a97-3b496b54c3e2', 1), '1731ecb9d06aa3b36aa76499e629d01c18efa3a818ca6e74132a750981fe684a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578.mp3', 3160, '2026-09-13 19:07:58.826734', '3d2ac2560bc9a116052fa30fdad6425fb0204cf5b551e14e780eba21e7f4e43d', 'validated', '{"audio_key":"6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578","entity_key":"u_relative_detail_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d2ac2560bc9a116052fa30fdad6425fb0204cf5b551e14e780eba21e7f4e43d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_relative_detail_02_listen -> audio/generated/tr-TR/utterances/6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b0b8fbf8-546a-55ab-96c7-7b57a0727c37', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_relative_detail_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1731ecb9d06aa3b36aa76499e629d01c18efa3a818ca6e74132a750981fe684a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf131e3-5f49-5884-8df8-5bdcf76418b2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b0b8fbf8-546a-55ab-96c7-7b57a0727c37', 1), '1731ecb9d06aa3b36aa76499e629d01c18efa3a818ca6e74132a750981fe684a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578.mp3', 3160, '2026-09-13 19:07:58.826734', '3d2ac2560bc9a116052fa30fdad6425fb0204cf5b551e14e780eba21e7f4e43d', 'validated', '{"audio_key":"6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578","entity_key":"e_relative_detail_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d2ac2560bc9a116052fa30fdad6425fb0204cf5b551e14e780eba21e7f4e43d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6dc500fe48c1436825ca11455cea5aaf03a0ce8dbbe7ffbea6b2587de8ced578.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causes_and_consequences_03 -> audio/generated/tr-TR/utterances/7de6c5f488e6bff5800446cd7807e24d7efc2e2905b562363558ba55d9b29e9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d9f94dce-a767-54e2-98be-63f443522c09', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causes_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd59978a6f4dbe8a0a5c7e1919f576580290038bcb719c2443514a7fd4d625ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccf8c12d-5db0-5178-a088-0030593b1c56', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d9f94dce-a767-54e2-98be-63f443522c09', 1), 'dd59978a6f4dbe8a0a5c7e1919f576580290038bcb719c2443514a7fd4d625ca',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7de6c5f488e6bff5800446cd7807e24d7efc2e2905b562363558ba55d9b29e9c.mp3', 2742, '2026-09-13 19:07:59.444933', '4486a06973b6228456ad130866afa0f5d4467f6808438c30fb35b72756bf0b66', 'validated', '{"audio_key":"7de6c5f488e6bff5800446cd7807e24d7efc2e2905b562363558ba55d9b29e9c","entity_key":"u_causes_and_consequences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4486a06973b6228456ad130866afa0f5d4467f6808438c30fb35b72756bf0b66","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7de6c5f488e6bff5800446cd7807e24d7efc2e2905b562363558ba55d9b29e9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hypothetical_alternatives_02 -> audio/generated/tr-TR/utterances/871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d5b98a87-dd97-5aba-873f-010891caa736', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hypothetical_alternatives_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2f31c46debd7f1cc7be0cb2a17dfbdb52072e54d96c80663303b0c0551bc256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ed5fc26-dc9f-502f-b487-751e0e38dbd6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d5b98a87-dd97-5aba-873f-010891caa736', 1), 'c2f31c46debd7f1cc7be0cb2a17dfbdb52072e54d96c80663303b0c0551bc256',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9.mp3', 3474, '2026-09-13 19:08:00.059375', 'c22191e2a54b10db8ce61190581bd78a3e1dedb106848e7a9bcfa5d9b108f715', 'validated', '{"audio_key":"871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9","entity_key":"u_hypothetical_alternatives_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c22191e2a54b10db8ce61190581bd78a3e1dedb106848e7a9bcfa5d9b108f715","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_hypothetical_alternatives_01_listen -> audio/generated/tr-TR/utterances/871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cea27874-3290-5475-9116-596102525490', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_hypothetical_alternatives_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2f31c46debd7f1cc7be0cb2a17dfbdb52072e54d96c80663303b0c0551bc256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01de555c-b440-55ed-8ec4-67425a63bbf9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cea27874-3290-5475-9116-596102525490', 1), 'c2f31c46debd7f1cc7be0cb2a17dfbdb52072e54d96c80663303b0c0551bc256',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9.mp3', 3474, '2026-09-13 19:08:00.059375', 'c22191e2a54b10db8ce61190581bd78a3e1dedb106848e7a9bcfa5d9b108f715', 'validated', '{"audio_key":"871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9","entity_key":"e_hypothetical_alternatives_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c22191e2a54b10db8ce61190581bd78a3e1dedb106848e7a9bcfa5d9b108f715","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/871f7c5d715c0ba4f13cd6d071d6926f515eaa653b8b003c64e3b63862afe0f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_03 -> audio/generated/tr-TR/utterances/95f9ed612088764581a663f7e390b7c6b03d927adbce23ca2a3160f1cdea6797.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c44f23d1-afe0-56ad-a001-4212081d189b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89bca2eb6cc91615c712d1b9dadb94b1ca176d60bef6c81a2b278f548b94b2f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecfa85ef-b6c3-5f5a-af19-b5caf13bf146', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c44f23d1-afe0-56ad-a001-4212081d189b', 1), '89bca2eb6cc91615c712d1b9dadb94b1ca176d60bef6c81a2b278f548b94b2f3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/95f9ed612088764581a663f7e390b7c6b03d927adbce23ca2a3160f1cdea6797.mp3', 3160, '2026-09-13 19:08:00.606137', '85249a28a1c8de8aab714efa3900d0f4efae3575b7ecbda88d6420d4a64c0465', 'validated', '{"audio_key":"95f9ed612088764581a663f7e390b7c6b03d927adbce23ca2a3160f1cdea6797","entity_key":"u_concession_and_disagreement_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85249a28a1c8de8aab714efa3900d0f4efae3575b7ecbda88d6420d4a64c0465","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/95f9ed612088764581a663f7e390b7c6b03d927adbce23ca2a3160f1cdea6797.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inference_and_evidence_04 -> audio/generated/tr-TR/utterances/9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('52ef2127-a219-5f7b-9134-19dddea25761', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inference_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c05f3d96fae78b7bf3977a81bbf5624c39ca4f19663a466a3ffbe730547fb392'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91ac8a5a-ac8a-525a-bae6-613849edca8a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('52ef2127-a219-5f7b-9134-19dddea25761', 1), 'c05f3d96fae78b7bf3977a81bbf5624c39ca4f19663a466a3ffbe730547fb392',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d.mp3', 4257, '2026-09-13 19:08:01.367571', '3018c2ea23b501a319e4e4fdf39717bd30650855f38e894b99b5c74da7ede959', 'validated', '{"audio_key":"9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d","entity_key":"u_inference_and_evidence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3018c2ea23b501a319e4e4fdf39717bd30650855f38e894b99b5c74da7ede959","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_inference_and_evidence_02_listen -> audio/generated/tr-TR/utterances/9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c0ff303a-70ca-5bb1-a5ac-de6070df69fe', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_inference_and_evidence_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c05f3d96fae78b7bf3977a81bbf5624c39ca4f19663a466a3ffbe730547fb392'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdb3f5a7-1ef1-54ed-bb71-af9f76e3c64f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c0ff303a-70ca-5bb1-a5ac-de6070df69fe', 1), 'c05f3d96fae78b7bf3977a81bbf5624c39ca4f19663a466a3ffbe730547fb392',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d.mp3', 4257, '2026-09-13 19:08:01.367571', '3018c2ea23b501a319e4e4fdf39717bd30650855f38e894b99b5c74da7ede959', 'validated', '{"audio_key":"9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d","entity_key":"e_inference_and_evidence_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3018c2ea23b501a319e4e4fdf39717bd30650855f38e894b99b5c74da7ede959","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9f97b9960ecb2101fc498d8fa0da287cfa5b2a466e9fc415e9b4100fbf3f6c3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relative_detail_02 -> audio/generated/tr-TR/utterances/a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('37c58754-f8cf-5378-b6d8-18ca95cb0f81', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relative_detail_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9421f892f196d3aa83673a40671177b18b45e9b64de0e4aa96b9e48d66e48d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45b27cdc-2dd8-580c-99e6-292898b55314', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('37c58754-f8cf-5378-b6d8-18ca95cb0f81', 1), 'b9421f892f196d3aa83673a40671177b18b45e9b64de0e4aa96b9e48d66e48d1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935.mp3', 3291, '2026-09-13 19:08:01.785271', '79ab7380a289b0ec5dd4383991833d429084697b618deb6d17ea6754641402fd', 'validated', '{"audio_key":"a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935","entity_key":"u_relative_detail_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79ab7380a289b0ec5dd4383991833d429084697b618deb6d17ea6754641402fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_relative_detail_01_listen -> audio/generated/tr-TR/utterances/a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1f4b0643-ce30-5ae1-a108-6d49f7668d5c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_relative_detail_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9421f892f196d3aa83673a40671177b18b45e9b64de0e4aa96b9e48d66e48d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b5ed7d0-6a59-565b-bcba-6cf58464d2ff', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1f4b0643-ce30-5ae1-a108-6d49f7668d5c', 1), 'b9421f892f196d3aa83673a40671177b18b45e9b64de0e4aa96b9e48d66e48d1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935.mp3', 3291, '2026-09-13 19:08:01.785271', '79ab7380a289b0ec5dd4383991833d429084697b618deb6d17ea6754641402fd', 'validated', '{"audio_key":"a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935","entity_key":"e_relative_detail_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79ab7380a289b0ec5dd4383991833d429084697b618deb6d17ea6754641402fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a100083d0854ef20ad5180676dafd755054bf07861eec2b4a643bdf5619df935.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causes_and_consequences_04 -> audio/generated/tr-TR/utterances/a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5ce38cab-8ac7-5480-934b-61bb7ba8e8f2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causes_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aab9f491f0ac310be059853576c795a4b9a1ea56eec8fc72ce14592a209f479'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a32ef606-2990-5330-8d36-a54a442b7358', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5ce38cab-8ac7-5480-934b-61bb7ba8e8f2', 1), '8aab9f491f0ac310be059853576c795a4b9a1ea56eec8fc72ce14592a209f479',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb.mp3', 3474, '2026-09-13 19:08:02.611684', '6e55d135ebb9e73e9439381228eb4c1752af8ce2c60aedf16a705e4a8f3e84ab', 'validated', '{"audio_key":"a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb","entity_key":"u_causes_and_consequences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e55d135ebb9e73e9439381228eb4c1752af8ce2c60aedf16a705e4a8f3e84ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_causes_and_consequences_02_listen -> audio/generated/tr-TR/utterances/a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('69782401-0b12-541c-94be-1b6071a0c9b7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_causes_and_consequences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aab9f491f0ac310be059853576c795a4b9a1ea56eec8fc72ce14592a209f479'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70341033-948d-5c95-b218-feee947375f9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('69782401-0b12-541c-94be-1b6071a0c9b7', 1), '8aab9f491f0ac310be059853576c795a4b9a1ea56eec8fc72ce14592a209f479',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb.mp3', 3474, '2026-09-13 19:08:02.611684', '6e55d135ebb9e73e9439381228eb4c1752af8ce2c60aedf16a705e4a8f3e84ab', 'validated', '{"audio_key":"a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb","entity_key":"e_causes_and_consequences_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e55d135ebb9e73e9439381228eb4c1752af8ce2c60aedf16a705e4a8f3e84ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a70b7e897a2896bad4b88a68b3a5dd2daf32344d119a4bc5ea08ec00f8cc31cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relative_detail_01 -> audio/generated/tr-TR/utterances/a7d849f6740d40295760a1bf5f22b2f14221a006d60a2eced1b74d1f892d43a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8ec4bd30-003f-5f35-84f0-47ef62183533', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relative_detail_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd79392b7b84ac2863e6f7b97008bd15cc32db6645d731d57a50e74467b0b51fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ed488a9-3e5b-5374-9001-87564f743ceb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8ec4bd30-003f-5f35-84f0-47ef62183533', 1), 'd79392b7b84ac2863e6f7b97008bd15cc32db6645d731d57a50e74467b0b51fd',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a7d849f6740d40295760a1bf5f22b2f14221a006d60a2eced1b74d1f892d43a9.mp3', 3578, '2026-09-13 19:08:03.072460', '66dd47d6b4488960ba8ad6c1c5e09915bf3cec9ca1af04a701d9fb9f412863bd', 'validated', '{"audio_key":"a7d849f6740d40295760a1bf5f22b2f14221a006d60a2eced1b74d1f892d43a9","entity_key":"u_relative_detail_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66dd47d6b4488960ba8ad6c1c5e09915bf3cec9ca1af04a701d9fb9f412863bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a7d849f6740d40295760a1bf5f22b2f14221a006d60a2eced1b74d1f892d43a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_forum_capstone_04 -> audio/generated/tr-TR/utterances/add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a62e8238-e01f-5da0-816d-7732fe73b2f2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40986b38de96c2abed0c66d416262f872c6c5aa7df0cc10fd0616c432b73bc3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04908a86-383e-5eb8-8fdb-e17d5fcfb2a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a62e8238-e01f-5da0-816d-7732fe73b2f2', 1), '40986b38de96c2abed0c66d416262f872c6c5aa7df0cc10fd0616c432b73bc3c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96.mp3', 6295, '2026-09-13 19:08:04.147474', '3030be8e0f81adeba158a8c1c6a0b0b46a136f990c6ab3fbb3ac47b6e020d09c', 'validated', '{"audio_key":"add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96","entity_key":"u_b2_community_forum_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3030be8e0f81adeba158a8c1c6a0b0b46a136f990c6ab3fbb3ac47b6e020d09c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b2_community_forum_capstone_02_listen -> audio/generated/tr-TR/utterances/add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c5f78406-dc47-522e-ba53-d4fe9d1fdae5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b2_community_forum_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40986b38de96c2abed0c66d416262f872c6c5aa7df0cc10fd0616c432b73bc3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f41633b-ad20-550d-a072-9a1056926c7f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c5f78406-dc47-522e-ba53-d4fe9d1fdae5', 1), '40986b38de96c2abed0c66d416262f872c6c5aa7df0cc10fd0616c432b73bc3c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96.mp3', 6295, '2026-09-13 19:08:04.147474', '3030be8e0f81adeba158a8c1c6a0b0b46a136f990c6ab3fbb3ac47b6e020d09c', 'validated', '{"audio_key":"add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96","entity_key":"e_b2_community_forum_capstone_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3030be8e0f81adeba158a8c1c6a0b0b46a136f990c6ab3fbb3ac47b6e020d09c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/add037eada8c4344055df76e6f9d407398ac51f14898c2a87caebee4991e7e96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_03 -> audio/generated/tr-TR/utterances/ae7e51f1d35792cd36cf21648620cc72371d3bd49b53af5ab63626da097fcf1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f479c06b-3ea1-55c8-acb8-f5362ded7445', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '044b93af825ec0425b47510ea3a5a4451a6d5dc0fbce2f2c105ea5aa898dee35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9154719c-98c8-5d7d-98aa-873aaddf04bf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f479c06b-3ea1-55c8-acb8-f5362ded7445', 1), '044b93af825ec0425b47510ea3a5a4451a6d5dc0fbce2f2c105ea5aa898dee35',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ae7e51f1d35792cd36cf21648620cc72371d3bd49b53af5ab63626da097fcf1d.mp3', 4675, '2026-09-13 19:08:04.457136', '49ef149d8e08bc9000102a698e004319e992c08de0ceb5001bef160fdd500700', 'validated', '{"audio_key":"ae7e51f1d35792cd36cf21648620cc72371d3bd49b53af5ab63626da097fcf1d","entity_key":"u_nuanced_stance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49ef149d8e08bc9000102a698e004319e992c08de0ceb5001bef160fdd500700","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ae7e51f1d35792cd36cf21648620cc72371d3bd49b53af5ab63626da097fcf1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b2_community_forum_capstone_03 -> audio/generated/tr-TR/utterances/b2c0b0ca2f0112dab024c15e3447f87c06936e7c43d9bef5f2895f62cfb4c8a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6892365-eee8-503f-aeac-e957af2d99f8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b2_community_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4629fff414588741af295c22df25b48f929ed9ceeaf4315118e84570617378b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('826c7c2d-77a0-5268-9a03-3e30084cb982', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6892365-eee8-503f-aeac-e957af2d99f8', 1), '4629fff414588741af295c22df25b48f929ed9ceeaf4315118e84570617378b1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b2c0b0ca2f0112dab024c15e3447f87c06936e7c43d9bef5f2895f62cfb4c8a4.mp3', 3604, '2026-09-13 19:08:05.378635', '39695553ffe46d4b75f26af0a6f8b8de5708a0b21ab4bf5c15f9f1a0f411f183', 'validated', '{"audio_key":"b2c0b0ca2f0112dab024c15e3447f87c06936e7c43d9bef5f2895f62cfb4c8a4","entity_key":"u_b2_community_forum_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39695553ffe46d4b75f26af0a6f8b8de5708a0b21ab4bf5c15f9f1a0f411f183","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b2c0b0ca2f0112dab024c15e3447f87c06936e7c43d9bef5f2895f62cfb4c8a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_04 -> audio/generated/tr-TR/utterances/b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('73fba581-963f-5583-8f2f-f99250682b0b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6b89707a8d72da25ec56420a552ac870f2079ce60d849354cc9dcb6a5e909eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2accb68-b469-5e26-a450-00715f327218', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('73fba581-963f-5583-8f2f-f99250682b0b', 1), 'a6b89707a8d72da25ec56420a552ac870f2079ce60d849354cc9dcb6a5e909eb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7.mp3', 3578, '2026-09-13 19:08:05.670585', 'aea80d3b9e0ab134f13e92da1ad0e78f56deb9bd528148c675ec3c07e25094e1', 'validated', '{"audio_key":"b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7","entity_key":"u_formal_negotiation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aea80d3b9e0ab134f13e92da1ad0e78f56deb9bd528148c675ec3c07e25094e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_negotiation_02_listen -> audio/generated/tr-TR/utterances/b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8d5dab4c-a4b5-54e6-a555-8049ef574a46', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6b89707a8d72da25ec56420a552ac870f2079ce60d849354cc9dcb6a5e909eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1aaf4ba4-420d-5a15-bede-6e7b873a7ee0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8d5dab4c-a4b5-54e6-a555-8049ef574a46', 1), 'a6b89707a8d72da25ec56420a552ac870f2079ce60d849354cc9dcb6a5e909eb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7.mp3', 3578, '2026-09-13 19:08:05.670585', 'aea80d3b9e0ab134f13e92da1ad0e78f56deb9bd528148c675ec3c07e25094e1', 'validated', '{"audio_key":"b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7","entity_key":"e_formal_negotiation_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aea80d3b9e0ab134f13e92da1ad0e78f56deb9bd528148c675ec3c07e25094e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b6f7b729b88ca88a307fed99d97c9be130c699e211f14c950480e770910bcff7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_viewpoints_01 -> audio/generated/tr-TR/utterances/c88184d2301b7c33252e286de927fb3d3f570d10ea08f2b2b34eb0b957fd6984.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2e7876e5-24ee-59e0-8a25-6eeabc8ab330', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_viewpoints_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a96a6432f56644f42df894127db3456c01ecf744cf4b07b55d42a89b65537923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a47589d-58e4-5e67-a33e-9235a31e9ca8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2e7876e5-24ee-59e0-8a25-6eeabc8ab330', 1), 'a96a6432f56644f42df894127db3456c01ecf744cf4b07b55d42a89b65537923',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c88184d2301b7c33252e286de927fb3d3f570d10ea08f2b2b34eb0b957fd6984.mp3', 4414, '2026-09-13 19:08:06.694030', 'be6ebcb74a07461c31b29c38e7f929076039bbc640f03fd519501982515fa58a', 'validated', '{"audio_key":"c88184d2301b7c33252e286de927fb3d3f570d10ea08f2b2b34eb0b957fd6984","entity_key":"u_summarizing_viewpoints_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be6ebcb74a07461c31b29c38e7f929076039bbc640f03fd519501982515fa58a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c88184d2301b7c33252e286de927fb3d3f570d10ea08f2b2b34eb0b957fd6984.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_inference_and_evidence_03 -> audio/generated/tr-TR/utterances/cd3d64ca15c2830030c8262206f21c2d16a9c59f5196f49f55eda5ac373c4b3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81803617-0d0e-5a8b-b9a7-c41024966fd9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_inference_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '439c0071e57ba85f066dec9d693f707859cd413fcb082d16814b65afc0cd6f42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c485708-175a-5d0e-8f26-d1cc3c2925dd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81803617-0d0e-5a8b-b9a7-c41024966fd9', 1), '439c0071e57ba85f066dec9d693f707859cd413fcb082d16814b65afc0cd6f42',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cd3d64ca15c2830030c8262206f21c2d16a9c59f5196f49f55eda5ac373c4b3c.mp3', 4310, '2026-09-13 19:08:06.938824', 'ae4e14fd386d21a8d0c656417525eeca5cc24a660a3ccea4f714e26345134461', 'validated', '{"audio_key":"cd3d64ca15c2830030c8262206f21c2d16a9c59f5196f49f55eda5ac373c4b3c","entity_key":"u_inference_and_evidence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae4e14fd386d21a8d0c656417525eeca5cc24a660a3ccea4f714e26345134461","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cd3d64ca15c2830030c8262206f21c2d16a9c59f5196f49f55eda5ac373c4b3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nuanced_stance_02 -> audio/generated/tr-TR/utterances/e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9b661c78-a30e-5063-bc47-2bdb245b58c6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nuanced_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0428feedc3b612834fe6b9c2388182194a8f32b41db96364f22ed63822194046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9724d1f-f03c-50f2-9dec-43e11b9e919e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9b661c78-a30e-5063-bc47-2bdb245b58c6', 1), '0428feedc3b612834fe6b9c2388182194a8f32b41db96364f22ed63822194046',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead.mp3', 3761, '2026-09-13 19:08:07.926286', 'eae727c1b58be3fcb4d673637e5ac238c5508b85710adcabbbbb3db041d7ffd0', 'validated', '{"audio_key":"e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead","entity_key":"u_nuanced_stance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eae727c1b58be3fcb4d673637e5ac238c5508b85710adcabbbbb3db041d7ffd0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nuanced_stance_01_listen -> audio/generated/tr-TR/utterances/e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a41260d3-b9da-5a76-97f9-5c86e28fd9e4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nuanced_stance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0428feedc3b612834fe6b9c2388182194a8f32b41db96364f22ed63822194046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e171d89-5e8b-512e-98ea-8ad8c2724a25', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a41260d3-b9da-5a76-97f9-5c86e28fd9e4', 1), '0428feedc3b612834fe6b9c2388182194a8f32b41db96364f22ed63822194046',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead.mp3', 3761, '2026-09-13 19:08:07.926286', 'eae727c1b58be3fcb4d673637e5ac238c5508b85710adcabbbbb3db041d7ffd0', 'validated', '{"audio_key":"e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead","entity_key":"e_nuanced_stance_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eae727c1b58be3fcb4d673637e5ac238c5508b85710adcabbbbb3db041d7ffd0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e01b6ce164c834a1824d84ffd3be8f0541fa04ed21b49a605946fae494279ead.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_processes_02 -> audio/generated/tr-TR/utterances/e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c49da13b-3e90-5a5d-9fd6-9b8b6f409e58', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_processes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '716b0d6e04a14ed9359f5be152dd9922ad4849cde9a9e819def33be4a26a56df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d65371a0-0537-51a2-ba56-f76126d73d89', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c49da13b-3e90-5a5d-9fd6-9b8b6f409e58', 1), '716b0d6e04a14ed9359f5be152dd9922ad4849cde9a9e819def33be4a26a56df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689.mp3', 2403, '2026-09-13 19:08:08.021435', '20e1c0590e43a381431d82560df5e0bb2f82cfad36c1438227849016c49dd4c6', 'validated', '{"audio_key":"e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689","entity_key":"u_passive_processes_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20e1c0590e43a381431d82560df5e0bb2f82cfad36c1438227849016c49dd4c6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_passive_processes_01_listen -> audio/generated/tr-TR/utterances/e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2404cadc-4f74-5546-ade2-c9f95d54ee18', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_passive_processes_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '716b0d6e04a14ed9359f5be152dd9922ad4849cde9a9e819def33be4a26a56df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03da73b0-d170-5087-9a8e-46dc82bb0aae', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2404cadc-4f74-5546-ade2-c9f95d54ee18', 1), '716b0d6e04a14ed9359f5be152dd9922ad4849cde9a9e819def33be4a26a56df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689.mp3', 2403, '2026-09-13 19:08:08.021435', '20e1c0590e43a381431d82560df5e0bb2f82cfad36c1438227849016c49dd4c6', 'validated', '{"audio_key":"e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689","entity_key":"e_passive_processes_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20e1c0590e43a381431d82560df5e0bb2f82cfad36c1438227849016c49dd4c6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e24f3d63118bd57d2600979f634b78617527a4e211778d66f00f044b4057c689.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_03 -> audio/generated/tr-TR/utterances/e8ae3451733d352302cca58a78491f81b7aea42857fb70bc1cb40a333d35c22c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6e0d03d3-9e3e-531f-86c8-3220a713e03d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cc1b22f4e64674582dd116e9dcb21edc85567bcdc6d92cb73962fa7fca3b5a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('892536cc-8aee-58ba-b852-e6240b2f3535', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6e0d03d3-9e3e-531f-86c8-3220a713e03d', 1), '2cc1b22f4e64674582dd116e9dcb21edc85567bcdc6d92cb73962fa7fca3b5a8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e8ae3451733d352302cca58a78491f81b7aea42857fb70bc1cb40a333d35c22c.mp3', 3657, '2026-09-13 19:08:09.156072', '879b899cc3b2698ff7eaea59b8c1f34570932415bd0dd55e412321fa782b4275', 'validated', '{"audio_key":"e8ae3451733d352302cca58a78491f81b7aea42857fb70bc1cb40a333d35c22c","entity_key":"u_formal_negotiation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"879b899cc3b2698ff7eaea59b8c1f34570932415bd0dd55e412321fa782b4275","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e8ae3451733d352302cca58a78491f81b7aea42857fb70bc1cb40a333d35c22c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_viewpoints_03 -> audio/generated/tr-TR/utterances/eb27ee43b8bfae7f6532eff8c205eaeb7af0682fd39029e2c159c388f21c4f8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f6d30f95-5575-5bcb-96c2-136f2a0f5b08', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_viewpoints_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5796440187683251ebb59ada5230e7364def0cff0d163170bca9e8c249c01e09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d352eaf-14c0-5836-97e4-3fa18898d118', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f6d30f95-5575-5bcb-96c2-136f2a0f5b08', 1), '5796440187683251ebb59ada5230e7364def0cff0d163170bca9e8c249c01e09',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eb27ee43b8bfae7f6532eff8c205eaeb7af0682fd39029e2c159c388f21c4f8c.mp3', 3422, '2026-09-13 19:08:09.212174', 'f778e82b0cc3a7417ae29da0ff219fb05848f0764c6404bb052bb50aa7906ddc', 'validated', '{"audio_key":"eb27ee43b8bfae7f6532eff8c205eaeb7af0682fd39029e2c159c388f21c4f8c","entity_key":"u_summarizing_viewpoints_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f778e82b0cc3a7417ae29da0ff219fb05848f0764c6404bb052bb50aa7906ddc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eb27ee43b8bfae7f6532eff8c205eaeb7af0682fd39029e2c159c388f21c4f8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_negotiation_02 -> audio/generated/tr-TR/utterances/f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fb9376fd-8d59-5e59-87b5-a9c0245dfff7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88daff4d540ed619405e5954f13f0a93d0f9ab940c0b011cf478cebe7ddddab4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4cdee1e-44d3-5a9a-a30b-8e7fb8fa8335', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fb9376fd-8d59-5e59-87b5-a9c0245dfff7', 1), '88daff4d540ed619405e5954f13f0a93d0f9ab940c0b011cf478cebe7ddddab4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8.mp3', 2324, '2026-09-13 19:08:10.232066', '10dfaf90a53001817ce1fc7f373e803ccdb135da3b392008fc4a9e6f73410128', 'validated', '{"audio_key":"f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8","entity_key":"u_formal_negotiation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10dfaf90a53001817ce1fc7f373e803ccdb135da3b392008fc4a9e6f73410128","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_negotiation_01_listen -> audio/generated/tr-TR/utterances/f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a8518d80-1340-570e-a3b7-4de1c527ff71', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88daff4d540ed619405e5954f13f0a93d0f9ab940c0b011cf478cebe7ddddab4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a24d416f-5049-56ce-b3c7-1c20ab20b18a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a8518d80-1340-570e-a3b7-4de1c527ff71', 1), '88daff4d540ed619405e5954f13f0a93d0f9ab940c0b011cf478cebe7ddddab4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8.mp3', 2324, '2026-09-13 19:08:10.232066', '10dfaf90a53001817ce1fc7f373e803ccdb135da3b392008fc4a9e6f73410128', 'validated', '{"audio_key":"f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8","entity_key":"e_formal_negotiation_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10dfaf90a53001817ce1fc7f373e803ccdb135da3b392008fc4a9e6f73410128","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f4894295dda309b149da880967aab1d8876a910648cc9f378041e4f3949176c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_passive_processes_03 -> audio/generated/tr-TR/utterances/f58ea8148c58559bde9a07ccee85df272456487855bc0292d3e9dd484844a519.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0fd4141d-26ac-557a-91a0-4d3f24bbac65', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_passive_processes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '629ddfa136028d831431642571256ef0e2d67c781cc38bb591f9f5c02aec2bc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd8a8cde-5590-5bb3-b37b-0800801d3685', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0fd4141d-26ac-557a-91a0-4d3f24bbac65', 1), '629ddfa136028d831431642571256ef0e2d67c781cc38bb591f9f5c02aec2bc7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f58ea8148c58559bde9a07ccee85df272456487855bc0292d3e9dd484844a519.mp3', 2690, '2026-09-13 19:08:10.311657', '3e6bf084304e9d843be3780de0c55b68500fec61bbf801a460f2a7261f6cbb5e', 'validated', '{"audio_key":"f58ea8148c58559bde9a07ccee85df272456487855bc0292d3e9dd484844a519","entity_key":"u_passive_processes_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e6bf084304e9d843be3780de0c55b68500fec61bbf801a460f2a7261f6cbb5e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f58ea8148c58559bde9a07ccee85df272456487855bc0292d3e9dd484844a519.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_disagreement_02 -> audio/generated/tr-TR/utterances/fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('36a40caf-c02f-548c-be02-8de0e458d123', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_disagreement_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49e08349f333d1d61b7d19dcde08b4322dbd7549fafcdf4dcd1f8079c1460f60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6023b72c-1ae1-53f2-b9df-212585b2d7a9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('36a40caf-c02f-548c-be02-8de0e458d123', 1), '49e08349f333d1d61b7d19dcde08b4322dbd7549fafcdf4dcd1f8079c1460f60',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94.mp3', 3996, '2026-09-13 19:08:11.515147', 'f4530016eb854ce7b31a0823fcf123b4ce1ace907f2da0e96b18b9b5fe47b12b', 'validated', '{"audio_key":"fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94","entity_key":"u_concession_and_disagreement_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4530016eb854ce7b31a0823fcf123b4ce1ace907f2da0e96b18b9b5fe47b12b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_disagreement_01_listen -> audio/generated/tr-TR/utterances/fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3e8aa7f5-e3c5-5e13-a074-ff706a9f697c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_disagreement_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49e08349f333d1d61b7d19dcde08b4322dbd7549fafcdf4dcd1f8079c1460f60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e5248d3-e894-5fb7-ba34-45bad1cf6490', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3e8aa7f5-e3c5-5e13-a074-ff706a9f697c', 1), '49e08349f333d1d61b7d19dcde08b4322dbd7549fafcdf4dcd1f8079c1460f60',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94.mp3', 3996, '2026-09-13 19:08:11.515147', 'f4530016eb854ce7b31a0823fcf123b4ce1ace907f2da0e96b18b9b5fe47b12b', 'validated', '{"audio_key":"fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94","entity_key":"e_concession_and_disagreement_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4530016eb854ce7b31a0823fcf123b4ce1ace907f2da0e96b18b9b5fe47b12b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fa91630568318c5ac3ff5063aa4a5e699fe7037de786c4a3f0fbef18d8c72a94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_causes_and_consequences_01 -> audio/generated/tr-TR/utterances/fab60734884ad083c7f60ef4d27982e1d7e4c383ae36a753d8ab39d8f27a22ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f17a8e1-cb68-50c6-937e-8e49f9c5ebfd', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_causes_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7785b78824ef73964d5cb3497e3f8fdf937da7e0cbfa2c942f95b496c2443cd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9beff47-8cfe-5e07-90d3-522f3c32a2a6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f17a8e1-cb68-50c6-937e-8e49f9c5ebfd', 1), '7785b78824ef73964d5cb3497e3f8fdf937da7e0cbfa2c942f95b496c2443cd9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fab60734884ad083c7f60ef4d27982e1d7e4c383ae36a753d8ab39d8f27a22ed.mp3', 4493, '2026-09-13 19:08:11.640742', '10ccf2ee7184e3e1dbebba81a78f036bb285603c67ae388377ed7f85c1e295d9', 'validated', '{"audio_key":"fab60734884ad083c7f60ef4d27982e1d7e4c383ae36a753d8ab39d8f27a22ed","entity_key":"u_causes_and_consequences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10ccf2ee7184e3e1dbebba81a78f036bb285603c67ae388377ed7f85c1e295d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fab60734884ad083c7f60ef4d27982e1d7e4c383ae36a753d8ab39d8f27a22ed.mp3"}'
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
